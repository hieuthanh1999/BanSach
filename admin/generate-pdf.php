<?php
// include "models/OrdersModel.php";
require __DIR__ . "/vendor/autoload.php";
include "../application/Connection.php";
use Dompdf\Dompdf;
use Dompdf\Options;

$id = $_POST["id"];
// $quantity = $_POST["quantity"];
$conn = Connection::getInstance();
$query = $conn->query("select * from customers where id = (select customer_id from orders where id=$id limit 0,1)");

$customer = $query->fetch(PDO::FETCH_OBJ);

$queryOrder = $conn->query("SELECT * FROM orders WHERE id = $id");

$order = $queryOrder->fetch(PDO::FETCH_OBJ);

$queryOrderDetails = $conn->query("select * from orderdetails where order_id = $id");
$orderDetails = $queryOrderDetails->fetchAll(PDO::FETCH_OBJ);
// print_r($orderDetails);

//$html = '<h1 style="color: green">Example</h1>';
//$html .= "Hello <em>$name</em>";
//$html .= '<img src="example.png">';
//$html .= "Quantity: $quantity";
$tong = 0.0;
$tbody ="<tbody>"; 
$stt = 1;
foreach($orderDetails as $rows){
    $queryProduct = $conn->query("select * from products where id = $rows->product_id");
    $product = $queryProduct->fetch(PDO::FETCH_OBJ);
    $tbody .= "<tr>";
    $tbody .= "<td style='text-align: left'>".$stt."</td>";
    $tbody .= "<td style='text-align: left'>".$product->name."</td>";
    $tbody .= "<td style='text-align: center'>".$product->price."đ </td>";
    $tbody .= "<td style='text-align: center'>".$product->discount."% </td>";
    $tbody .= "<td style='text-align: center'>".number_format(($product->discount * $product->price)/100)."đ</td>";
    $tong += (($product->discount * $product->price)/100);
    $tbody .= "</tr>";
    $stt+=1;
}
$tbody .= "<tr>";
$tbody .= "<td style='text-align: left' colspan='4'>Total</td>";
$tbody .= "<td style='text-align: center'> ".number_format($tong)."đ </td>";
$tbody .= "</tr>";
$tbody .= "</tbody>";
$name = $customer->name;
$email = $customer->email;
$address =  $customer->address;
$phone =  $customer->phone;
/**
 * Set the Dompdf options
 */
$options = new Options;
$options->setChroot(__DIR__);
$options->setIsRemoteEnabled(true);

$dompdf = new Dompdf($options);

/**
 * Set the paper size and orientation
 */
$dompdf->setPaper("A4", "landscape");

/**
 * Load the HTML and replace placeholders with values from the form
 */
$html = file_get_contents("template.html");

$html = str_replace(["{{ id }}","{{ name }}", "{{ email }}", "{{ address }}", "{{ phone }}", "{{ tbody }}"], [$id, $name, $email, $address, $phone, $tbody], $html);
$html = mb_convert_encoding($html, 'HTML-ENTITIES', 'UTF-8');
$dompdf->loadHtml($html);
//$dompdf->loadHtmlFile("template.html");

/**
 * Create the PDF and set attributes
 */
$dompdf->render();

$dompdf->addInfo("Title", "An Example PDF"); // "add_info" in earlier versions of Dompdf

/**
 * Send the PDF to the browser
 */
$dompdf->stream("invoice.pdf", ["Attachment" => 0]);

/**
 * Save the PDF file locally
 */
$output = $dompdf->output();
file_put_contents("pdf/pdf-"+ ran(1,10000) +".pdf", $output);