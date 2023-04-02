<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInitaa1c7f63d258d5df1d37f44d07c2ec51
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        require __DIR__ . '/platform_check.php';

        spl_autoload_register(array('ComposerAutoloaderInitaa1c7f63d258d5df1d37f44d07c2ec51', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInitaa1c7f63d258d5df1d37f44d07c2ec51', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInitaa1c7f63d258d5df1d37f44d07c2ec51::getInitializer($loader));

        $loader->register(true);

        return $loader;
    }
}
