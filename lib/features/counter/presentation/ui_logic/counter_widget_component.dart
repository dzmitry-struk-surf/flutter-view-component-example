import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_view_component_example/core/view_component/view_component.dart';
import 'package:flutter_view_component_example/features/counter/presentation/business_logic/counter_bloc.dart';
import 'package:flutter_view_component_example/features/counter/presentation/ui/counter_view.dart';
import 'package:flutter_view_component_example/features/counter/presentation/ui_logic/counter_component.dart';

class CounterWidgetComponent extends StatefulWidget {
  const CounterWidgetComponent({super.key});

  @override
  State<CounterWidgetComponent> createState() => _CounterWidgetComponentState();
}

class _CounterWidgetComponentState extends ComponentState<CounterWidgetComponent, CounterComponent>
    implements CounterComponent {
  @override
  CounterComponent get component => this;

  @override
  WidgetView<CounterComponent> buildView() => const CounterView();

  @override
  void onIncrementPressed() => context.read<CounterBloc>().add(const CounterEvent.increment());

  @override
  void onDecrementPressed() => context.read<CounterBloc>().add(const CounterEvent.decrement());
}
