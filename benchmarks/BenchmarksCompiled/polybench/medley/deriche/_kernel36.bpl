type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [bv32]bv32, y: bv32) returns (z$1: bv32, A$1: [bv32]bv32, z$2: bv32, A$2: [bv32]bv32);



axiom {:array_info "$$a7"} {:global} {:elem_width 32} {:source_name "a7"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$a7: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$a7: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$a7: bool;

axiom {:array_info "$$a8"} {:global} {:elem_width 32} {:source_name "a8"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$a8: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$a8: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$a8: bool;

axiom {:array_info "$$b1"} {:global} {:elem_width 32} {:source_name "b1"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b1: bool;

axiom {:array_info "$$b2"} {:global} {:elem_width 32} {:source_name "b2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b2: bool;

axiom {:array_info "$$tp1"} {:global} {:elem_width 32} {:source_name "tp1"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tp1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tp1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tp1: bool;

axiom {:array_info "$$tp2"} {:global} {:elem_width 32} {:source_name "tp2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tp2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tp2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tp2: bool;

var {:source_name "y2"} {:global} $$y2: [bv32]bv32;

axiom {:array_info "$$y2"} {:global} {:elem_width 32} {:source_name "y2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$y2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$y2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$y2: bool;

axiom {:array_info "$$yp1"} {:global} {:elem_width 32} {:source_name "yp1"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$yp1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$yp1: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$yp1: bool;

axiom {:array_info "$$yp2"} {:global} {:elem_width 32} {:source_name "yp2"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$yp2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$yp2: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$yp2: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FADD32(bv32, bv32) : bv32;

function FMUL32(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel36"} {:kernel} $kernel36($h: bv32, $w: bv32, $c0: bv64, $c1_0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $h == 256bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $w == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($h, 2147483647bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($w, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($h), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 0bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_SEXT64($w), $c1_0), 1bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SLE($c1_0, 0bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$y2 ==> BV32_AND(BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $h)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(4bv32, _WATCHED_OFFSET), 4bv32), $h), $w)), $c1_0) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$a7 && !_WRITE_HAS_OCCURRED_$$a7 && !_ATOMIC_HAS_OCCURRED_$$a7;
  requires !_READ_HAS_OCCURRED_$$a8 && !_WRITE_HAS_OCCURRED_$$a8 && !_ATOMIC_HAS_OCCURRED_$$a8;
  requires !_READ_HAS_OCCURRED_$$b1 && !_WRITE_HAS_OCCURRED_$$b1 && !_ATOMIC_HAS_OCCURRED_$$b1;
  requires !_READ_HAS_OCCURRED_$$b2 && !_WRITE_HAS_OCCURRED_$$b2 && !_ATOMIC_HAS_OCCURRED_$$b2;
  requires !_READ_HAS_OCCURRED_$$tp1 && !_WRITE_HAS_OCCURRED_$$tp1 && !_ATOMIC_HAS_OCCURRED_$$tp1;
  requires !_READ_HAS_OCCURRED_$$tp2 && !_WRITE_HAS_OCCURRED_$$tp2 && !_ATOMIC_HAS_OCCURRED_$$tp2;
  requires !_READ_HAS_OCCURRED_$$y2 && !_WRITE_HAS_OCCURRED_$$y2 && !_ATOMIC_HAS_OCCURRED_$$y2;
  requires !_READ_HAS_OCCURRED_$$yp1 && !_WRITE_HAS_OCCURRED_$$yp1 && !_ATOMIC_HAS_OCCURRED_$$yp1;
  requires !_READ_HAS_OCCURRED_$$yp2 && !_WRITE_HAS_OCCURRED_$$yp2 && !_ATOMIC_HAS_OCCURRED_$$yp2;
  requires BV32_SGT(group_size_x, 0bv32);
  requires BV32_SGT(num_groups_x, 0bv32);
  requires BV32_SGE(group_id_x$1, 0bv32);
  requires BV32_SGE(group_id_x$2, 0bv32);
  requires BV32_SLT(group_id_x$1, num_groups_x);
  requires BV32_SLT(group_id_x$2, num_groups_x);
  requires BV32_SGE(local_id_x$1, 0bv32);
  requires BV32_SGE(local_id_x$2, 0bv32);
  requires BV32_SLT(local_id_x$1, group_size_x);
  requires BV32_SLT(local_id_x$2, group_size_x);
  requires BV32_SGT(group_size_y, 0bv32);
  requires BV32_SGT(num_groups_y, 0bv32);
  requires BV32_SGE(group_id_y$1, 0bv32);
  requires BV32_SGE(group_id_y$2, 0bv32);
  requires BV32_SLT(group_id_y$1, num_groups_y);
  requires BV32_SLT(group_id_y$2, num_groups_y);
  requires BV32_SGE(local_id_y$1, 0bv32);
  requires BV32_SGE(local_id_y$2, 0bv32);
  requires BV32_SLT(local_id_y$1, group_size_y);
  requires BV32_SLT(local_id_y$2, group_size_y);
  requires BV32_SGT(group_size_z, 0bv32);
  requires BV32_SGT(num_groups_z, 0bv32);
  requires BV32_SGE(group_id_z$1, 0bv32);
  requires BV32_SGE(group_id_z$2, 0bv32);
  requires BV32_SLT(group_id_z$1, num_groups_z);
  requires BV32_SLT(group_id_z$2, num_groups_z);
  requires BV32_SGE(local_id_z$1, 0bv32);
  requires BV32_SGE(local_id_z$2, 0bv32);
  requires BV32_SLT(local_id_z$1, group_size_z);
  requires BV32_SLT(local_id_z$2, group_size_z);
  requires group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> local_id_x$1 != local_id_x$2 || local_id_y$1 != local_id_y$2 || local_id_z$1 != local_id_z$2;
  modifies _WRITE_HAS_OCCURRED_$$y2, _WRITE_READ_BENIGN_FLAG_$$y2, _WRITE_READ_BENIGN_FLAG_$$y2;



implementation {:source_name "kernel36"} {:kernel} $kernel36($h: bv32, $w: bv32, $c0: bv64, $c1_0: bv64)
{
  var v0$1: bv32;
  var v0$2: bv32;
  var v1$1: bv32;
  var v1$2: bv32;
  var v2$1: bv32;
  var v2$2: bv32;
  var v3$1: bv32;
  var v3$2: bv32;
  var v4$1: bv32;
  var v4$2: bv32;
  var v5$1: bv32;
  var v5$2: bv32;
  var v6$1: bv32;
  var v6$2: bv32;
  var v7$1: bv32;
  var v7$2: bv32;


  $0:
    havoc v0$1, v0$2;
    havoc v1$1, v1$2;
    havoc v2$1, v2$2;
    havoc v3$1, v3$2;
    havoc v4$1, v4$2;
    havoc v5$1, v5$2;
    havoc v6$1, v6$2;
    havoc v7$1, v7$2;
    call {:sourceloc} {:sourceloc_num 13} _LOG_WRITE_$$y2(true, BV64_ADD(BV64_MUL(BV64_SUB(0bv64, $c1_0), BV32_SEXT64($h)), $c0)[32:0], FADD32(FMUL32(v6$1, v7$1), FADD32(FMUL32(v4$1, v5$1), FADD32(FMUL32(v0$1, v1$1), FMUL32(v2$1, v3$1)))), $$y2[BV64_ADD(BV64_MUL(BV64_SUB(0bv64, $c1_0), BV32_SEXT64($h)), $c0)[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$y2(true, BV64_ADD(BV64_MUL(BV64_SUB(0bv64, $c1_0), BV32_SEXT64($h)), $c0)[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 13} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 13} _CHECK_WRITE_$$y2(true, BV64_ADD(BV64_MUL(BV64_SUB(0bv64, $c1_0), BV32_SEXT64($h)), $c0)[32:0], FADD32(FMUL32(v6$2, v7$2), FADD32(FMUL32(v4$2, v5$2), FADD32(FMUL32(v0$2, v1$2), FMUL32(v2$2, v3$2)))));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$y2"} true;
    $$y2[BV64_ADD(BV64_MUL(BV64_SUB(0bv64, $c1_0), BV32_SEXT64($h)), $c0)[32:0]] := FADD32(FMUL32(v6$1, v7$1), FADD32(FMUL32(v4$1, v5$1), FADD32(FMUL32(v0$1, v1$1), FMUL32(v2$1, v3$1))));
    $$y2[BV64_ADD(BV64_MUL(BV64_SUB(0bv64, $c1_0), BV32_SEXT64($h)), $c0)[32:0]] := FADD32(FMUL32(v6$2, v7$2), FADD32(FMUL32(v4$2, v5$2), FADD32(FMUL32(v0$2, v1$2), FMUL32(v2$2, v3$2))));
    return;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

const _WATCHED_VALUE_$$a7: bv32;

procedure {:inline 1} _LOG_READ_$$a7(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$a7;



implementation {:inline 1} _LOG_READ_$$a7(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$a7 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 == _value then true else _READ_HAS_OCCURRED_$$a7);
    return;
}



procedure _CHECK_READ_$$a7(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$a7);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$a7: bool;

procedure {:inline 1} _LOG_WRITE_$$a7(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$a7, _WRITE_READ_BENIGN_FLAG_$$a7;



implementation {:inline 1} _LOG_WRITE_$$a7(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$a7 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 == _value then true else _WRITE_HAS_OCCURRED_$$a7);
    _WRITE_READ_BENIGN_FLAG_$$a7 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$a7);
    return;
}



procedure _CHECK_WRITE_$$a7(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 != _value);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a7 != _value);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$a7(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$a7;



implementation {:inline 1} _LOG_ATOMIC_$$a7(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$a7 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$a7);
    return;
}



procedure _CHECK_ATOMIC_$$a7(_P: bool, _offset: bv32);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset);
  requires {:source_name "a7"} {:array "$$a7"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a7(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$a7;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a7(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$a7 := (if _P && _WRITE_HAS_OCCURRED_$$a7 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$a7);
    return;
}



const _WATCHED_VALUE_$$a8: bv32;

procedure {:inline 1} _LOG_READ_$$a8(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$a8;



implementation {:inline 1} _LOG_READ_$$a8(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$a8 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a8 == _value then true else _READ_HAS_OCCURRED_$$a8);
    return;
}



procedure _CHECK_READ_$$a8(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "a8"} {:array "$$a8"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$a8 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$a8);
  requires {:source_name "a8"} {:array "$$a8"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$a8 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$a8: bool;

procedure {:inline 1} _LOG_WRITE_$$a8(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$a8, _WRITE_READ_BENIGN_FLAG_$$a8;



implementation {:inline 1} _LOG_WRITE_$$a8(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$a8 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a8 == _value then true else _WRITE_HAS_OCCURRED_$$a8);
    _WRITE_READ_BENIGN_FLAG_$$a8 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a8 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$a8);
    return;
}



procedure _CHECK_WRITE_$$a8(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "a8"} {:array "$$a8"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$a8 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a8 != _value);
  requires {:source_name "a8"} {:array "$$a8"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$a8 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a8 != _value);
  requires {:source_name "a8"} {:array "$$a8"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$a8 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$a8(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$a8;



implementation {:inline 1} _LOG_ATOMIC_$$a8(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$a8 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$a8);
    return;
}



procedure _CHECK_ATOMIC_$$a8(_P: bool, _offset: bv32);
  requires {:source_name "a8"} {:array "$$a8"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$a8 && _WATCHED_OFFSET == _offset);
  requires {:source_name "a8"} {:array "$$a8"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$a8 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a8(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$a8;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a8(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$a8 := (if _P && _WRITE_HAS_OCCURRED_$$a8 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$a8);
    return;
}



const _WATCHED_VALUE_$$b1: bv32;

procedure {:inline 1} _LOG_READ_$$b1(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$b1;



implementation {:inline 1} _LOG_READ_$$b1(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$b1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b1 == _value then true else _READ_HAS_OCCURRED_$$b1);
    return;
}



procedure _CHECK_READ_$$b1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b1"} {:array "$$b1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$b1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$b1);
  requires {:source_name "b1"} {:array "$$b1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$b1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$b1: bool;

procedure {:inline 1} _LOG_WRITE_$$b1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$b1, _WRITE_READ_BENIGN_FLAG_$$b1;



implementation {:inline 1} _LOG_WRITE_$$b1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$b1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b1 == _value then true else _WRITE_HAS_OCCURRED_$$b1);
    _WRITE_READ_BENIGN_FLAG_$$b1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$b1);
    return;
}



procedure _CHECK_WRITE_$$b1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b1"} {:array "$$b1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$b1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b1 != _value);
  requires {:source_name "b1"} {:array "$$b1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$b1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b1 != _value);
  requires {:source_name "b1"} {:array "$$b1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$b1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$b1(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$b1;



implementation {:inline 1} _LOG_ATOMIC_$$b1(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$b1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$b1);
    return;
}



procedure _CHECK_ATOMIC_$$b1(_P: bool, _offset: bv32);
  requires {:source_name "b1"} {:array "$$b1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$b1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "b1"} {:array "$$b1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$b1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b1(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$b1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b1(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$b1 := (if _P && _WRITE_HAS_OCCURRED_$$b1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$b1);
    return;
}



const _WATCHED_VALUE_$$b2: bv32;

procedure {:inline 1} _LOG_READ_$$b2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$b2;



implementation {:inline 1} _LOG_READ_$$b2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$b2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b2 == _value then true else _READ_HAS_OCCURRED_$$b2);
    return;
}



procedure _CHECK_READ_$$b2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b2"} {:array "$$b2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$b2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$b2);
  requires {:source_name "b2"} {:array "$$b2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$b2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$b2: bool;

procedure {:inline 1} _LOG_WRITE_$$b2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$b2, _WRITE_READ_BENIGN_FLAG_$$b2;



implementation {:inline 1} _LOG_WRITE_$$b2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$b2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b2 == _value then true else _WRITE_HAS_OCCURRED_$$b2);
    _WRITE_READ_BENIGN_FLAG_$$b2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$b2);
    return;
}



procedure _CHECK_WRITE_$$b2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "b2"} {:array "$$b2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$b2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b2 != _value);
  requires {:source_name "b2"} {:array "$$b2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$b2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b2 != _value);
  requires {:source_name "b2"} {:array "$$b2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$b2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$b2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$b2;



implementation {:inline 1} _LOG_ATOMIC_$$b2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$b2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$b2);
    return;
}



procedure _CHECK_ATOMIC_$$b2(_P: bool, _offset: bv32);
  requires {:source_name "b2"} {:array "$$b2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$b2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "b2"} {:array "$$b2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$b2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$b2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$b2 := (if _P && _WRITE_HAS_OCCURRED_$$b2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$b2);
    return;
}



const _WATCHED_VALUE_$$tp1: bv32;

procedure {:inline 1} _LOG_READ_$$tp1(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$tp1;



implementation {:inline 1} _LOG_READ_$$tp1(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp1 == _value then true else _READ_HAS_OCCURRED_$$tp1);
    return;
}



procedure _CHECK_READ_$$tp1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tp1"} {:array "$$tp1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tp1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tp1);
  requires {:source_name "tp1"} {:array "$$tp1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tp1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tp1: bool;

procedure {:inline 1} _LOG_WRITE_$$tp1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$tp1, _WRITE_READ_BENIGN_FLAG_$$tp1;



implementation {:inline 1} _LOG_WRITE_$$tp1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp1 == _value then true else _WRITE_HAS_OCCURRED_$$tp1);
    _WRITE_READ_BENIGN_FLAG_$$tp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tp1);
    return;
}



procedure _CHECK_WRITE_$$tp1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tp1"} {:array "$$tp1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tp1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp1 != _value);
  requires {:source_name "tp1"} {:array "$$tp1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tp1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp1 != _value);
  requires {:source_name "tp1"} {:array "$$tp1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tp1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tp1(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$tp1;



implementation {:inline 1} _LOG_ATOMIC_$$tp1(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tp1);
    return;
}



procedure _CHECK_ATOMIC_$$tp1(_P: bool, _offset: bv32);
  requires {:source_name "tp1"} {:array "$$tp1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tp1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "tp1"} {:array "$$tp1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tp1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tp1(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$tp1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tp1(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tp1 := (if _P && _WRITE_HAS_OCCURRED_$$tp1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tp1);
    return;
}



const _WATCHED_VALUE_$$tp2: bv32;

procedure {:inline 1} _LOG_READ_$$tp2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$tp2;



implementation {:inline 1} _LOG_READ_$$tp2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tp2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp2 == _value then true else _READ_HAS_OCCURRED_$$tp2);
    return;
}



procedure _CHECK_READ_$$tp2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tp2"} {:array "$$tp2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tp2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tp2);
  requires {:source_name "tp2"} {:array "$$tp2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tp2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tp2: bool;

procedure {:inline 1} _LOG_WRITE_$$tp2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$tp2, _WRITE_READ_BENIGN_FLAG_$$tp2;



implementation {:inline 1} _LOG_WRITE_$$tp2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tp2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp2 == _value then true else _WRITE_HAS_OCCURRED_$$tp2);
    _WRITE_READ_BENIGN_FLAG_$$tp2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tp2);
    return;
}



procedure _CHECK_WRITE_$$tp2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "tp2"} {:array "$$tp2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tp2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp2 != _value);
  requires {:source_name "tp2"} {:array "$$tp2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tp2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tp2 != _value);
  requires {:source_name "tp2"} {:array "$$tp2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tp2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tp2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$tp2;



implementation {:inline 1} _LOG_ATOMIC_$$tp2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tp2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tp2);
    return;
}



procedure _CHECK_ATOMIC_$$tp2(_P: bool, _offset: bv32);
  requires {:source_name "tp2"} {:array "$$tp2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tp2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "tp2"} {:array "$$tp2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tp2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tp2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$tp2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tp2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tp2 := (if _P && _WRITE_HAS_OCCURRED_$$tp2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tp2);
    return;
}



const _WATCHED_VALUE_$$y2: bv32;

procedure {:inline 1} _LOG_READ_$$y2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$y2;



implementation {:inline 1} _LOG_READ_$$y2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 == _value then true else _READ_HAS_OCCURRED_$$y2);
    return;
}



procedure _CHECK_READ_$$y2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$y2);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$y2: bool;

procedure {:inline 1} _LOG_WRITE_$$y2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$y2, _WRITE_READ_BENIGN_FLAG_$$y2;



implementation {:inline 1} _LOG_WRITE_$$y2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 == _value then true else _WRITE_HAS_OCCURRED_$$y2);
    _WRITE_READ_BENIGN_FLAG_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$y2);
    return;
}



procedure _CHECK_WRITE_$$y2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 != _value);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$y2 != _value);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$y2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$y2;



implementation {:inline 1} _LOG_ATOMIC_$$y2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$y2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$y2);
    return;
}



procedure _CHECK_ATOMIC_$$y2(_P: bool, _offset: bv32);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "y2"} {:array "$$y2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$y2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$y2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$y2 := (if _P && _WRITE_HAS_OCCURRED_$$y2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$y2);
    return;
}



const _WATCHED_VALUE_$$yp1: bv32;

procedure {:inline 1} _LOG_READ_$$yp1(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$yp1;



implementation {:inline 1} _LOG_READ_$$yp1(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$yp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 == _value then true else _READ_HAS_OCCURRED_$$yp1);
    return;
}



procedure _CHECK_READ_$$yp1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$yp1);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$yp1: bool;

procedure {:inline 1} _LOG_WRITE_$$yp1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$yp1, _WRITE_READ_BENIGN_FLAG_$$yp1;



implementation {:inline 1} _LOG_WRITE_$$yp1(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$yp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 == _value then true else _WRITE_HAS_OCCURRED_$$yp1);
    _WRITE_READ_BENIGN_FLAG_$$yp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$yp1);
    return;
}



procedure _CHECK_WRITE_$$yp1(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 != _value);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp1 != _value);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$yp1(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$yp1;



implementation {:inline 1} _LOG_ATOMIC_$$yp1(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$yp1 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$yp1);
    return;
}



procedure _CHECK_ATOMIC_$$yp1(_P: bool, _offset: bv32);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset);
  requires {:source_name "yp1"} {:array "$$yp1"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$yp1(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$yp1;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$yp1(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$yp1 := (if _P && _WRITE_HAS_OCCURRED_$$yp1 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$yp1);
    return;
}



const _WATCHED_VALUE_$$yp2: bv32;

procedure {:inline 1} _LOG_READ_$$yp2(_P: bool, _offset: bv32, _value: bv32);
  modifies _READ_HAS_OCCURRED_$$yp2;



implementation {:inline 1} _LOG_READ_$$yp2(_P: bool, _offset: bv32, _value: bv32)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$yp2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp2 == _value then true else _READ_HAS_OCCURRED_$$yp2);
    return;
}



procedure _CHECK_READ_$$yp2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "yp2"} {:array "$$yp2"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$yp2 && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$yp2);
  requires {:source_name "yp2"} {:array "$$yp2"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$yp2 && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$yp2: bool;

procedure {:inline 1} _LOG_WRITE_$$yp2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32);
  modifies _WRITE_HAS_OCCURRED_$$yp2, _WRITE_READ_BENIGN_FLAG_$$yp2;



implementation {:inline 1} _LOG_WRITE_$$yp2(_P: bool, _offset: bv32, _value: bv32, _value_old: bv32)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$yp2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp2 == _value then true else _WRITE_HAS_OCCURRED_$$yp2);
    _WRITE_READ_BENIGN_FLAG_$$yp2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp2 == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$yp2);
    return;
}



procedure _CHECK_WRITE_$$yp2(_P: bool, _offset: bv32, _value: bv32);
  requires {:source_name "yp2"} {:array "$$yp2"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$yp2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp2 != _value);
  requires {:source_name "yp2"} {:array "$$yp2"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$yp2 && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$yp2 != _value);
  requires {:source_name "yp2"} {:array "$$yp2"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$yp2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$yp2(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$yp2;



implementation {:inline 1} _LOG_ATOMIC_$$yp2(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$yp2 := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$yp2);
    return;
}



procedure _CHECK_ATOMIC_$$yp2(_P: bool, _offset: bv32);
  requires {:source_name "yp2"} {:array "$$yp2"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$yp2 && _WATCHED_OFFSET == _offset);
  requires {:source_name "yp2"} {:array "$$yp2"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$yp2 && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$yp2(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$yp2;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$yp2(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$yp2 := (if _P && _WRITE_HAS_OCCURRED_$$yp2 && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$yp2);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;
