package com.qztech.msitef_smart_flutter.usecase;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;


import org.json.JSONException;
import org.json.JSONObject;

import java.util.Map;

import io.flutter.plugin.common.MethodCall;

public class MSitefUsecase {

    private Intent intentMSitef;
    private JSONObject jsonCampos;

    protected class RequestCode {
        protected static final int PERFORM_TRANSACTION_MSITEF = 1234;
    }

    private void inicializeIntentMSitef() {
        if (intentMSitef == null) {
            try {
                intentMSitef = new Intent("br.com.softwareexpress.sitef.msitef.ACTIVITY_CLISITEF");
            } catch (Exception e) {
            }
        }
    }

    public void mSitefMenu(Activity activity, MethodCall call) {
        String storeMSitef = call.argument("storeId");
        String serverIP = call.argument("ipSitef");
        String companyDoc = call.argument("companyDocument");
        String comExternaMsitef = call.argument("comExternal");
        String doubleValidationMsitef = call.argument("isDoubleValidation");
        String otpMsitef = call.argument("otp");
        String transactionsMsitef = call.argument("enabledTransactions");
        String autDocument = call.argument("automationDocument");
        String terminalMSitef = call.argument("terminalId");
        inicializeIntentMSitef();
        intentMSitef.putExtra("tipoPinpad", "ANDROID_USB");
        intentMSitef.putExtra("empresaSitef", storeMSitef);
        intentMSitef.putExtra("enderecoSitef", serverIP);
        intentMSitef.putExtra("modalidade", "110");
        intentMSitef.putExtra("CNPJ_CPF", companyDoc);
        intentMSitef.putExtra("cnpj_automacao", autDocument);
        intentMSitef.putExtra("habilitaTrace", "1");
        intentMSitef.putExtra("chaveTrace", "FB20144EE4283A58");
        intentMSitef.putExtra("terminalSitef", terminalMSitef);

        if (!transactionsMsitef.equals("")) {
            intentMSitef.putExtra("transacoesHabilitadas", transactionsMsitef);
        }

        if (!comExternaMsitef.equals("")) {
            intentMSitef.putExtra("comExterna", comExternaMsitef);
            switch (comExternaMsitef) {
                case "1":
                    intentMSitef.putExtra("isDoubleValidation", doubleValidationMsitef);
                case "2":
                case "3":
                    intentMSitef.putExtra("otp", otpMsitef);
                default:
                    break;
            }

        }
        activity.startActivityForResult(intentMSitef, RequestCode.PERFORM_TRANSACTION_MSITEF);
    }

    public void mSitefTransaction(Activity activity, MethodCall call) {
        int modalityMSitefI = call.argument("modalidade");
        String companySitef = call.argument("storeId");
        String ipSitef = call.argument("ipSitef");
        String terminal = call.argument("terminalId");
        String operator = call.argument("operator");
        String date = call.argument("date");
        String hour = call.argument("hour");
        String couponNumber = call.argument("couponNumber");
        String value = call.argument("value");
        String companyDocument = call.argument("companyDocument");
        String externalComunication = call.argument("comExternal");
        String isDoubleValidarionResponse = call.argument("isDoubleValidation");
        String otpGSurf = call.argument("otp");
        String enabledTransaction = call.argument("enabledTransactions");
        String automationDocumentResponse = call.argument("automationDocument");


        String modalityMSitef = String.valueOf(modalityMSitefI);


        inicializeIntentMSitef();

        intentMSitef.putExtra("tipoPinpad", "ANDROID_USB");
        intentMSitef.putExtra("empresaSitef", companySitef);
        intentMSitef.putExtra("enderecoSitef", ipSitef);
        intentMSitef.putExtra("terminalSitef", terminal);
        intentMSitef.putExtra("operador", operator);
        intentMSitef.putExtra("data", date);
        intentMSitef.putExtra("hora", hour);
        intentMSitef.putExtra("numeroCupom", couponNumber);
        intentMSitef.putExtra("modalidade", modalityMSitef);
        intentMSitef.putExtra("valor", value);
        intentMSitef.putExtra("CNPJ_CPF", companyDocument);
        intentMSitef.putExtra("timeoutColeta", "30");
        intentMSitef.putExtra("acessibilidadeVisual", "0");
        intentMSitef.putExtra("habilitaTrace", "1");
        intentMSitef.putExtra("chaveTrace", "FB20144EE4283A58");

        if (modalityMSitef.equals("122")) {
            intentMSitef.putExtra("transacoesHabilitadas", "7;");
        }

        intentMSitef.putExtra("cnpj_automacao", automationDocumentResponse);
        if (!enabledTransaction.equals("")) {
            intentMSitef.putExtra("restricoes", enabledTransaction);
        }
        if (!externalComunication.equals("")) {

            intentMSitef.putExtra("comExterna", externalComunication);
            switch (externalComunication) {
                case "1":
                    intentMSitef.putExtra("isDoubleValidation", isDoubleValidarionResponse);
                    // break;
                case "2":
                    // break;
                case "3":
                    intentMSitef.putExtra("otp", otpGSurf);
                    // break;
            }

        }

        activity.startActivityForResult(intentMSitef, RequestCode.PERFORM_TRANSACTION_MSITEF);
    }

    public void startAction(Activity activity, MethodCall call) {
        Map<String, String> map;
        Bundle bundle = new Bundle();

        map = call.argument("mapMsiTef");
        for (String key : map.keySet()) {
            bundle.putString(key, map.get(key));
        }
        inicializeIntentMSitef();
        intentMSitef.putExtras(bundle);
        activity.startActivityForResult(intentMSitef,  RequestCode.PERFORM_TRANSACTION_MSITEF);
    }


    public String respSitefToJson(Intent data) throws JSONException {
        JSONObject json = new JSONObject();
        String typeFields = data.getStringExtra("TIPO_CAMPOS");
        jsonCampos = new JSONObject(typeFields);
        json.put("CODRESP", data.getStringExtra("CODRESP"));
        json.put("COMP_DADOS_CONF", data.getStringExtra("COMP_DADOS_CONF"));
        json.put("CODTRANS", data.getStringExtra("CODTRANS"));
        json.put("VLTROCO", data.getStringExtra("VLTROCO"));
        json.put("REDE_AUT", data.getStringExtra("REDE_AUT"));
        json.put("BANDEIRA", data.getStringExtra("BANDEIRA"));
        json.put("nsuSitef", data.getStringExtra("NSU_SITEF"));
        json.put("NSU_HOST", data.getStringExtra("NSU_HOST"));
        json.put("COD_AUTORIZACAO", data.getStringExtra("COD_AUTORIZACAO"));
        json.put("NUM_PARC", data.getStringExtra("NUM_PARC"));
        json.put("TIPO_PARC", data.getStringExtra("TIPO_PARC"));
        json.put("BIN_CART", jsonCampos.getString("136"));
        json.put("TESTE", jsonCampos.getString("110"));
        json.put("VIA_ESTABELECIMENTO", data.getStringExtra("VIA_ESTABELECIMENTO"));
        json.put("VIA_CLIENTE", data.getStringExtra("VIA_CLIENTE"));

        return json.toString();
    }


}
