<?php
class Connection {
 
    private static $instance;
    private $db;
 
    private function __construct() {
        $host = "localhost";
        $dbname = "cybaco_ordenes";
        $dbuser = "cybaco_master";
        $password = "hwY86SDK5";

        try{
            $this->db = new PDO("mysql:host={$host};dbname={$dbname};charset=UTF8", $dbuser, $password);
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }catch(PDOException $e){
            echo "ERROR: " . $e->getMessage();
        }
    }
 
    public static function singleton() {
        if (!isset(self::$instance)) {
            $my_class = __CLASS__;
            self::$instance = new $my_class;
        } 
        return self::$instance;
    }

    public function get_connection() {
        return $this->db;
    }
   
    public function __clone() {
        trigger_error('La clonación de este objeto no está permitida', E_USER_ERROR);
    }
}
?>