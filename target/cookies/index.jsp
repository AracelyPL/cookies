<html>
    <head> 
        <title>INICIO DE SESION</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h2>Ingrese usuario y password</h2>
        <div>
            <from  action="./cookies/CookieServlet" method="get">
                <label>usuario</label>
                <br>
                <input type="text" name="nombre" placeholder="nombre de usuario"/>
                <br>
                <label>password</label>
                <br>
                <input type="text" name="password" placeholder="password"/>
                <br>
                <input type="submit" value="recordar" />
            </from>
            <from action="./sesion/SesionServlet" method="get">
                <br>
                <h3>LOGIN</h3>
                <input type="submit" value="validar" />
            </from>
        </div>
        <br>
    </body>
</html>
