// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'msitef_type.dart';

class MSitefParams {
  final MSitefType modalidade;
  final String? value;
  final String? couponNumber;
  final String? dateFiscal;
  final String? hourFiscal;
  final String? operador;
  final String? params;
  final String? ipSitef;
  final String? storeId;
  final String? terminalId;
  final String? paramsAdd;
  final String? companyDocument;
  final String? comExternal;
  final String? isDoubleValidation;
  final String? otp;
  final String? enabledTransactions;
  final String? automationDocument;

  MSitefParams({
    required this.modalidade,
    this.value,
    this.couponNumber,
    this.dateFiscal,
    this.hourFiscal,
    this.operador,
    this.params,
    this.ipSitef,
    this.storeId,
    this.terminalId,
    this.paramsAdd,
    this.companyDocument,
    this.comExternal,
    this.isDoubleValidation,
    this.otp,
    this.enabledTransactions,
    this.automationDocument,
  });

  MSitefParams copyWith({
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
  }) {
    return MSitefParams(
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
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modalidade': modalidade.modality,
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
    };
  }

  factory MSitefParams.fromMap(Map<String, dynamic> map) {
    return MSitefParams(
      modalidade: map['modalidade'] != null ? MSitefType.fromString(['modalidade'] as String) : MSitefType.credit,
      value: map['value'] != null ? map['value'] as String : null,
      couponNumber: map['couponNumber'] != null ? map['couponNumber'] as String : null,
      dateFiscal: map['dateFiscal'] != null ? map['dateFiscal'] as String : null,
      hourFiscal: map['hourFiscal'] != null ? map['hourFiscal'] as String : null,
      operador: map['operador'] != null ? map['operador'] as String : null,
      params: map['params'] != null ? map['params'] as String : null,
      ipSitef: map['ipSitef'] != null ? map['ipSitef'] as String : null,
      storeId: map['storeId'] != null ? map['storeId'] as String : null,
      terminalId: map['terminalId'] != null ? map['terminalId'] as String : null,
      paramsAdd: map['paramsAdd'] != null ? map['paramsAdd'] as String : null,
      companyDocument: map['companyDocument'] != null ? map['companyDocument'] as String : null,
      comExternal: map['comExternal'] != null ? map['comExternal'] as String : null,
      isDoubleValidation: map['isDoubleValidation'] != null ? map['isDoubleValidation'] as String : null,
      otp: map['otp'] != null ? map['otp'] as String : null,
      enabledTransactions: map['enabledTransactions'] != null ? map['enabledTransactions'] as String : null,
      automationDocument: map['automationDocument'] != null ? map['automationDocument'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MSitefParams.fromJson(String source) => MSitefParams.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MSitefParams(modalidade: $modalidade, value: $value, couponNumber: $couponNumber, dateFiscal: $dateFiscal, hourFiscal: $hourFiscal, operador: $operador, params: $params, ipSitef: $ipSitef, storeId: $storeId, terminalId: $terminalId, paramsAdd: $paramsAdd, companyDocument: $companyDocument, comExternal: $comExternal, isDoubleValidation: $isDoubleValidation, otp: $otp, enabledTransactions: $enabledTransactions, automationDocument: $automationDocument)';
  }

  @override
  bool operator ==(covariant MSitefParams other) {
    if (identical(this, other)) return true;

    return other.modalidade == modalidade && other.value == value && other.couponNumber == couponNumber && other.dateFiscal == dateFiscal && other.hourFiscal == hourFiscal && other.operador == operador && other.params == params && other.ipSitef == ipSitef && other.storeId == storeId && other.terminalId == terminalId && other.paramsAdd == paramsAdd && other.companyDocument == companyDocument && other.comExternal == comExternal && other.isDoubleValidation == isDoubleValidation && other.otp == otp && other.enabledTransactions == enabledTransactions && other.automationDocument == automationDocument;
  }

  @override
  int get hashCode {
    return modalidade.hashCode ^ value.hashCode ^ couponNumber.hashCode ^ dateFiscal.hashCode ^ hourFiscal.hashCode ^ operador.hashCode ^ params.hashCode ^ ipSitef.hashCode ^ storeId.hashCode ^ terminalId.hashCode ^ paramsAdd.hashCode ^ companyDocument.hashCode ^ comExternal.hashCode ^ isDoubleValidation.hashCode ^ otp.hashCode ^ enabledTransactions.hashCode ^ automationDocument.hashCode;
  }
}
