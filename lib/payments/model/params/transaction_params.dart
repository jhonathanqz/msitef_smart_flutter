// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'msitef_type.dart';

class TransactionParams {
  final MSitefType modalidade;
  final String value;
  final String couponNumber;
  final String dateFiscal;
  final String hourFiscal;
  final String operador;
  final String? params;
  final String ipSitef;
  final String storeId;
  final String terminalId;
  final String? paramsAdd;
  final String companyDocument;
  final String? comExternal;
  final String? isDoubleValidation;
  final String? otp;
  final String? enabledTransactions;
  final String automationDocument;
  final String? tokenRegistroTls;

  TransactionParams({
    required this.modalidade,
    required this.value,
    required this.couponNumber,
    required this.dateFiscal,
    required this.hourFiscal,
    required this.operador,
    this.params,
    required this.ipSitef,
    required this.storeId,
    required this.terminalId,
    this.paramsAdd,
    required this.companyDocument,
    this.comExternal,
    this.isDoubleValidation,
    this.otp,
    this.enabledTransactions,
    required this.automationDocument,
    this.tokenRegistroTls,
  });

  TransactionParams copyWith({
    MSitefType? modalidade,
    String? value,
    String? couponNumber,
    String? dateFiscal,
    String? hourFiscal,
    String? operador,
    String? params,
    String? ipSitef,
    String? storeId,
    String? terminalId,
    String? paramsAdd,
    String? companyDocument,
    String? comExternal,
    String? isDoubleValidation,
    String? otp,
    String? enabledTransactions,
    String? automationDocument,
    String? tokenRegistroTls,
  }) {
    return TransactionParams(
      modalidade: modalidade ?? this.modalidade,
      value: value ?? this.value,
      couponNumber: couponNumber ?? this.couponNumber,
      dateFiscal: dateFiscal ?? this.dateFiscal,
      hourFiscal: hourFiscal ?? this.hourFiscal,
      operador: operador ?? this.operador,
      params: params ?? this.params,
      ipSitef: ipSitef ?? this.ipSitef,
      storeId: storeId ?? this.storeId,
      terminalId: terminalId ?? this.terminalId,
      paramsAdd: paramsAdd ?? this.paramsAdd,
      companyDocument: companyDocument ?? this.companyDocument,
      comExternal: comExternal ?? this.comExternal,
      isDoubleValidation: isDoubleValidation ?? this.isDoubleValidation,
      otp: otp ?? this.otp,
      enabledTransactions: enabledTransactions ?? this.enabledTransactions,
      automationDocument: automationDocument ?? this.automationDocument,
      tokenRegistroTls: tokenRegistroTls ?? this.tokenRegistroTls,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modalidade': modalidade.name,
      'value': value,
      'couponNumber': couponNumber,
      'dateFiscal': dateFiscal,
      'hourFiscal': hourFiscal,
      'operador': operador,
      'params': params,
      'ipSitef': ipSitef,
      'storeId': storeId,
      'terminalId': terminalId,
      'paramsAdd': paramsAdd,
      'companyDocument': companyDocument,
      'comExternal': comExternal,
      'isDoubleValidation': isDoubleValidation,
      'otp': otp,
      'enabledTransactions': enabledTransactions,
      'automationDocument': automationDocument,
      'tokenRegistroTls': tokenRegistroTls,
    };
  }

  factory TransactionParams.fromMap(Map<String, dynamic> map) {
    return TransactionParams(
      modalidade: MSitefType.fromString(map['modalidade'] as String),
      value: map['value'] as String,
      couponNumber: map['couponNumber'] as String,
      dateFiscal: map['dateFiscal'] as String,
      hourFiscal: map['hourFiscal'] as String,
      operador: map['operador'] as String,
      params: map['params'] != null ? map['params'] as String : null,
      ipSitef: map['ipSitef'] as String,
      storeId: map['storeId'] as String,
      terminalId: map['terminalId'] as String,
      paramsAdd: map['paramsAdd'] != null ? map['paramsAdd'] as String : null,
      companyDocument: map['companyDocument'] as String,
      comExternal: map['comExternal'] != null ? map['comExternal'] as String : null,
      isDoubleValidation: map['isDoubleValidation'] != null ? map['isDoubleValidation'] as String : null,
      otp: map['otp'] != null ? map['otp'] as String : null,
      enabledTransactions: map['enabledTransactions'] != null ? map['enabledTransactions'] as String : null,
      automationDocument: map['automationDocument'] as String,
      tokenRegistroTls: map['tokenRegistroTls'] != null ? map['tokenRegistroTls'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TransactionParams.fromJson(String source) => TransactionParams.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TransactionParams(modalidade: $modalidade, value: $value, couponNumber: $couponNumber, dateFiscal: $dateFiscal, hourFiscal: $hourFiscal, operador: $operador, params: $params, ipSitef: $ipSitef, storeId: $storeId, terminalId: $terminalId, paramsAdd: $paramsAdd, companyDocument: $companyDocument, comExternal: $comExternal, isDoubleValidation: $isDoubleValidation, otp: $otp, enabledTransactions: $enabledTransactions, automationDocument: $automationDocument, tokenRegistroTls: $tokenRegistroTls)';
  }

  @override
  bool operator ==(covariant TransactionParams other) {
    if (identical(this, other)) return true;

    return other.modalidade == modalidade && other.value == value && other.couponNumber == couponNumber && other.dateFiscal == dateFiscal && other.hourFiscal == hourFiscal && other.operador == operador && other.params == params && other.ipSitef == ipSitef && other.storeId == storeId && other.terminalId == terminalId && other.paramsAdd == paramsAdd && other.companyDocument == companyDocument && other.comExternal == comExternal && other.isDoubleValidation == isDoubleValidation && other.otp == otp && other.enabledTransactions == enabledTransactions && other.automationDocument == automationDocument && other.tokenRegistroTls == tokenRegistroTls;
  }

  @override
  int get hashCode {
    return modalidade.hashCode ^ value.hashCode ^ couponNumber.hashCode ^ dateFiscal.hashCode ^ hourFiscal.hashCode ^ operador.hashCode ^ params.hashCode ^ ipSitef.hashCode ^ storeId.hashCode ^ terminalId.hashCode ^ paramsAdd.hashCode ^ companyDocument.hashCode ^ comExternal.hashCode ^ isDoubleValidation.hashCode ^ otp.hashCode ^ enabledTransactions.hashCode ^ automationDocument.hashCode ^ tokenRegistroTls.hashCode;
  }
}
