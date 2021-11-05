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
            <h2 id="catalogo">Catálogo</h2>
            <div id="botonera_catalogo">
                <a href="catalogo.php?id=capri#catalogo" id="boton_catalogo">Sillón capri</a>
                <a href="catalogo.php?id=ipanema#catalogo" id="boton_catalogo">Mesa Ipanema</a>
                <a href="catalogo.php?id=venecia#catalogo" id="boton_catalogo">Banco Venecia</a>
            </div>
            <div id="info_catalogo">
                <?php
                if (isset($_GET['id'])) {
                    switch ($_GET["id"]) {
                        case 'capri':
                            $imagen = 'sillon1.jpg';
                            $producto = 'Sillón Capri';
                            $precio = 345.00;
                            $caracteristicas = 'Concebida para ser utilizada tanto bajo techo como a la intemperie. La madera de origen brasilera está acabada con un recubrimiento de Resina Polisten que la embellece.';
                            break;
                        case 'ipanema':
                            $imagen = 'ipanema.jpg';
                            $producto = 'Mesa Ipanema';
                            $precio = 500.00;
                            $caracteristicas = 'Se trata de una colección de muebles de madera de eucaliptos, certificada con el sello FSC y concebida para ser utilizada tanto bajo techo como a la intemperie. La madera es de origen brasilera. Las medidas son: 120 cms.';
                            break;
                        case 'venecia':
                            $imagen = 'venecia.jpg';
                            $producto = 'Banco Venecia ';
                            $precio = 450.00;
                            $caracteristicas = 'Se trata de una colección de muebles de madera de eucaliptos, certificada con el sello FSC (SWCOC-091) y concebida para ser utilizada tanto bajo techado como a la intemperie. La madera es de origen brasilera. Las medidas son: 120 cms.';
                            break;
                    }
                ?>
                    <div id="img_catalogo">
                        <img src="imagenes/<?php echo $imagen; ?>">
                    </div>
                    <div id="datos_catalogo">
                        <h3>Producto: <?php echo $producto; ?></h3>
                        <p><b>Precio:</b> $ <?php echo $precio; ?></p>
                        <p><b>Características:</b> <?php echo $caracteristicas; ?></p>
                    </div>
            </div>
        <?php
                } ?>
        <!--isset para no tener error al principio-->
        </section>

        <footer>
            Desarrollado por <a href="http://www.elearning-total.com" target="_new">Programador web con PHP y MySQL</a></footer>
    </section>
</body>

</html>