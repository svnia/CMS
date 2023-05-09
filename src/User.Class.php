<?php
class User {
    //id użytkownika w bazie danych
    private int $id;
    //login / email użytkownika w bazie danych
    private string $email;

    //konstruktor
    public function __construct(int $id, string $email) {
        $this->id = $id;
        $this->email = $email;

    }
}
    //gettery
    public function getId() : int {
        return $this->id;
    }
    public function getName() : string {
        return $this->email;
    }
    public static function isAuth() : bool {

        //sprawdz czy w sesji jest coś pod nazwą user
        if(isset($_SESSION['user'])) {
            //sprawdz czy to coś jest instacją klasy User
            if($_SESSION['user'] instanceof User) {
                //użytkownik zalogowany
                return true;
            }
        }
        //użytkownik niezalogowany
        return false;
    }
    
?>