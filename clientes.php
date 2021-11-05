<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Programador web con PHP y MySQL</title>
    <link href="estilos.css" rel="stylesheet" />
</head>

<body>
    <section id="contenedor">
        <header>
            <nav id="botonera_principal">
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="catalogo.php">Catálogo</a></li>
                    <li><a href="noticias.php">Noticias</a></li>
                    <li><a href="clientes.php">Clientes</a></li>
                    <li><a href="contacto.php">Contáctenos</a></li>
                </ul>
            </nav>
            <div id="marca">
                <h1>Programador web con PHP y MySQL</h1>
            </div>
        </header>
        <section id="contenido">
            <h2>Clientes</h2>
            
            <table id="table">
                <tr>
                    <th>Pedido</th>
                    <th>Producto</th>  
                    <th>Cantidad</th>  
                    <th>Precio</th>
                </tr> 
                <?php
                    include('datos_conexion.php');
                    $pedidos = mysqli_query($conexion, "SELECT * FROM pedidos_cliente");
                    while($mostrar_pedidos = mysqli_fetch_assoc($pedidos)){?>
                        <tr>
                            <td> <?php echo $mostrar_pedidos['id_pedido']; ?></td>
                            <td> <?php echo $mostrar_pedidos['producto']; ?></td>
                            <td> <?php echo $mostrar_pedidos['cantidad']; ?></td>
                            <td> <?php echo $mostrar_pedidos['precio']; ?></td>
                        </tr>
                        <?php
                    }
                ?>
            </table>       
        </section>

        <footer>
            Desarrollado por <a href="http://www.elearning-total.com" target="_new">Programador web con PHP y MySQL</a></footer>
    </section>
</body>

</html>