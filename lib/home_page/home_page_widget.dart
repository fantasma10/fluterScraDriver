import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../materiales/materiales_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  ApiCallResponse? jsonLogin;
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  TextEditingController? txtUsuarioController;
  bool? guardarInicioSesionValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    txtPasswordController = TextEditingController(text: FFAppState().password);
    txtPasswordVisibility = false;
    txtUsuarioController = TextEditingController(text: FFAppState().usuario);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  )
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/scrapolis-driver-w9dq9o/assets/kswppc0kvetd/icono1.png',
                        width: 250,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 80, 15, 0),
                      child: TextFormField(
                        controller: txtUsuarioController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'txtUsuarioController',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Usuario',
                          hintText: 'ingresa tu usuario',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primariIcons,
                              width: 2,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primariIcons,
                              width: 2,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: FlutterFlowTheme.of(context).primariIcons,
                          ),
                          suffixIcon: txtUsuarioController!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () => setState(
                                    () => txtUsuarioController?.clear(),
                                  ),
                                  child: Icon(
                                    Icons.clear,
                                    color: Color(0xFF757575),
                                    size: 22,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 8, 15, 0),
                      child: TextFormField(
                        controller: txtPasswordController,
                        obscureText: !txtPasswordVisibility,
                        decoration: InputDecoration(
                          labelText: 'Contraseña\n',
                          hintText: 'ingresa tu contraseña',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primariIcons,
                              width: 2,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primariIcons,
                              width: 2,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_outline_rounded,
                            color: FlutterFlowTheme.of(context).primariIcons,
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => txtPasswordVisibility =
                                  !txtPasswordVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              txtPasswordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: Theme(
                        data: ThemeData(
                          unselectedWidgetColor: Colors.black,
                        ),
                        child: CheckboxListTile(
                          value: guardarInicioSesionValue ??=
                              FFAppState().guardaUsuarioPassword,
                          onChanged: (newValue) => setState(
                              () => guardarInicioSesionValue = newValue!),
                          title: Text(
                            'Recordar inicio de sesión',
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          activeColor:
                              FlutterFlowTheme.of(context).primariIcons,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (txtUsuarioController!.text != null &&
                              txtUsuarioController!.text != '') {
                            if (txtPasswordController!.text != null &&
                                txtPasswordController!.text != '') {
                              jsonLogin = await LoginCall.call(
                                email: txtUsuarioController!.text,
                                password: txtPasswordController!.text,
                              );
                              if ((jsonLogin?.succeeded ?? true)) {
                                setState(() =>
                                    FFAppState().tokenUsuarioApp = getJsonField(
                                      (jsonLogin?.jsonBody ?? ''),
                                      r'''$.token''',
                                    ).toString());
                                setState(() => FFAppState().usuario =
                                    txtUsuarioController!.text);
                                setState(() => FFAppState().password =
                                    txtPasswordController!.text);
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MaterialesWidget(),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      getJsonField(
                                        (jsonLogin?.jsonBody ?? ''),
                                        r'''$.mensaje''',
                                      ).toString(),
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x00000000),
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'La contraseña es un campo obligatorio',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0x00000000),
                                ),
                              );
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'El email es un campo obligatorio',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor: Color(0x00000000),
                              ),
                            );
                          }

                          setState(() {});
                        },
                        text: 'Iniciar',
                        options: FFButtonOptions(
                          width: 240,
                          height: 50,
                          color:
                              FlutterFlowTheme.of(context).primariBagGroudBtn,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 4,
                          borderSide: BorderSide(
                            color: Color(0xFFF2F3F6),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Text(
                        'Version 2.0',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
