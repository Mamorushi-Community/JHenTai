import 'package:integral_isolates/integral_isolates.dart';

import 'jh_service.dart';

IsolateService isolateService = IsolateService();

class IsolateService with JHLifeCircleBeanErrorCatch implements JHLifeCircleBean {
  late final StatefulIsolate _isolate;

  @override
  Future<void> doInit() async {
    _isolate = StatefulIsolate();
    await _isolate.init();
  }

  Future<R> run<Q, R>(IsolateCallback<Q, R> callback, Q message, {String? debugLabel}) {
    return _isolate.isolate(callback, message, debugLabel: debugLabel);
  }
}
