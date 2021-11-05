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
            <h2>Noticias</h2>
            <?php
            $noticias = array(
                array('imagen' => 'imagen1.png', 'titulo' => 'Cuál es el origen de la crisis mundial de microchips y cómo puede afectarte', 'texto' => "Los fabricantes de autos y las compañías de dispositivos electrónicos enfrentan problemas parara abastecerse de chips de computadora."),
                array('imagen' => 'imagen2.png', 'titulo' => 'Transistores inversos', 'texto' => "Qué son, para qué sirven y por qué aspiran a reinventar. La electrónica 'Los transcitores' nos prometen cricuitos integrados más sencillos, rápidos, compactos y cpm un consumo inferior, por lo que podrían ayudarnos a dilatar aún más la «Ley de Moore»"),
                array('imagen' => 'imagen3.png', 'titulo' => 'El país que está luchando contra la cultura de tirar todo lo viejo a la basura', 'texto' => "Una combinación de aficionados entusiastas, cafés de reparación y nuevas leyes que protegen el 'derecho de reparar' podría ayudar a disminuir las crecientes montañas de aparatos electrónicos averiados."),
                array('imagen' => 'imagen4.png', 'titulo' => 'Qué es el litio geotérmico y por qué puede revolucionar las energías limpias', 'texto' => "Un novedoso sistema para extraer litio ha resultado ser más respetuoso con el medio ambiente que otras formas más intensivas en agua o tierra como son las de Latinoamérica.¿Ha llegado una nueva fiebre del oro?"),
            );?>
            <div class='galeria_noticias'>
            <?php
            for($i=0; $i<count($noticias); $i++) {
            ?>
                
                    <div class='noticia'>
                        <img class='noticia_img'src='imagenes/<?php echo $noticias[$i]['imagen'];?>'>
                        <div class='noticia_info'>
                            <a style="cursor:pointer;"><h2 ><?php echo $noticias[$i]['titulo']?></h2></a>
                            <h4 ><?php echo $noticias[$i]['texto']?></h4>
                        </div>
                    </div>
            <?php } ?>
            </div>
        </section>
        <footer>
            Desarrollado por <a href="http://www.elearning-total.com" target="_new">Programador web con PHP y MySQL</a></footer>
    </section>
</body>

</html>