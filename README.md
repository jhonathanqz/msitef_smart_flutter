<div align="center" id="top"> 
  <img src="https://esqueciminhasenha.softwareexpress.com.br/migrador/login/img/SiTeffromFiserv_Logo_RGB.png" height=100 alt="MSitef_smart_flutter" />

&#xa0;

</div>

<h1 align="center">MSitef Smart Flutter</h1>

<p align="center">
  <a href="#dart-about">Sobre</a> &#xa0; | &#xa0; 
  <a href="#sparkles-features">Funcionalidades</a> &#xa0; | &#xa0;
  <a href="#rocket-technologies">Tecnologias</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-requirements">Requisitos</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-starting">Start</a> &#xa0; | &#xa0;
  <a href="#memo-license">Licença</a> &#xa0; | &#xa0;
  <a href="https://github.com/{{YOUR_GITHUB_USERNAME}}" target="_blank">Autor</a>
</p>

<br>

<a href="buymeacoffee.com/jhonathanqr" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Book" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

[![Github Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white&link=https://github.com/jhonathanqz)](https://github.com/jhonathanqz)

## :dart: Sobre

Plugin Flutter para facilitar integração com o TEF do `MSitef`.
Necessário ter instalado o `MSitef` para que funcione corretamente. Para obter o `.apk` é necessário entrar em contato com a sua distribuidora do TEF.

## :sparkles: Funcionalidades

:heavy_check_mark: Cartão de crédito
:heavy_check_mark: Cartão de débito
:heavy_check_mark: PIX
:heavy_check_mark: Cancelamento
:heavy_check_mark: Reimpressão

## :rocket: Tecnologias

Para que o plugin funcione corretamente é necessário ter o aplicativo `MSitef` instalado na máquina. Este é fornecido pela própria empresa que está lhe fornecendo o TEF.

- [Flutter](https://docs.flutter.dev/)

## :white_check_mark: Requisitos

Para que o plugin funcione corretamente é necessário ter o aplicativo `MSitef` instalado na máquina.

## :checkered_flag: Starting

Para utilizar o plugin, basta chamar alguma de suas funções abaixo:

Débito

```
MSitefSmart.instance().payment.mSitefTransaction(
                        mSitefParams: MSitefParams(modalidade: MSitefType.debit, value: '10'),
```

Crédito:

```
MSitefSmart.instance().payment.mSitefTransaction(
                        mSitefParams: MSitefParams(modalidade: MSitefType.credit, value: '10'),
```

Pix:

```
MSitefSmart.instance().payment.mSitefTransaction(
                        mSitefParams: MSitefParams(modalidade: MSitefType.pix, value: '10'),
```

#### Todas as transações iram retornar suas informações na classe `TefTransactionResponseMSitef`.

</br>

##### Imagem do M-Sitef

  <img src="https://dev.softwareexpress.com.br/assets/images/image11-4b9d553a8b1775258c997ad9930a6726.png" height=400 alt="MSitef" />

</br>

## :memo: License

This project is under license from MIT. For more details, see the [LICENSE](LICENSE.md) file.

</br>

<table>
  <tr>
    <td align="center"><a href="https://github.com/jhonathanqz"><img src="https://avatars.githubusercontent.com/u/74057391?s=96&v=4" width="100px;" alt=""/><br /><sub><b>Jhonathan C. Queiroz</b></sub></a><br /> <a href="https://github.com/jhonathanqz" title="Autor">😎</a></td>
  </tr>
  
</table>

Feito por <a href="https://github.com/jhonathanqz" target="_blank">Jhonathan Queiroz</a>

&#xa0;

<a href="#top">Back to top</a>
