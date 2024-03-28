default {
    state_entry() {
        llSetPrimitiveParams([PRIM_TYPE, PRIM_TYPE_BOX]);
        llSetPrimitiveParams([PRIM_SIZE, <0.5, 0.2, 0.1>]);
        llSetPrimitiveParams([PRIM_NAME, "Menu da Porta"]);
        llSetClickAction(1);
    }

    click_action(integer action) {
        // Enviar mensagem para a porta principal
        llOwnerSay(llGetOwner(), 12345, "Fechar Porta");
    }
}
