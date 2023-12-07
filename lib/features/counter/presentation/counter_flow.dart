import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_view_component_example/features/counter/presentation/business_logic/counter_bloc.dart';
import 'package:flutter_view_component_example/features/counter/presentation/ui_logic/counter_widget_component.dart';

/// Entry point for the feature.
///
/// Responsible for DI.
class CounterFlow extends StatelessWidget {
  const CounterFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const CounterWidgetComponent(),
    );
  }
}
