default {
    state_entry() {
        // ID do objeto do menu
        llSetLinkPrimitiveParamsFast(LINK_SET, 1, [LINK_PRIM_TYPE, PRIM_TYPE_BOX]);
        llSetLinkPrimitiveParamsFast(LINK_SET, 1, [LINK_PRIM_SIZE, <0.5, 0.2, 0.1>]);
        llSetLinkPrimitiveParamsFast(LINK_SET, 1, [LINK_PRIM_POSITION, <0, 0, 0.5>]);
        llSetLinkPrimitiveParamsFast(LINK_SET, 1, [LINK_PRIM_ROTATION, <0, 0, 0>]);
        llSetLinkPrimitiveParamsFast(LINK_SET, 1, [LINK_PRIM_NAME, "Menu da Porta"]);
        // Canal de comunicação com o menu
        llListen(12345, "", llGetOwner());
    }

    touch_start(integer total_number) {
        if (llDetectedLinkNumber(0) == 1) {
            // Abrir a porta
            llRot(llGetRot() + <0, 90, 0>);
        }
    }

    listen(integer channel, string name, key id) {
        if (channel == 12345) {
            // Mensagem do menu para fechar a porta
            if (name == "Fechar Porta") {
                llRot(llGetRot() - <0, 90, 0>);
            }
        }
    }
}
