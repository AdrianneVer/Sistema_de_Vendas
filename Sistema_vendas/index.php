<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="pagina.css">
    
    <style>
        table,th,td{
            border:1px solid black;
        }
    </style>
     <script src="jquery-3.5.1.min.js"></script>
    <script src="scripts.js"></script>
</head>
<body>
	<div class="topo">
        <h1>BARÃO TECH</h1>
        <h2> Equipamentos de Tecnologias </h2>
       
		<img src="documento.png" width="180" height="180">
	</div>
	<div class="menu">

            <a href="index.php?p=ci">PÁGINA INICIAL</a>

            <a href="index.php?p=ce">CADASTRAR EQUIPAMENTO</a>

            <a href="index.php?p=cf">CONSULTAR ESTOQUE</a>

            <a href="index.php?p=cc">CADASTRAR CLIENTE</a>

            <a href="index.php?p=rv">REALIZAR VENDA</a>

        <input type="search" placeholder="pesquisar..." class="pesquisa">
    
    </div>
   
   <div id="conteudo">

    <?php

        if(isset($_GET['p'])){

            $pagina = $_GET['p'];

        }else{

            $pagina = 'ci';

        }

        if($pagina == 'ci'){

            include "inicio_form.html";

        }elseif($pagina == 'ce'){

            include "equipamento_form.html";

        }elseif($pagina == 'cf'){

            include "equipamento_ver.php";

        }elseif($pagina == 'cc'){

            include "cliente_form.html";
       
        }elseif($pagina == 'rv'){

            include "venda_form.html";


        }

        ?>
</div>
</body>
</html>