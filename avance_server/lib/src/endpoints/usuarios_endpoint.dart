import 'package:avance_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UsuariosEndpoint extends Endpoint {
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter.
  // `bool`, `int`, `double`, `String`, `UuidValue`, `Duration`, `DateTime`, `ByteData`,
  // and other serializable classes, exceptions and enums from your from your `protocol` directory.
  // The methods should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.
  Future<Usuario?> addUsuario(Session session, Usuario usuario) async {
    Usuario? salida;

    var x = await Usuario.db.insertRow(session, usuario);
    salida = x;
    return salida;
  }

  Future<Usuario?> getUsuario(Session session, int idUsuario) async {
    Usuario? salida;

    var x = await Usuario.db.findById(session,idUsuario );
    salida = x;
    return salida;
  }
  
}
