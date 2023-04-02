<?php 
	// load file layout vao day
	$layout = "Layout.php";
 ?>
<div class="col-md-12">
	<div class="panel panel-primary">
		<div class="panel-heading">Edit Product</div>
		<div class="panel-body">
			<!-- muon upload duoc file thi trong the form phai co thuoc tinh enctype = "mulipart/form-data"  -->

			<form method="post" enctype="multipart/form-data" action="<?php echo $action; ?>">
				<!-- rows -->
				<div class="row" style="margin-top:5px;">
					<div class="col-md-2">Name</div>
					<div class="col-md-10">
						<input type="text" value="<?php echo isset($record->name)?$record->name:''; ?> " name="name" class="form-control" required>
					</div>
				</div>
				<!-- end rows -->
				<!-- rows -->
				<div class="row" style="margin-top:5px;">
					<div class="col-md-2">Price</div>
					<div class="col-md-10">
						<input type="number" value="<?php echo isset($record->price)?$record->price: '0'; ?>" name="price" class="form-control" required>
					</div>
				</div>
				<!-- end rows -->
				<!-- rows -->
				<div class="row" style="margin-top:5px;">
					<div class="col-md-2">Discount</div>
					<div class="col-md-10">
						<input type="number" value="<?php echo isset($record->discount)?$record->discount: '0'; ?>" name="discount" class="form-control" required>
					</div>
				</div>
				<div class="row" style="margin-top:5px;     align-items: center;">
					<div class="col-md-2">Age</div>
					<div class="col-md-1">
					<input type="number" value="<?php echo isset($record->age_from)?$record->age_from: '0'; ?>" name="age_from" class="form-control" required>
					</div>
					to
					<div class="col-md-1">
						<input type="number" value="<?php echo isset($record->age_to)?$record->age_to: '0'; ?>" name="age_to" class="form-control" required>
					</div>
				</div>
				<!-- end rows -->
				<!-- rows -->
				<div class="row" style="margin-top:5px;">
					<div class="col-md-2">Category</div>
					<div class="col-md-10">
						<?php 
						// ket noi csdl
						$conn = Connection::getInstance();
						$query =$conn->query("select * from categories where parent_id = 0 order by id desc");

						$categories = $query->fetchAll(PDO::FETCH_OBJ);
						 ?>
						<select name="category_id" class="form-control" style="width: 300px;">
							<?php foreach($categories as $rows): ?>
							<option <?php if(isset($record->category_id) && $record->category_id == $rows->id): ?> selected <?php endif; ?> value="<?php echo $rows->id;?>"><?php echo $rows->name; ?></option>
							<?php
							$querySub = $conn->query("select * from categories where parent_id = {$rows->id} order by id desc");
							$categoriesSub = $querySub->fetchAll(PDO::FETCH_OBJ);
							?>
							<?php foreach($categoriesSub as $rowsSub): ?>
							<option <?php if(isset($record->category_id) && $record->category_id == $rowsSub->id): ?> selected <?php endif; ?> value="<?php echo $rowsSub->id;?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $rowsSub->name; ?></option>
							<?php endforeach; ?>
							<?php endforeach; ?>
						</select>
					</div>
				</div>
				<!-- end rows -->
				<!-- rows -->
				<div class="row" style="margin-top:5px;">
					<div class="col-md-2">Description</div>
					<div class="col-md-10">
						<textarea name="description" id="description">
							<?php echo isset($record->description)?$record->description:""?>
						</textarea>
						<!-- thay the bang bang ki tu  -->
						<script type="text/javascript">
							CKEDITOR.replace("description");
						</script>
					</div>
				</div>
				<!-- end rows -->
				<!-- rows -->
				<div class="row" style="margin-top:5px;">
					<div class="col-md-2">Content</div>
					<div class="col-md-10">
						<textarea name="content" id="content">
							<?php echo isset($record->content)?$record->content:"" ?>
						</textarea>
							<!-- thay the bang bang ki tu  -->
						<script type="text/javascript">
							CKEDITOR.replace("content");
						</script>
					</div>
				</div>
				<!-- end rows -->
				<!-- rows -->
				<div class="row" style="margin-top:5px;">
					<div class="col-md-2">Hot</div>
					<div class="col-md-10">
						<input type="checkbox" <?php if(isset($record->hot) && $record->hot==1): ?> checked <?php endif; ?> name="hot" id="hot">
						<label for="hot"> Hot</label>
					</div>
				</div>
				<!-- end rows -->
				<!-- rows -->
				<div class="row" style="margin-top:5px;">
					<div class="col-md-2">Upload image</div>
					<div class="col-md-10">
						<input type="file" name="photo">
					</div>
				</div>
				<!-- end rows -->
				<!-- rows -->
				<div class="row" style="margin-top:5px;">
					<div class="col-md-2"></div>
					<div class="col-md-10">
						<input type="submit" value="Process" class="btn btn-primary">
					</div>
				</div>
				<!-- end rows -->
			</form>
		</div>
	</div>
</div>