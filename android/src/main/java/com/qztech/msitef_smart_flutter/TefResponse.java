package com.qztech.msitef_smart_flutter;
/*======================================================================================
  Arquivo       : TefResponse.java
  Projeto       : PagSeguro
  Plataforma    : Android
  Equipamentos  : Dispositivos Android
  Data Criação  : 03/Mar/2023
  Autor         : Jhonathan Queiroz

  Descrição   : TefResponse.java:
                   - Classe responsável por mapear os campos de resposta do Sitef
  =========================================================================================*/
public class TefResponse {
    private int id;
    private String tefCodPayment;//tefCodPagamento;
    private String tefDescPayment;//tefDescPagamento;
    private String tefInstitution;//tefInstituicao;
    private String tefCodInstitution;//tefCodInstituicao;
    private String tefCardType;//tefTipoCartao;
    private String binCard;//binCartao;
    private String tefDigitalWalletId;//tefIDCarteiraDigital;
    private String tefDigitalWalletType;//tefTipoCarteiraDigital;
    private String tefDigitalWalletName;//tefNomeCarteiraDigital;
    private String tefNSUSitef;
    private String tefNSUAuthorizing;//tefNSUAutorizador;
    private String tefCodAuthorization;//tefCodAutorizacao;
    private String establishmentReceipt;//comprovanteEstabelecimento;
    private String customerReceipt;//comprovanteCliente;
    private String transactionConfirmation;//confirmacaoTransacao;
    private String couponModality;//modalidadeCupom;
    private String transactionDateTime;//dataHoraTransacao;
    private String cancellationMode;//modalidadeCancelamento;
    private String amountToPay;//saldoPagar;
    private String amountReceived;//valorRecebido;
    private String returnValue;//valorDevolucao;
    private String paymentAmount;//valorPagamento;
    private String codCancellationMode;//codModalidadeCancelamento;
    private int resultCode;
    private String resultCodeMsitef;
    private String typeFields;
    private String codDocumentCancelled;
    private String amountCancelled;
    private String cardNumber;
    private String cardNumberLast;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTefCodPayment() {
        return tefCodPayment;
    }

    public void setTefCodPayment(String codPayment) {
        this.tefCodPayment = codPayment;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumberResp) {
        this.cardNumber = cardNumberResp;
    }

    public String getCardNumberLast() {
        return cardNumberLast;
    }

    public void setCardNumberLast(String cardNumberLastResp) {
        this.cardNumberLast = cardNumberLastResp;
    }

    public String getAmountCancelled() {
        return amountCancelled;
    }

    public void setAmountCancelled(String amountCanc) {
        this.amountCancelled = amountCanc;
    }

    public String getCodDocumentCanceled() {
        return codDocumentCancelled;
    }

    public void setCodDocumentCanceled(String document) {
        this.codDocumentCancelled = document;
    }

    public String getTefDescPayment() {
        return tefDescPayment;
    }

    public void setTefDescPayment(String descPayment) {
        this.tefDescPayment = descPayment;
    }

    public String getTefInstitution() {
        return tefInstitution;
    }

    public void setTefInstitution(String institution) {
        this.tefInstitution = institution;
    }

    public String getTefCodInstituicao() {
        return tefCodInstitution;
    }

    public void setTefCodInstitution (String codInstitution) {
        this.tefCodInstitution = codInstitution;
    }

    public String getTefCardType() {
        return tefCardType;
    }

    public void setTefCardType(String cardType) {
        this.tefCardType = cardType;
    }

    public String getBinCard() {
        return binCard;
    }

    public void setBinCard(String codBinCard) {
        this.binCard = codBinCard;
    }

    public String getTefDigitalWalletId() {
        return tefDigitalWalletId;
    }

    public void setTefDigitalWalletId(String digitalWalletId) {
        this.tefDigitalWalletId = digitalWalletId;
    }

    public String getTefDigitalWalletName() {
        return tefDigitalWalletName;
    }

    public void setTefDigitalWalletName(String digitalWalletName) {
        this.tefDigitalWalletName = digitalWalletName;
    }

    public String getTefNSUSitef() {
        return tefNSUSitef;
    }

    public void setTefNSUSitef(String nsuSitef) {
        this.tefNSUSitef = nsuSitef;
    }

    public String getTefNSUAuthorizing() {
        return tefNSUAuthorizing;
    }

    public void setTefNSUAuthorizing(String nsuAuthorizing) {
        this.tefNSUAuthorizing = nsuAuthorizing;
    }

    public String getTefCodAuthorization() {
        return tefCodAuthorization;
    }

    public void setTefCodAuthorization(String codAuthorizationTef) {
        this.tefCodAuthorization = codAuthorizationTef;
    }

    public String getEstablishmentReceipt() {
        return establishmentReceipt;
    }

    public void setEstablishmentReceipt(String compEstablishment) {
        this.establishmentReceipt = compEstablishment;
    }

    public String getCustomerReceipt() {
        return customerReceipt;
    }

    public void setCustomerReceipt(String compCustomer) {
        this.customerReceipt = compCustomer;
    }

    public String getTransactionConfirmation() {
        return transactionConfirmation;
    }

    public void setTransactionConfirmation(String confirmation) {
        this.transactionConfirmation = confirmation;
    }

    public String getCouponModality() {
        return couponModality;
    }

    public void setCouponModality(String couponMod) {
        this.couponModality = couponMod;
    }

    public String getTransactionDateTime() {
        return transactionDateTime;
    }

    public void setTransactionDateTime(String dateTime) {
        this.transactionDateTime = dateTime;
    }

    public String getCancellationMode() {
        return cancellationMode;
    }

    public void setCancellationMode(String cancellationMod) {
        this.cancellationMode = cancellationMod;
    }

    public String getAmountToPay() {
        return amountToPay;
    }

    public void setAmountToPay(String amountPay) {
        this.amountToPay = amountPay;
    }

    public String getAmountReceived() {
        return amountReceived;
    }

    public void setAmountReceived(String totalAmountReceived) {
        this.amountReceived = totalAmountReceived;
    }

    public String getReturnValue() {
        return returnValue;
    }

    public void setReturnValue(String returnVal) {
        this.returnValue = returnVal;
    }

    public String getPaymentAmount() {
        return paymentAmount;
    }

    public void setPaymentAmount(String payment) {
        this.paymentAmount = payment;
    }

    public String getCodCancellationMode() {
        return codCancellationMode;
    }

    public void setCodCancellationMode(String codCancellation) {
        this.codCancellationMode = codCancellation;
    }

    public String getTypeFields() {
        return typeFields;
    }

    public void setTypeFields(String typeField) {
        this.typeFields = typeField;
    }

    public String getResultCodeMsitef() {
        return resultCodeMsitef;
    }

    public void setResultCodeMsitef(String resultCodeSitef) {
        if(resultCodeSitef == null) return;
        this.resultCodeMsitef = resultCodeSitef;
    }

    public int getResultCode() {
        return resultCode;
    }

    public void setResultCode(int resultValue) {
        this.resultCode = resultValue;
    }

    public String getTefDigitalWalletType() {
        return tefDigitalWalletType;
    }

    public void setTefDigitalWalletType(String digitalWalletType) {
        switch (digitalWalletType) {
            case "01":
                this.tefDigitalWalletType = "crédito";
                break;
            case "02":
                this.tefDigitalWalletType = "débito";
                break;
            case "04":
                this.tefDigitalWalletType = "pré-pago";
                break;
            case "05":
                this.tefDigitalWalletType = "frota";
                break;
            case "09":
                this.tefDigitalWalletType = "não definido";
                break;
            default:
                this.tefDigitalWalletType = ("outros" + digitalWalletType);
                break;
        }
    }
}
