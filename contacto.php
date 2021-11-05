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
            <h2>Contáctenos</h2>
            <form method='POST' action='enviar_consulta.php' id=form>
                <div id='formLabel'>
                    <div id='Label'>
                        <label>Nombre</label>
                        <input type='text' name='nombre' placeholder='Nombre' required >
                    </div>
                    <div id='Label'>
                        <label>Apellido</label>
                        <input type='text' name='apellido' placeholder='Apellido' required >
                    </div>
                    <div id='Label'>
                        <label>Correo</label>
                        <input type='email' name='correo' placeholder='Correo Electrónico' required >
                    </div>
                    <div id='Label'>
                        <label>Edad</label>
                        <input type='number' name='edad' placeholder='Edad' required>
                    </div>
                    <div id='Label'>
                        <label>Consulta</label>
                        <select name='consulta'>
                            <option value='consulta_precio'>Precio de nuestros cursos</option>
                            <option value='consulta_cursos'>Dudas sobre los cursos</option>
                            <option value='consulta_trabajo'>Trabaja con nosotros</option>
                            <option value='consulta_otros'>Otros</option>
                        </select> 
                    <div id='Label'>
                        <label>Mensaje</label>
                        <textarea name='mensaje' ></textarea>
                    </div>
                </div>
                <div class="enviar">
                    <input type='submit' value= 'Registrarse' id='formBotom'>
                </div>
            </form>
            <?php if(isset($_GET['ok'])){
                echo "<h3>Consulta enviada!</h3>";
            }
            ?>   
        </section>
        <footer>
            Desarrollado por <a href="http://www.elerning-total.com" target="_new">Programador web con PHP y MySQL</a></footer>
    </section>
</body>

</html>