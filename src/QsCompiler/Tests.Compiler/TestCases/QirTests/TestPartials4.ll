﻿define void @Lifted__PartialApplication__2__adj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %capture-tuple to { %Callable*, { i64, double }* }*
  %1 = getelementptr { %Callable*, { i64, double }* }, { %Callable*, { i64, double }* }* %0, i64 0, i32 1
  %2 = load { i64, double }*, { i64, double }** %1
  %3 = call %Tuple* @__quantum__rt__tuple_create(i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2))
  %4 = bitcast %Tuple* %3 to { { i64, double }*, { %String*, %Qubit* }* }*
  %5 = getelementptr { { i64, double }*, { %String*, %Qubit* }* }, { { i64, double }*, { %String*, %Qubit* }* }* %4, i64 0, i32 0
  %6 = getelementptr { { i64, double }*, { %String*, %Qubit* }* }, { { i64, double }*, { %String*, %Qubit* }* }* %4, i64 0, i32 1
  store { i64, double }* %2, { i64, double }** %5
  %7 = bitcast { i64, double }* %2 to %Tuple*
  call void @__quantum__rt__tuple_reference(%Tuple* %7)
  %8 = bitcast %Tuple* %arg-tuple to { %String*, %Qubit* }*
  store { %String*, %Qubit* }* %8, { %String*, %Qubit* }** %6
  %9 = getelementptr { %String*, %Qubit* }, { %String*, %Qubit* }* %8, i64 0, i32 0
  %10 = load %String*, %String** %9
  call void @__quantum__rt__string_reference(%String* %10)
  call void @__quantum__rt__tuple_reference(%Tuple* %arg-tuple)
  %11 = getelementptr { %Callable*, { i64, double }* }, { %Callable*, { i64, double }* }* %0, i64 0, i32 0
  %12 = load %Callable*, %Callable** %11
  %13 = call %Callable* @__quantum__rt__callable_copy(%Callable* %12, i1 true)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %13)
  call void @__quantum__rt__callable_invoke(%Callable* %13, %Tuple* %3, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_unreference(%Tuple* %7)
  call void @__quantum__rt__string_unreference(%String* %10)
  call void @__quantum__rt__tuple_unreference(%Tuple* %arg-tuple)
  call void @__quantum__rt__tuple_unreference(%Tuple* %3)
  call void @__quantum__rt__callable_unreference(%Callable* %13)
  ret void
}

define void @Lifted__PartialApplication__2__ctl__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, { %String*, %Qubit* }* }*
  %1 = getelementptr { %Array*, { %String*, %Qubit* }* }, { %Array*, { %String*, %Qubit* }* }* %0, i64 0, i32 0
  %2 = getelementptr { %Array*, { %String*, %Qubit* }* }, { %Array*, { %String*, %Qubit* }* }* %0, i64 0, i32 1
  %3 = load %Array*, %Array** %1
  %4 = load { %String*, %Qubit* }*, { %String*, %Qubit* }** %2
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, { i64, double }* }*
  %6 = getelementptr { %Callable*, { i64, double }* }, { %Callable*, { i64, double }* }* %5, i64 0, i32 1
  %7 = load { i64, double }*, { i64, double }** %6
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2))
  %9 = bitcast %Tuple* %8 to { { i64, double }*, { %String*, %Qubit* }* }*
  %10 = getelementptr { { i64, double }*, { %String*, %Qubit* }* }, { { i64, double }*, { %String*, %Qubit* }* }* %9, i64 0, i32 0
  %11 = getelementptr { { i64, double }*, { %String*, %Qubit* }* }, { { i64, double }*, { %String*, %Qubit* }* }* %9, i64 0, i32 1
  store { i64, double }* %7, { i64, double }** %10
  %12 = bitcast { i64, double }* %7 to %Tuple*
  call void @__quantum__rt__tuple_reference(%Tuple* %12)
  store { %String*, %Qubit* }* %4, { %String*, %Qubit* }** %11
  %13 = getelementptr { %String*, %Qubit* }, { %String*, %Qubit* }* %4, i64 0, i32 0
  %14 = load %String*, %String** %13
  call void @__quantum__rt__string_reference(%String* %14)
  %15 = bitcast { %String*, %Qubit* }* %4 to %Tuple*
  call void @__quantum__rt__tuple_reference(%Tuple* %15)
  %16 = call %Tuple* @__quantum__rt__tuple_create(i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2))
  %17 = bitcast %Tuple* %16 to { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }*
  %18 = getelementptr { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }, { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }* %17, i64 0, i32 0
  %19 = getelementptr { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }, { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }* %17, i64 0, i32 1
  store %Array* %3, %Array** %18
  call void @__quantum__rt__array_reference(%Array* %3)
  store { { i64, double }*, { %String*, %Qubit* }* }* %9, { { i64, double }*, { %String*, %Qubit* }* }** %19
  call void @__quantum__rt__tuple_reference(%Tuple* %12)
  call void @__quantum__rt__string_reference(%String* %14)
  call void @__quantum__rt__tuple_reference(%Tuple* %15)
  call void @__quantum__rt__tuple_reference(%Tuple* %8)
  %20 = getelementptr { %Callable*, { i64, double }* }, { %Callable*, { i64, double }* }* %5, i64 0, i32 0
  %21 = load %Callable*, %Callable** %20
  %22 = call %Callable* @__quantum__rt__callable_copy(%Callable* %21, i1 true)
  call void @__quantum__rt__callable_make_controlled(%Callable* %22)
  call void @__quantum__rt__callable_invoke(%Callable* %22, %Tuple* %16, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_unreference(%Tuple* %12)
  call void @__quantum__rt__string_unreference(%String* %14)
  call void @__quantum__rt__tuple_unreference(%Tuple* %15)
  call void @__quantum__rt__tuple_unreference(%Tuple* %8)
  call void @__quantum__rt__array_unreference(%Array* %3)
  call void @__quantum__rt__tuple_unreference(%Tuple* %12)
  call void @__quantum__rt__string_unreference(%String* %14)
  call void @__quantum__rt__tuple_unreference(%Tuple* %15)
  call void @__quantum__rt__tuple_unreference(%Tuple* %8)
  call void @__quantum__rt__tuple_unreference(%Tuple* %16)
  call void @__quantum__rt__callable_unreference(%Callable* %22)
  ret void
}

define void @Lifted__PartialApplication__2__ctladj__wrapper(%Tuple* %capture-tuple, %Tuple* %arg-tuple, %Tuple* %result-tuple) {
entry:
  %0 = bitcast %Tuple* %arg-tuple to { %Array*, { %String*, %Qubit* }* }*
  %1 = getelementptr { %Array*, { %String*, %Qubit* }* }, { %Array*, { %String*, %Qubit* }* }* %0, i64 0, i32 0
  %2 = getelementptr { %Array*, { %String*, %Qubit* }* }, { %Array*, { %String*, %Qubit* }* }* %0, i64 0, i32 1
  %3 = load %Array*, %Array** %1
  %4 = load { %String*, %Qubit* }*, { %String*, %Qubit* }** %2
  %5 = bitcast %Tuple* %capture-tuple to { %Callable*, { i64, double }* }*
  %6 = getelementptr { %Callable*, { i64, double }* }, { %Callable*, { i64, double }* }* %5, i64 0, i32 1
  %7 = load { i64, double }*, { i64, double }** %6
  %8 = call %Tuple* @__quantum__rt__tuple_create(i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2))
  %9 = bitcast %Tuple* %8 to { { i64, double }*, { %String*, %Qubit* }* }*
  %10 = getelementptr { { i64, double }*, { %String*, %Qubit* }* }, { { i64, double }*, { %String*, %Qubit* }* }* %9, i64 0, i32 0
  %11 = getelementptr { { i64, double }*, { %String*, %Qubit* }* }, { { i64, double }*, { %String*, %Qubit* }* }* %9, i64 0, i32 1
  store { i64, double }* %7, { i64, double }** %10
  %12 = bitcast { i64, double }* %7 to %Tuple*
  call void @__quantum__rt__tuple_reference(%Tuple* %12)
  store { %String*, %Qubit* }* %4, { %String*, %Qubit* }** %11
  %13 = getelementptr { %String*, %Qubit* }, { %String*, %Qubit* }* %4, i64 0, i32 0
  %14 = load %String*, %String** %13
  call void @__quantum__rt__string_reference(%String* %14)
  %15 = bitcast { %String*, %Qubit* }* %4 to %Tuple*
  call void @__quantum__rt__tuple_reference(%Tuple* %15)
  %16 = call %Tuple* @__quantum__rt__tuple_create(i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2))
  %17 = bitcast %Tuple* %16 to { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }*
  %18 = getelementptr { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }, { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }* %17, i64 0, i32 0
  %19 = getelementptr { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }, { %Array*, { { i64, double }*, { %String*, %Qubit* }* }* }* %17, i64 0, i32 1
  store %Array* %3, %Array** %18
  call void @__quantum__rt__array_reference(%Array* %3)
  store { { i64, double }*, { %String*, %Qubit* }* }* %9, { { i64, double }*, { %String*, %Qubit* }* }** %19
  call void @__quantum__rt__tuple_reference(%Tuple* %12)
  call void @__quantum__rt__string_reference(%String* %14)
  call void @__quantum__rt__tuple_reference(%Tuple* %15)
  call void @__quantum__rt__tuple_reference(%Tuple* %8)
  %20 = getelementptr { %Callable*, { i64, double }* }, { %Callable*, { i64, double }* }* %5, i64 0, i32 0
  %21 = load %Callable*, %Callable** %20
  %22 = call %Callable* @__quantum__rt__callable_copy(%Callable* %21, i1 true)
  call void @__quantum__rt__callable_make_adjoint(%Callable* %22)
  call void @__quantum__rt__callable_make_controlled(%Callable* %22)
  call void @__quantum__rt__callable_invoke(%Callable* %22, %Tuple* %16, %Tuple* %result-tuple)
  call void @__quantum__rt__tuple_unreference(%Tuple* %12)
  call void @__quantum__rt__string_unreference(%String* %14)
  call void @__quantum__rt__tuple_unreference(%Tuple* %15)
  call void @__quantum__rt__tuple_unreference(%Tuple* %8)
  call void @__quantum__rt__array_unreference(%Array* %3)
  call void @__quantum__rt__tuple_unreference(%Tuple* %12)
  call void @__quantum__rt__string_unreference(%String* %14)
  call void @__quantum__rt__tuple_unreference(%Tuple* %15)
  call void @__quantum__rt__tuple_unreference(%Tuple* %8)
  call void @__quantum__rt__tuple_unreference(%Tuple* %16)
  call void @__quantum__rt__callable_unreference(%Callable* %22)
  ret void
}
