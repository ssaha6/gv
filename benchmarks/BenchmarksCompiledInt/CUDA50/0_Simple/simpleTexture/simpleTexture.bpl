type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP32(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



procedure _ATOMIC_OP8(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "outputData"} {:global} $$outputData: [int]int;

axiom {:array_info "$$outputData"} {:global} {:elem_width 32} {:source_name "outputData"} {:source_elem_width 32} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$outputData: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$outputData: bool;

var {:race_checking} {:global} {:elem_width 32} {:source_elem_width 32} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$outputData: bool;

axiom {:array_info "$$0"} {:elem_width 8} {:source_name ""} {:source_elem_width 96} {:source_dimensions "1"} true;

axiom {:array_info "$$tex"} {:global} {:elem_width 8} {:source_name "tex"} {:source_elem_width 96} {:source_dimensions "1"} true;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$tex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$tex: bool;

var {:race_checking} {:global} {:elem_width 8} {:source_elem_width 96} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$tex: bool;

const _WATCHED_OFFSET: int;

const {:group_id_x} group_id_x$1: int;

const {:group_id_x} group_id_x$2: int;

const {:group_id_y} group_id_y$1: int;

const {:group_id_y} group_id_y$2: int;

const {:group_size_x} group_size_x: int;

const {:group_size_y} group_size_y: int;

const {:group_size_z} group_size_z: int;

const {:local_id_x} local_id_x$1: int;

const {:local_id_x} local_id_x$2: int;

const {:local_id_y} local_id_y$1: int;

const {:local_id_y} local_id_y$2: int;

const {:num_groups_x} num_groups_x: int;

const {:num_groups_y} num_groups_y: int;

const {:num_groups_z} num_groups_z: int;

function BV_CONCAT(int, int) : int;

function FADD32(int, int) : int;

function FDIV32(int, int) : int;

function FMUL32(int, int) : int;

function FSUB32(int, int) : int;

function SI32_TO_FP32(int) : int;

function UI32_TO_FP32(int) : int;

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

procedure {:source_name "transformKernel"} {:kernel} $_Z15transformKernelPfiif($width: int, $height: int, $theta: int);
  requires {:sourceloc_num 0} {:thread 1} (if $width == 512 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$outputData && !_WRITE_HAS_OCCURRED_$$outputData && !_ATOMIC_HAS_OCCURRED_$$outputData;
  requires !_READ_HAS_OCCURRED_$$tex && !_WRITE_HAS_OCCURRED_$$tex && !_ATOMIC_HAS_OCCURRED_$$tex;
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
  modifies _WRITE_HAS_OCCURRED_$$outputData, _WRITE_READ_BENIGN_FLAG_$$outputData, _WRITE_READ_BENIGN_FLAG_$$outputData;



implementation {:source_name "transformKernel"} {:kernel} $_Z15transformKernelPfiif($width: int, $height: int, $theta: int)
{
  var v1$1: int;
  var v1$2: int;
  var v4$1: int;
  var v4$2: int;
  var v11$1: int;
  var v11$2: int;
  var v5$1: int;
  var v5$2: int;
  var v0$1: int;
  var v0$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v6$1: int;
  var v6$2: int;
  var v7$1: int;
  var v7$2: int;
  var v8$1: int;
  var v8$2: int;
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v29$1: int;
  var v29$2: int;
  var v30$1: int;
  var v30$2: int;
  var v31$1: int;
  var v31$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
  var v17$1: int;
  var v17$2: int;
  var v18$1: int;
  var v18$2: int;
  var v19$1: int;
  var v19$2: int;
  var v20$1: int;
  var v20$2: int;
  var v21$1: int;
  var v21$2: int;
  var v22$1: int;
  var v22$2: int;
  var v23$1: int;
  var v23$2: int;
  var v24$1: int;
  var v24$2: int;
  var v25$1: int;
  var v25$2: int;
  var v26$1: int;
  var v26$2: int;
  var v27$1: int;
  var v27$2: int;
  var v28$1: int;
  var v28$2: int;
  var v32$1: int;
  var v32$2: int;


  $0:
    v0$1 := BV32_ADD(BV32_MUL(group_id_x$1, group_size_x), local_id_x$1);
    v0$2 := BV32_ADD(BV32_MUL(group_id_x$2, group_size_x), local_id_x$2);
    v1$1 := BV32_ADD(BV32_MUL(group_id_y$1, group_size_y), local_id_y$1);
    v1$2 := BV32_ADD(BV32_MUL(group_id_y$2, group_size_y), local_id_y$2);
    v2$1 := FSUB32(FDIV32(UI32_TO_FP32(v0$1), SI32_TO_FP32($width)), 1056964608);
    v2$2 := FSUB32(FDIV32(UI32_TO_FP32(v0$2), SI32_TO_FP32($width)), 1056964608);
    v3$1 := FSUB32(FDIV32(UI32_TO_FP32(v1$1), SI32_TO_FP32($height)), 1056964608);
    v3$2 := FSUB32(FDIV32(UI32_TO_FP32(v1$2), SI32_TO_FP32($height)), 1056964608);
    call {:sourceloc_num 2} v4$1, v4$2 := $cosf($theta);
    assume {:captureState "call_return_state_0"} {:procedureName "$cosf"} true;
    call {:sourceloc_num 3} v5$1, v5$2 := $sinf($theta);
    assume {:captureState "call_return_state_0"} {:procedureName "$sinf"} true;
    call {:sourceloc_num 4} v6$1, v6$2 := $cosf($theta);
    assume {:captureState "call_return_state_0"} {:procedureName "$cosf"} true;
    call {:sourceloc_num 5} v7$1, v7$2 := $sinf($theta);
    assume {:captureState "call_return_state_0"} {:procedureName "$sinf"} true;
    havoc v8$1, v8$2;
    $$0$0$1 := v8$1;
    $$0$0$2 := v8$2;
    havoc v9$1, v9$2;
    $$0$1$1 := v9$1;
    $$0$1$2 := v9$2;
    havoc v10$1, v10$2;
    $$0$2$1 := v10$1;
    $$0$2$2 := v10$2;
    havoc v11$1, v11$2;
    $$0$3$1 := v11$1;
    $$0$3$2 := v11$2;
    havoc v12$1, v12$2;
    $$0$4$1 := v12$1;
    $$0$4$2 := v12$2;
    havoc v13$1, v13$2;
    $$0$5$1 := v13$1;
    $$0$5$2 := v13$2;
    havoc v14$1, v14$2;
    $$0$6$1 := v14$1;
    $$0$6$2 := v14$2;
    havoc v15$1, v15$2;
    $$0$7$1 := v15$1;
    $$0$7$2 := v15$2;
    havoc v16$1, v16$2;
    $$0$8$1 := v16$1;
    $$0$8$2 := v16$2;
    havoc v17$1, v17$2;
    $$0$9$1 := v17$1;
    $$0$9$2 := v17$2;
    havoc v18$1, v18$2;
    $$0$10$1 := v18$1;
    $$0$10$2 := v18$2;
    havoc v19$1, v19$2;
    $$0$11$1 := v19$1;
    $$0$11$2 := v19$2;
    v20$1 := $$0$0$1;
    v20$2 := $$0$0$2;
    v21$1 := $$0$1$1;
    v21$2 := $$0$1$2;
    v22$1 := $$0$2$1;
    v22$2 := $$0$2$2;
    v23$1 := $$0$3$1;
    v23$2 := $$0$3$2;
    v24$1 := $$0$4$1;
    v24$2 := $$0$4$2;
    v25$1 := $$0$5$1;
    v25$2 := $$0$5$2;
    v26$1 := $$0$6$1;
    v26$2 := $$0$6$2;
    v27$1 := $$0$7$1;
    v27$2 := $$0$7$2;
    v28$1 := $$0$8$1;
    v28$2 := $$0$8$2;
    v29$1 := $$0$9$1;
    v29$2 := $$0$9$2;
    v30$1 := $$0$10$1;
    v30$2 := $$0$10$2;
    v31$1 := $$0$11$1;
    v31$2 := $$0$11$2;
    call {:sourceloc_num 42} v32$1, v32$2 := $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff(BV_CONCAT(BV_CONCAT(BV_CONCAT(v23$1, v22$1), v21$1), v20$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$1, v26$1), v25$1), v24$1), BV_CONCAT(BV_CONCAT(BV_CONCAT(v31$1, v30$1), v29$1), v28$1), FADD32(FSUB32(FMUL32(v2$1, v4$1), FMUL32(v3$1, v5$1)), 1056964608), FADD32(FADD32(FMUL32(v3$1, v6$1), FMUL32(v2$1, v7$1)), 1056964608), BV_CONCAT(BV_CONCAT(BV_CONCAT(v23$2, v22$2), v21$2), v20$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v27$2, v26$2), v25$2), v24$2), BV_CONCAT(BV_CONCAT(BV_CONCAT(v31$2, v30$2), v29$2), v28$2), FADD32(FSUB32(FMUL32(v2$2, v4$2), FMUL32(v3$2, v5$2)), 1056964608), FADD32(FADD32(FMUL32(v3$2, v6$2), FMUL32(v2$2, v7$2)), 1056964608));
    assume {:captureState "call_return_state_0"} {:procedureName "$_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} true;
    call {:sourceloc} {:sourceloc_num 43} _LOG_WRITE_$$outputData(true, BV32_ADD(BV32_MUL(v1$1, $width), v0$1), v32$1, $$outputData[BV32_ADD(BV32_MUL(v1$1, $width), v0$1)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputData(true, BV32_ADD(BV32_MUL(v1$2, $width), v0$2));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 43} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 43} _CHECK_WRITE_$$outputData(true, BV32_ADD(BV32_MUL(v1$2, $width), v0$2), v32$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$outputData"} true;
    $$outputData[BV32_ADD(BV32_MUL(v1$1, $width), v0$1)] := v32$1;
    $$outputData[BV32_ADD(BV32_MUL(v1$2, $width), v0$2)] := v32$2;
    return;
}



procedure {:source_name "cosf"} $cosf($0: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "sinf"} $sinf($0: int) returns ($ret$1: int, $ret$2: int);



procedure {:source_name "_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff"} $_Z5tex2DIfET_7textureIS0_Li2EL19cudaTextureReadMode0EEff($0$1: int, $1$1: int, $2$1: int, $3$1: int, $4$1: int, $0$2: int, $1$2: int, $2$2: int, $3$2: int, $4$2: int) returns ($ret$1: int, $ret$2: int);



axiom (if group_size_x == 8 then 1 else 0) != 0;

axiom (if group_size_y == 8 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_x == 64 then 1 else 0) != 0;

axiom (if num_groups_y == 64 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

var $$0$0$1: int;

var $$0$0$2: int;

var $$0$1$1: int;

var $$0$1$2: int;

var $$0$2$1: int;

var $$0$2$2: int;

var $$0$3$1: int;

var $$0$3$2: int;

var $$0$4$1: int;

var $$0$4$2: int;

var $$0$5$1: int;

var $$0$5$2: int;

var $$0$6$1: int;

var $$0$6$2: int;

var $$0$7$1: int;

var $$0$7$2: int;

var $$0$8$1: int;

var $$0$8$2: int;

var $$0$9$1: int;

var $$0$9$2: int;

var $$0$10$1: int;

var $$0$10$2: int;

var $$0$11$1: int;

var $$0$11$2: int;

const _WATCHED_VALUE_$$outputData: int;

procedure {:inline 1} _LOG_READ_$$outputData(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$outputData;



implementation {:inline 1} _LOG_READ_$$outputData(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$outputData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputData == _value then true else _READ_HAS_OCCURRED_$$outputData);
    return;
}



procedure _CHECK_READ_$$outputData(_P: bool, _offset: int, _value: int);
  requires {:source_name "outputData"} {:array "$$outputData"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$outputData && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$outputData);
  requires {:source_name "outputData"} {:array "$$outputData"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$outputData && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$outputData: bool;

procedure {:inline 1} _LOG_WRITE_$$outputData(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$outputData, _WRITE_READ_BENIGN_FLAG_$$outputData;



implementation {:inline 1} _LOG_WRITE_$$outputData(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$outputData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputData == _value then true else _WRITE_HAS_OCCURRED_$$outputData);
    _WRITE_READ_BENIGN_FLAG_$$outputData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputData == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$outputData);
    return;
}



procedure _CHECK_WRITE_$$outputData(_P: bool, _offset: int, _value: int);
  requires {:source_name "outputData"} {:array "$$outputData"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$outputData && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputData != _value);
  requires {:source_name "outputData"} {:array "$$outputData"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$outputData && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$outputData != _value);
  requires {:source_name "outputData"} {:array "$$outputData"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$outputData && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$outputData(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$outputData;



implementation {:inline 1} _LOG_ATOMIC_$$outputData(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$outputData := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$outputData);
    return;
}



procedure _CHECK_ATOMIC_$$outputData(_P: bool, _offset: int);
  requires {:source_name "outputData"} {:array "$$outputData"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$outputData && _WATCHED_OFFSET == _offset);
  requires {:source_name "outputData"} {:array "$$outputData"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$outputData && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputData(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$outputData;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$outputData(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$outputData := (if _P && _WRITE_HAS_OCCURRED_$$outputData && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$outputData);
    return;
}



const _WATCHED_VALUE_$$tex: int;

procedure {:inline 1} _LOG_READ_$$tex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$tex;



implementation {:inline 1} _LOG_READ_$$tex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then true else _READ_HAS_OCCURRED_$$tex);
    return;
}



procedure _CHECK_READ_$$tex(_P: bool, _offset: int, _value: int);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$tex);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$tex: bool;

procedure {:inline 1} _LOG_WRITE_$$tex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$tex, _WRITE_READ_BENIGN_FLAG_$$tex;



implementation {:inline 1} _LOG_WRITE_$$tex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then true else _WRITE_HAS_OCCURRED_$$tex);
    _WRITE_READ_BENIGN_FLAG_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$tex);
    return;
}



procedure _CHECK_WRITE_$$tex(_P: bool, _offset: int, _value: int);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex != _value);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$tex != _value);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$tex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$tex;



implementation {:inline 1} _LOG_ATOMIC_$$tex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$tex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$tex);
    return;
}



procedure _CHECK_ATOMIC_$$tex(_P: bool, _offset: int);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);
  requires {:source_name "tex"} {:array "$$tex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$tex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$tex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$tex := (if _P && _WRITE_HAS_OCCURRED_$$tex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$tex);
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
