// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) 
{ 
    // configura o button
  // ignore: deprecated_member_use
  Widget okButton = FlatButton(
    child: const Text("Sair"),
    onPressed: () { 
      Navigator.of(context).pop();
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    backgroundColor: Colors.blue,
    title: const Text("Pop-up"),
    content: const Text("Mensgem enviada com sucesso."),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}