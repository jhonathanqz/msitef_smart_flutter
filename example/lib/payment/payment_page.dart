import 'package:msitef_smart_flutter/payments/model/params/msitef_type.dart';
import 'package:flutter/material.dart';
import 'package:msitef_smart_flutter/msitef_smart_flutter.dart';
import 'package:msitef_smart_flutter/payments/model/params/transaction_params.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  double? saleValue;
  TextEditingController moneyController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) => setState(() {}),
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: "Digite o valor"),
            controller: moneyController,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Selecione o método de pagamento",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 10.0,
            children: <Widget>[
              ElevatedButton(
                child: const Text("Débito"),
                onPressed: () {
                  MSitefSmart.instance().payment.mSitefTransaction(
                        transactionParams: TransactionParams(
                          modalidade: MSitefType.debit,
                          value: '10',
                          couponNumber: DateTime.now().toIso8601String(),
                          dateFiscal: '2021-09-01',
                          hourFiscal: '12:00:00',
                          operador: 'teste',
                          ipSitef: '192.168.0.165',
                          storeId: '00000000',
                          terminalId: '00000001',
                          companyDocument: '00000000000000',
                          automationDocument: '00000000000000',
                        ),
                      );
                },
              ),
              ElevatedButton(
                child: const Text("Crédito"),
                onPressed: () {
                  MSitefSmart.instance().payment.mSitefTransaction(
                        transactionParams: TransactionParams(
                          modalidade: MSitefType.credit,
                          value: '15',
                          couponNumber: DateTime.now().toIso8601String(),
                          dateFiscal: '2021-09-01',
                          hourFiscal: '12:00:00',
                          operador: 'teste',
                          ipSitef: '192.168.0.165',
                          storeId: '00000000',
                          terminalId: '00000001',
                          companyDocument: '00000000000000',
                          automationDocument: '00000000000000',
                        ),
                      );
                },
              ),
              ElevatedButton(
                child: const Text("Pix"),
                onPressed: () {
                  MSitefSmart.instance().payment.mSitefTransaction(
                        transactionParams: TransactionParams(
                          modalidade: MSitefType.pix,
                          value: '20',
                          couponNumber: DateTime.now().toIso8601String(),
                          dateFiscal: '2021-09-01',
                          hourFiscal: '12:00:00',
                          operador: 'teste',
                          ipSitef: '192.168.0.165',
                          storeId: '00000000',
                          terminalId: '00000001',
                          companyDocument: '00000000000000',
                          automationDocument: '00000000000000',
                        ),
                      );
                },
              ),
              ElevatedButton(
                child: const Text("Voucher"),
                onPressed: () {
                  MSitefSmart.instance().payment.mSitefTransaction(
                        transactionParams: TransactionParams(
                          modalidade: MSitefType.voucher,
                          value: '30',
                          couponNumber: DateTime.now().toIso8601String(),
                          dateFiscal: '2021-09-01',
                          hourFiscal: '12:00:00',
                          operador: 'teste',
                          ipSitef: '192.168.0.165',
                          storeId: '00000000',
                          terminalId: '00000001',
                          companyDocument: '00000000000000',
                          automationDocument: '00000000000000',
                        ),
                      );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
