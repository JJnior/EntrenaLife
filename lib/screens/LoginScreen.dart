import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool passvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset(
                  '././images/conejo.jpeg',
                  width: 300,
                ),
              ),
              registro(),
            ],
          ),
        ),
      ),
    ));
  }

  Widget hola() {
    return Container();
  }

  Widget registro() {
    final nombre = TextEditingController();
    final apellido = TextEditingController();
    final peso = TextEditingController();
    final metro = TextEditingController();
    final edad = TextEditingController();
    final enfermedad = TextEditingController();
    final numero = TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: <Widget>[
            TextFormField(
              controller: nombre,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pot favor ingresa un nombre';
                } else {
                  return null;
                }
              },
              autocorrect: false,
              maxLength: 20,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  hintText: '',
                  counterText: '',
                  labelText: 'Nombres',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: Icon(Icons.person)),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: apellido,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pot favor ingresa un apellido';
                } else {
                  return null;
                }
              },
              autocorrect: false,
              maxLength: 30,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  hintText: '',
                  counterText: '',
                  labelText: 'Apellidos',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: Icon(Icons.person)),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: peso,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pot favor ingresa un peso en kilos';
                } else {
                  return null;
                }
              },
              autocorrect: false,
              maxLength: 6,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
              ],
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  hintText: '',
                  counterText: '',
                  labelText: 'Kilos',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: Icon(Icons.person)),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: metro,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pot favor ingresa su talla en centimetros';
                } else {
                  return null;
                }
              },
              autocorrect: false,
              maxLength: 3,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}')),
              ],
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  hintText: '',
                  counterText: '',
                  labelText: 'Centimetro',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: Icon(Icons.person)),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: edad,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pot favor ingresa su edad';
                } else {
                  return null;
                }
              },
              autocorrect: false,
              maxLength: 2,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  hintText: '',
                  counterText: '',
                  labelText: 'Edad',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: Icon(Icons.person)),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: enfermedad,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pot favor ingresa su enfermedad';
                } else {
                  return null;
                }
              },
              autocorrect: false,
              maxLength: 16,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  hintText: '',
                  counterText: '',
                  labelText: 'Alergias',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: Icon(Icons.person)),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: numero,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pot favor ingresa un numero telefonico';
                } else {
                  return null;
                }
              },
              autocorrect: false,
              maxLength: 9,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  hintText: '',
                  counterText: '',
                  labelText: 'Numero de celular',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: Icon(Icons.phone_iphone)),
            ),
            SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(350, 50), backgroundColor: Colors.green),
                child: const Text(
                  'REGISTRAR DATOS',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, 'barra');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('faltan credenciales'),
                      backgroundColor: Colors.blueAccent,
                    ));
                  }
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void _passvisi() {
    setState(() {
      passvisible = !passvisible;
    });
  }
}
