<!DOCTYPE html!>
<html lang="pt-br">
<head>
	<meta charset="utf-8"/>
	<meta name="author" content="Professor"/>
	<meta name="description" content="Descrição"/>
	<meta name="keywords" content="Palavras, chaves"/>
	<title>PHP com BD</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>
<body>

	<?php include "includes/menu.php" ?>

	<div id="area-principal">
		<div id="postagem">
			<form method="post" action="">
				<fieldset>
				<p>
					<label>Nome do usuario</label>
					<input type="text" name="usuario" id="usuario"/>
				</p>
				<p>
					<label>E-mail</label>
					<input type="email" name="email" id="email"/>
				</p>
				<p>
					<label>Senha</label>
					<input type="password" name="senha" id="senha"/>
				</p>
				<p>
					<label>Repetir a Senha</label>
					<input type="password" name="senha2" id="senha2"/>
				</p>
				<input type="submit" value="enviar"/>
				<input type="reset" value="limpar"/>
			</fieldset>
			</form>
		</div>
		<div id="postagem">
			<?php
			//código PHP aqui!

			?>
		</div> <!-- Postagem-->
	</div> <!-- Area principal-->
</body>
</html>
