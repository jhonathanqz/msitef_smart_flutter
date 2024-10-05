package com.qztech.msitef_smart_flutter.core;

import android.app.Activity;
import android.content.Context;
import android.util.Log;


import com.qztech.msitef_smart_flutter.presenter.PaymentsPresenter;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class MSitefSmart {
    final MethodChannel mChannel;

    // FUNCTIONS
    PaymentsPresenter payment;

    // METHODS
    private static final String TRANSACTION = "transactionMsitef";
    private static final String MENU = "menuMSitef";

    private static final String ACTION = "action";

    
    final Context currentContext;
    private Activity mActivity;

    public MSitefSmart(Context context, MethodChannel channel, Activity activity) {
        this.currentContext = context;
        this.mChannel = channel;
        this.mActivity = activity;
    }

    public void initPayment(MethodCall call, MethodChannel.Result result) {
        if (this.payment == null) {
            this.payment = new PaymentsPresenter(this.mActivity, this.currentContext);
        }

        if (call.method.equals(TRANSACTION)) {
            this.payment.mSitefTransaction(call);
            return;
        }

        if (call.method.equals(MENU)) {
            this.payment.mSitefMenu(call);
            return;
        }

        if (call.method.equals(ACTION)) {
            this.payment.startAction(call);
            return;
        }


        result.notImplemented();
    }
}
