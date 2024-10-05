import 'package:msitef_smart_flutter/payments/model/params/msitef_params.dart';
import 'package:msitef_smart_flutter/payments/model/params/msitef_type.dart';
import 'package:flutter/material.dart';
import 'package:msitef_smart_flutter/msitef_smart_flutter.dart';

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
                        mSitefParams: MSitefParams(modalidade: MSitefType.debit, value: '10'),
                      );
                },
              ),
              ElevatedButton(
                child: const Text("Crédito"),
                onPressed: () {
                  MSitefSmart.instance().payment.mSitefTransaction(
                        mSitefParams: MSitefParams(modalidade: MSitefType.credit, value: '10'),
                      );
                },
              ),
              ElevatedButton(
                child: const Text("Pix"),
                onPressed: () {
                  MSitefSmart.instance().payment.mSitefTransaction(
                        mSitefParams: MSitefParams(modalidade: MSitefType.pix, value: '10'),
                      );
                },
              ),
              ElevatedButton(
                child: const Text("Voucher"),
                onPressed: () {
                  MSitefSmart.instance().payment.mSitefTransaction(
                        mSitefParams: MSitefParams(modalidade: MSitefType.voucher, value: '10'),
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
