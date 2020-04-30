// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';
import 'main.dart' as prefix1;
import 'package:backendless_sdk/backendless_sdk.dart' as prefix0;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'Test',
            r'.Test',
            7,
            0,
            const prefix0.Reflector(),
            const <int>[0, 1, 2, 3, 13, 22],
            const <int>[23, 13, 24, 25, 26, 14, 15, 16, 17, 18, 19, 20, 21],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix1.Test() : null},
            -1,
            -1,
            const <int>[-1],
            const <Object>[prefix0.reflector],
            null),
        r.NonGenericClassMirrorImpl(
            r'Order',
            r'.Order',
            7,
            1,
            const prefix0.Reflector(),
            const <int>[4, 5, 6, 7, 35],
            const <int>[23, 36, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix1.Order() : null},
            -1,
            -1,
            const <int>[-1],
            const <Object>[prefix0.reflector],
            null),
        r.NonGenericClassMirrorImpl(
            r'Person',
            r'.Person',
            7,
            2,
            const prefix0.Reflector(),
            const <int>[8, 9, 10, 43],
            const <int>[23, 36, 24, 25, 26, 37, 38, 39, 40, 41, 42],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix1.Person() : null},
            -1,
            -1,
            const <int>[-1],
            const <Object>[prefix0.reflector],
            null),
        r.NonGenericClassMirrorImpl(
            r'TestTable',
            r'.TestTable',
            7,
            3,
            const prefix0.Reflector(),
            const <int>[11, 12, 48],
            const <int>[23, 36, 24, 25, 26, 44, 45, 46, 47],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => () => b ? prefix1.TestTable() : null},
            -1,
            -1,
            const <int>[-1],
            const <Object>[prefix0.reflector],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'foo', 32773, 0, const prefix0.Reflector(), -1, 4,
            4, null, const []),
        r.VariableMirrorImpl(r'point', 32773, 0, const prefix0.Reflector(), -1,
            5, 5, null, const []),
        r.VariableMirrorImpl(r'lineString', 32773, 0, const prefix0.Reflector(),
            -1, 6, 6, null, const []),
        r.VariableMirrorImpl(r'polygon', 32773, 0, const prefix0.Reflector(),
            -1, 7, 7, null, const []),
        r.VariableMirrorImpl(r'orderStatus', 32773, 1,
            const prefix0.Reflector(), -1, 4, 4, null, const []),
        r.VariableMirrorImpl(r'deliveryDate', 32773, 1,
            const prefix0.Reflector(), -1, 8, 8, null, const []),
        r.VariableMirrorImpl(r'objectId', 32773, 1, const prefix0.Reflector(),
            -1, 4, 4, null, const []),
        r.VariableMirrorImpl(r'd', 32773, 1, const prefix0.Reflector(), -1, 9,
            9, null, const []),
        r.VariableMirrorImpl(r'name', 32773, 2, const prefix0.Reflector(), -1,
            4, 4, null, const []),
        r.VariableMirrorImpl(r'age', 32773, 2, const prefix0.Reflector(), -1,
            10, 10, null, const []),
        r.VariableMirrorImpl(r'objectId', 32773, 2, const prefix0.Reflector(),
            -1, 4, 4, null, const []),
        r.VariableMirrorImpl(r'foo', 32773, 3, const prefix0.Reflector(), -1, 4,
            4, null, const []),
        r.VariableMirrorImpl(r'objectId', 32773, 3, const prefix0.Reflector(),
            -1, 4, 4, null, const []),
        r.MethodMirrorImpl(r'toString', 131074, 0, -1, 4, 4, null,
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 0, 14),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 0, 15),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 1, 16),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 1, 17),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 2, 18),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 2, 19),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 3, 20),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 3, 21),
        r.MethodMirrorImpl(r'', 64, 0, -1, 0, 0, null, const <int>[],
            const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'==', 131074, null, -1, 11, 11, null,
            const <int>[4], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'noSuchMethod', 65538, null, null, null, null, null,
            const <int>[5], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'hashCode', 131075, null, -1, 10, 10, null,
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'runtimeType', 131075, null, -1, 12, 12, null,
            const <int>[], const prefix0.Reflector(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 4, 27),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 4, 28),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 5, 29),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 5, 30),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 6, 31),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 6, 32),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 7, 33),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 7, 34),
        r.MethodMirrorImpl(r'', 64, 1, -1, 1, 1, null, const <int>[],
            const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'toString', 131074, null, -1, 4, 4, null,
            const <int>[], const prefix0.Reflector(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 8, 37),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 8, 38),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 9, 39),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 9, 40),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 10, 41),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 10, 42),
        r.MethodMirrorImpl(r'', 64, 2, -1, 2, 2, null, const <int>[],
            const prefix0.Reflector(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 11, 44),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 11, 45),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 12, 46),
        r.ImplicitSetterMirrorImpl(const prefix0.Reflector(), 12, 47),
        r.MethodMirrorImpl(r'', 64, 3, -1, 3, 3, null, const <int>[],
            const prefix0.Reflector(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(r'_foo', 32870, 15, const prefix0.Reflector(), -1,
            4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'_point', 32870, 17, const prefix0.Reflector(),
            -1, 5, 5, null, const [], null, null),
        r.ParameterMirrorImpl(r'_lineString', 32870, 19,
            const prefix0.Reflector(), -1, 6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_polygon', 32870, 21, const prefix0.Reflector(),
            -1, 7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'other', 16390, 23, const prefix0.Reflector(),
            null, null, null, null, const [], null, null),
        r.ParameterMirrorImpl(r'invocation', 32774, 24,
            const prefix0.Reflector(), -1, 13, 13, null, const [], null, null),
        r.ParameterMirrorImpl(r'_orderStatus', 32870, 28,
            const prefix0.Reflector(), -1, 4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'_deliveryDate', 32870, 30,
            const prefix0.Reflector(), -1, 8, 8, null, const [], null, null),
        r.ParameterMirrorImpl(r'_objectId', 32870, 32,
            const prefix0.Reflector(), -1, 4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'_d', 32870, 34, const prefix0.Reflector(), -1,
            9, 9, null, const [], null, null),
        r.ParameterMirrorImpl(r'_name', 32870, 38, const prefix0.Reflector(),
            -1, 4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'_age', 32870, 40, const prefix0.Reflector(), -1,
            10, 10, null, const [], null, null),
        r.ParameterMirrorImpl(r'_objectId', 32870, 42,
            const prefix0.Reflector(), -1, 4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'_foo', 32870, 45, const prefix0.Reflector(), -1,
            4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'_objectId', 32870, 47,
            const prefix0.Reflector(), -1, 4, 4, null, const [], null, null)
      ],
      <Type>[
        prefix1.Test,
        prefix1.Order,
        prefix1.Person,
        prefix1.TestTable,
        String,
        prefix0.Point,
        prefix0.LineString,
        prefix0.Polygon,
        DateTime,
        double,
        int,
        bool,
        Type,
        Invocation
      ],
      4,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'foo': (dynamic instance) => instance.foo,
        r'point': (dynamic instance) => instance.point,
        r'lineString': (dynamic instance) => instance.lineString,
        r'polygon': (dynamic instance) => instance.polygon,
        r'orderStatus': (dynamic instance) => instance.orderStatus,
        r'deliveryDate': (dynamic instance) => instance.deliveryDate,
        r'objectId': (dynamic instance) => instance.objectId,
        r'd': (dynamic instance) => instance.d,
        r'name': (dynamic instance) => instance.name,
        r'age': (dynamic instance) => instance.age
      },
      {
        r'foo=': (dynamic instance, value) => instance.foo = value,
        r'point=': (dynamic instance, value) => instance.point = value,
        r'lineString=': (dynamic instance, value) =>
            instance.lineString = value,
        r'polygon=': (dynamic instance, value) => instance.polygon = value,
        r'orderStatus=': (dynamic instance, value) =>
            instance.orderStatus = value,
        r'deliveryDate=': (dynamic instance, value) =>
            instance.deliveryDate = value,
        r'objectId=': (dynamic instance, value) => instance.objectId = value,
        r'd=': (dynamic instance, value) => instance.d = value,
        r'name=': (dynamic instance, value) => instance.name = value,
        r'age=': (dynamic instance, value) => instance.age = value
      },
      null,
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
