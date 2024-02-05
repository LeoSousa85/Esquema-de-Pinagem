import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'chevrolet_model.dart';
export 'chevrolet_model.dart';

class ChevroletWidget extends StatefulWidget {
  const ChevroletWidget({super.key});

  @override
  State<ChevroletWidget> createState() => _ChevroletWidgetState();
}

class _ChevroletWidgetState extends State<ChevroletWidget> {
  late ChevroletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChevroletModel());

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
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (FFAppState().VarModeloSelecionado ==
                            'MOTRONIC M1.5.1')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MOTRONIC_M1.5.1.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado ==
                            'MOTRONIC M1.5.2')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MOTRONIC_M1.5.2.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado ==
                            'MOTRONIC M1.5.4')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MOTRONIC_M1.5.4.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado ==
                            'MOTRONIC M1.5.5')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MOTRONIC_M1.5.5.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado ==
                            'MOTRONIC M2.8.1')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MOTRONIC_M2.8.1.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado ==
                            'MOTRONIC M2.8')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MOTRONIC_M2.8.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado ==
                            'MOTRONIC ME 7.9.6')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MOTRONIC_ME_7.9.6.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado ==
                            'MOTRONIC ME 7.9.9')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MOTRONIC_ME_7.9.9.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado == 'MULTEC 700')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath: 'assets/pdfs/CHEVROLET_MULTEC_700.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado == 'MULTEC EMS')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath: 'assets/pdfs/CHEVROLET_MULTEC_EMS.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado == 'MULTEC F')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath: 'assets/pdfs/CHEVROLET_MULTEC_F.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado ==
                            'MULTEC HSFI 2.3')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MULTEC_HSFI_2.3.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado == 'MULTEC M')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath: 'assets/pdfs/CHEVROLET_MULTEC_M.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado == 'MULTEC OHC')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath: 'assets/pdfs/CHEVROLET_MULTEC_OHC.pdf',
                              height: 300.0,
                              horizontalScroll: false,
                            ),
                          ),
                        if (FFAppState().VarModeloSelecionado ==
                            'MULTEC VHC - HV 240')
                          const Expanded(
                            child: FlutterFlowPdfViewer(
                              assetPath:
                                  'assets/pdfs/CHEVROLET_MULTEC_VHC_-_HV_240.pdf',
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
