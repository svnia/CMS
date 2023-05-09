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
}
?>