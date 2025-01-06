// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter/services.dart';
import '../payments/helper/tef_helper.dart';
import '../payments/model/params/msitef_params.dart';
import '../payments/model/tef_transaction_model.dart';
import '../payments/model/tef_transaction_response.dart';
import '../payments/enum/sitef_modality.dart';

//Fixed channel name
// ignore: constant_identifier_names
const CHANNEL_NAME = "msitef_smart_flutter";

class Payment {
  final channel = const MethodChannel(CHANNEL_NAME);

  final Map<SitefModalityMSitef, String> _modalityMap = {
    SitefModalityMSitef.undefined: '0',
    SitefModalityMSitef.creditCard: '3',
    SitefModalityMSitef.debitCard: '2',
    SitefModalityMSitef.pix: '122',
    SitefModalityMSitef.digitalWallet: '122',
    SitefModalityMSitef.cancellation: '200',
  };

  Future<TefTransactionResponseMSitef?> mSitefTransaction({
    required MSitefParams mSitefParams,
  }) async {
    try {
      Map<String, dynamic> lineToMethodChannel({
        int? modalidade,
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
        return {
          'modalidade': modalidade,
          'value': value,
          'couponNumber': couponNumber,
          'date': dateFiscal,
          'hour': hourFiscal,
          'operator': operador,
          'restricoes': params,
          'ipSitef': ipSitef,
          'storeId': storeId,
          'terminalId': terminalId,
          'parametrosAdc': paramsAdd,
          'companyDocument': companyDocument,
          'comExternal': comExternal,
          'isDoubleValidation': isDoubleValidation,
          'otp': otp,
          'enabledTransactions': enabledTransactions,
          'automationDocument': automationDocument,
          'tokenRegistroTls': tokenRegistroTls,
        };
      }

      final modality = int.tryParse(_modalityMap[mSitefParams.modalidade.modality] ?? '0') ?? 0;

      final paramsTransaction = lineToMethodChannel(
        modalidade: modality,
        value: mSitefParams.value,
        couponNumber: mSitefParams.couponNumber,
        dateFiscal: mSitefParams.dateFiscal,
        hourFiscal: mSitefParams.hourFiscal,
        operador: mSitefParams.operador,
        ipSitef: mSitefParams.ipSitef,
        storeId: mSitefParams.storeId,
        terminalId: mSitefParams.terminalId,
        paramsAdd: mSitefParams.paramsAdd,
        companyDocument: mSitefParams.companyDocument,
        comExternal: mSitefParams.comExternal,
        isDoubleValidation: mSitefParams.isDoubleValidation,
        otp: mSitefParams.otp,
        enabledTransactions: mSitefParams.enabledTransactions,
        automationDocument: mSitefParams.automationDocument,
        tokenRegistroTls: mSitefParams.tokenRegistroTls ?? '',
      );

      final resultTransaction = await channel.invokeMethod(
        'transactionMsitef',
        paramsTransaction,
      );

      final resultJson = json.decode(resultTransaction);

      final model = TefTransactionModel.fromMap(resultJson);

      return _fetchTefTransactionResponse(
        model: model,
      );
    } catch (e) {
      return null;
    }
  }

  Future<TefTransactionResponseMSitef?> mSitefMenu({
    required String ipSitef,
    required String storeId,
    required String terminalId,
    required String companyDocument,
    required String comExternal,
    required String isDoubleValidation,
    required String otp,
    required String enabledTransactions,
    required String automationDocument,
    String? tokenRegistroTls,
  }) async {
    try {
      Map<String, dynamic> lineToMethodChannel({
        String? ipSitef,
        String? storeId,
        String? terminalId,
        String? companyDocument,
        String? comExternal,
        String? isDoubleValidation,
        String? otp,
        String? enabledTransactions,
        String? automationDocument,
        String? tokenRegistroTlsParams,
      }) {
        return {
          'ipSitef': ipSitef,
          'storeId': storeId,
          'terminalId': terminalId,
          'companyDocument': companyDocument,
          'comExternal': comExternal,
          'isDoubleValidation': isDoubleValidation,
          'otp': otp,
          'enabledTransactions': enabledTransactions,
          'automationDocument': automationDocument,
          'tokenRegistroTls': tokenRegistroTlsParams,
        };
      }

      final paramsTransaction = lineToMethodChannel(
        ipSitef: ipSitef,
        storeId: storeId,
        terminalId: terminalId,
        companyDocument: companyDocument,
        comExternal: comExternal,
        isDoubleValidation: isDoubleValidation,
        otp: otp,
        enabledTransactions: enabledTransactions,
        automationDocument: automationDocument,
        tokenRegistroTlsParams: tokenRegistroTls,
      );

      final resultTransaction = await channel.invokeMethod(
        'menuMSitef',
        paramsTransaction,
      );

      final resultJson = json.decode(resultTransaction);

      final model = TefTransactionModel.fromMap(resultJson);

      return _fetchTefTransactionResponse(
        model: model,
      );
    } catch (e) {
      return null;
    }
  }

  Future<TefTransactionResponseMSitef?> customAction({
    required Map<String, dynamic> params,
  }) async {
    try {
      final resultTransaction = await channel.invokeMethod(
        'action',
        params,
      );

      final resultJson = json.decode(resultTransaction);

      final model = TefTransactionModel.fromMap(resultJson);

      return _fetchTefTransactionResponse(
        model: model,
      );
    } catch (e) {
      return null;
    }
  }

  TefTransactionResponseMSitef _fetchTefTransactionResponse({
    required TefTransactionModel model,
    String? dateTime,
  }) {
    int? resultCode;
    if (model.resultCode != null) {
      resultCode = model.resultCode;
      if (model.resultCode == 0 && (model.tefNSUAuthorizing == '' || model.tefNSUAuthorizing == null)) {
        resultCode = 99999;
      }
    }
    final errorTransaction = TefHelper.checkErrorTransactionTEF(model.resultCode!);

    return TefTransactionResponseMSitef(
      id: model.id ?? 0,
      tefCodPayment: model.tefCodPayment ?? '',
      tefDescPayment: model.tefDescPayment ?? '',
      tefInstitution: model.tefInstitution ?? '',
      tefCodInstitution: model.tefCodInstitution ?? '',
      tefCardType: model.tefCardType ?? '',
      binCard: model.binCard ?? '',
      tefDigitalWalletId: model.tefDigitalWalletId ?? '',
      tefDigitalWalletType: model.tefDigitalWalletType ?? '',
      tefDigitalWalletName: model.tefDigitalWalletName ?? '',
      tefNSUSitef: model.tefNSUSitef ?? '',
      tefNSUAuthorizing: model.tefNSUAuthorizing ?? '',
      tefCodAuthorization: model.tefCodAuthorization ?? '',
      establishmentReceipt: model.establishmentReceipt ?? '',
      customerReceipt: model.customerReceipt ?? '',
      transactionConfirmation: model.transactionConfirmation ?? '',
      couponModality: model.couponModality ?? '',
      transactionDateTime: dateTime ?? model.transactionDateTime ?? '',
      cancellationMode: model.cancellationMode ?? '',
      amountToPay: model.amountToPay ?? '',
      amountReceived: model.amountReceived ?? '',
      returnValue: model.returnValue ?? '',
      paymentAmount: model.paymentAmount ?? '',
      codCancellationMode: model.codCancellationMode ?? '',
      resultCode: resultCode ?? 999999,
      compDadosConf: model.compDadosConf ?? '',
      codTrans: model.codTrans ?? '',
      redeAut: model.redeAut ?? '',
      codeDocumentCanceled: model.codDocumentCancelled ?? '',
      amountCancelled: model.amountCancelled ?? '',
      cardNumber: model.cardNumber ?? '',
      cardNumberLast: model.cardNumberLast ?? '',
      errorTransaction: resultCode == 0 ? null : errorTransaction[resultCode],
      typeFields: model.typeFields,
    );
  }
}
