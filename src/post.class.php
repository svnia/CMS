<?php
class Post {
    private int $id;
    private string $title;
    private string $filename;
    private string $timestamp;
    //id użytkownika który wgrał mema
    private int $authorId;
    //nazwa użytkownika autora mema
    private string $authorName;
    

    function __construct(int $i, string $f, string $t, string $title, int $authorId) {
        $this->id = $i;
        $this->filename = $f;
        $this->timestamp = $t;
        $this->title = $title;
        $this->authorId = $authorId;
        //pobierz z bazy danych imię / login autora posta
        global $db;
        $this->authorName = User::getNameById($this->authorId);
    }
    //gettery 
    public function getTitle() : string {
        return $this->title;
    }
    public function getFilename() : string {
        return $this->filename;
    }
    public function getTimestamp() : string {
        return $this->timestamp;
    }
    public function getAuthorName() : string {
        return $this->authorName;
    }
    public function getId() : string {
        return $this->id;
    }

    //funkcja zwraca ostatnio dodany obrazek
    static function getLast() : Post {
        //odwołuję się do bazy danych
        global $db;
        //Przygotuj kwerendę do bazy danych
        $query = $db->prepare("SELECT * FROM post ORDER BY timestamp DESC LIMIT 1");
        //wykonaj kwerendę
        $query->execute();
        //pobierz wynik
        $result = $query->get_result();
        //przetwarzanie na tablicę asocjacyjną - bez pętli bo będzie tylko jeden
        $row = $result->fetch_assoc();
        //tworzenie obiektu
        $p = new Post($row['id'], $row['filename'], $row['timestamp'], $row['title'], $row['userId']);
        //zwracanie obiektu
        return $p; 
    }
