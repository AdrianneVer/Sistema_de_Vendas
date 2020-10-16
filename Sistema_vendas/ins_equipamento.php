<?php

    if(isset($_POST['campo_codigo'])){

        $codigo = $_POST['campo_codigo'];

        $nome = $_POST['campo_nome'];

        $marca = $_POST['campo_marca'];

        $modelo = $_POST['campo_modelo'];

        $preco = $_POST['campo_preco'];

        $quantidade = $_POST['campo_quantidade'];

        $descricao = $_POST['campo_descricao'];


        $sql = "INSERT INTO equipamentos (codigo,nome,marca,modelo,preco,quantidade,descricao)VALUES('$codigo','$nome','$marca','$modelo','$preco','$quantidade','$descricao')";

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
