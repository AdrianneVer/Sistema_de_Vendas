<?php

    if(isset($_POST['campo_nome'])){

        $nome = $_POST['campo_nome'];

        $email = $_POST['campo_email'];

        $cpf = $_POST['campo_cpf'];

        $endereco = $_POST['campo_endereco'];

        $cidade = $_POST['campo_cidade'];

        $celular= $_POST['campo_celular'];

        $estado = $_POST['campo_estado'];


        $sql = "INSERT INTO clientes (nome,email,cpf,endereco,cidade,celular,estado)VALUES('$nome','$email','$cpf','$endereco', '$cidade','$celular','$estado')";

        include "conexao.php";
        if (mysqli_query($con, $sql)) {
            mysqli_close($con);
            echo "ok";
        }else{
            echo "Erro: " . $sql . "<br>" . mysqli_error($con);
        }

        }else{
        echo "erro";
    }
?>
