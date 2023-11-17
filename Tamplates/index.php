<?php
  include_once("templates/header.php");
?>
  <div class="container">
    <?php if(isset($printMsg) && $printMsg != ''): ?>
      <p id="msg"><?= $printMsg ?></p>
    <?php endif; ?>
    <h1 id="main-title">Lista de Veterinários</h1>
    <?php if(count($vets) > 0): ?>
      <table class="table" id="contacts-table">
        <thead>
          <tr>
            <th scope="col">CRMV</th>
            <th scope="col">Nome</th>
            <th scope="col">Endereço</th>
            <th scope="col">Telefone</th>
            <th scope="col">Celular</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody>
          <?php foreach($vets as $vet): ?>
            <tr>
              <td scope="row" class="col-id"><?= $vet["CRMV"] ?></td>
              <td scope="row"><?= $vet["Nome"] ?></td>
              <td scope="row"><?= $vet["Endereco"] ?></td>
              <td scope="row"><?= $vet["Telefone"] ?></td>
              <td scope="row"> <?= $vet["Celular"] ?> </td>
              <td class="actions">
                 <a href="<?= $BASE_URL ?>show.php?id=<?= $vet["CRMV"] ?>"><i class="fas fa-eye check-icon"></i></a>
                <a href="<?= $BASE_URL ?>edit.php?id=<?= $vet["CRMV"] ?>"><i class="far fa-edit edit-icon"></i></a>
                <form class="delete-form" action="<?= $BASE_URL ?>/config/process.php" method="POST">
                  <input type="hidden" name="type" value="delete">
                  <input type="hidden" name="crmv" value="<?= $vet['CRMV'] ?>">
                  <button type="submit" class="delete-btn"><i class="fas fa-times delete-icon"></i></button>
                </form>
              </td>
            </tr>                     
          <?php endforeach; ?>
        </tbody>
      </table>
    <?php else: ?>  
      <p id="empty-list-text">Tabela de veterinários vazia, <a href="<?= $BASE_URL ?>create.php">clique aqui para cadastrá-los!</a>.</p>
    <?php endif; ?>
  </div>
<?php
  include_once("templates/footer.php");
?>