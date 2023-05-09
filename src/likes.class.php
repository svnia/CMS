<?php
class Likes {
    private int $post_id;
    private int $user_id;
    private int $value;

    public function __construct(int $post_id, int $user_id, int $like) {
        if ($like != 1 && $like != -1) {
            die("Nieprawidłowa wartość like");
        }

        $this->post_id = $post_id;
        $this->user_id = $user_id;
        $this->value = $like;

        $this->addLike($like);

    }
    public function addLike(int $like) {
        global $db;
        $user_id = $this->user_id;
        $post_id = $this->post_id;
        $q = $db->prepare("DELETE FROM likes WHERE user_id = ? AND post_id = ?");
        $q->bind_param('ii', $user_id, $post_id);
        $q->execute();

        $q2 = $db->prepare("INSERT likes (id, post_id, user_id, value) VALUES (NULL, ?, ?, ?)");

        $q2->bind_param('iii', $post_id, $user_id, $like);

        $q2->execute();
    }
}
?>