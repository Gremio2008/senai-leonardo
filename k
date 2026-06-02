<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <style>
        body{
            margin:0;
            font-family: Arial, Helvetica, sans-serif;

            /* Nova imagem de fundo */
            background-image: url("https://wallpaperbat.com/img/135832966-youtube-wallpaper-43-image.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        section{
            background-color: rgba(255,255,255,0.9);
            padding: 30px;
            border-radius: 10px;
            text-align: center;
        }

        input{
            margin: 5px;
            padding: 8px;
            width: 250px;
        }
    </style>

    <script>
        function login() {
            let usuario = document.getElementById("usuario").value;
            let senha = document.getElementById("senha").value;

            if (usuario == "professor" && senha == "1234") {
                alert("Login realizado com sucesso!");
                mostrarHome();
                esconderLogin();
            } else {
                alert("Usuário ou senha incorretos!");
            }
        }

        function logout() {
            document.getElementById("home").style.display = "none";
            document.getElementById("login").style.display = "block";
        }

        function mostrarHome() {
            document.getElementById("home").style.display = "block";
        }

        function esconderLogin() {
            document.getElementById("login").style.display = "none";
        }
    </script>
</head>

<body>

    <section id="login">
        <h1>Faça login</h1>

        <input type="text" id="usuario" placeholder="Digite seu usuário"><br>

        <input type="password" id="senha" placeholder="Digite sua senha"><br>

        <input type="button" value="Entrar" onclick="login()">
    </section>

    <section id="home" style="display:none;">
        <h1>Bem-vindo</h1>
        <input type="button" value="Sair" onclick="logout()">
    </section>

</body>
</html>