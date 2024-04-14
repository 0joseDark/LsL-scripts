//  LSL Script com Listen, Says e Comparações para Respostas Personalizadas
default {
  listen_handle = llListen(0); // Canal para escuta
}

on llListenRemove (int handle) {
  // Caso a escuta seja interrompida, retona a escuta no canal 0
  if (handle == listen_handle) {
    listen_handle = llListen(0);
  }
}

on chat (string message, lldetectedkey key)  {
  // Verifica se a mensagem é válida (canal local e não é eco da própria mensagem)
  if ((key == llGetOwner() && llGetLocalChatHistory(message)) || key != llGetOwner()) {
    return;
  }

  // Separa a mensagem em comando e argumento
  list message_list = llSplitString(message, " ");
  string command = llToLower(message_list[0]); // Converte o comando para minúsculo

  // Compara o comando com as opções disponíveis
  switch (command) {
    case "olá":
      llSay(0, ".olá");
      break;
    case "como você vai?":
      llSay(0, "Estou bem, obrigado!");
      break;
    // Adicione mais casos aqui para diferentes comandos e respostas
    default:
      // Mensagem inválida, pode enviar mensagem de erro (opcional)
      // llSay(0, "Comando inválido. Use 'olá' ou 'como você vai?'");
      break;
  }
}
