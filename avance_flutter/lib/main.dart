import 'package:avance_client/avance_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Serverpod Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // These fields hold the last result or error message that we've received from
  // the server or null if no result exists yet.
  String? _resultMessage;
  String? _errorMessage;

  final _textEditingController = TextEditingController();

  // Calls the `hello` method of the `example` endpoint. Will set either the
  // `_resultMessage` or `_errorMessage` field, depending on if the call
  // is successful.
  void _callHello() async {
    try {
      final result = await client.example.hello(_textEditingController.text);
      setState(() {
        _errorMessage = null;
        _resultMessage = result;
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: _callHello,
                child: const Text('Send to Server'),
              ),
            ),
            _ResultDisplay(
              resultMessage: _resultMessage,
              errorMessage: _errorMessage,
            ),
            WidgetUsuario(),
          ],
        ),
      ),
    );
  }
}

// _ResultDisplays shows the result of the call. Either the returned result from
// the `example.hello` endpoint method or an error message.
class _ResultDisplay extends StatelessWidget {
  final String? resultMessage;
  final String? errorMessage;

  const _ResultDisplay({
    this.resultMessage,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    if (errorMessage != null) {
      backgroundColor = Colors.red[300]!;
      text = errorMessage!;
    } else if (resultMessage != null) {
      backgroundColor = Colors.green[300]!;
      text = resultMessage!;
    } else {
      backgroundColor = Colors.grey[300]!;
      text = 'No server response yet.';
    }

    return Container(
      height: 50,
      color: backgroundColor,
      child: Center(
        child: Text(text),
      ),
    );
  }
}

class WidgetUsuario extends StatefulWidget {
  const WidgetUsuario({super.key});

  @override
  State<WidgetUsuario> createState() => _WidgetUsuarioState();
}

class _WidgetUsuarioState extends State<WidgetUsuario> {
  TextEditingController tecNombre = TextEditingController();
  TextEditingController tecPaterno = TextEditingController();
  TextEditingController tecResultado = TextEditingController();
  TextEditingController tecId = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tecNombre.text = '';
    tecPaterno.text = '';
    tecResultado.text = '';
    tecId.text = '0';
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tecNombre.dispose();
    tecPaterno.dispose();
    tecResultado.dispose();
    tecId.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
          controller: tecNombre,
        ),
        TextFormField(
          controller: tecPaterno,
        ),
        TextButton(
            onPressed: () async {
              Usuario ss = Usuario();
              ss.nombre = tecNombre.text;
              ss.apaterno = tecPaterno.text;

              final data = await client.usuarios.addUsuario(ss);
            },
            child: Text('Agregar')),
        SizedBox(
          height: 50,
        ),
        TextFormField(
          controller: tecId,
        ),
        TextButton(
            onPressed: () async {
              try {
                final usr =
                    await client.usuarios.getUsuario(int.parse(tecId.text));

                setState(() {
                  tecResultado.text = '${usr!.nombre} ${usr!.apaterno}';
                });
              } catch (e) {
                debugPrint('Error ${e.toString()}');
              }
            },
            child: Text('Mostrar')),
        Text('${tecResultado.text}'),
      ],
    );
  }
}
