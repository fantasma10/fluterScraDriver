import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _usuario = prefs.getString('ff_usuario') ?? _usuario;
    _password = prefs.getString('ff_password') ?? _password;
    _guardaUsuarioPassword =
        prefs.getBool('ff_guardaUsuarioPassword') ?? _guardaUsuarioPassword;
    _tokenUsuarioApp =
        prefs.getString('ff_tokenUsuarioApp') ?? _tokenUsuarioApp;
  }

  late SharedPreferences prefs;

  String _usuario = '';
  String get usuario => _usuario;
  set usuario(String _value) {
    _usuario = _value;
    prefs.setString('ff_usuario', _value);
  }

  String _password = '';
  String get password => _password;
  set password(String _value) {
    _password = _value;
    prefs.setString('ff_password', _value);
  }

  bool _guardaUsuarioPassword = true;
  bool get guardaUsuarioPassword => _guardaUsuarioPassword;
  set guardaUsuarioPassword(bool _value) {
    _guardaUsuarioPassword = _value;
    prefs.setBool('ff_guardaUsuarioPassword', _value);
  }

  String _tokenUsuarioApp = '';
  String get tokenUsuarioApp => _tokenUsuarioApp;
  set tokenUsuarioApp(String _value) {
    _tokenUsuarioApp = _value;
    prefs.setString('ff_tokenUsuarioApp', _value);
  }

  dynamic jsonSolicitudPendiente;

  String idSolicitudDetalle = '';

  dynamic jsonSolicitudDetalle;

  String idDetalleAPesar = '';

  String tipoSolicitud = '';
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
