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
?>