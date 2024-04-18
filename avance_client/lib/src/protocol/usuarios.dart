/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Usuario extends _i1.SerializableEntity {
  Usuario._({
    this.id,
    this.idNetzen,
    this.nombre,
    this.apaterno,
    this.amaterno,
    this.usuario,
    this.contrasena,
    this.estatus,
    this.urlFoto,
    this.rfc,
    this.curp,
    this.fechaNacimiento,
  });

  factory Usuario({
    int? id,
    int? idNetzen,
    String? nombre,
    String? apaterno,
    String? amaterno,
    String? usuario,
    String? contrasena,
    bool? estatus,
    String? urlFoto,
    String? rfc,
    String? curp,
    DateTime? fechaNacimiento,
  }) = _UsuarioImpl;

  factory Usuario.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Usuario(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      idNetzen:
          serializationManager.deserialize<int?>(jsonSerialization['idNetzen']),
      nombre: serializationManager
          .deserialize<String?>(jsonSerialization['nombre']),
      apaterno: serializationManager
          .deserialize<String?>(jsonSerialization['apaterno']),
      amaterno: serializationManager
          .deserialize<String?>(jsonSerialization['amaterno']),
      usuario: serializationManager
          .deserialize<String?>(jsonSerialization['usuario']),
      contrasena: serializationManager
          .deserialize<String?>(jsonSerialization['contrasena']),
      estatus:
          serializationManager.deserialize<bool?>(jsonSerialization['estatus']),
      urlFoto: serializationManager
          .deserialize<String?>(jsonSerialization['urlFoto']),
      rfc: serializationManager.deserialize<String?>(jsonSerialization['rfc']),
      curp:
          serializationManager.deserialize<String?>(jsonSerialization['curp']),
      fechaNacimiento: serializationManager
          .deserialize<DateTime?>(jsonSerialization['fechaNacimiento']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? idNetzen;

  String? nombre;

  String? apaterno;

  String? amaterno;

  String? usuario;

  String? contrasena;

  bool? estatus;

  String? urlFoto;

  String? rfc;

  String? curp;

  DateTime? fechaNacimiento;

  Usuario copyWith({
    int? id,
    int? idNetzen,
    String? nombre,
    String? apaterno,
    String? amaterno,
    String? usuario,
    String? contrasena,
    bool? estatus,
    String? urlFoto,
    String? rfc,
    String? curp,
    DateTime? fechaNacimiento,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (idNetzen != null) 'idNetzen': idNetzen,
      if (nombre != null) 'nombre': nombre,
      if (apaterno != null) 'apaterno': apaterno,
      if (amaterno != null) 'amaterno': amaterno,
      if (usuario != null) 'usuario': usuario,
      if (contrasena != null) 'contrasena': contrasena,
      if (estatus != null) 'estatus': estatus,
      if (urlFoto != null) 'urlFoto': urlFoto,
      if (rfc != null) 'rfc': rfc,
      if (curp != null) 'curp': curp,
      if (fechaNacimiento != null) 'fechaNacimiento': fechaNacimiento?.toJson(),
    };
  }
}

class _Undefined {}

class _UsuarioImpl extends Usuario {
  _UsuarioImpl({
    int? id,
    int? idNetzen,
    String? nombre,
    String? apaterno,
    String? amaterno,
    String? usuario,
    String? contrasena,
    bool? estatus,
    String? urlFoto,
    String? rfc,
    String? curp,
    DateTime? fechaNacimiento,
  }) : super._(
          id: id,
          idNetzen: idNetzen,
          nombre: nombre,
          apaterno: apaterno,
          amaterno: amaterno,
          usuario: usuario,
          contrasena: contrasena,
          estatus: estatus,
          urlFoto: urlFoto,
          rfc: rfc,
          curp: curp,
          fechaNacimiento: fechaNacimiento,
        );

  @override
  Usuario copyWith({
    Object? id = _Undefined,
    Object? idNetzen = _Undefined,
    Object? nombre = _Undefined,
    Object? apaterno = _Undefined,
    Object? amaterno = _Undefined,
    Object? usuario = _Undefined,
    Object? contrasena = _Undefined,
    Object? estatus = _Undefined,
    Object? urlFoto = _Undefined,
    Object? rfc = _Undefined,
    Object? curp = _Undefined,
    Object? fechaNacimiento = _Undefined,
  }) {
    return Usuario(
      id: id is int? ? id : this.id,
      idNetzen: idNetzen is int? ? idNetzen : this.idNetzen,
      nombre: nombre is String? ? nombre : this.nombre,
      apaterno: apaterno is String? ? apaterno : this.apaterno,
      amaterno: amaterno is String? ? amaterno : this.amaterno,
      usuario: usuario is String? ? usuario : this.usuario,
      contrasena: contrasena is String? ? contrasena : this.contrasena,
      estatus: estatus is bool? ? estatus : this.estatus,
      urlFoto: urlFoto is String? ? urlFoto : this.urlFoto,
      rfc: rfc is String? ? rfc : this.rfc,
      curp: curp is String? ? curp : this.curp,
      fechaNacimiento:
          fechaNacimiento is DateTime? ? fechaNacimiento : this.fechaNacimiento,
    );
  }
}
