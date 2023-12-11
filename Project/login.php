<?php
require_once 'db/db.php';

session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    try {
 
        $stmt = $db->prepare("SELECT * FROM users WHERE username = :username");
        $stmt->bindParam(':username', $username);
        $stmt->execute();

        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user && password_verify($password, $user['password'])) {
            $role = $user['role'];
        
            if ($role == 'admin') {
                $_SESSION['user'] = $user; 
                header("Location: admin.php");
                exit();
            } elseif ($role == 'user') {
                $_SESSION['user'] = $user;
                header("Location: user.php");
                exit();
            } else {
                echo "Invalid user role";
            }
        } else {
            echo "Invalid username or password";
            echo("Username: $username, Password: $password, User: " . print_r($user, true));
        }
        

        
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>
