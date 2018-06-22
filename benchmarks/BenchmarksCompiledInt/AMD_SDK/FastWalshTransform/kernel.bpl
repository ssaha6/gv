type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "tArray"} {:global} $$tArray: [int]int;

axiom {:array_info "$$tArray"} {:global} {:elem_width 32} {:source_name "tArray"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tArray: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tArray: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function FADD32(int, int) : int;

function FSUB32(int, int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

procedure {:source_name "fastWalshTransform"} {:kernel} $fastWalshTransform($step: int);
  requires {:sourceloc_num 0} {:thread 1} (if $step == 1024 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$tArray && !_WRITE_HAS_OCCURRED_$$tArray && !_ATOMIC_HAS_OCCURRED_$$tArray;
  requires BV32_SGT(group_size_x, 0);
  requires BV32_SGT(num_groups_x, 0);
  requires BV32_SGE(group_id_x$1, 0);
  requires BV32_SGE(group_id_x$2, 0);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0);
  requires BV32_SGE(local_id_x$2, 0);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0);
  requires BV32_SGT(num_groups_y, 0);
  requires BV32_SGE(group_id_y$1, 0);
  requires BV32_SGE(group_id_y$2, 0);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0);
  requires BV32_SGE(local_id_y$2, 0);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0);
  requires BV32_SGT(num_groups_z, 0);
  requires BV32_SGE(group_id_z$1, 0);
  requires BV32_SGE(group_id_z$2, 0);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0);
  requires BV32_SGE(local_id_z$2, 0);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _READ_HAS_OCCURRED_$$tArray, _WRITE_HAS_OCCURRED_$$tArray, _WRITE_READ_BENIGN_FLAG_$$tArray, _WRITE_READ_BENIGN_FLAG_$$tArray;



implementation {:source_name "fastWalshTransform"} {:kernel} $fastWalshTransform($step: int)
{
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(BV32_MUL(2, $step), BV32_UDIV(v0$1, $step)), BV32_UREM(v0$1, $step));
    v1$2 := BV32_ADD(BV32_MUL(BV32_MUL(2, $step), BV32_UDIV(v0$2, $step)), BV32_UREM(v0$2, $step));
    v2$1 := BV32_ADD(v1$1, $step);
    v2$2 := BV32_ADD(v1$2, $step);
    call {:sourceloc} {:sourceloc_num 2} _LOG_READ_$$tArray(true, v1$1, $$tArray[v1$1]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 2} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 2} _CHECK_READ_$$tArray(true, v1$2, $$tArray[v1$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$tArray"} true;
    v3$1 := $$tArray[v1$1];
    v3$2 := $$tArray[v1$2];
    call {:sourceloc} {:sourceloc_num 3} _LOG_READ_$$tArray(true, v2$1, $$tArray[v2$1]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 3} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 3} _CHECK_READ_$$tArray(true, v2$2, $$tArray[v2$2]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$tArray"} true;
    v4$1 := $$tArray[v2$1];
    v4$2 := $$tArray[v2$2];
    call {:sourceloc} {:sourceloc_num 4} _LOG_WRITE_$$tArray(true, v1$1, FADD32(v3$1, v4$1), $$tArray[v1$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$tArray(true, v1$2);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 4} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 4} _CHECK_WRITE_$$tArray(true, v1$2, FADD32(v3$2, v4$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$tArray"} true;
    $$tArray[v1$1] := FADD32(v3$1, v4$1);
    $$tArray[v1$2] := FADD32(v3$2, v4$2);
    call {:sourceloc} {:sourceloc_num 5} _LOG_WRITE_$$tArray(true, v2$1, FSUB32(v3$1, v4$1), $$tArray[v2$1]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$tArray(true, v2$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 5} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 5} _CHECK_WRITE_$$tArray(true, v2$2, FSUB32(v3$2, v4$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$tArray"} true;
    $$tArray[v2$1] := FSUB32(v3$1, v4$1);
    $$tArray[v2$2] := FSUB32(v3$2, v4$2);
    return;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 256 then 1 else 0) != 0;

axiom (if num_groups_x == 2 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const _WATCHED_VALUE_$$tArray: int;

procedure {:inline 1} _LOG_READ_$$tArray(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$tArray;



implementation {:inline 1} _LOG_READ_$$tArray(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tArray == _value then true else _READ_HAS_OCCURRED_$$tArray);
    return;
}



procedure _CHECK_READ_$$tArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "tArray"} {:array "$$tArray"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tArray && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tArray);
  requires {:source_name "tArray"} {:array "$$tArray"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tArray && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tArray: bool;

procedure {:inline 1} _LOG_WRITE_$$tArray(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$tArray, _WRITE_READ_BENIGN_FLAG_$$tArray;



implementation {:inline 1} _LOG_WRITE_$$tArray(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tArray == _value then true else _WRITE_HAS_OCCURRED_$$tArray);
    _WRITE_READ_BENIGN_FLAG_$$tArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tArray == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tArray);
    return;
}



procedure _CHECK_WRITE_$$tArray(_P: bool, _offset: int, _value: int);
  requires {:source_name "tArray"} {:array "$$tArray"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tArray != _value);
  requires {:source_name "tArray"} {:array "$$tArray"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tArray && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tArray != _value);
  requires {:source_name "tArray"} {:array "$$tArray"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tArray(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$tArray;



implementation {:inline 1} _LOG_ATOMIC_$$tArray(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tArray := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tArray);
    return;
}



procedure _CHECK_ATOMIC_$$tArray(_P: bool, _offset: int);
  requires {:source_name "tArray"} {:array "$$tArray"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tArray && _WATCHED_OFFSET == _offset);
  requires {:source_name "tArray"} {:array "$$tArray"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tArray && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tArray(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$tArray;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tArray(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tArray := (if _P && _WRITE_HAS_OCCURRED_$$tArray && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tArray);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}
