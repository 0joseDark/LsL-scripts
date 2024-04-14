integer listen_handle; // Variável para armazenar o identificador da escuta

default {
    state_entry() {
        // Inicia a escuta no canal 0
        listen_handle = llListen(0, "", NULL_KEY, "");
    }

    // Handler para remover a escuta
    listen(integer channel, string name, key id, string message) {
        // Compara o comando com as opções disponíveis
        if (llToLower(message) == "hello") {
            llSay(0, ".hello");
        }
        else if (llToLower(message) == "how are you ?") {
            llSay(0, ".I'm good thanks!");
        }
        else if (llToLower(message) == "and how are you ?") {
            llSay(0, ".I'm great thanks!");
        }
        // Adicione mais casos aqui para diferentes comandos e respostas
    }
}
