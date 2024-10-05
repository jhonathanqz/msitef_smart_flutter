import 'payments/payment.dart';

export 'payments/model/tef_transaction_model.dart';
export 'payments/model/tef_transaction_response.dart';

class MSitefSmart {
  Payment? _payment;

  static MSitefSmart? _instance;

//GET instance from MSitefSmart
  static MSitefSmart instance() {
    _instance ??= MSitefSmart();
    return _instance!;
  }

//Function to init payment and register handler from notify
  Payment initPayment() {
    _payment ??= Payment();
    return _payment!;
  }

  Payment get payment {
    if (_payment == null) {
      return initPayment();
    }
    return _payment!;
  }
}
