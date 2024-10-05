enum MSitefType {
  credit,
  debit,
  voucher,
  pix,
  refound,
  reprinter,
  administration,
  general;

  String get modality {
    switch (this) {
      case MSitefType.credit:
        return '3';
      case MSitefType.debit:
        return '2';
      case MSitefType.voucher:
        return '2';
      case MSitefType.pix:
        return '122';
      case MSitefType.refound:
        return '200';
      case MSitefType.reprinter:
        return '114';
      case MSitefType.administration:
        return '110';
      case MSitefType.general:
        return '0';
    }
  }

  static MSitefType fromString(String value) {
    switch (value) {
      case '3':
        return MSitefType.credit;
      case '2':
        return MSitefType.debit;
      case '122':
        return MSitefType.pix;
      case '200':
        return MSitefType.refound;
      case '114':
        return MSitefType.reprinter;
      case '110':
        return MSitefType.administration;
      case '0':
        return MSitefType.general;
      default:
        return MSitefType.general;
    }
  }
}
