import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://scrapolis.mx/apiscrapolis/api/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class SolictudesPendientesCall {
  static Future<ApiCallResponse> call({
    String? tipoOperacion = '',
    String? solicitud = '',
    String? token = '',
  }) {
    final body = '''
{
  "tipo_operacion": "${tipoOperacion}",
  "solicitud": "${solicitud}",
  "token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'solictudesPendientes',
      apiUrl:
          'https://scrapolis.mx/apiscrapolis/api/informacion_pedidos_pesador',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'tipo_operacion': tipoOperacion,
        'solicitud': solicitud,
        'token': token,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class DetallePesajeCall {
  static Future<ApiCallResponse> call({
    String? tipoOperacion = '2',
    String? solicitud = '',
    String? token = '',
  }) {
    final body = '''
{
  "tipo_operacion": "${tipoOperacion}",
  "solicitud": "${solicitud}",
  "token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'detallePesaje',
      apiUrl:
          'https://scrapolis.mx/apiscrapolis/api/informacion_pedidos_pesador',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'tipo_operacion': tipoOperacion,
        'solicitud': solicitud,
        'token': token,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class SolicitudesPesadasCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? tipoOperacion = '3',
    String? solicitud = '',
  }) {
    final body = '''
{
  "token": "${token}",
  "tipo_operacion": "${tipoOperacion}",
  "solicitud": "${solicitud}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'solicitudesPesadas',
      apiUrl:
          'https://scrapolis.mx/apiscrapolis/api/informacion_pedidos_pesador',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'token': token,
        'tipo_operacion': tipoOperacion,
        'solicitud': solicitud,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class AgregarPesoCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? tipoOperacion = '2',
    String? idDetalle = '',
    String? cantidad = '',
  }) {
    final body = '''
{
  "token": "${token}",
  "tipo_operacion": "${tipoOperacion}",
  "id_detalle": "${idDetalle}",
  "cantidad": "${cantidad}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'agregarPeso',
      apiUrl: 'https://scrapolis.mx/apiscrapolis/api/operaciones_pesador',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'token': token,
        'tipo_operacion': tipoOperacion,
        'id_detalle': idDetalle,
        'cantidad': cantidad,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class FinalizaPesajeCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? tipoOperacion = '1',
    String? solicitud = '',
  }) {
    final body = '''
{
  "token": "${token}",
  "tipo_operacion": "${tipoOperacion}",
  "solicitud": "${solicitud}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'finalizaPesaje',
      apiUrl: 'https://scrapolis.mx/apiscrapolis/api/operaciones_pesador',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'token': token,
        'tipo_operacion': tipoOperacion,
        'solicitud': solicitud,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
