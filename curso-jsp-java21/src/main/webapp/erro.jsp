<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Erro no Sistema</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 30px;
        }
        .error-container {
            max-width: 900px;
            margin: 0 auto;
            background: white;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .error-header {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .error-header img {
            width: 120px;
        }
        .error-title {
            font-size: 24px;
            color: #c0392b;
        }
        .error-details {
            margin-top: 20px;
            background: #f0f0f0;
            padding: 15px;
            border-radius: 4px;
            font-family: monospace;
            white-space: pre-wrap;
            max-height: 400px;
            overflow-y: auto;
        }
        .support {
            margin-top: 20px;
            text-align: right;
        }
        .support a {
            color: #2980b9;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="error-container">
    <div class="error-header">
        <img src="https://static.vecteezy.com/ti/vetor-gratis/p1/2779437-system-error-concept-programmers-working-with-system-error-vector-illustration-flat-vetor.jpg" alt="Erro">
        <div class="error-title">Ocorreu um erro no sistema</div>
    </div>

    <p>Pedimos desculpas. Um erro inesperado aconteceu. Abaixo estão os detalhes técnicos:</p>

    <div class="error-details">
        <%= exception != null ? exception.toString() : request.getAttribute("msg") %>
    </div>

    <div class="support">
        <p>Entre em contato com o suporte técnico: <a href="mailto:suporte@sistema.com">rafaellsouza.java@gmail.com</a></p>
    </div>
</div>

</body>
</html>
