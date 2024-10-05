package com.qztech.msitef_smart_flutter;

import static android.app.Activity.RESULT_CANCELED;
import static android.app.Activity.RESULT_OK;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.google.gson.Gson;
import com.qztech.msitef_smart_flutter.core.MSitefSmart;


import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry;

public class MSitefSmartFlutterPlugin
  implements FlutterPlugin, MethodCallHandler, ActivityAware, PluginRegistry.ActivityResultListener {
  private static final String CHANNEL_NAME = "msitef_smart_flutter";

  private TefResponse tefResponse;
  private MethodChannel channel;
  private Context context;
  private Activity activity;

  public static MethodChannel.Result _result;

  private MSitefSmart mSitefSmart;

  Gson gson = null;

    protected class RequestCode {
        protected static final int PERFORM_TRANSACTION_MSITEF = 1234;

    }

  public MSitefSmartFlutterPlugin() {}

    public void checkSmart() {
        if(context != null  && channel != null && activity != null) {
            if(mSitefSmart == null) {
                mSitefSmart = new MSitefSmart(context, channel, activity);
            }
        }
    }

  private Gson getGson() {
    if (gson == null) {
      gson = new Gson();
    }
    return gson;
  }

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
    channel = new MethodChannel(binding.getBinaryMessenger(), CHANNEL_NAME);
    context = binding.getApplicationContext();
    channel.setMethodCallHandler(this);
    checkSmart();
  }

  @Override
  public void onAttachedToActivity(@NonNull ActivityPluginBinding binding) {
    this.activity = binding.getActivity();
    binding.addActivityResultListener(this);
  }

  @Override
  public void onDetachedFromActivityForConfigChanges() {
    this.activity = null;
  }

  @Override
  public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding binding) {
    this.activity = binding.getActivity();
    binding.addActivityResultListener(this);
  }

  @Override
  public void onDetachedFromActivity() {
    this.activity = null;
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    _result = result;
      checkSmart();

    if(mSitefSmart != null) {
       mSitefSmart.initPayment(call, result);
    }
  }
  
  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
    channel = null;
    tefResponse = null;
  }

  public void respMSitefToJson(Intent data) {
    String resultCodeMsitef = data.getStringExtra("CODRESP");
    tefResponse.setResultCode(Integer.parseInt(resultCodeMsitef));
    tefResponse.setResultCodeMsitef(data.getStringExtra("CODRESP"));
    tefResponse.setTransactionConfirmation(data.getStringExtra("COMP_DADOS_CONF"));
    tefResponse.setTefCodAuthorization(data.getStringExtra("COD_AUTORIZACAO"));
    tefResponse.setTefNSUSitef(data.getStringExtra("NSU_SITEF"));
    tefResponse.setTefNSUAuthorizing(data.getStringExtra("NSU_HOST"));
    tefResponse.setEstablishmentReceipt(data.getStringExtra("VIA_ESTABELECIMENTO"));
    tefResponse.setCustomerReceipt(data.getStringExtra("VIA_CLIENTE"));
    tefResponse.setTefCodPayment(data.getStringExtra("CODTRANS"));
    tefResponse.setTypeFields(data.getStringExtra("TIPO_CAMPOS"));
  }



  @Override
  public boolean onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        checkTefResponse();
        if (requestCode == 4713) {
            if (resultCode == RESULT_OK && data != null) {
                _result.success(data.getStringExtra("jsonResp"));
            } else {
                _result.notImplemented();
            }
        }
        if (requestCode == RequestCode.PERFORM_TRANSACTION_MSITEF) {
            if (resultCode == RESULT_OK) {
                System.out.println("m-SiTef executado com sucesso!");
                respMSitefToJson(data);
                try {
                    String json = getGson().toJson(tefResponse);
                    _result.success(json);
                } catch (Exception e) {
                    e.printStackTrace();
                }

            } else {
                try {
                    respMSitefToJson(data);
                    String json = getGson().toJson(tefResponse);
                    _result.success(json);
                } catch (Exception e) {
                    e.printStackTrace();
                    tefResponse.setResultCode(999999);
                    String json = getGson().toJson(tefResponse);
                    _result.success(json);
                }
            }
        }
        return false;
    }

    private void checkTefResponse() {
        if(tefResponse == null) {
            tefResponse = new TefResponse();
        }
    }
}
