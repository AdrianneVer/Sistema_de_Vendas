<?php

    $sql = "SELECT * FROM equipamentos";
    include "conexao.php";

$resposta = "";

if ($resultado = mysqli_query($con, $sql)) {

    while ($lh = mysqli_fetch_assoc($resultado)) {

        $resposta .= "<tr>";

        $resposta .= "<td>".$lh['id_equipamento']."</td>";

        $resposta .= "<td>".$lh['codigo']."</td>";

        $resposta .= "<td>".$lh['nome']."</td>";

        $resposta .= "<td>".$lh['marca']."</td>";

        $resposta .= "<td>".$lh['modelo']."</td>";

        $resposta .= "<td>".$lh['preco']."</td>";

        $resposta .= "<td>".$lh['quantidade']."</td>";

        $resposta .= "<td>".$lh['descricao']."</td>";

        $resposta .= "</tr>";

    }

        mysqli_close($con);
        echo $resposta;

    }else{
        mysqli_query($con);
        echo "Erro: " . $sql . "<br>" . mysqli_error($con);
    }

?>