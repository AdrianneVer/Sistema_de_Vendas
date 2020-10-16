<?php

    if(isset($_POST['campo_nome'])){

        $nome = $_POST['campo_nome'];

        $codigo = $_POST['campo_codigo'];

        $vendedor = $_POST['campo_vendedor'];

        $data_venda = $_POST['campo_data_venda'];

        $preco = $_POST['campo_preco'];

        $pagamento = $_POST['campo_pagamento'];

        $parcela = $_POST['campo_parcela'];

        $descricao = $_POST['campo_descricao'];

        $sql = "INSERT INTO vendas (nome,codigo,vendedor,data_venda,preco,pagamento,parcela,descricao)VALUES('$nome','$codigo','$vendedor','$data_venda','$preco','$pagamento','$parcela','$descricao')";

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
