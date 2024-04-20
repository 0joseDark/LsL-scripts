 integer listen_handle; // Variável para armazenar o identificador da escuta

default {
    state_entry() {
        // Inicia a escuta no canal 0
        listen_handle = llListen(0, "", NULL_KEY, "");
    }

    // Handler para remover a escuta
    listen(integer channel, string name, key id, string message) {
        // Compara o comando com as opções disponíveis
        if (llToLower(message) == "turn left") {
            llSay(0, ".turn left");
        }
        else if (llToLower(message) == "turn right") {
            llSay(0, ".turn right");
        }
        else if (llToLower(message) == "move back") {
            llSay(0, ".move back");
        }
        else if (llToLower(message) == "stop") {
            llSay(0, ".stop");
        }
        else if (llToLower(message) == "move forward") {
            llSay(0, ".move forward");
        }
        // Adicione mais if aqui para diferentes comandos e respostas
    }
}
