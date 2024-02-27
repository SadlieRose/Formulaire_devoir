import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulaire de Connexion'),
        ),
        body: ConnexionForm(),
      ),
    );
  }
}

class ConnexionForm extends StatefulWidget {
  @override
  _ConnexionFormState createState() => _ConnexionFormState();
}

class _ConnexionFormState extends State<ConnexionForm> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController motDePasseController = TextEditingController();
  bool seSouvenirDeMoi = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(labelText: 'UserName'),
          ),
          SizedBox(height: 10.0),
          TextField(
            controller: motDePasseController,
            obscureText: true,
            decoration: InputDecoration(labelText: 'Mot de passe'),
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Checkbox(
                value: seSouvenirDeMoi,
                onChanged: (bool? value) {
                  setState(() {
                    seSouvenirDeMoi = value!;
                  });
                },
              ),
              Text('Se souvenir de moi'),
            ],
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              String username = usernameController.text;
              String motDePasse = motDePasseController.text;
              print('UserName: $username, Mot de passe: $motDePasse, ');
            },
            child: Text('Connexion'),
          ),
        ],
      ),
    );
  }
}
