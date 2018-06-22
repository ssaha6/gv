type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



axiom {:array_info "$$a"} {:global} {:elem_width 64} {:source_name "a"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$a: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$a: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$a: bool;

axiom {:array_info "$$b"} {:global} {:elem_width 64} {:source_name "b"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$b: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$b: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$b: bool;

axiom {:array_info "$$c"} {:global} {:elem_width 64} {:source_name "c"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$c: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$c: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$c: bool;

var {:source_name "p"} {:global} $$p: [bv32]bv64;

axiom {:array_info "$$p"} {:global} {:elem_width 64} {:source_name "p"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$p: bool;

var {:source_name "shared_a"} {:group_shared} $$kernel17.shared_a: [bv1][bv32]bv64;

axiom {:array_info "$$kernel17.shared_a"} {:group_shared} {:elem_width 64} {:source_name "shared_a"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel17.shared_a: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel17.shared_a: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_a: bool;

var {:source_name "shared_b"} {:group_shared} $$kernel17.shared_b: [bv1][bv32]bv64;

axiom {:array_info "$$kernel17.shared_b"} {:group_shared} {:elem_width 64} {:source_name "shared_b"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel17.shared_b: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel17.shared_b: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_b: bool;

var {:source_name "shared_c"} {:group_shared} $$kernel17.shared_c: [bv1][bv32]bv64;

axiom {:array_info "$$kernel17.shared_c"} {:group_shared} {:elem_width 64} {:source_name "shared_c"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel17.shared_c: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel17.shared_c: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_c: bool;

const _WATCHED_OFFSET: bv32;

const {:global_offset_x} global_offset_x: bv32;

const {:global_offset_y} global_offset_y: bv32;

const {:global_offset_z} global_offset_z: bv32;

const {:group_id_x} group_id_x$1: bv32;

const {:group_id_x} group_id_x$2: bv32;

const {:group_size_x} group_size_x: bv32;

const {:group_size_y} group_size_y: bv32;

const {:group_size_z} group_size_z: bv32;

const {:local_id_x} local_id_x$1: bv32;

const {:local_id_x} local_id_x$2: bv32;

const {:num_groups_x} num_groups_x: bv32;

const {:num_groups_y} num_groups_y: bv32;

const {:num_groups_z} num_groups_z: bv32;

function FADD64(bv64, bv64) : bv64;

function FDIV64(bv64, bv64) : bv64;

function FMUL64(bv64, bv64) : bv64;

function FSUB64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsgt"} BV64_SGT(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel17"} {:kernel} $kernel17($n: bv32, $tsteps: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if $tsteps == 512bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 3bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_SLE($tsteps, 2147483647bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 1bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tsteps), $c0) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$a && !_WRITE_HAS_OCCURRED_$$a && !_ATOMIC_HAS_OCCURRED_$$a;
  requires !_READ_HAS_OCCURRED_$$b && !_WRITE_HAS_OCCURRED_$$b && !_ATOMIC_HAS_OCCURRED_$$b;
  requires !_READ_HAS_OCCURRED_$$c && !_WRITE_HAS_OCCURRED_$$c && !_ATOMIC_HAS_OCCURRED_$$c;
  requires !_READ_HAS_OCCURRED_$$p && !_WRITE_HAS_OCCURRED_$$p && !_ATOMIC_HAS_OCCURRED_$$p;
  requires !_READ_HAS_OCCURRED_$$kernel17.shared_a && !_WRITE_HAS_OCCURRED_$$kernel17.shared_a && !_ATOMIC_HAS_OCCURRED_$$kernel17.shared_a;
  requires !_READ_HAS_OCCURRED_$$kernel17.shared_b && !_WRITE_HAS_OCCURRED_$$kernel17.shared_b && !_ATOMIC_HAS_OCCURRED_$$kernel17.shared_b;
  requires !_READ_HAS_OCCURRED_$$kernel17.shared_c && !_WRITE_HAS_OCCURRED_$$kernel17.shared_c && !_ATOMIC_HAS_OCCURRED_$$kernel17.shared_c;
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
  modifies $$kernel17.shared_a, $$kernel17.shared_b, $$kernel17.shared_c, _WRITE_HAS_OCCURRED_$$kernel17.shared_a, _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a, _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a, _WRITE_HAS_OCCURRED_$$kernel17.shared_b, _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b, _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b, _WRITE_HAS_OCCURRED_$$kernel17.shared_c, _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c, _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c, $$p, _TRACKING, _READ_HAS_OCCURRED_$$kernel17.shared_c, _READ_HAS_OCCURRED_$$kernel17.shared_a, _READ_HAS_OCCURRED_$$p, _READ_HAS_OCCURRED_$$kernel17.shared_b, _WRITE_HAS_OCCURRED_$$p, _WRITE_READ_BENIGN_FLAG_$$p, _WRITE_READ_BENIGN_FLAG_$$p, _TRACKING;



implementation {:source_name "kernel17"} {:kernel} $kernel17($n: bv32, $tsteps: bv32, $c0: bv64)
{
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $c2.0$1: bv64;
  var $c2.0$2: bv64;
  var $cond$1: bv64;
  var $cond$2: bv64;
  var $c4.0$1: bv64;
  var $c4.0$2: bv64;
  var $cond55$1: bv64;
  var $cond55$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v3$1: bv64;
  var v3$2: bv64;
  var v5$1: bv64;
  var v5$2: bv64;
  var v4$1: bv64;
  var v4$2: bv64;
  var v6$1: bool;
  var v6$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v13$1: bv64;
  var v13$2: bv64;
  var v14$1: bv64;
  var v14$2: bv64;
  var v16$1: bv64;
  var v16$2: bv64;
  var v15$1: bv64;
  var v15$2: bv64;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var p0$1: bool;
  var p0$2: bool;
  var p1$1: bool;
  var p1$2: bool;
  var p2$1: bool;
  var p2$2: bool;
  var p3$1: bool;
  var p3$2: bool;
  var p4$1: bool;
  var p4$2: bool;
  var p5$1: bool;
  var p5$2: bool;
  var p6$1: bool;
  var p6$2: bool;
  var p7$1: bool;
  var p7$2: bool;
  var p8$1: bool;
  var p8$2: bool;
  var p9$1: bool;
  var p9$2: bool;
  var p10$1: bool;
  var p10$2: bool;
  var p11$1: bool;
  var p11$2: bool;
  var p12$1: bool;
  var p12$2: bool;
  var p13$1: bool;
  var p13$2: bool;
  var p14$1: bool;
  var p14$2: bool;
  var p15$1: bool;
  var p15$2: bool;
  var p16$1: bool;
  var p16$2: bool;
  var _HAVOC_bv64$1: bv64;
  var _HAVOC_bv64$2: bv64;
  var _READ_HAS_OCCURRED_$$p$ghost$$for.cond.23: bool;
  var _WRITE_HAS_OCCURRED_$$p$ghost$$for.cond.23: bool;
  var _READ_HAS_OCCURRED_$$p$ghost$$for.cond.43: bool;
  var _WRITE_HAS_OCCURRED_$$p$ghost$$for.cond.43: bool;


  __partitioned_block_$entry_0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2$1 := v1$1 == 0bv64;
    v2$2 := v1$2 == 0bv64;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v3$1 := (if p0$1 then _HAVOC_bv64$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_bv64$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$kernel17.shared_a(p0$1, 0bv32, v3$1, $$kernel17.shared_a[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$kernel17.shared_a(p0$2, 0bv32, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel17.shared_a"} true;
    $$kernel17.shared_a[1bv1][0bv32] := (if p0$1 then v3$1 else $$kernel17.shared_a[1bv1][0bv32]);
    $$kernel17.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v3$2 else $$kernel17.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v4$1 := (if p0$1 then _HAVOC_bv64$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_bv64$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$kernel17.shared_b(p0$1, 0bv32, v4$1, $$kernel17.shared_b[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$kernel17.shared_b(p0$2, 0bv32, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel17.shared_b"} true;
    $$kernel17.shared_b[1bv1][0bv32] := (if p0$1 then v4$1 else $$kernel17.shared_b[1bv1][0bv32]);
    $$kernel17.shared_b[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v4$2 else $$kernel17.shared_b[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    havoc _HAVOC_bv64$1, _HAVOC_bv64$2;
    v5$1 := (if p0$1 then _HAVOC_bv64$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_bv64$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$kernel17.shared_c(p0$1, 0bv32, v5$1, $$kernel17.shared_c[1bv1][0bv32]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c(p0$2, 0bv32);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$kernel17.shared_c(p0$2, 0bv32, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel17.shared_c"} true;
    $$kernel17.shared_c[1bv1][0bv32] := (if p0$1 then v5$1 else $$kernel17.shared_c[1bv1][0bv32]);
    $$kernel17.shared_c[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] := (if p0$2 then v5$2 else $$kernel17.shared_c[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32]);
    goto __partitioned_block_$entry_1;

  __partitioned_block_$entry_1:
    call {:sourceloc_num 14} $bugle_barrier_duplicated_0(1bv1, 1bv1);
    $c1.0$1 := BV64_MUL(32bv64, v0$1);
    $c1.0$2 := BV64_MUL(32bv64, v0$2);
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b73 ==> _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b72 ==> _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b71 ==> !_WRITE_HAS_OCCURRED_$$p;
    assert {:tag "noread"} _b70 ==> !_READ_HAS_OCCURRED_$$p;
    assert {:tag "predicatedEquality"} _b69 ==> p2$1 && p2$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b68 ==> p2$1 && p2$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b67 ==> p2$1 && p2$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b66 ==> p2$1 && p2$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b65 ==> p2$1 && p2$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b64 ==> p2$1 && p2$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b63 ==> p2$1 && p2$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b62 ==> p2$1 && p2$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b61 ==> p2$1 && p2$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b60 ==> p2$1 && p2$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b59 ==> p2$1 && p2$2 ==> v6$1 == v6$2;
    assert {:tag "predicatedEquality"} _b58 ==> p2$1 && p2$2 ==> $cond55$1 == $cond55$2;
    assert {:tag "predicatedEquality"} _b57 ==> p2$1 && p2$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b56 ==> p2$1 && p2$2 ==> $cond$1 == $cond$2;
    assert {:tag "predicatedEquality"} _b55 ==> p2$1 && p2$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "predicatedEquality"} _b54 ==> p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2;
    assert {:tag "loopPredicateEquality"} _b53 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2;
    assert {:tag "loopPredicateEquality"} _b52 ==> p2$1 == p2$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel17.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel17.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel17.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel17.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel17.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel17.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b8 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ==> p2$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b8 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) ==> p2$2;
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b7 ==> BV64_UGE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b7 ==> BV64_UGE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b6 ==> BV64_ULE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b6 ==> BV64_ULE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b5 ==> BV64_SGE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b5 ==> BV64_SGE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "loopBound"} {:thread 1} p2$1 ==> _b4 ==> BV64_SLE($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "loopBound"} {:thread 2} p2$2 ==> _b4 ==> BV64_SLE($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b3 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b3 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c1.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p2$1 ==> _b2 ==> BV64_SUB($c1.0$1, BV64_MUL(32bv64, v0$1)) == BV64_SUB($c1.0$2, BV64_MUL(32bv64, v0$2));
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p2$2 ==> _b2 ==> BV64_SUB($c1.0$2, BV64_MUL(32bv64, v0$2)) == BV64_SUB($c1.0$1, BV64_MUL(32bv64, v0$1));
    assert {:tag "guardNonNeg"} {:thread 1} p2$1 ==> _b1 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p2$2 ==> _b1 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p2$1 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$1));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p2$2 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_MUL(32bv64, v0$2));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 15} p2$1 ==> true;
    v6$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) else v6$1);
    v6$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) else v6$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p16$1 := false;
    p16$2 := false;
    p3$1 := (if p2$1 && v6$1 then v6$1 else p3$1);
    p3$2 := (if p2$2 && v6$2 then v6$2 else p3$2);
    p2$1 := (if p2$1 && !v6$1 then v6$1 else p2$1);
    p2$2 := (if p2$2 && !v6$2 then v6$2 else p2$2);
    $c2.0$1 := (if p3$1 then 0bv64 else $c2.0$1);
    $c2.0$2 := (if p3$2 then 0bv64 else $c2.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$p$ghost$$for.cond.23 := _READ_HAS_OCCURRED_$$p;
    _WRITE_HAS_OCCURRED_$$p$ghost$$for.cond.23 := _WRITE_HAS_OCCURRED_$$p;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond.23;

  $for.cond.23:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b95 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$p$ghost$$for.cond.23 == _WRITE_HAS_OCCURRED_$$p;
    assert {:tag "disabledMaintainsInstrumentation"} _b94 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$p$ghost$$for.cond.23 == _READ_HAS_OCCURRED_$$p;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b93 ==> _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b92 ==> _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "nowrite"} _b91 ==> !_WRITE_HAS_OCCURRED_$$p;
    assert {:tag "noread"} _b90 ==> !_READ_HAS_OCCURRED_$$p;
    assert {:tag "predicatedEquality"} _b89 ==> p4$1 && p4$2 ==> v12$1 == v12$2;
    assert {:tag "predicatedEquality"} _b88 ==> p4$1 && p4$2 ==> v11$1 == v11$2;
    assert {:tag "predicatedEquality"} _b87 ==> p4$1 && p4$2 ==> v15$1 == v15$2;
    assert {:tag "predicatedEquality"} _b86 ==> p4$1 && p4$2 ==> v16$1 == v16$2;
    assert {:tag "predicatedEquality"} _b85 ==> p4$1 && p4$2 ==> v14$1 == v14$2;
    assert {:tag "predicatedEquality"} _b84 ==> p4$1 && p4$2 ==> v13$1 == v13$2;
    assert {:tag "predicatedEquality"} _b83 ==> p4$1 && p4$2 ==> v7$1 == v7$2;
    assert {:tag "predicatedEquality"} _b82 ==> p4$1 && p4$2 ==> v10$1 == v10$2;
    assert {:tag "predicatedEquality"} _b81 ==> p4$1 && p4$2 ==> v8$1 == v8$2;
    assert {:tag "predicatedEquality"} _b80 ==> p4$1 && p4$2 ==> v9$1 == v9$2;
    assert {:tag "predicatedEquality"} _b79 ==> p4$1 && p4$2 ==> $cond55$1 == $cond55$2;
    assert {:tag "predicatedEquality"} _b78 ==> p4$1 && p4$2 ==> $c4.0$1 == $c4.0$2;
    assert {:tag "predicatedEquality"} _b77 ==> p4$1 && p4$2 ==> $cond$1 == $cond$2;
    assert {:tag "predicatedEquality"} _b76 ==> p4$1 && p4$2 ==> $c2.0$1 == $c2.0$2;
    assert {:tag "loopPredicateEquality"} _b75 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2;
    assert {:tag "loopPredicateEquality"} _b74 ==> p4$1 == p4$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel17.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel17.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel17.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel17.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel17.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel17.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b23 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b22 ==> _READ_HAS_OCCURRED_$$kernel17.shared_b ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b21 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b20 ==> _READ_HAS_OCCURRED_$$kernel17.shared_a ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b19 ==> _READ_HAS_OCCURRED_$$kernel17.shared_c ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b18 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b18 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b17 ==> p4$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b17 ==> p4$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b16 ==> BV64_UGE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b16 ==> BV64_UGE($c2.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b15 ==> BV64_ULE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b15 ==> BV64_ULE($c2.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b14 ==> BV64_SGE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b14 ==> BV64_SGE($c2.0$2, 0bv64);
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b13 ==> BV64_SLE($c2.0$1, 0bv64);
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b13 ==> BV64_SLE($c2.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p4$1 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$1, 0bv64) == BV64_SUB($c2.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p4$2 ==> _b12 ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> BV64_SUB($c2.0$2, 0bv64) == BV64_SUB($c2.0$1, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 1} p4$1 ==> _b11 ==> BV64_SUB($c2.0$1, 0bv64) == BV64_SUB($c2.0$2, 0bv64);
    assert {:tag "guardMinusInitialIsUniform"} {:thread 2} p4$2 ==> _b11 ==> BV64_SUB($c2.0$2, 0bv64) == BV64_SUB($c2.0$1, 0bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p4$1 ==> _b10 ==> BV64_SLE(0bv64, $c2.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p4$2 ==> _b10 ==> BV64_SLE(0bv64, $c2.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b9 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$1) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b9 ==> BV64_AND(BV64_SUB(32bv64, 1bv64), $c2.0$2) == BV64_AND(BV64_SUB(32bv64, 1bv64), 0bv64);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 17} p4$1 ==> true;
    v7$1 := (if p4$1 then BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) else v7$1);
    v7$2 := (if p4$2 then BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) else v7$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p10$1 := false;
    p10$2 := false;
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p5$1 := (if p4$1 && v7$1 then v7$1 else p5$1);
    p5$2 := (if p4$2 && v7$2 then v7$2 else p5$2);
    p4$1 := (if p4$1 && !v7$1 then v7$1 else p4$1);
    p4$2 := (if p4$2 && !v7$2 then v7$2 else p4$2);
    v8$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 2bv64)) else v8$1);
    v8$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 2bv64)) else v8$2);
    p7$1 := (if p5$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p5$2 && v8$2 then v8$2 else p7$2);
    v9$1 := (if p7$1 then BV64_SGE(BV64_ADD(v1$1, $c1.0$1), 1bv64) else v9$1);
    v9$2 := (if p7$2 then BV64_SGE(BV64_ADD(v1$2, $c1.0$2), 1bv64) else v9$2);
    p9$1 := (if p7$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p7$2 && v9$2 then v9$2 else p9$2);
    v10$1 := (if p9$1 then BV64_SGT(0bv64, BV64_ADD(BV64_SUB(0bv64, $c2.0$1), 1bv64)) else v10$1);
    v10$2 := (if p9$2 then BV64_SGT(0bv64, BV64_ADD(BV64_SUB(0bv64, $c2.0$2), 1bv64)) else v10$2);
    p11$1 := (if p9$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p9$2 && v10$2 then v10$2 else p11$2);
    p10$1 := (if p9$1 && !v10$1 then !v10$1 else p10$1);
    p10$2 := (if p9$2 && !v10$2 then !v10$2 else p10$2);
    $cond$1 := (if p10$1 then BV64_ADD(BV64_SUB(0bv64, $c2.0$1), 1bv64) else $cond$1);
    $cond$2 := (if p10$2 then BV64_ADD(BV64_SUB(0bv64, $c2.0$2), 1bv64) else $cond$2);
    $cond$1 := (if p11$1 then 0bv64 else $cond$1);
    $cond$2 := (if p11$2 then 0bv64 else $cond$2);
    $c4.0$1 := (if p9$1 then $cond$1 else $c4.0$1);
    $c4.0$2 := (if p9$2 then $cond$2 else $c4.0$2);
    p12$1 := (if p9$1 then true else p12$1);
    p12$2 := (if p9$2 then true else p12$2);
    _READ_HAS_OCCURRED_$$p$ghost$$for.cond.43 := _READ_HAS_OCCURRED_$$p;
    _WRITE_HAS_OCCURRED_$$p$ghost$$for.cond.43 := _WRITE_HAS_OCCURRED_$$p;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $for.cond.43;

  $for.cond.43:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b99 ==> !p9$1 ==> _WRITE_HAS_OCCURRED_$$p$ghost$$for.cond.43 == _WRITE_HAS_OCCURRED_$$p;
    assert {:tag "disabledMaintainsInstrumentation"} _b98 ==> !p9$1 ==> _READ_HAS_OCCURRED_$$p$ghost$$for.cond.43 == _READ_HAS_OCCURRED_$$p;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b97 ==> _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b96 ==> _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel17.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel17.shared_c ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel17.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel17.shared_b ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel17.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel17.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel17.shared_a ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p12"} {:dominator_predicate "p9"} true;
    assert p12$1 ==> p4$1;
    assert p12$2 ==> p4$2;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b51 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b50 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b49 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b48 ==> _WRITE_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b47 ==> _READ_HAS_OCCURRED_$$kernel17.shared_b ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b46 ==> _READ_HAS_OCCURRED_$$kernel17.shared_b ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b45 ==> _READ_HAS_OCCURRED_$$kernel17.shared_b ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b44 ==> _READ_HAS_OCCURRED_$$kernel17.shared_b ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b43 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b42 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b41 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b40 ==> _READ_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b39 ==> _READ_HAS_OCCURRED_$$kernel17.shared_a ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b38 ==> _READ_HAS_OCCURRED_$$kernel17.shared_a ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b37 ==> _READ_HAS_OCCURRED_$$kernel17.shared_a ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b36 ==> _READ_HAS_OCCURRED_$$kernel17.shared_a ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b35 ==> _READ_HAS_OCCURRED_$$kernel17.shared_c ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b34 ==> _READ_HAS_OCCURRED_$$kernel17.shared_c ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b33 ==> _READ_HAS_OCCURRED_$$kernel17.shared_c ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b32 ==> _READ_HAS_OCCURRED_$$kernel17.shared_c ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b31 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64) && BV64_SLE($c4.0$1, $cond55$1) ==> p12$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b31 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64) && BV64_SLE($c4.0$2, $cond55$2) ==> p12$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p12$1 ==> _b30 ==> p12$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p12$2 ==> _b30 ==> p12$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1bv32))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b29 ==> BV64_UGE($c4.0$1, $cond$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b29 ==> BV64_UGE($c4.0$2, $cond$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b28 ==> BV64_ULE($c4.0$1, $cond$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b28 ==> BV64_ULE($c4.0$2, $cond$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b27 ==> BV64_SGE($c4.0$1, $cond$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b27 ==> BV64_SGE($c4.0$2, $cond$2);
    assert {:tag "loopBound"} {:thread 1} p12$1 ==> _b26 ==> BV64_SLE($c4.0$1, $cond$1);
    assert {:tag "loopBound"} {:thread 2} p12$2 ==> _b26 ==> BV64_SLE($c4.0$2, $cond$2);
    assert {:tag "guardNonNeg"} {:thread 1} p12$1 ==> _b25 ==> BV64_SLE(0bv64, $cond55$1);
    assert {:tag "guardNonNeg"} {:thread 2} p12$2 ==> _b25 ==> BV64_SLE(0bv64, $cond55$2);
    assert {:tag "guardNonNeg"} {:thread 1} p12$1 ==> _b24 ==> BV64_SLE(0bv64, $c4.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p12$2 ==> _b24 ==> BV64_SLE(0bv64, $c4.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 3bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 2bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_SUB($n, 1bv32)))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 24} p12$1 ==> true;
    v11$1 := (if p12$1 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2bv64)) else v11$1);
    v11$2 := (if p12$2 then BV64_SLT(31bv64, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2bv64)) else v11$2);
    p13$1 := false;
    p13$2 := false;
    p14$1 := false;
    p14$2 := false;
    p15$1 := false;
    p15$2 := false;
    p14$1 := (if p12$1 && v11$1 then v11$1 else p14$1);
    p14$2 := (if p12$2 && v11$2 then v11$2 else p14$2);
    p13$1 := (if p12$1 && !v11$1 then !v11$1 else p13$1);
    p13$2 := (if p12$2 && !v11$2 then !v11$2 else p13$2);
    $cond55$1 := (if p13$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2bv64) else $cond55$1);
    $cond55$2 := (if p13$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2bv64) else $cond55$2);
    $cond55$1 := (if p14$1 then 31bv64 else $cond55$1);
    $cond55$2 := (if p14$2 then 31bv64 else $cond55$2);
    v12$1 := (if p12$1 then BV64_SLE($c4.0$1, $cond55$1) else v12$1);
    v12$2 := (if p12$2 then BV64_SLE($c4.0$2, $cond55$2) else v12$2);
    p15$1 := (if p12$1 && v12$1 then v12$1 else p15$1);
    p15$2 := (if p12$2 && v12$2 then v12$2 else p15$2);
    p12$1 := (if p12$1 && !v12$1 then v12$1 else p12$1);
    p12$2 := (if p12$2 && !v12$2 then v12$2 else p12$2);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 29} true;
    v13$1 := (if p15$1 then $$kernel17.shared_c[1bv1][0bv32] else v13$1);
    v13$2 := (if p15$2 then $$kernel17.shared_c[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v13$2);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 30} true;
    v14$1 := (if p15$1 then $$kernel17.shared_a[1bv1][0bv32] else v14$1);
    v14$2 := (if p15$2 then $$kernel17.shared_a[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v14$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$p(p15$1, BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1bv64))[32:0], $$p[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1bv64))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$p(p15$2, BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1bv64))[32:0], $$p[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1bv64))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$p"} true;
    v15$1 := (if p15$1 then $$p[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1bv64))[32:0]] else v15$1);
    v15$2 := (if p15$2 then $$p[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1bv64))[32:0]] else v15$2);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 32} true;
    v16$1 := (if p15$1 then $$kernel17.shared_b[1bv1][0bv32] else v16$1);
    v16$2 := (if p15$2 then $$kernel17.shared_b[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0bv32] else v16$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$p(p15$1, BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1))[32:0], FDIV64(FSUB64(9223372036854775808bv64, v13$1), FADD64(FMUL64(v14$1, v15$1), v16$1)), $$p[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(p15$2, BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$p(p15$2, BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2))[32:0], FDIV64(FSUB64(9223372036854775808bv64, v13$2), FADD64(FMUL64(v14$2, v15$2), v16$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$p"} true;
    $$p[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]] := (if p15$1 then FDIV64(FSUB64(9223372036854775808bv64, v13$1), FADD64(FMUL64(v14$1, v15$1), v16$1)) else $$p[BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1))[32:0]]);
    $$p[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]] := (if p15$2 then FDIV64(FSUB64(9223372036854775808bv64, v13$2), FADD64(FMUL64(v14$2, v15$2), v16$2)) else $$p[BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2))[32:0]]);
    $c4.0$1 := (if p15$1 then BV64_ADD($c4.0$1, 1bv64) else $c4.0$1);
    $c4.0$2 := (if p15$2 then BV64_ADD($c4.0$2, 1bv64) else $c4.0$2);
    p12$1 := (if p15$1 then true else p12$1);
    p12$2 := (if p15$2 then true else p12$2);
    goto $for.cond.43.backedge, __partitioned_block_$for.cond.43.tail_0;

  __partitioned_block_$for.cond.43.tail_0:
    assume !p12$1 && !p12$2;
    goto __partitioned_block_$for.cond.43.tail_1;

  __partitioned_block_$for.cond.43.tail_1:
    call {:sourceloc_num 37} $bugle_barrier_duplicated_1(1bv1, 1bv1, p5$1, p5$2);
    $c2.0$1 := (if p5$1 then BV64_ADD($c2.0$1, 32bv64) else $c2.0$1);
    $c2.0$2 := (if p5$2 then BV64_ADD($c2.0$2, 32bv64) else $c2.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $for.cond.23.backedge, $for.cond.23.tail;

  $for.cond.23.tail:
    assume !p4$1 && !p4$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 1048576bv64) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 1048576bv64) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $for.cond.backedge, $for.cond.tail;

  $for.cond.tail:
    assume !p2$1 && !p2$2;
    return;

  $for.cond.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;

  $for.cond.23.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond.23;

  $for.cond.43.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $for.cond.43;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_x == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_y == 0bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if global_offset_z == 0bv32 then 1bv1 else 0bv1) != 0bv1;

const {:local_id_y} local_id_y$1: bv32;

const {:local_id_y} local_id_y$2: bv32;

const {:local_id_z} local_id_z$1: bv32;

const {:local_id_z} local_id_z$2: bv32;

const {:group_id_y} group_id_y$1: bv32;

const {:group_id_y} group_id_y$2: bv32;

const {:group_id_z} group_id_z$1: bv32;

const {:group_id_z} group_id_z$2: bv32;

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: bv1, $1: bv1);
  requires $0 == 1bv1;
  requires $1 == 1bv1;
  modifies $$kernel17.shared_a, $$kernel17.shared_b, $$kernel17.shared_c, $$p, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool);
  requires _P$1 ==> $0 == 1bv1;
  requires _P$2 ==> $0 == 1bv1;
  requires _P$1 ==> $1 == 1bv1;
  requires _P$2 ==> $1 == 1bv1;
  modifies $$kernel17.shared_a, $$kernel17.shared_b, $$kernel17.shared_c, $$p, _TRACKING;



function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

const {:existential true} _b5: bool;

function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;

const {:existential true} _b6: bool;

function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;

const {:existential true} _b7: bool;

const {:existential true} _b8: bool;

const {:existential true} _b9: bool;

const {:existential true} _b10: bool;

const {:existential true} _b11: bool;

const {:existential true} _b12: bool;

const {:existential true} _b13: bool;

const {:existential true} _b14: bool;

const {:existential true} _b15: bool;

const {:existential true} _b16: bool;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;

const {:existential true} _b21: bool;

const {:existential true} _b22: bool;

const {:existential true} _b23: bool;

const {:existential true} _b24: bool;

const {:existential true} _b25: bool;

const {:existential true} _b26: bool;

const {:existential true} _b27: bool;

const {:existential true} _b28: bool;

const {:existential true} _b29: bool;

const {:existential true} _b30: bool;

const {:existential true} _b31: bool;

const {:existential true} _b32: bool;

const {:existential true} _b33: bool;

const {:existential true} _b34: bool;

const {:existential true} _b35: bool;

const {:existential true} _b36: bool;

const {:existential true} _b37: bool;

const {:existential true} _b38: bool;

const {:existential true} _b39: bool;

const {:existential true} _b40: bool;

const {:existential true} _b41: bool;

const {:existential true} _b42: bool;

const {:existential true} _b43: bool;

const {:existential true} _b44: bool;

const {:existential true} _b45: bool;

const {:existential true} _b46: bool;

const {:existential true} _b47: bool;

const {:existential true} _b48: bool;

const {:existential true} _b49: bool;

const {:existential true} _b50: bool;

const {:existential true} _b51: bool;

const _WATCHED_VALUE_$$a: bv64;

procedure {:inline 1} _LOG_READ_$$a(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$a;



implementation {:inline 1} _LOG_READ_$$a(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a == _value then true else _READ_HAS_OCCURRED_$$a);
    return;
}



procedure _CHECK_READ_$$a(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "a"} {:array "$$a"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$a);
  requires {:source_name "a"} {:array "$$a"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$a: bool;

procedure {:inline 1} _LOG_WRITE_$$a(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$a, _WRITE_READ_BENIGN_FLAG_$$a;



implementation {:inline 1} _LOG_WRITE_$$a(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a == _value then true else _WRITE_HAS_OCCURRED_$$a);
    _WRITE_READ_BENIGN_FLAG_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$a);
    return;
}



procedure _CHECK_WRITE_$$a(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "a"} {:array "$$a"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a != _value);
  requires {:source_name "a"} {:array "$$a"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$a != _value);
  requires {:source_name "a"} {:array "$$a"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$a(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$a;



implementation {:inline 1} _LOG_ATOMIC_$$a(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$a := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$a);
    return;
}



procedure _CHECK_ATOMIC_$$a(_P: bool, _offset: bv32);
  requires {:source_name "a"} {:array "$$a"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);
  requires {:source_name "a"} {:array "$$a"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$a;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$a(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$a := (if _P && _WRITE_HAS_OCCURRED_$$a && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$a);
    return;
}



const _WATCHED_VALUE_$$b: bv64;

procedure {:inline 1} _LOG_READ_$$b(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$b;



implementation {:inline 1} _LOG_READ_$$b(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$b := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b == _value then true else _READ_HAS_OCCURRED_$$b);
    return;
}



procedure _CHECK_READ_$$b(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "b"} {:array "$$b"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$b);
  requires {:source_name "b"} {:array "$$b"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$b: bool;

procedure {:inline 1} _LOG_WRITE_$$b(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$b, _WRITE_READ_BENIGN_FLAG_$$b;



implementation {:inline 1} _LOG_WRITE_$$b(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$b := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b == _value then true else _WRITE_HAS_OCCURRED_$$b);
    _WRITE_READ_BENIGN_FLAG_$$b := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$b);
    return;
}



procedure _CHECK_WRITE_$$b(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "b"} {:array "$$b"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b != _value);
  requires {:source_name "b"} {:array "$$b"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$b != _value);
  requires {:source_name "b"} {:array "$$b"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$b(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$b;



implementation {:inline 1} _LOG_ATOMIC_$$b(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$b := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$b);
    return;
}



procedure _CHECK_ATOMIC_$$b(_P: bool, _offset: bv32);
  requires {:source_name "b"} {:array "$$b"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset);
  requires {:source_name "b"} {:array "$$b"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$b;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$b(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$b := (if _P && _WRITE_HAS_OCCURRED_$$b && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$b);
    return;
}



const _WATCHED_VALUE_$$c: bv64;

procedure {:inline 1} _LOG_READ_$$c(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$c;



implementation {:inline 1} _LOG_READ_$$c(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c == _value then true else _READ_HAS_OCCURRED_$$c);
    return;
}



procedure _CHECK_READ_$$c(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "c"} {:array "$$c"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$c);
  requires {:source_name "c"} {:array "$$c"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$c: bool;

procedure {:inline 1} _LOG_WRITE_$$c(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$c, _WRITE_READ_BENIGN_FLAG_$$c;



implementation {:inline 1} _LOG_WRITE_$$c(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c == _value then true else _WRITE_HAS_OCCURRED_$$c);
    _WRITE_READ_BENIGN_FLAG_$$c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$c);
    return;
}



procedure _CHECK_WRITE_$$c(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "c"} {:array "$$c"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c != _value);
  requires {:source_name "c"} {:array "$$c"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$c != _value);
  requires {:source_name "c"} {:array "$$c"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$c(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$c;



implementation {:inline 1} _LOG_ATOMIC_$$c(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$c := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$c);
    return;
}



procedure _CHECK_ATOMIC_$$c(_P: bool, _offset: bv32);
  requires {:source_name "c"} {:array "$$c"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset);
  requires {:source_name "c"} {:array "$$c"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$c(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$c;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$c(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$c := (if _P && _WRITE_HAS_OCCURRED_$$c && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$c);
    return;
}



const _WATCHED_VALUE_$$p: bv64;

procedure {:inline 1} _LOG_READ_$$p(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_READ_$$p(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _READ_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_READ_$$p(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$p);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$p: bool;

procedure {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$p, _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _WRITE_HAS_OCCURRED_$$p);
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



procedure _CHECK_WRITE_$$p(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_ATOMIC_$$p(_P: bool, _offset: bv32);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



const _WATCHED_VALUE_$$kernel17.shared_a: bv64;

procedure {:inline 1} _LOG_READ_$$kernel17.shared_a(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel17.shared_a;



implementation {:inline 1} _LOG_READ_$$kernel17.shared_a(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel17.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_a == _value then true else _READ_HAS_OCCURRED_$$kernel17.shared_a);
    return;
}



procedure _CHECK_READ_$$kernel17.shared_a(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_a"} {:array "$$kernel17.shared_a"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel17.shared_a && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel17.shared_a"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel17.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel17.shared_a(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel17.shared_a, _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a;



implementation {:inline 1} _LOG_WRITE_$$kernel17.shared_a(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel17.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_a == _value then true else _WRITE_HAS_OCCURRED_$$kernel17.shared_a);
    _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_a == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a);
    return;
}



procedure _CHECK_WRITE_$$kernel17.shared_a(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_a"} {:array "$$kernel17.shared_a"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel17.shared_a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_a != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel17.shared_a"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel17.shared_a && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_a != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel17.shared_a"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel17.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel17.shared_a(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel17.shared_a;



implementation {:inline 1} _LOG_ATOMIC_$$kernel17.shared_a(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel17.shared_a := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel17.shared_a);
    return;
}



procedure _CHECK_ATOMIC_$$kernel17.shared_a(_P: bool, _offset: bv32);
  requires {:source_name "shared_a"} {:array "$$kernel17.shared_a"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel17.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_a"} {:array "$$kernel17.shared_a"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel17.shared_a && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a := (if _P && _WRITE_HAS_OCCURRED_$$kernel17.shared_a && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_a);
    return;
}



const _WATCHED_VALUE_$$kernel17.shared_b: bv64;

procedure {:inline 1} _LOG_READ_$$kernel17.shared_b(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel17.shared_b;



implementation {:inline 1} _LOG_READ_$$kernel17.shared_b(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel17.shared_b := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_b == _value then true else _READ_HAS_OCCURRED_$$kernel17.shared_b);
    return;
}



procedure _CHECK_READ_$$kernel17.shared_b(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_b"} {:array "$$kernel17.shared_b"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel17.shared_b && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_b"} {:array "$$kernel17.shared_b"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel17.shared_b && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel17.shared_b(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel17.shared_b, _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b;



implementation {:inline 1} _LOG_WRITE_$$kernel17.shared_b(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel17.shared_b := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_b == _value then true else _WRITE_HAS_OCCURRED_$$kernel17.shared_b);
    _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_b == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b);
    return;
}



procedure _CHECK_WRITE_$$kernel17.shared_b(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_b"} {:array "$$kernel17.shared_b"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel17.shared_b && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_b != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_b"} {:array "$$kernel17.shared_b"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel17.shared_b && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_b != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_b"} {:array "$$kernel17.shared_b"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel17.shared_b && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel17.shared_b(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel17.shared_b;



implementation {:inline 1} _LOG_ATOMIC_$$kernel17.shared_b(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel17.shared_b := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel17.shared_b);
    return;
}



procedure _CHECK_ATOMIC_$$kernel17.shared_b(_P: bool, _offset: bv32);
  requires {:source_name "shared_b"} {:array "$$kernel17.shared_b"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel17.shared_b && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_b"} {:array "$$kernel17.shared_b"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel17.shared_b && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b := (if _P && _WRITE_HAS_OCCURRED_$$kernel17.shared_b && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_b);
    return;
}



const _WATCHED_VALUE_$$kernel17.shared_c: bv64;

procedure {:inline 1} _LOG_READ_$$kernel17.shared_c(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$kernel17.shared_c;



implementation {:inline 1} _LOG_READ_$$kernel17.shared_c(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel17.shared_c := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_c == _value then true else _READ_HAS_OCCURRED_$$kernel17.shared_c);
    return;
}



procedure _CHECK_READ_$$kernel17.shared_c(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_c"} {:array "$$kernel17.shared_c"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel17.shared_c && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c"} {:array "$$kernel17.shared_c"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel17.shared_c && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel17.shared_c(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$kernel17.shared_c, _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c;



implementation {:inline 1} _LOG_WRITE_$$kernel17.shared_c(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel17.shared_c := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_c == _value then true else _WRITE_HAS_OCCURRED_$$kernel17.shared_c);
    _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_c == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c);
    return;
}



procedure _CHECK_WRITE_$$kernel17.shared_c(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "shared_c"} {:array "$$kernel17.shared_c"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel17.shared_c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_c != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c"} {:array "$$kernel17.shared_c"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel17.shared_c && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel17.shared_c != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c"} {:array "$$kernel17.shared_c"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel17.shared_c && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel17.shared_c(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel17.shared_c;



implementation {:inline 1} _LOG_ATOMIC_$$kernel17.shared_c(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel17.shared_c := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel17.shared_c);
    return;
}



procedure _CHECK_ATOMIC_$$kernel17.shared_c(_P: bool, _offset: bv32);
  requires {:source_name "shared_c"} {:array "$$kernel17.shared_c"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel17.shared_c && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_c"} {:array "$$kernel17.shared_c"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel17.shared_c && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c := (if _P && _WRITE_HAS_OCCURRED_$$kernel17.shared_c && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel17.shared_c);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: bv1, $1: bv1)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel17.shared_a;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel17.shared_a;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel17.shared_a;
    goto anon1;

  anon1:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel17.shared_b;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel17.shared_b;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel17.shared_b;
    goto anon2;

  anon2:
    assume $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel17.shared_c;
    assume $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel17.shared_c;
    assume $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel17.shared_c;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0bv1 || $0 != 0bv1);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$p;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$p;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0bv1 || $0 != 0bv1;
    havoc $$kernel17.shared_a;
    goto anon5;

  anon5:
    havoc $$kernel17.shared_b;
    goto anon6;

  anon6:
    havoc $$kernel17.shared_c;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: bv1, $1: bv1, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel17.shared_a;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel17.shared_a;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel17.shared_a;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel17.shared_b;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel17.shared_b;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel17.shared_b;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0bv1 ==> !_READ_HAS_OCCURRED_$$kernel17.shared_c;
    assume _P$1 && $0 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$kernel17.shared_c;
    assume _P$1 && $0 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$kernel17.shared_c;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_READ_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_WRITE_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0bv1 ==> !_ATOMIC_HAS_OCCURRED_$$p;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0bv1 || $1 != 0bv1);
    havoc $$p;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0bv1) || (_P$2 && $0 != 0bv1);
    havoc $$kernel17.shared_a;
    goto anon5;

  anon5:
    havoc $$kernel17.shared_b;
    goto anon6;

  anon6:
    havoc $$kernel17.shared_c;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

const {:existential true} _b52: bool;

const {:existential true} _b53: bool;

const {:existential true} _b54: bool;

const {:existential true} _b55: bool;

const {:existential true} _b56: bool;

const {:existential true} _b57: bool;

const {:existential true} _b58: bool;

const {:existential true} _b59: bool;

const {:existential true} _b60: bool;

const {:existential true} _b61: bool;

const {:existential true} _b62: bool;

const {:existential true} _b63: bool;

const {:existential true} _b64: bool;

const {:existential true} _b65: bool;

const {:existential true} _b66: bool;

const {:existential true} _b67: bool;

const {:existential true} _b68: bool;

const {:existential true} _b69: bool;

const {:existential true} _b70: bool;

const {:existential true} _b71: bool;

const {:existential true} _b72: bool;

const {:existential true} _b73: bool;

const {:existential true} _b74: bool;

const {:existential true} _b75: bool;

const {:existential true} _b76: bool;

const {:existential true} _b77: bool;

const {:existential true} _b78: bool;

const {:existential true} _b79: bool;

const {:existential true} _b80: bool;

const {:existential true} _b81: bool;

const {:existential true} _b82: bool;

const {:existential true} _b83: bool;

const {:existential true} _b84: bool;

const {:existential true} _b85: bool;

const {:existential true} _b86: bool;

const {:existential true} _b87: bool;

const {:existential true} _b88: bool;

const {:existential true} _b89: bool;

const {:existential true} _b90: bool;

const {:existential true} _b91: bool;

const {:existential true} _b92: bool;

const {:existential true} _b93: bool;

const {:existential true} _b94: bool;

const {:existential true} _b95: bool;

const {:existential true} _b96: bool;

const {:existential true} _b97: bool;

const {:existential true} _b98: bool;

const {:existential true} _b99: bool;
