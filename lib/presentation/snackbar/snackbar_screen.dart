import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static final String name = "snackbar";

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar y Dialogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

             FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: FlutterLogo(),
                  applicationVersion: '1.0',
                  applicationName: 'Flutter App',
                  children:[
                    Text('Labore sit dolor consectetur ullamco aliqua id magna dolor quis non laborum. Eiusmod ad irure ipsum anim. Eu veniam labore enim Lorem ut eu ipsum dolor. Consequat anim proident esse mollit culpa voluptate sint sunt. Commodo nostrud aliqua mollit non occaecat ea. Laborum proident est culpa commodo non sit id officia labore.')
                  ]
                  );
              },
              child: Text("Licencias usadas"),
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text("Mostrar Diálogo"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: Text("Mostrar Snackbar"),
        icon: Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }

  
  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text('data'),
        content: Text('Incididunt cillum culpa labore velit qui fugiat irure aute irure aute voluptate. Proident ut duis esse consequat officia. Mollit enim consectetur occaecat et dolore exercitation pariatur magna culpa esse in. Lorem est nisi laborum aliqua officia est nisi anim eu. Elit commodo cillum laboris dolor aute. Qui fugiat sit consectetur enim non aliquip incididunt do elit officia qui. Commodo duis dolore ea ea quis reprehenderit irure id magna.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancelar')),
          FilledButton(onPressed: () => Navigator.pop(context), child: Text('Aceptar')),
        ],
      ),
    );
  }

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}