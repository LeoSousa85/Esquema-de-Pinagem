import '/components/aviso_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'modelos_model.dart';
export 'modelos_model.dart';

class ModelosWidget extends StatefulWidget {
  const ModelosWidget({super.key});

  @override
  State<ModelosWidget> createState() => _ModelosWidgetState();
}

class _ModelosWidgetState extends State<ModelosWidget>
    with TickerProviderStateMixin {
  late ModelosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered = false;
  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: const Offset(0.0, -100.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModelosModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    SchedulerBinding.instance.addPostFrameCallback((_) {
      animationsMap['containerOnPageLoadAnimation']!
          .controller
          .forward(from: 0.0);
    });

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
              onPressed: () async {
                if (FFAppState().VarMenuVisivel) {
                  setState(() {
                    FFAppState().VarMenuVisivel = false;
                  });
                } else {
                  setState(() {
                    FFAppState().VarMenuVisivel = true;
                  });
                }
              },
            ),
          ],
          centerTitle: false,
        ),
        body: SafeArea(
          top: true,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              setState(() {
                FFAppState().VarMenuVisivel = false;
              });
            },
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFAppState().VarMontadoraSelecionada,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF434A54),
                                  fontSize: 18.0,
                                ),
                          ),
                        ),
                        Text(
                          ' ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                  ),
                        ),
                        Text(
                          'Selecione o Modelo',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF434A54),
                                    fontSize: 18.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Builder(
                          builder: (context) {
                            final lvModelos =
                                FFAppState().VarListaDeModelos.toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: lvModelos.length,
                              itemBuilder: (context, lvModelosIndex) {
                                final lvModelosItem = lvModelos[lvModelosIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 10.0, 16.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      // Atualiza o Modelos Selecionado
                                      // Update ModeloSelecionado
                                      setState(() {
                                        FFAppState().VarIndexModelo =
                                            lvModelosIndex;
                                        FFAppState().VarModeloSelecionado =
                                            FFAppState().VarListaDeModelos[
                                                FFAppState().VarIndexModelo];
                                      });
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'AUDI') {
                                        context.pushNamed('Audi');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'BMW') {
                                        context.pushNamed('Bmw');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'CHEVROLET') {
                                        context.pushNamed('Chevrolet');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'CHRYSLER') {
                                        context.pushNamed('Chrysler');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'CITROEN') {
                                        context.pushNamed('Citroen');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'DODGE') {
                                        context.pushNamed('Dodge-jeep');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'JEEP') {
                                        context.pushNamed('Dodge-jeep');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'FIAT') {
                                        context.pushNamed('Fiat');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'FORD') {
                                        context.pushNamed('Ford');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'MERCEDES') {
                                        context.pushNamed('Mercedes');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'PEUGEOT') {
                                        context.pushNamed('Peugeot');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'RENAULT') {
                                        context.pushNamed('Renault');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'TOYOTA') {
                                        context.pushNamed('Toyota');
                                      }
                                      if (FFAppState()
                                              .VarMontadoraSelecionada ==
                                          'VOLKSWAGEN') {
                                        context.pushNamed('Volkswagen');
                                      }
                                    },
                                    child: Container(
                                      width: 100.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                lvModelosItem,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 22.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                if (FFAppState().VarMenuVisivel)
                  Align(
                    alignment: const AlignmentDirectional(1.0, -1.0),
                    child: Container(
                      width: 170.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 12.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 5.0),
                          )
                        ],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Divider(
                            height: 1.0,
                            thickness: 1.0,
                            color: Color(0xFFC4C6C9),
                          ),
                          Builder(
                            builder: (context) => Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().VarMenuVisivel = false;
                                  });
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: const AvisoWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Aviso',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Icon(
                                            Icons.sd_card_alert,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                        .animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!)
                        .animateOnActionTrigger(
                            animationsMap['containerOnActionTriggerAnimation']!,
                            hasBeenTriggered: hasContainerTriggered),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
