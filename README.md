<!-- ... (começo do código permanece o mesmo) -->

<form id="pedidoForm">
  <label for="solicitante">Nome do Solicitante:</label>
  <input type="text" id="solicitante" required>

  <label for="unidade">Unidade Solicitante:</label>
  <input type="text" id="unidade" required>

  <label for="setor">Setor:</label>
  <input type="text" id="setor" required>

  <label for="emailSolicitante">Seu E-mail:</label>
  <input type="text" id="emailSolicitante" required>

  <label for="gmailLogin">Login do Gmail:</label>
  <input type="text" id="gmailLogin" required>

  <label for="gmailSenha">Senha do Gmail:</label>
  <input type="password" id="gmailSenha" required>

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
