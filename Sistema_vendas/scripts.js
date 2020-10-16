$(document).ready(function(){

    $('#conteudo').on('submit','#formCliente',function(e){
        e.preventDefault();
        var formulario = $(this).serialize();
        $.ajax({
            type: "post",
            url: "ins_cliente.php",
            data: formulario,
            dataType: "text",
            success: function (response) {
                if(response == "ok"){
                    $('#formCliente').each(function(){
                        this.reset();
                    });
                    alert("Dados do cliente foi inserido com sucesso!");
                }else{
                    alert(response);
                }
            }
        });
    });

    $('#conteudo').on('focus','#cmpNm',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "cliente_select.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#cmpNm').html(response);
            }
        });
    });

    $('#conteudo').on('submit','#formEqui',function(e){
        e.preventDefault();
        var formulario = $(this).serialize();
        $.ajax({
            type: "post",
            url: "ins_equipamento.php",
            data: formulario,
            dataType: "text",
            success: function (response) {
                if(response == "ok"){
                    $('#formEqui').each(function(){
                        this.reset();
                    });
                    alert("Cadastro realizado com sucesso!");
                }else{
                    alert(response);
                }
            }
        });
    });

    $('#conteudo').on('click','#btn_bscEquipamento',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "busca_equipamento.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#tblEquipamento').html(response);
            }
        });
    });

    $('#conteudo').on('focus','#cmpCd',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "equipamento_select.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#cmpCd').html(response);
            }
        });
    });


    $('#conteudo').on('submit','#formVendas',function(e){
        e.preventDefault();
        var formulario = $(this).serialize();
        $.ajax({
            type: "post",
            url: "ins_venda.php",
            data: formulario,
            dataType: "text",
            success: function (response) {
                if(response == "ok"){
                    $('#formVendas').each(function(){
                        this.reset();
                    });
                    alert("Venda realizada com sucesso!");
                }else{
                    alert(response);
                }
            }
        });
    });

    $('#conteudo').on('click','#btn_bscVendas',function(e){
        e.preventDefault();
        $.ajax({
            type: "post",
            url: "busca_venda.php",
            data: "buscar",
            dataType: "text",
            success: function (response) {
                $('#tblVendas').html(response);
            }
        });
    });

});