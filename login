<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Solicitação de Pedido Extra</title>
  <style>
    body {
      background-color: #f2f2f2;
      font-family: 'Segoe UI', sans-serif;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 600px;
      background-color: #fff;
      margin: 50px auto;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
      text-align: center;
      color: #333;
    }
    label {
      display: block;
      margin-top: 15px;
      color: #555;
      font-weight: 500;
    }
    input[type="text"],
    input[type="number"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 8px;
      box-sizing: border-box;
    }
    .item {
      margin-top: 15px;
      border-top: 1px solid #eee;
      padding-top: 10px;
    }
    .buttons {
      margin-top: 20px;
      text-align: center;
    }
    button {
      background-color: #4CAF50;
      color: white;
      padding: 10px 18px;
      margin: 5px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-size: 15px;
    }
    button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

  <div class="container">
    <h2>Solicitação de Pedido Extra</h2>

    <form id="pedidoForm">
      <label for="login">Login:</label>
      <input type="text" id="login" required>

      <label for="senha">Senha:</label>
      <input type="password" id="senha" required>

      <label for="solicitante">Nome do Solicitante:</label>
      <input type="text" id="solicitante" required>

      <label for="unidade">Unidade Solicitante:</label>
      <input type="text" id="unidade" required>

      <label for="setor">Setor:</label>
      <input type="text" id="setor" required>

      <div id="itens">
        <div class="item">
          <label>Item:</label>
          <input type="text" class="item-nome" required>

          <label>Quantidade:</label>
          <input type="number" class="item-qtd" required>
        </div>
      </div>

      <div class="buttons">
        <button type="button" onclick="adicionarItem()">+ Adicionar Item</button>
        <button type="submit">Enviar Pedido</button>
      </div>
    </form>
  </div>

  <script>
    function adicionarItem() {
      const novoItem = document.createElement('div');
      novoItem.classList.add('item');
      novoItem.innerHTML = `
        <label>Item:</label>
        <input type="text" class="item-nome" required>
        <label>Quantidade:</label>
        <input type="number" class="item-qtd" required>
      `;
      document.getElementById('itens').appendChild(novoItem);
    }

    document.getElementById('pedidoForm').addEventListener('submit', function(e) {
      e.preventDefault();

      const login = document.getElementById('login').value;
      const senha = document.getElementById('senha').value;
      const solicitante = document.getElementById('solicitante').value;
      const unidade = document.getElementById('unidade').value;
      const setor = document.getElementById('setor').value;
      const itensNomes = document.querySelectorAll('.item-nome');
      const itensQtds = document.querySelectorAll('.item-qtd');

      let corpoEmail = `Login: ${login}\nSenha: ${senha}\nSolicitante: ${solicitante}\nUnidade: ${unidade}\nSetor: ${setor}\n\nItens Solicitados:\n`;

      itensNomes.forEach((input, index) => {
        const nome = input.value;
        const qtd = itensQtds[index].value;
        corpoEmail += `- ${nome} (Qtd: ${qtd})\n`;
      });

      const mailto = `mailto:leitaoochefe@gmail.com?subject=Pedido Extra - ${encodeURIComponent(unidade)}&body=${encodeURIComponent(corpoEmail)}`;
      window.location.href = mailto;

      setTimeout(() => {
        window.location.href = "sucesso.html";
      }, 1000);
    });
  </script>

</body>
</html>
