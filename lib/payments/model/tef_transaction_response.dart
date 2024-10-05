// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:meta/meta.dart';

@immutable
class TefTransactionResponseMSitef {
  final int id;
  final String tefCodPayment;
  final String tefDescPayment;
  final String tefInstitution;
  final String tefCodInstitution;
  final String tefCardType;
  final String binCard;
  final String tefDigitalWalletId;
  final String tefDigitalWalletType;
  final String tefDigitalWalletName;
  final String tefNSUSitef;
  final String tefNSUAuthorizing;
  final String tefCodAuthorization;
  final String establishmentReceipt;
  final String customerReceipt;
  final String transactionConfirmation;
  final String couponModality;
  final String transactionDateTime;
  final String cancellationMode;
  final String amountToPay;
  final String amountReceived;
  final String returnValue;
  final String paymentAmount;
  final String codCancellationMode;
  final int resultCode;
  final String compDadosConf;
  final String codTrans;
  final String redeAut;
  final String codeDocumentCanceled;
  final String cardholderName;
  final String transactionAmount;
  final String amountCancelled;
  final String cardNumber;
  final String cardNumberLast;
  final String? errorTransaction;
  final String? typeFields;

  const TefTransactionResponseMSitef({
    this.id = 0,
    this.tefCodPayment = '',
    this.tefDescPayment = '',
    this.tefInstitution = '',
    this.tefCodInstitution = '',
    this.tefCardType = '',
    this.binCard = '',
    this.tefDigitalWalletId = '',
    this.tefDigitalWalletType = '',
    this.tefDigitalWalletName = '',
    this.tefNSUSitef = '',
    this.tefNSUAuthorizing = '',
    this.tefCodAuthorization = '',
    this.establishmentReceipt = '',
    this.customerReceipt = '',
    this.transactionConfirmation = '',
    this.couponModality = '',
    this.transactionDateTime = '',
    this.cancellationMode = '',
    this.amountToPay = '',
    this.amountReceived = '',
    this.returnValue = '',
    this.paymentAmount = '',
    this.codCancellationMode = '',
    this.resultCode = 99999,
    this.compDadosConf = '',
    this.codTrans = '',
    this.redeAut = '',
    this.codeDocumentCanceled = '',
    this.cardholderName = '',
    this.transactionAmount = '',
    this.amountCancelled = '',
    this.cardNumber = '',
    this.cardNumberLast = '',
    this.errorTransaction,
    this.typeFields,
  });

  TefTransactionResponseMSitef copyWith({
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
    String? codeDocumentCanceled,
    String? cardholderName,
    String? transactionAmount,
    String? amountCancelled,
    String? cardNumber,
    String? cardNumberLast,
    String? errorTransaction,
    String? typeFields,
  }) {
    return TefTransactionResponseMSitef(
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
      codeDocumentCanceled: codeDocumentCanceled ?? this.codeDocumentCanceled,
      cardholderName: cardholderName ?? this.cardholderName,
      transactionAmount: transactionAmount ?? this.transactionAmount,
      amountCancelled: amountCancelled ?? this.amountCancelled,
      cardNumber: cardNumber ?? this.cardNumber,
      cardNumberLast: cardNumberLast ?? this.cardNumberLast,
      errorTransaction: errorTransaction ?? this.errorTransaction,
      typeFields: typeFields ?? this.typeFields,
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
      'codeDocumentCanceled': codeDocumentCanceled,
      'cardholderName': cardholderName,
      'transactionAmount': transactionAmount,
      'amountCancelled': amountCancelled,
      'cardNumber': cardNumber,
      'cardNumberLast': cardNumberLast,
      'errorTransaction': errorTransaction,
      'typeFields': typeFields,
    };
  }

  factory TefTransactionResponseMSitef.fromMap(Map<String, dynamic> map) {
    return TefTransactionResponseMSitef(
      id: map['id'] as int,
      tefCodPayment: map['tefCodPayment'] as String,
      tefDescPayment: map['tefDescPayment'] as String,
      tefInstitution: map['tefInstitution'] as String,
      tefCodInstitution: map['tefCodInstitution'] as String,
      tefCardType: map['tefCardType'] as String,
      binCard: map['binCard'] as String,
      tefDigitalWalletId: map['tefDigitalWalletId'] as String,
      tefDigitalWalletType: map['tefDigitalWalletType'] as String,
      tefDigitalWalletName: map['tefDigitalWalletName'] as String,
      tefNSUSitef: map['tefNSUSitef'] as String,
      tefNSUAuthorizing: map['tefNSUAuthorizing'] as String,
      tefCodAuthorization: map['tefCodAuthorization'] as String,
      establishmentReceipt: map['establishmentReceipt'] as String,
      customerReceipt: map['customerReceipt'] as String,
      transactionConfirmation: map['transactionConfirmation'] as String,
      couponModality: map['couponModality'] as String,
      transactionDateTime: map['transactionDateTime'] as String,
      cancellationMode: map['cancellationMode'] as String,
      amountToPay: map['amountToPay'] as String,
      amountReceived: map['amountReceived'] as String,
      returnValue: map['returnValue'] as String,
      paymentAmount: map['paymentAmount'] as String,
      codCancellationMode: map['codCancellationMode'] as String,
      resultCode: map['resultCode'] as int,
      compDadosConf: map['compDadosConf'] as String,
      codTrans: map['codTrans'] as String,
      redeAut: map['redeAut'] as String,
      codeDocumentCanceled: map['codeDocumentCanceled'] as String,
      cardholderName: map['cardholderName'] as String,
      transactionAmount: map['transactionAmount'] as String,
      amountCancelled: map['amountCancelled'] as String,
      cardNumber: map['cardNumber'] as String,
      cardNumberLast: map['cardNumberLast'] as String,
      errorTransaction: map['errorTransaction'] as String?,
      typeFields: map['typeFields'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory TefTransactionResponseMSitef.fromJson(String source) => TefTransactionResponseMSitef.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TefTransactionResponseMSitef(id: $id, tefCodPayment: $tefCodPayment, tefDescPayment: $tefDescPayment, tefInstitution: $tefInstitution, tefCodInstitution: $tefCodInstitution, tefCardType: $tefCardType, binCard: $binCard, tefDigitalWalletId: $tefDigitalWalletId, tefDigitalWalletType: $tefDigitalWalletType, tefDigitalWalletName: $tefDigitalWalletName, tefNSUSitef: $tefNSUSitef, tefNSUAuthorizing: $tefNSUAuthorizing, tefCodAuthorization: $tefCodAuthorization, establishmentReceipt: $establishmentReceipt, customerReceipt: $customerReceipt, transactionConfirmation: $transactionConfirmation, couponModality: $couponModality, transactionDateTime: $transactionDateTime, cancellationMode: $cancellationMode, amountToPay: $amountToPay, amountReceived: $amountReceived, returnValue: $returnValue, paymentAmount: $paymentAmount, codCancellationMode: $codCancellationMode, resultCode: $resultCode, compDadosConf: $compDadosConf, codTrans: $codTrans, redeAut: $redeAut, codeDocumentCanceled: $codeDocumentCanceled, cardholderName: $cardholderName, transactionAmount: $transactionAmount, amountCancelled: $amountCancelled, cardNumber: $cardNumber, cardNumberLast: $cardNumberLast), errorTransaction: $errorTransaction, typeFields: $typeFields)';
  }

  @override
  bool operator ==(covariant TefTransactionResponseMSitef other) {
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
        other.codeDocumentCanceled == codeDocumentCanceled &&
        other.cardholderName == cardholderName &&
        other.transactionAmount == transactionAmount &&
        other.amountCancelled == amountCancelled &&
        other.cardNumber == cardNumber &&
        other.cardNumberLast == cardNumberLast &&
        other.errorTransaction == errorTransaction &&
        other.typeFields == typeFields;
  }

  @override
  int get hashCode {
    return id.hashCode ^ tefCodPayment.hashCode ^ tefDescPayment.hashCode ^ tefInstitution.hashCode ^ tefCodInstitution.hashCode ^ tefCardType.hashCode ^ binCard.hashCode ^ tefDigitalWalletId.hashCode ^ tefDigitalWalletType.hashCode ^ tefDigitalWalletName.hashCode ^ tefNSUSitef.hashCode ^ tefNSUAuthorizing.hashCode ^ tefCodAuthorization.hashCode ^ establishmentReceipt.hashCode ^ customerReceipt.hashCode ^ transactionConfirmation.hashCode ^ couponModality.hashCode ^ transactionDateTime.hashCode ^ cancellationMode.hashCode ^ amountToPay.hashCode ^ amountReceived.hashCode ^ returnValue.hashCode ^ paymentAmount.hashCode ^ codCancellationMode.hashCode ^ resultCode.hashCode ^ compDadosConf.hashCode ^ codTrans.hashCode ^ redeAut.hashCode ^ codeDocumentCanceled.hashCode ^ cardholderName.hashCode ^ transactionAmount.hashCode ^ amountCancelled.hashCode ^ cardNumber.hashCode ^ cardNumberLast.hashCode ^ errorTransaction.hashCode ^ typeFields.hashCode;
  }
}
