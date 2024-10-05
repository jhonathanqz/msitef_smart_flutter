// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TefTransactionModel {
  final int? id;
  final String? tefCodPayment;
  final String? tefDescPayment;
  final String? tefInstitution;
  final String? tefCodInstitution;
  final String? tefCardType;
  final String? binCard;
  final String? tefDigitalWalletId;
  final String? tefDigitalWalletType;
  final String? tefDigitalWalletName;
  final String? tefNSUSitef;
  final String? tefNSUAuthorizing;
  final String? tefCodAuthorization;
  final String? establishmentReceipt;
  final String? customerReceipt;
  final String? transactionConfirmation;
  final String? couponModality;
  final String? transactionDateTime;
  final String? cancellationMode;
  final String? amountToPay;
  final String? amountReceived;
  final String? returnValue;
  final String? paymentAmount;
  final String? codCancellationMode;
  final int? resultCode;
  final String? compDadosConf;
  final String? codTrans;
  final String? redeAut;
  final String? codResposta;
  final String? typeFields;
  final String? codDocumentCancelled;
  final String? amountCancelled;
  final String? cardNumber;
  final String? cardNumberLast;

  TefTransactionModel({
    this.id,
    this.tefCodPayment,
    this.tefDescPayment,
    this.tefInstitution,
    this.tefCodInstitution,
    this.tefCardType,
    this.binCard,
    this.tefDigitalWalletId,
    this.tefDigitalWalletType,
    this.tefDigitalWalletName,
    this.tefNSUSitef,
    this.tefNSUAuthorizing,
    this.tefCodAuthorization,
    this.establishmentReceipt,
    this.customerReceipt,
    this.transactionConfirmation,
    this.couponModality,
    this.transactionDateTime,
    this.cancellationMode,
    this.amountToPay,
    this.amountReceived,
    this.returnValue,
    this.paymentAmount,
    this.codCancellationMode,
    this.resultCode,
    this.compDadosConf,
    this.codTrans,
    this.redeAut,
    this.codResposta,
    this.typeFields,
    this.codDocumentCancelled,
    this.amountCancelled,
    this.cardNumber,
    this.cardNumberLast,
  });

  TefTransactionModel copyWith({
    int? id,
    String? tefCodPayment,
    String? tefDescPayment,
    String? tefInstitution,
    String? tefCodInstitution,
    String? tefCardType,
    String? binCard,
    String? tefDigitalWalletId,
    String? tefDigitalWalletType,
    String? tefDigitalWalletName,
    String? tefNSUSitef,
    String? tefNSUAuthorizing,
    String? tefCodAuthorization,
    String? establishmentReceipt,
    String? customerReceipt,
    String? transactionConfirmation,
    String? couponModality,
    String? transactionDateTime,
    String? cancellationMode,
    String? amountToPay,
    String? amountReceived,
    String? returnValue,
    String? paymentAmount,
    String? codCancellationMode,
    int? resultCode,
    String? compDadosConf,
    String? codTrans,
    String? redeAut,
    String? codResposta,
    String? typeFields,
    String? codDocumentCancelled,
    String? amountCancelled,
    String? cardNumber,
    String? cardNumberLast,
  }) {
    return TefTransactionModel(
      id: id ?? this.id,
      tefCodPayment: tefCodPayment ?? this.tefCodPayment,
      tefDescPayment: tefDescPayment ?? this.tefDescPayment,
      tefInstitution: tefInstitution ?? this.tefInstitution,
      tefCodInstitution: tefCodInstitution ?? this.tefCodInstitution,
      tefCardType: tefCardType ?? this.tefCardType,
      binCard: binCard ?? this.binCard,
      tefDigitalWalletId: tefDigitalWalletId ?? this.tefDigitalWalletId,
      tefDigitalWalletType: tefDigitalWalletType ?? this.tefDigitalWalletType,
      tefDigitalWalletName: tefDigitalWalletName ?? this.tefDigitalWalletName,
      tefNSUSitef: tefNSUSitef ?? this.tefNSUSitef,
      tefNSUAuthorizing: tefNSUAuthorizing ?? this.tefNSUAuthorizing,
      tefCodAuthorization: tefCodAuthorization ?? this.tefCodAuthorization,
      establishmentReceipt: establishmentReceipt ?? this.establishmentReceipt,
      customerReceipt: customerReceipt ?? this.customerReceipt,
      transactionConfirmation: transactionConfirmation ?? this.transactionConfirmation,
      couponModality: couponModality ?? this.couponModality,
      transactionDateTime: transactionDateTime ?? this.transactionDateTime,
      cancellationMode: cancellationMode ?? this.cancellationMode,
      amountToPay: amountToPay ?? this.amountToPay,
      amountReceived: amountReceived ?? this.amountReceived,
      returnValue: returnValue ?? this.returnValue,
      paymentAmount: paymentAmount ?? this.paymentAmount,
      codCancellationMode: codCancellationMode ?? this.codCancellationMode,
      resultCode: resultCode ?? this.resultCode,
      compDadosConf: compDadosConf ?? this.compDadosConf,
      codTrans: codTrans ?? this.codTrans,
      redeAut: redeAut ?? this.redeAut,
      codResposta: codResposta ?? this.codResposta,
      typeFields: typeFields ?? this.typeFields,
      codDocumentCancelled: codDocumentCancelled ?? this.codDocumentCancelled,
      amountCancelled: amountCancelled ?? this.amountCancelled,
      cardNumber: cardNumber ?? this.cardNumber,
      cardNumberLast: cardNumberLast ?? this.cardNumberLast,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tefCodPayment': tefCodPayment,
      'tefDescPayment': tefDescPayment,
      'tefInstitution': tefInstitution,
      'tefCodInstitution': tefCodInstitution,
      'tefCardType': tefCardType,
      'binCard': binCard,
      'tefDigitalWalletId': tefDigitalWalletId,
      'tefDigitalWalletType': tefDigitalWalletType,
      'tefDigitalWalletName': tefDigitalWalletName,
      'tefNSUSitef': tefNSUSitef,
      'tefNSUAuthorizing': tefNSUAuthorizing,
      'tefCodAuthorization': tefCodAuthorization,
      'establishmentReceipt': establishmentReceipt,
      'customerReceipt': customerReceipt,
      'transactionConfirmation': transactionConfirmation,
      'couponModality': couponModality,
      'transactionDateTime': transactionDateTime,
      'cancellationMode': cancellationMode,
      'amountToPay': amountToPay,
      'amountReceived': amountReceived,
      'returnValue': returnValue,
      'paymentAmount': paymentAmount,
      'codCancellationMode': codCancellationMode,
      'resultCode': resultCode,
      'compDadosConf': compDadosConf,
      'codTrans': codTrans,
      'redeAut': redeAut,
      'codResposta': codResposta,
      'typeFields': typeFields,
      'codDocumentCancelled': codDocumentCancelled,
      'amountCancelled': amountCancelled,
      'cardNumber': cardNumber,
      'cardNumberLast': cardNumberLast,
    };
  }

  factory TefTransactionModel.fromMap(Map<String, dynamic> map) {
    return TefTransactionModel(
      id: map['id'] != null ? map['id'] as int : null,
      tefCodPayment: map['tefCodPayment'] != null ? map['tefCodPayment'] as String : null,
      tefDescPayment: map['tefDescPayment'] != null ? map['tefDescPayment'] as String : null,
      tefInstitution: map['tefInstitution'] != null ? map['tefInstitution'] as String : null,
      tefCodInstitution: map['tefCodInstitution'] != null ? map['tefCodInstitution'] as String : null,
      tefCardType: map['tefCardType'] != null ? map['tefCardType'] as String : null,
      binCard: map['binCard'] != null ? map['binCard'] as String : null,
      tefDigitalWalletId: map['tefDigitalWalletId'] != null ? map['tefDigitalWalletId'] as String : null,
      tefDigitalWalletType: map['tefDigitalWalletType'] != null ? map['tefDigitalWalletType'] as String : null,
      tefDigitalWalletName: map['tefDigitalWalletName'] != null ? map['tefDigitalWalletName'] as String : null,
      tefNSUSitef: map['tefNSUSitef'] != null ? map['tefNSUSitef'] as String : null,
      tefNSUAuthorizing: map['tefNSUAuthorizing'] != null ? map['tefNSUAuthorizing'] as String : null,
      tefCodAuthorization: map['tefCodAuthorization'] != null ? map['tefCodAuthorization'] as String : null,
      establishmentReceipt: map['establishmentReceipt'] != null ? map['establishmentReceipt'] as String : null,
      customerReceipt: map['customerReceipt'] != null ? map['customerReceipt'] as String : null,
      transactionConfirmation: map['transactionConfirmation'] != null ? map['transactionConfirmation'] as String : null,
      couponModality: map['couponModality'] != null ? map['couponModality'] as String : null,
      transactionDateTime: map['transactionDateTime'] != null ? map['transactionDateTime'] as String : null,
      cancellationMode: map['cancellationMode'] != null ? map['cancellationMode'] as String : null,
      amountToPay: map['amountToPay'] != null ? map['amountToPay'] as String : null,
      amountReceived: map['amountReceived'] != null ? map['amountReceived'] as String : null,
      returnValue: map['returnValue'] != null ? map['returnValue'] as String : null,
      paymentAmount: map['paymentAmount'] != null ? map['paymentAmount'] as String : null,
      codCancellationMode: map['codCancellationMode'] != null ? map['codCancellationMode'] as String : null,
      resultCode: map['resultCode'] != null ? map['resultCode'] as int : null,
      compDadosConf: map['compDadosConf'] != null ? map['compDadosConf'] as String : null,
      codTrans: map['codTrans'] != null ? map['codTrans'] as String : null,
      redeAut: map['redeAut'] != null ? map['redeAut'] as String : null,
      codResposta: map['codResposta'] != null ? map['codResposta'] as String : null,
      typeFields: map['typeFields'] != null ? map['typeFields'] as String : null,
      codDocumentCancelled: map['codDocumentCancelled'] != null ? map['codDocumentCancelled'] as String : null,
      amountCancelled: map['amountCancelled'] != null ? map['amountCancelled'] as String : null,
      cardNumber: map['cardNumber'] != null ? map['cardNumber'] as String : null,
      cardNumberLast: map['cardNumberLast'] != null ? map['cardNumberLast'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TefTransactionModel.fromJson(String source) => TefTransactionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TefTransactionModel(id: $id, tefCodPayment: $tefCodPayment, tefDescPayment: $tefDescPayment, tefInstitution: $tefInstitution, tefCodInstitution: $tefCodInstitution, tefCardType: $tefCardType, binCard: $binCard, tefDigitalWalletId: $tefDigitalWalletId, tefDigitalWalletType: $tefDigitalWalletType, tefDigitalWalletName: $tefDigitalWalletName, tefNSUSitef: $tefNSUSitef, tefNSUAuthorizing: $tefNSUAuthorizing, tefCodAuthorization: $tefCodAuthorization, establishmentReceipt: $establishmentReceipt, customerReceipt: $customerReceipt, transactionConfirmation: $transactionConfirmation, couponModality: $couponModality, transactionDateTime: $transactionDateTime, cancellationMode: $cancellationMode, amountToPay: $amountToPay, amountReceived: $amountReceived, returnValue: $returnValue, paymentAmount: $paymentAmount, codCancellationMode: $codCancellationMode, resultCode: $resultCode, compDadosConf: $compDadosConf, codTrans: $codTrans, redeAut: $redeAut, codResposta: $codResposta, typeFields: $typeFields, codDocumentCancelled: $codDocumentCancelled, amountCancelled: $amountCancelled, cardNumber: $cardNumber, cardNumberLast: $cardNumberLast)';
  }

  @override
  bool operator ==(covariant TefTransactionModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.tefCodPayment == tefCodPayment &&
        other.tefDescPayment == tefDescPayment &&
        other.tefInstitution == tefInstitution &&
        other.tefCodInstitution == tefCodInstitution &&
        other.tefCardType == tefCardType &&
        other.binCard == binCard &&
        other.tefDigitalWalletId == tefDigitalWalletId &&
        other.tefDigitalWalletType == tefDigitalWalletType &&
        other.tefDigitalWalletName == tefDigitalWalletName &&
        other.tefNSUSitef == tefNSUSitef &&
        other.tefNSUAuthorizing == tefNSUAuthorizing &&
        other.tefCodAuthorization == tefCodAuthorization &&
        other.establishmentReceipt == establishmentReceipt &&
        other.customerReceipt == customerReceipt &&
        other.transactionConfirmation == transactionConfirmation &&
        other.couponModality == couponModality &&
        other.transactionDateTime == transactionDateTime &&
        other.cancellationMode == cancellationMode &&
        other.amountToPay == amountToPay &&
        other.amountReceived == amountReceived &&
        other.returnValue == returnValue &&
        other.paymentAmount == paymentAmount &&
        other.codCancellationMode == codCancellationMode &&
        other.resultCode == resultCode &&
        other.compDadosConf == compDadosConf &&
        other.codTrans == codTrans &&
        other.redeAut == redeAut &&
        other.codResposta == codResposta &&
        other.typeFields == typeFields &&
        other.codDocumentCancelled == codDocumentCancelled &&
        other.amountCancelled == amountCancelled &&
        other.cardNumber == cardNumber &&
        other.cardNumberLast == cardNumberLast;
  }

  @override
  int get hashCode {
    return id.hashCode ^ tefCodPayment.hashCode ^ tefDescPayment.hashCode ^ tefInstitution.hashCode ^ tefCodInstitution.hashCode ^ tefCardType.hashCode ^ binCard.hashCode ^ tefDigitalWalletId.hashCode ^ tefDigitalWalletType.hashCode ^ tefDigitalWalletName.hashCode ^ tefNSUSitef.hashCode ^ tefNSUAuthorizing.hashCode ^ tefCodAuthorization.hashCode ^ establishmentReceipt.hashCode ^ customerReceipt.hashCode ^ transactionConfirmation.hashCode ^ couponModality.hashCode ^ transactionDateTime.hashCode ^ cancellationMode.hashCode ^ amountToPay.hashCode ^ amountReceived.hashCode ^ returnValue.hashCode ^ paymentAmount.hashCode ^ codCancellationMode.hashCode ^ resultCode.hashCode ^ compDadosConf.hashCode ^ codTrans.hashCode ^ redeAut.hashCode ^ codResposta.hashCode ^ typeFields.hashCode ^ codDocumentCancelled.hashCode ^ amountCancelled.hashCode ^ cardNumber.hashCode ^ cardNumberLast.hashCode;
  }
}
