package com.qztech.msitef_smart_flutter.presenter;

import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.Map;
import android.os.Handler;
import android.os.Looper;

public class PaymentsFragment implements PaymentsContract {

  private final Handler mainHandler = new Handler(Looper.getMainLooper());

  final MethodChannel channel;

  public PaymentsFragment(MethodChannel channel) {
    this.channel = channel;
  }



  private void runOnUiThread(Runnable runnable) {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      runnable.run();
    } else {
      mainHandler.post(runnable);
    }
  }



  private static final String ON_TRANSACTION_SUCCESS = "onTransactionSuccess";
  private static final String ON_ERROR = "onError";
  private static final String ON_MESSAGE = "onMessage";

  private static final String ON_CHANGED = "onChanged";
  private static final String ON_FINISHED_RESPONSE = "onFinishedResponse";
  private static final String ON_LOADING = "onLoading";
  private static final String WRITE_TO_FILE = "writeToFile";
  private static final String ON_ABORTED_SUCCESSFULLY = "onAbortedSuccessfully";
  private static final String ON_AUTH_PROGRESS = "onAuthProgress";
  private static final String ON_TRANSACTION_INFO = "onTransactionInfo";

  @Override
  public void onError(final String message) {
    runOnUiThread(new Runnable() {
      @Override
      public void run() {
        channel.invokeMethod(ON_ERROR, message);
      }
    });
  }

  @Override
  public void onChanged(String message) {
    runOnUiThread(new Runnable() {
      @Override
      public void run() {
        channel.invokeMethod(ON_CHANGED, message);
      }
    });
  }

  @Override
  public void onMessage(String message) {
    runOnUiThread(new Runnable() {
      @Override
      public void run() {
        channel.invokeMethod(ON_MESSAGE, message);
      }
    });
  }

  @Override
  public void onFinishedResponse(final String message) {
    runOnUiThread(new Runnable() {
      @Override
      public void run() {
        channel.invokeMethod(ON_FINISHED_RESPONSE, message);
      }
    });
  }

  @Override
  public void onLoading(boolean show) {
    runOnUiThread(new Runnable() {
      @Override
      public void run() {
        channel.invokeMethod(ON_LOADING, show);
      }
    });
  }

  @Override
  public void onAuthProgress(final String message) {
    runOnUiThread(new Runnable() {
      @Override
      public void run() {
        channel.invokeMethod(ON_AUTH_PROGRESS, message);
      }
    });
  }

}
