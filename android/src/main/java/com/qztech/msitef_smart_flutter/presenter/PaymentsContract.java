package com.qztech.msitef_smart_flutter.presenter;

//Contract class
interface PaymentsContract {
  void onError(String message);

  void onMessage(String message);

  void onFinishedResponse(String message);

  void onLoading(boolean show);

  void onChanged(String message);

  void onAuthProgress(String message);
}
