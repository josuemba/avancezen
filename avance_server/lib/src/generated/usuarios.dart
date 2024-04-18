/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Usuario extends _i1.TableRow {
  Usuario._({
    int? id,
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
  }) : super(id);

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

  static final t = UsuarioTable();

  static const db = UsuarioRepository._();

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

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'idNetzen': idNetzen,
      'nombre': nombre,
      'apaterno': apaterno,
      'amaterno': amaterno,
      'usuario': usuario,
      'contrasena': contrasena,
      'estatus': estatus,
      'urlFoto': urlFoto,
      'rfc': rfc,
      'curp': curp,
      'fechaNacimiento': fechaNacimiento,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'idNetzen':
        idNetzen = value;
        return;
      case 'nombre':
        nombre = value;
        return;
      case 'apaterno':
        apaterno = value;
        return;
      case 'amaterno':
        amaterno = value;
        return;
      case 'usuario':
        usuario = value;
        return;
      case 'contrasena':
        contrasena = value;
        return;
      case 'estatus':
        estatus = value;
        return;
      case 'urlFoto':
        urlFoto = value;
        return;
      case 'rfc':
        rfc = value;
        return;
      case 'curp':
        curp = value;
        return;
      case 'fechaNacimiento':
        fechaNacimiento = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Usuario>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsuarioTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Usuario>(
      where: where != null ? where(Usuario.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Usuario?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsuarioTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Usuario>(
      where: where != null ? where(Usuario.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Usuario?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Usuario>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UsuarioTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Usuario>(
      where: where(Usuario.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Usuario row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Usuario row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Usuario row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsuarioTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Usuario>(
      where: where != null ? where(Usuario.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static UsuarioInclude include() {
    return UsuarioInclude._();
  }

  static UsuarioIncludeList includeList({
    _i1.WhereExpressionBuilder<UsuarioTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsuarioTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsuarioTable>? orderByList,
    UsuarioInclude? include,
  }) {
    return UsuarioIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Usuario.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Usuario.t),
      include: include,
    );
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

class UsuarioTable extends _i1.Table {
  UsuarioTable({super.tableRelation}) : super(tableName: 'usuario') {
    idNetzen = _i1.ColumnInt(
      'idNetzen',
      this,
    );
    nombre = _i1.ColumnString(
      'nombre',
      this,
    );
    apaterno = _i1.ColumnString(
      'apaterno',
      this,
    );
    amaterno = _i1.ColumnString(
      'amaterno',
      this,
    );
    usuario = _i1.ColumnString(
      'usuario',
      this,
    );
    contrasena = _i1.ColumnString(
      'contrasena',
      this,
    );
    estatus = _i1.ColumnBool(
      'estatus',
      this,
    );
    urlFoto = _i1.ColumnString(
      'urlFoto',
      this,
    );
    rfc = _i1.ColumnString(
      'rfc',
      this,
    );
    curp = _i1.ColumnString(
      'curp',
      this,
    );
    fechaNacimiento = _i1.ColumnDateTime(
      'fechaNacimiento',
      this,
    );
  }

  late final _i1.ColumnInt idNetzen;

  late final _i1.ColumnString nombre;

  late final _i1.ColumnString apaterno;

  late final _i1.ColumnString amaterno;

  late final _i1.ColumnString usuario;

  late final _i1.ColumnString contrasena;

  late final _i1.ColumnBool estatus;

  late final _i1.ColumnString urlFoto;

  late final _i1.ColumnString rfc;

  late final _i1.ColumnString curp;

  late final _i1.ColumnDateTime fechaNacimiento;

  @override
  List<_i1.Column> get columns => [
        id,
        idNetzen,
        nombre,
        apaterno,
        amaterno,
        usuario,
        contrasena,
        estatus,
        urlFoto,
        rfc,
        curp,
        fechaNacimiento,
      ];
}

@Deprecated('Use UsuarioTable.t instead.')
UsuarioTable tUsuario = UsuarioTable();

class UsuarioInclude extends _i1.IncludeObject {
  UsuarioInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Usuario.t;
}

class UsuarioIncludeList extends _i1.IncludeList {
  UsuarioIncludeList._({
    _i1.WhereExpressionBuilder<UsuarioTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Usuario.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Usuario.t;
}

class UsuarioRepository {
  const UsuarioRepository._();

  Future<List<Usuario>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsuarioTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsuarioTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsuarioTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Usuario>(
      where: where?.call(Usuario.t),
      orderBy: orderBy?.call(Usuario.t),
      orderByList: orderByList?.call(Usuario.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Usuario?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsuarioTable>? where,
    int? offset,
    _i1.OrderByBuilder<UsuarioTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsuarioTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Usuario>(
      where: where?.call(Usuario.t),
      orderBy: orderBy?.call(Usuario.t),
      orderByList: orderByList?.call(Usuario.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Usuario?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Usuario>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Usuario>> insert(
    _i1.Session session,
    List<Usuario> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Usuario>(
      rows,
      transaction: transaction,
    );
  }

  Future<Usuario> insertRow(
    _i1.Session session,
    Usuario row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Usuario>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Usuario>> update(
    _i1.Session session,
    List<Usuario> rows, {
    _i1.ColumnSelections<UsuarioTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Usuario>(
      rows,
      columns: columns?.call(Usuario.t),
      transaction: transaction,
    );
  }

  Future<Usuario> updateRow(
    _i1.Session session,
    Usuario row, {
    _i1.ColumnSelections<UsuarioTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Usuario>(
      row,
      columns: columns?.call(Usuario.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Usuario> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Usuario>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Usuario row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Usuario>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UsuarioTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Usuario>(
      where: where(Usuario.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsuarioTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Usuario>(
      where: where?.call(Usuario.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
