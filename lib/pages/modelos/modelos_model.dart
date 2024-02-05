import '/flutter_flow/flutter_flow_util.dart';
import 'modelos_widget.dart' show ModelosWidget;
import 'package:flutter/material.dart';

class ModelosModel extends FlutterFlowModel<ModelosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
