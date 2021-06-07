import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Constantes.dart';

enum NavLinksPV { VerContato, MidiaLinkDocs, Pesquisa, SilenciaNotificacoes, PapelDeParede, Mais }
enum NavLinksHome { NovoGrupo, NovaTransmissao, WhatsAppWeb, Favoritas, Configuracoes }
enum NavLinksMais { Denunciar, Bloquear, LimparConversa, ExportarConversa, AdicionarAtalho}

class Util extends GetController {
 final GlobalKey _menuKey = new GlobalKey();

  String  selecionado = '';

  Widget popUpPV(context){
    return PopupMenuButton(
      padding: EdgeInsets.all(0),
      onSelected: (value) {
        selecionado = displayStringPV(value).toString();
        if(selecionado.toString() == NavLinksPV.Mais.toString()){
          return null;
        }
      },
      itemBuilder: (BuildContext context) {
        return NavLinksPV.values.map((link) {
          print(link);
          return PopupMenuItem(
            value: link,
            child: Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              child: link.toString() == NavLinksPV.Mais.toString() ? 
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.all(0),
                  child: new ListTile(
                    title: new Text(displayStringPV(link)), 
                    trailing: popUpMais(context),
                    onTap: () {
                      dynamic state = _menuKey.currentState;
                      state.showButtonMenu();
                    }
                  ),
                )
                : 
                Text(
                  displayStringPV(link),
                  style: TextStyle(fontSize: 15,),
                ),
                width: 135,
              ),
          );
        }).toList();
      },
    );
  }

  String itemSelecionado(){
    return selecionado;
  }

  Widget popUpMais(context){
    return PopupMenuButton(
      key: _menuKey,
      padding: EdgeInsets.all(0),
      icon: Icon(Icons.arrow_right),
      onSelected: (value) {
        print(value);
        selecionado = displayStringMais(value);
      },
      itemBuilder: (BuildContext context) {
        return NavLinksMais.values.map((links) {
          return PopupMenuItem(
            value: links,
            child: Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              child: Text(
                  displayStringMais(links),
                  style: TextStyle(fontSize: 15,),
                ),
                width: 133,
              ),
          );
        }).toList();
      },
    );
  }


  Widget popUpHome(context){
    return PopupMenuButton(
      padding: EdgeInsets.all(0),
      onSelected: (value) {
        print(value);
      },
      itemBuilder: (BuildContext context) {
        return NavLinksHome.values.map((link) {
          return PopupMenuItem(
            value: link,
            child: Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              child: Text(
                  displayStringHome(link),
                  style: TextStyle(fontSize: 15,),
                ),
                width: 133,
              ),
          );
        }).toList();
      },
    );
  }

  String displayStringHome(NavLinksHome link) {
    switch(link) {
      case NavLinksHome.NovoGrupo:
        return kNovoGrupo;
        break;
      case NavLinksHome.NovaTransmissao:
        return kNovaTrans;
        break;
      case NavLinksHome.WhatsAppWeb:
        return kWhatsWeb;
        break;
      case NavLinksHome.Favoritas:
        return kMensagensFavoritas;
        break;
      case NavLinksHome.Configuracoes:
        return kConfiguracoes;
        break;  
      default:
        return "";
    }
  }

  String displayStringPV(NavLinksPV link) {
    switch(link) {
      case NavLinksPV.VerContato:
        return kVercontato;
        break;
      case NavLinksPV.MidiaLinkDocs:
        return kMidiaLinksDocs;
        break;
      case NavLinksPV.Pesquisa:
        return kPesquisar;
        break;
      case NavLinksPV.SilenciaNotificacoes:
        return kSilenciar;
        break;
      case NavLinksPV.PapelDeParede:
        return kPapeldeParede;
        break;  
      case NavLinksPV.Mais:
        return kMais;
        break;   
      default:
        return "";
    }
  }

  String displayStringMais(NavLinksMais link) {
    switch(link) {
      case NavLinksMais.Denunciar:
        return kDenunciar;
        break;
      case NavLinksMais.Bloquear:
        return kBloquear;
        break;
      case NavLinksMais.ExportarConversa:
        return kExportarConversa;
        break;
      case NavLinksMais.LimparConversa:
        return kLimparConversa;
        break;
      case NavLinksMais.AdicionarAtalho:
        return kAdicionarAtalho;
        break;  
      default:
        return "";
    }
  }

  String linkUrl(NavLinksHome link) {
    switch(link) {
      case NavLinksHome.NovoGrupo:
        return "";
        break;
      default:
        return "";
    }
  }

}