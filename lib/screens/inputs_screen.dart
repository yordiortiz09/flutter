import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Yordi',
      'email': 'yordiortiz16@gmail.com',
      'password': '123456',
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Form(
            key: formKey,
            onChanged: () {},
            child: Column(children: [
              CustomInput(
                labelText: 'Nombre',
                hintText: 'Escriba su nombre',
                icon: Icons.safety_check,
                formProperty: 'name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInput(
                labelText: 'Escriba su correo',
                hintText: 'Correo',
                icon: Icons.person,
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInput(
                labelText: 'Escriba su contraseña',
                icon: Icons.lock,
                hintText: 'Contraseña',
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!formKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }

                    print(formValues);
                  },
                  child: const SizedBox(
                    width: 50,
                    child: Center(
                      child: Text('Enviar'),
                    ),
                  ))
            ]),
          ),
        )));
  }
}
