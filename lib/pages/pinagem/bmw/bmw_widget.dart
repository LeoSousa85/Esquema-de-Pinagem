import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'bmw_model.dart';
export 'bmw_model.dart';

class BmwWidget extends StatefulWidget {
  const BmwWidget({super.key});

  @override
  State<BmwWidget> createState() => _BmwWidgetState();
}

class _BmwWidgetState extends State<BmwWidget> {
  late BmwModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BmwModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF189D43),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 60.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: RichText(
            textScaleFactor: MediaQuery.of(context).textScaleFactor,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Pinagem de ECU',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 24.0,
                      ),
                ),
                const TextSpan(
                  text: '\nModelos Clássicos',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                )
              ],
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Colors.white,
                  ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              buttonSize: 60.0,
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
          centerTitle: false,
          elevation: 10.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 408.0,
                height: 50.0,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 16.0),
                      child: Text(
                        valueOrDefault<String>(
                          FFAppState().VarMontadoraSelecionada,
                          'N/A Montadora Selecionada',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF434A54),
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                    Text(
                      ' ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
                      child: Text(
                        valueOrDefault<String>(
                          FFAppState().VarModeloSelecionado,
                          'N/A Modelo',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF434A54),
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (FFAppState().VarModeloSelecionado == 'M1.7')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath: 'assets/pdfs/BMW_M1.7.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado == 'M3.1')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath: 'assets/pdfs/BMW_M3.1_-_M3.3.1.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado == 'M3.3.1')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath: 'assets/pdfs/BMW_M3.1_-_M3.3.1.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
