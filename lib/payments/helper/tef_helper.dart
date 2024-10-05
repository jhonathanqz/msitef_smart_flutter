import 'dart:math';

class TefHelper {
  static const String erroTransaction = '\nPagamento não efetuado. Tente novamente.';

  static String onlyNumberFrom8Positions({required String text}) {
    final regexp = RegExp(r'\D');
    String onlyTextSanitized = text.replaceAll(regexp, '').trim();
    switch (onlyTextSanitized.length) {
      case 0:
        onlyTextSanitized = '00000000';
        break;
      case 1:
        onlyTextSanitized = '0000000$onlyTextSanitized';
        break;
      case 2:
        onlyTextSanitized = '000000$onlyTextSanitized';
        break;
      case 3:
        onlyTextSanitized = '00000$onlyTextSanitized';
        break;
      case 4:
        onlyTextSanitized = '0000$onlyTextSanitized';
        break;
      case 5:
        onlyTextSanitized = '000$onlyTextSanitized';
        break;
      case 6:
        onlyTextSanitized = '00$onlyTextSanitized';
        break;
      case 7:
        onlyTextSanitized = '0$onlyTextSanitized';
        break;
      case 8:
        onlyTextSanitized = onlyTextSanitized;
        break;
    }
    if (onlyTextSanitized.length > 8) {
      onlyTextSanitized = onlyTextSanitized.substring(0, 8);
    }
    return onlyTextSanitized;
  }

  static String priceSanitized(double value) {
    final sanitize = value.toStringAsFixed(2).replaceAll('.', ',');
    return sanitize;
  }

  static String operatorSanitize(String operatorName) {
    String operator = '';
    if (operatorName.trim().length >= 20) {
      operator = operatorName.trim().substring(0, 20);
    } else {
      operator = operatorName.trim();
    }
    return operator;
  }

  static Map<int, String> checkErrorTransactionTEF(int result) {
    String aux = '';
    switch (result) {
      case 0:
        aux = '';
        break;
      case 01:
        aux = 'Refer to card issuer (consultar emissor do cartão)';
        break;
      case 03:
        aux = 'Estabelecimento Inválido';
        break;
      case 05:
        aux = 'Não autorizada (Não aceitar)';
        break;
      case 06:
        aux = 'Erro';
        break;
      case 09:
        aux = 'Transação em Andamento';
        break;
      case 12:
        aux = 'Transação Inválida';
        break;
      case 13:
        aux = 'Valor da Transação Inválido';
        break;
      case 14:
        aux = 'Cartão Inválido';
        break;
      case 15:
        aux = 'Instituição não cadastrada';
        break;
      case 19:
        aux = 'Refaça a Transação';
        break;
      case 30:
        aux = 'Erro de Formato';
        break;
      case 31:
        aux = 'Banco não Pertence à Rede';
        break;
      case 38:
        aux = 'Excedido nº de Tentativas da Senha';
        break;
      case 41:
        aux = 'Cartão Extraviado';
        break;
      case 43:
        aux = 'Cartão Roubado';
        break;
      case 51:
        aux = 'Saldo Insuficiente';
        break;
      case 52:
        aux = 'Conta Corrente não Cadastrada';
        break;
      case 54:
        aux = 'Cartão Vencido';
        break;
      case 55:
        aux = 'Senha Incorreta';
        break;
      case 56:
        aux = 'Cartão sem Registro';
        break;
      case 57:
        aux = 'Transação não Permitida a Esse Cliente';
        break;
      case 58:
        aux = 'Transação não autorizada';
        break;
      case 60:
        aux = 'Ligar para Autorização';
        break;
      case 61:
        aux = 'Excedido Limite de Saque';
        break;
      case 75:
        aux = 'Allowable number of pin tries exceeds';
        break;
      case 76:
        aux = 'Invalid “to” account specified';
        break;
      case 78:
        aux = 'Invalid account specified (general)';
        break;
      case 79:
        aux = 'Transação não Permitida Neste Ciclo';
        break;
      case 80:
        aux = 'Transação não existe na base de dados da Rede';
        break;
      case 81:
        aux = 'Transação Estornada';
        break;
      case 82:
        aux = 'Chave de Criptografia Inválida';
        break;
      case 83:
        aux = 'Time-out';
        break;
      case 84:
        aux = 'Invalid authorization life cycle';
        break;
      case 85:
        aux = 'Not Declined';
        break;
      case 86:
        aux = 'Transação Desfeita';
        break;
      case 89:
        aux = 'Mensagem Enviada pelo HOST';
        break;
      case 90:
        aux = 'Fechamento Contábil';
        break;
      case 91:
        aux = 'Instituição Temporariamente Sem Comunicação';
        break;
      case 96:
        aux = 'Erro de sistema';
        break;
      case -1:
        aux = 'Módulo não inicializado. O PDV tentou chamar alguma rotina sem antes executar a função configura.';
        break;
      case -2:
        aux = 'Operação cancelada pelo operador.';
        break;
      case -3:
        aux = 'O parâmetro função / modalidade é inexistente/inválido.';
        break;
      case -4:
        aux = 'Falta de memória no PDV.';
        break;
      case -5:
        aux = 'Sem comunicação com o SiTef.';
        break;
      case -6:
        aux = 'Operação cancelada pelo usuário (no pinpad).';
        break;
      case -9:
        aux = 'A automação chamou a rotina ContinuaFuncaoSiTefInterativo sem antes iniciar uma função iterativa.';
        break;
      case -10:
        aux = 'Algum parâmetro obrigatório não foi passado.';
        break;
      case -12:
        aux = '''Erro na execução da rotina iterativa. Provavelmente o processo iterativo anterior
não foi executado até o final (enquanto o retorno for igual a 10000).''';
        break;
      case -13:
        aux = '''Documento fiscal não encontrado nos registros da CliSiTef. Retornado em funções
de consulta tais como ObtemQuantidadeTransaçõesPendentes.''';
        break;
      case -15:
        aux = 'Operação cancelada.';
        break;
      case -20:
        aux = 'Parâmetro inválido passado para a função.';
        break;
      case -22:
        aux = 'Carteira Digital não habilitada';
        break;
      case -25:
        aux = 'Erro no Correspondente Bancário: Deve realizar sangria.';
        break;
      case -30:
        aux = 'Erro de acesso ao arquivo. Certifique-se que o usuário que roda a aplicação tem direitos de leitura/escrita.';
        break;
      case -40:
        aux = 'Transação negada pelo servidor SiTef.';
        break;
      case -41:
        aux = 'Dados inválidos.';
        break;
      case -43:
        aux = 'Problema na execução de alguma das rotinas no pinpad.';
        break;
      case -50:
        aux = 'Transação não segura.';
        break;
      case -100:
        aux = 'Erro interno do módulo.';
        break;
      case 20221:
        aux = 'Transação cancelada por tempo de inatividade.';
        break;
      default:
        aux = 'Erro desconhecido.';
        break;
    }

    return _buildMapTEF(result, aux);
  }

  static Map<int, String> checkErrorConfigTEF(int result) {
    String aux = '';
    switch (result) {
      case 0:
        aux = '';
        break;
      case 1:
        aux = 'Endereço IP inválido ou não resolvido ';
        break;
      case 2:
        aux = 'Código da loja inválido ';
        break;
      case 3:
        aux = 'Código de terminal inválido ';
        break;
      case 6:
        aux = 'Erro na inicialização do Tcp/Ip ';
        break;
      case 7:
        aux = 'Falta de memória ';
        break;
      case 8:
        aux = 'Não encontrou a CliSiTef ou ela está com problemas ';
        break;
      case 9:
        aux = 'Configuração de servidores SiTef foi excedida. ';
        break;
      case 10:
        aux = 'Erro de acesso na pasta CliSiTef (possível falta de permissão para escrita) ';
        break;
      case 11:
        aux = 'Dados inválidos passados pela automação. ';
        break;
      case 12:
        aux = 'Modo seguro não ativo (possível falta de configuração no servidor SiTef do arquivo .cha). ';
        break;
      case 13:
        aux = 'Caminho DLL inválido (o caminho completo das bibliotecas está muito grande).';
        break;
      default:
        aux = 'Erro desconhecido.';
        break;
    }

    return _buildMapTEF(result, aux);
  }

  static Map<int, String> checkErrorGSurfTEF(int result) {
    String aux = '';
    switch (result) {
      case 4090:
        aux = 'OTP (fornecido pela GSurf)';
        break;
      case 4094:
        aux = 'Terminal UUID (número único de terminal)';
        break;
      case 4091:
        aux = 'Erro na instalação do certificado';
        break;
      case 4092:
        aux = 'Erro de transmissão ou rede durante a comunicação';
        break;
      case 0:
        aux = 'Quando não ocorrem erros';
        break;
      case 1:
        aux = 'Erro ao iniciar um socket UDP.';
        break;
      case 3:
        aux = 'Erro ao enviar dados UDP. Verificar se existe algum firewall bloqueando a saída UDP na porta 443 dos IPs da Gsurf.';
        break;
      case 4:
        aux = 'Erro ao receber dados UDP. Verificar se existe algum firewall bloqueando a saída UDP na porta 443 dos IPs da Gsurf.';
        break;
      case 5:
        aux = 'Erro interno da lib Gsurf. A mensagem recebida do servidor está corrompida. Tentar novamente. Avisar desenvolvimento da Gsurf.';
        break;
      case 6:
        aux = 'Erro interno da lib Gsurf. A mensagem recebida do servidor está corrompida. Tentar novamente. Avisar desenvolvimento da Gsurf.';
        break;
      case 7:
        aux = 'Erro interno da lib Gsurf. A mensagem recebida do servidor está corrompida. Tentar novamente. Avisar desenvolvimento da Gsurf.';
        break;
      case 8:
        aux = 'Erro ao criar o contexto SSL. Avisar desenvolvimento da Gsurf.';
        break;
      case 9:
        aux = 'Erro ao inicializar as variáveis da biblioteca. Avisar desenvolvimento da Gsurf.';
        break;
      case 10:
        aux = 'Erro ao salvar arquivos de configuração. Favor verificar permissões no diretório especificado.';
        break;
      case 11:
        aux = 'O certificado está presente, porém o arquivo está corrompido. Gerar um novo certificado e instala-lo no dispositivo.';
        break;
      case 12:
        aux = 'Esse erro ocorre, possivelmente, por esse certificado não ser deste dispositivo, ou por alteração de hardware que afetaram a geração de fingerprint. Gerar um novo certificado e instala-lo no dispositivo.';
        break;
      case 13:
        aux = 'Erro ao verificar a chave privada do certificado. Gerar um novo certificado e instala-lo no dispositivo.';
        break;
      case 14:
        aux = 'Erro ao inicializar um socket TCP.';
        break;
      case 15:
        aux = 'Erro ao estabelecer a conexão TCP. Sem conexão com internet ou os IPs da Gsurf estão bloqueados no firewall.';
        break;
      case 16:
        aux = 'Erro durante o handshake SSL, pode ser causado por desconexão durante o processo, certificado expirado, certificado revogado, cifra não suportada ou CA não confiável. Verificar certificado e logs do servidor Gsurf.';
        break;
      case 17:
        aux = 'Erro durante o handshake SSL, pode ser causado por desconexão durante o processo, certificado expirado, certificado revogado, cifra não suportada ou CA não confiável. Verificar certificado e logs do servidor Gsurf.';
        break;
      case 18:
        aux = 'Falha na conexão SSL, possivelmente desconectado no momento do envio dos dados.';
        break;
      case 19:
        aux = 'Falha na conexão SSL, possivelmente desconectado no momento do recebimento dos dados.';
        break;
      case 21:
        aux = 'Erro ao alocar memória RAM, possível falta de memória RAM.';
        break;
      case 22:
        aux = 'Erro ao se conectar com serviço de destino. Verificar se o serviço está em execução ou se o IP e porta configurados estão corretos.';
        break;
      case 26:
        aux = 'O IP informado para função de conexão está com formato incorreto.';
        break;
      case 27:
        aux = 'informado para função de conexão não está de acordo com a RFC 1918 (somente IPs de redes locais são suportados).';
        break;
      case 28:
        aux = 'Ocorre quando o certificado não está presente. É necessário executar a instalação do certificado.';
        break;
      case 29:
        aux = 'Erro de conexão SSL, ocorre por tentar enviar/receber informações sem que a conexão esteja estabelecida. Efetuar a conexão.';
        break;
      case 31:
        aux = 'Não foi possível salvar o certifcado no dispositivo. Verificar se há permissão para escrita no local especificado.';
        break;
      case 32:
        aux = 'Ocorreu algum erro durante o processo de recebimento do certifcado. Provavelmente o OTP utilizado não é válido ou a chave de ativação não é válida. É preciso verificar se o OTP é válido e tentar novamente.';
        break;
      case 33:
        aux = 'Erro ao resolver um endereço DNS. Possível falta de conexão com a internet. Verificar conexão com a internet e tentar novamente.';
        break;
      case 34:
        aux = 'Erro ao iniciar um socket UDP.';
        break;
      case 35:
        aux = 'Erro ao definir o endereço do servidor. Verificar conexão com a internet. Verificar se os IPs da Gsurf estão liberados no firewall. Tentar novamente.';
        break;
      case 36:
        aux = 'Erro durante o processo de autenticação. Pode ser causado por token errado ou dessincronizado. Entrar em contato com a Gsurf para sincronizar os tokens.';
        break;
      case 37:
        aux = 'Erro desconhecido.';
        break;
      case 38:
        aux = 'A mensagem recebida do servidor está vazia e deve ser descartada.';
        break;
      case 39:
        aux = 'Erro ao montar a partição para salvar os dados no dispositivo.';
        break;
      case 40:
        aux = 'O timeout de leitura foi atingido sem resposta do servidor. Verificar conexão com a internet. Tentar novamente.';
        break;
      case 41:
        aux = 'O OTP informado está com o formato errado. Verificar com a Gsurf se o OTP está correto.';
        break;
      default:
        aux = 'Erro desconhecido.';
        break;
    }

    return _buildMapTEF(result, aux);
  }

  static Map<int, String> _buildMapTEF(int result, String message) {
    return {
      result: message,
    };
  }

  static bool tefAlert(String value) {
    List<String> result = [
      '82',
      '96',
      '-1',
      '-4',
      '-5',
      '-10',
      '-12',
      '-13',
      '-43',
      '-100',
    ];
    bool alert = false;

    for (var e in result) {
      if (value.contains(e)) {
        alert = true;
        break;
      }
    }
    return alert;
  }

  // ignore: avoid_types_as_parameter_names
  static double roundABNT(num, decimalPlaces) {
    var d = decimalPlaces ?? 0;
    var m = pow(10, d);
    var n = double.parse((num * m).toStringAsFixed(8));
    var i = n.floor();
    var f = n - i;
    var e = 1e-8;
    var r = (f > 0.5 - e && f < 0.5 + e) ? ((i % 2 == 0) ? i : i + 1) : n.roundToDouble();

    return r / m;
  }

  static String onlyNumberString({required String text}) {
    final regexp = RegExp(r'\D');
    var onlySanitized = text.replaceAll(regexp, '');
    return onlySanitized.replaceAll('.', '').replaceAll('/', '').replaceAll('-', '');
  }
}
