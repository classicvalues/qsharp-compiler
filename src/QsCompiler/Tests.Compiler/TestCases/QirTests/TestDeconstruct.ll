define i64 @Microsoft__Quantum__Testing__QIR__TestDeconstruct__body(i64 %0, { i64, i64 }* %1) {
entry:
  %2 = call %Tuple* @__quantum__rt__tuple_create(i64 ptrtoint ({ i64, { i64, i64 }* }* getelementptr ({ i64, { i64, i64 }* }, { i64, { i64, i64 }* }* null, i32 1) to i64))
  %a = bitcast %Tuple* %2 to { i64, { i64, i64 }* }*
  %3 = getelementptr { i64, { i64, i64 }* }, { i64, { i64, i64 }* }* %a, i64 0, i32 0
  %4 = getelementptr { i64, { i64, i64 }* }, { i64, { i64, i64 }* }* %a, i64 0, i32 1
  store i64 %0, i64* %3
  store { i64, i64 }* %1, { i64, i64 }** %4
  %5 = bitcast { i64, i64 }* %1 to %Tuple*
  call void @__quantum__rt__tuple_reference(%Tuple* %5)
  call void @__quantum__rt__tuple_add_access(%Tuple* %5)
  call void @__quantum__rt__tuple_add_access(%Tuple* %2)
  call void @__quantum__rt__tuple_add_access(%Tuple* %5)
  %b = alloca i64
  store i64 3, i64* %b
  %c = alloca i64
  store i64 5, i64* %c
  %6 = getelementptr { i64, i64 }, { i64, i64 }* %1, i64 0, i32 0
  %7 = getelementptr { i64, i64 }, { i64, i64 }* %1, i64 0, i32 1
  %8 = load i64, i64* %6
  %9 = load i64, i64* %7
  store i64 %8, i64* %b
  store i64 %9, i64* %c
  %10 = mul i64 %8, %9
  %11 = add i64 %0, %10
  call void @__quantum__rt__tuple_remove_access(%Tuple* %5)
  call void @__quantum__rt__tuple_remove_access(%Tuple* %2)
  call void @__quantum__rt__tuple_remove_access(%Tuple* %5)
  call void @__quantum__rt__tuple_unreference(%Tuple* %5)
  call void @__quantum__rt__tuple_unreference(%Tuple* %2)
  ret i64 %11
}
