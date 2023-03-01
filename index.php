<?php

require 'functions.php';
//require "router.php";
require 'Database.php';

$config = require 'config.php';


$db = new Database($config['database'], 'slow', 'P@$$w0rd');

$id = $_GET['id'];

$query = "select * from posts where id = ? and id = ?";

$posts = $db->query($query, [$id, 1])->fetchAll();
dd($posts);

foreach ($posts as $post) {
    echo "<li>{$post['title']}</li>";
}
