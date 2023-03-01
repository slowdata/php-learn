<?php

// connect to mysql database. myapp

// Connect to the database, and execute a query.
class Database
{
    public $connection;

    public function __construct(
        $config,
        $username = 'root',
        $password = ''
    ) {
        $dsn = 'mysql:' . http_build_query($config, '', ';');

        $this->connection = new PDO($dsn, $username, $password, [
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]);
    }

    public function query($sql, $params = [])
    {

        $statement = $this->connection->prepare($sql);
        $statement->execute($params);

        return $statement;
    }
}
