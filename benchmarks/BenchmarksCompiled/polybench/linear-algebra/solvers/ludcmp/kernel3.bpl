type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [bv32]bv64, y: bv32) returns (z$1: bv64, A$1: [bv32]bv64, z$2: bv64, A$2: [bv32]bv64);



var {:source_name "A"} {:global} $$A: [bv32]bv64;

axiom {:array_info "$$A"} {:global} {:elem_width 64} {:source_name "A"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$A: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$A: bool;

axiom {:array_info "$$w"} {:global} {:elem_width 64} {:source_name "w"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$w: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$w: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$w: bool;

axiom {:array_info "$$private_A_0"} {:elem_width 64} {:source_name "private_A_0"} {:source_elem_width 64} {:source_dimensions "1,1"} true;

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

function FMUL64(bv64, bv64) : bv64;

function FSUB64(bv64, bv64) : bv64;

function {:bvbuiltin "bvadd"} BV32_ADD(bv32, bv32) : bv32;

function {:bvbuiltin "bvadd"} BV64_ADD(bv64, bv64) : bv64;

function {:bvbuiltin "bvand"} BV32_AND(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV32_MUL(bv32, bv32) : bv32;

function {:bvbuiltin "bvmul"} BV64_MUL(bv64, bv64) : bv64;

function {:bvbuiltin "bvor"} BV32_OR(bv32, bv32) : bv32;

function {:bvbuiltin "bvsdiv"} BV64_SDIV(bv64, bv64) : bv64;

function {:bvbuiltin "bvsge"} BV64_SGE(bv64, bv64) : bool;

function {:bvbuiltin "bvsle"} BV32_SLE(bv32, bv32) : bool;

function {:bvbuiltin "bvsle"} BV64_SLE(bv64, bv64) : bool;

function {:bvbuiltin "bvslt"} BV64_SLT(bv64, bv64) : bool;

function {:bvbuiltin "bvsrem"} BV64_SREM(bv64, bv64) : bv64;

function {:bvbuiltin "bvsub"} BV64_SUB(bv64, bv64) : bv64;

function {:bvbuiltin "bvudiv"} BV32_UDIV(bv32, bv32) : bv32;

function {:bvbuiltin "bvuge"} BV32_UGE(bv32, bv32) : bool;

function {:bvbuiltin "bvurem"} BV32_UREM(bv32, bv32) : bv32;

function {:bvbuiltin "sign_extend 32"} BV32_SEXT64(bv32) : bv64;

function {:bvbuiltin "zero_extend 31"} BV1_ZEXT32(bv1) : bv32;

function {:bvbuiltin "zero_extend 32"} BV32_ZEXT64(bv32) : bv64;

procedure {:source_name "kernel3"} {:kernel} $kernel3($n: bv32, $c0: bv64);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 256bv32 then 1bv1 else 0bv1) != 0bv1;
  requires {:sourceloc_num 1} {:thread 1} (if BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SLE($n, 2147483647bv32) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD($c0, 1bv64)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, 0bv64) then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
  requires !_READ_HAS_OCCURRED_$$A && !_WRITE_HAS_OCCURRED_$$A && !_ATOMIC_HAS_OCCURRED_$$A;
  requires !_READ_HAS_OCCURRED_$$w && !_WRITE_HAS_OCCURRED_$$w && !_ATOMIC_HAS_OCCURRED_$$w;
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
  modifies _READ_HAS_OCCURRED_$$A, _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:source_name "kernel3"} {:kernel} $kernel3($n: bv32, $c0: bv64)
{
  var $c1.0$1: bv64;
  var $c1.0$2: bv64;
  var $private_w.0$1: bv64;
  var $private_w.0$2: bv64;
  var $c3.0$1: bv64;
  var $c3.0$2: bv64;
  var v0$1: bv64;
  var v0$2: bv64;
  var v1$1: bv64;
  var v1$2: bv64;
  var v5$1: bv64;
  var v5$2: bv64;
  var v6$1: bv64;
  var v6$2: bv64;
  var v8$1: bv64;
  var v8$2: bv64;
  var v10$1: bv64;
  var v10$2: bv64;
  var v9$1: bv64;
  var v9$2: bv64;
  var v3$1: bool;
  var v3$2: bool;
  var v2$1: bool;
  var v2$2: bool;
  var v4$1: bool;
  var v4$2: bool;
  var v7$1: bool;
  var v7$2: bool;
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
  var _READ_HAS_OCCURRED_$$A$ghost$$for.cond.35: bool;


  $entry:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    $c1.0$1 := BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$1), $c0), 1048544bv64), 1048576bv64)));
    $c1.0$2 := BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$2), $c0), 1048544bv64), 1048576bv64)));
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $for.cond;

  $for.cond:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b18 ==> _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b17 ==> _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b6 ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b6 ==> BV64_SLT($c1.0$2, BV32_SEXT64($n)) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b5 ==> BV64_UGE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$1), $c0), 1048544bv64), 1048576bv64))));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b5 ==> BV64_UGE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$2), $c0), 1048544bv64), 1048576bv64))));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV64_ULE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$1), $c0), 1048544bv64), 1048576bv64))));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV64_ULE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$2), $c0), 1048544bv64), 1048576bv64))));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV64_SGE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$1), $c0), 1048544bv64), 1048576bv64))));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV64_SGE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$2), $c0), 1048544bv64), 1048576bv64))));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV64_SLE($c1.0$1, BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$1), $c0), 1048544bv64), 1048576bv64))));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV64_SLE($c1.0$2, BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$2), $c0), 1048544bv64), 1048576bv64))));
    assert {:tag "guardNonNeg"} {:thread 1} p0$1 ==> _b1 ==> BV64_SLE(0bv64, $c1.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p0$2 ==> _b1 ==> BV64_SLE(0bv64, $c1.0$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$1) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_ADD(BV64_MUL(32bv64, v0$1), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$1), $c0), 1048544bv64), 1048576bv64))));
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> BV64_AND(BV64_SUB(1048576bv64, 1bv64), $c1.0$2) == BV64_AND(BV64_SUB(1048576bv64, 1bv64), BV64_ADD(BV64_MUL(32bv64, v0$2), BV64_MUL(1048576bv64, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(18446744073709551584bv64, v0$2), $c0), 1048544bv64), 1048576bv64))));
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), 1048576bv64), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 1bv64)) then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), $c0) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 5} p0$1 ==> true;
    v2$1 := (if p0$1 then BV64_SLT($c1.0$1, BV32_SEXT64($n)) else v2$1);
    v2$2 := (if p0$2 then BV64_SLT($c1.0$2, BV32_SEXT64($n)) else v2$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p8$1 := false;
    p8$2 := false;
    p1$1 := (if p0$1 && v2$1 then v2$1 else p1$1);
    p1$2 := (if p0$2 && v2$2 then v2$2 else p1$2);
    p0$1 := (if p0$1 && !v2$1 then v2$1 else p0$1);
    p0$2 := (if p0$2 && !v2$2 then v2$2 else p0$2);
    v3$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 1bv64)) else v3$1);
    v3$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 1bv64)) else v3$2);
    p3$1 := (if p1$1 && v3$1 then v3$1 else p3$1);
    p3$2 := (if p1$2 && v3$2 then v3$2 else p3$2);
    v4$1 := (if p3$1 then BV64_SGE(BV64_ADD(v1$1, $c1.0$1), $c0) else v4$1);
    v4$2 := (if p3$2 then BV64_SGE(BV64_ADD(v1$2, $c1.0$2), $c0) else v4$2);
    p5$1 := (if p3$1 && v4$1 then v4$1 else p5$1);
    p5$2 := (if p3$2 && v4$2 then v4$2 else p5$2);
    call {:sourceloc} {:sourceloc_num 9} _LOG_READ_$$A(p5$1, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0], $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 9} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 9} _CHECK_READ_$$A(p5$2, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0], $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v5$1 := (if p5$1 then $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0]] else v5$1);
    v5$2 := (if p5$2 then $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0]] else v5$2);
    $$private_A_0$0bv32$1 := (if p5$1 then v5$1 else $$private_A_0$0bv32$1);
    $$private_A_0$0bv32$2 := (if p5$2 then v5$2 else $$private_A_0$0bv32$2);
    v6$1 := (if p5$1 then $$private_A_0$0bv32$1 else v6$1);
    v6$2 := (if p5$2 then $$private_A_0$0bv32$2 else v6$2);
    $private_w.0$1, $c3.0$1 := (if p5$1 then v6$1 else $private_w.0$1), (if p5$1 then 1bv64 else $c3.0$1);
    $private_w.0$2, $c3.0$2 := (if p5$2 then v6$2 else $private_w.0$2), (if p5$2 then 1bv64 else $c3.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$A$ghost$$for.cond.35 := _READ_HAS_OCCURRED_$$A;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $for.cond.35;

  $for.cond.35:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b20 ==> !p5$1 ==> _READ_HAS_OCCURRED_$$A$ghost$$for.cond.35 == _READ_HAS_OCCURRED_$$A;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b19 ==> _READ_HAS_OCCURRED_$$A ==> BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]) || BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), _WATCHED_OFFSET) == BV32_AND(BV32_SUB(1bv64[32:0], 1bv32), 0bv64[32:0]);
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p0$1;
    assert p6$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), $c0);
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _READ_HAS_OCCURRED_$$A ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _READ_HAS_OCCURRED_$$A ==> BV64_SLT($c1.0$1, BV32_SEXT64($n));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b13 ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), $c0) && BV64_SLE($c3.0$1, $c0) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b13 ==> BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), $c0) && BV64_SLE($c3.0$2, $c0) ==> p6$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p6$1 ==> _b12 ==> p6$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), $c0);
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p6$2 ==> _b12 ==> p6$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64($n)) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1bv64)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), $c0);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b11 ==> BV64_UGE($c3.0$1, 1bv64);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b11 ==> BV64_UGE($c3.0$2, 1bv64);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b10 ==> BV64_ULE($c3.0$1, 1bv64);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b10 ==> BV64_ULE($c3.0$2, 1bv64);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b9 ==> BV64_SGE($c3.0$1, 1bv64);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b9 ==> BV64_SGE($c3.0$2, 1bv64);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b8 ==> BV64_SLE($c3.0$1, 1bv64);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b8 ==> BV64_SLE($c3.0$2, 1bv64);
    assert {:tag "guardNonNeg"} {:thread 1} p6$1 ==> _b7 ==> BV64_SLE(0bv64, $c3.0$1);
    assert {:tag "guardNonNeg"} {:thread 2} p6$2 ==> _b7 ==> BV64_SLE(0bv64, $c3.0$2);
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _READ_HAS_OCCURRED_$$A ==> BV32_OR(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_MUL(1048575bv32, BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)))), 1048576bv64), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))), 1bv64)) then 1bv1 else 0bv1))), BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n), 0bv32) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE($c0, BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n))) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n)), $c0) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1)))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 2} {:thread 1} (if _WRITE_HAS_OCCURRED_$$A ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0bv64) then 1bv1 else 0bv1)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575bv64) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), 1bv32)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if $c0 == BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n), $n)) then 1bv1 else 0bv1))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32bv64, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8bv32, _WATCHED_OFFSET), 8bv32), $n))), 1048576bv64) == 0bv64 then 1bv1 else 0bv1))) != 0bv32 then 1bv1 else 0bv1) != 0bv1;
    assert {:block_sourceloc} {:sourceloc_num 12} p6$1 ==> true;
    v7$1 := (if p6$1 then BV64_SLE($c3.0$1, $c0) else v7$1);
    v7$2 := (if p6$2 then BV64_SLE($c3.0$2, $c0) else v7$2);
    p7$1 := false;
    p7$2 := false;
    p7$1 := (if p6$1 && v7$1 then v7$1 else p7$1);
    p7$2 := (if p6$2 && v7$2 then v7$2 else p7$2);
    p6$1 := (if p6$1 && !v7$1 then v7$1 else p6$1);
    p6$2 := (if p6$2 && !v7$2 then v7$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 14} _LOG_READ_$$A(p7$1, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_SUB($c3.0$1, 1bv64))[32:0], $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_SUB($c3.0$1, 1bv64))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 14} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 14} _CHECK_READ_$$A(p7$2, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_SUB($c3.0$2, 1bv64))[32:0], $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_SUB($c3.0$2, 1bv64))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v8$1 := (if p7$1 then $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_SUB($c3.0$1, 1bv64))[32:0]] else v8$1);
    v8$2 := (if p7$2 then $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_SUB($c3.0$2, 1bv64))[32:0]] else v8$2);
    call {:sourceloc} {:sourceloc_num 15} _LOG_READ_$$A(p7$1, BV64_ADD(BV64_MUL(BV64_SUB($c3.0$1, 1bv64), BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0], $$A[BV64_ADD(BV64_MUL(BV64_SUB($c3.0$1, 1bv64), BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0]]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 15} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 15} _CHECK_READ_$$A(p7$2, BV64_ADD(BV64_MUL(BV64_SUB($c3.0$2, 1bv64), BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0], $$A[BV64_ADD(BV64_MUL(BV64_SUB($c3.0$2, 1bv64), BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0]]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$A"} true;
    v9$1 := (if p7$1 then $$A[BV64_ADD(BV64_MUL(BV64_SUB($c3.0$1, 1bv64), BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0]] else v9$1);
    v9$2 := (if p7$2 then $$A[BV64_ADD(BV64_MUL(BV64_SUB($c3.0$2, 1bv64), BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0]] else v9$2);
    $private_w.0$1, $c3.0$1 := (if p7$1 then FSUB64($private_w.0$1, FMUL64(v8$1, v9$1)) else $private_w.0$1), (if p7$1 then BV64_ADD($c3.0$1, 1bv64) else $c3.0$1);
    $private_w.0$2, $c3.0$2 := (if p7$2 then FSUB64($private_w.0$2, FMUL64(v8$2, v9$2)) else $private_w.0$2), (if p7$2 then BV64_ADD($c3.0$2, 1bv64) else $c3.0$2);
    p6$1 := (if p7$1 then true else p6$1);
    p6$2 := (if p7$2 then true else p6$2);
    goto $for.cond.35.backedge, $for.cond.35.tail;

  $for.cond.35.tail:
    assume !p6$1 && !p6$2;
    $$private_A_0$0bv32$1 := (if p5$1 then $private_w.0$1 else $$private_A_0$0bv32$1);
    $$private_A_0$0bv32$2 := (if p5$2 then $private_w.0$2 else $$private_A_0$0bv32$2);
    v10$1 := (if p5$1 then $$private_A_0$0bv32$1 else v10$1);
    v10$2 := (if p5$2 then $$private_A_0$0bv32$2 else v10$2);
    call {:sourceloc} {:sourceloc_num 20} _LOG_WRITE_$$A(p5$1, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0], v10$1, $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0]]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(p5$2, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 20} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 20} _CHECK_WRITE_$$A(p5$2, BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0], v10$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$A"} true;
    $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0]] := (if p5$1 then v10$1 else $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$1, $c1.0$1))[32:0]]);
    $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0]] := (if p5$2 then v10$2 else $$A[BV64_ADD(BV64_MUL($c0, BV32_SEXT64($n)), BV64_ADD(v1$2, $c1.0$2))[32:0]]);
    $c1.0$1 := (if p1$1 then BV64_ADD($c1.0$1, 1048576bv64) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_ADD($c1.0$2, 1048576bv64) else $c1.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $for.cond.backedge, $for.cond.tail;

  $for.cond.tail:
    assume !p0$1 && !p0$2;
    return;

  $for.cond.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $for.cond;

  $for.cond.35.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $for.cond.35;
}



axiom (if group_size_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_y == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_z == 1bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if group_size_x == 32bv32 then 1bv1 else 0bv1) != 0bv1;

axiom (if num_groups_x == 8bv32 then 1bv1 else 0bv1) != 0bv1;

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

var $$private_A_0$0bv32$1: bv64;

var $$private_A_0$0bv32$2: bv64;

function {:bvbuiltin "bvand"} BV64_AND(bv64, bv64) : bv64;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

const {:existential true} _b3: bool;

function {:bvbuiltin "bvule"} BV64_ULE(bv64, bv64) : bool;

const {:existential true} _b4: bool;

function {:bvbuiltin "bvuge"} BV64_UGE(bv64, bv64) : bool;

const {:existential true} _b5: bool;

const {:existential true} _b6: bool;

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

const _WATCHED_VALUE_$$A: bv64;

procedure {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_READ_$$A(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _READ_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_READ_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$A);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$A: bool;

procedure {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$A, _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _LOG_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then true else _WRITE_HAS_OCCURRED_$$A);
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



procedure _CHECK_WRITE_$$A(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$A != _value);
  requires {:source_name "A"} {:array "$$A"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$A;



implementation {:inline 1} _LOG_ATOMIC_$$A(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$A := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$A);
    return;
}



procedure _CHECK_ATOMIC_$$A(_P: bool, _offset: bv32);
  requires {:source_name "A"} {:array "$$A"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);
  requires {:source_name "A"} {:array "$$A"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$A;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$A(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$A := (if _P && _WRITE_HAS_OCCURRED_$$A && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$A);
    return;
}



const _WATCHED_VALUE_$$w: bv64;

procedure {:inline 1} _LOG_READ_$$w(_P: bool, _offset: bv32, _value: bv64);
  modifies _READ_HAS_OCCURRED_$$w;



implementation {:inline 1} _LOG_READ_$$w(_P: bool, _offset: bv32, _value: bv64)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w == _value then true else _READ_HAS_OCCURRED_$$w);
    return;
}



procedure _CHECK_READ_$$w(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "w"} {:array "$$w"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$w);
  requires {:source_name "w"} {:array "$$w"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$w: bool;

procedure {:inline 1} _LOG_WRITE_$$w(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64);
  modifies _WRITE_HAS_OCCURRED_$$w, _WRITE_READ_BENIGN_FLAG_$$w;



implementation {:inline 1} _LOG_WRITE_$$w(_P: bool, _offset: bv32, _value: bv64, _value_old: bv64)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w == _value then true else _WRITE_HAS_OCCURRED_$$w);
    _WRITE_READ_BENIGN_FLAG_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$w);
    return;
}



procedure _CHECK_WRITE_$$w(_P: bool, _offset: bv32, _value: bv64);
  requires {:source_name "w"} {:array "$$w"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w != _value);
  requires {:source_name "w"} {:array "$$w"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$w != _value);
  requires {:source_name "w"} {:array "$$w"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$w(_P: bool, _offset: bv32);
  modifies _ATOMIC_HAS_OCCURRED_$$w;



implementation {:inline 1} _LOG_ATOMIC_$$w(_P: bool, _offset: bv32)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$w := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$w);
    return;
}



procedure _CHECK_ATOMIC_$$w(_P: bool, _offset: bv32);
  requires {:source_name "w"} {:array "$$w"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);
  requires {:source_name "w"} {:array "$$w"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$w(_P: bool, _offset: bv32);
  modifies _WRITE_READ_BENIGN_FLAG_$$w;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$w(_P: bool, _offset: bv32)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$w := (if _P && _WRITE_HAS_OCCURRED_$$w && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$w);
    return;
}



var _TRACKING: bool;

function {:bvbuiltin "bvsgt"} BV32_SGT(bv32, bv32) : bool;

function {:bvbuiltin "bvsge"} BV32_SGE(bv32, bv32) : bool;

function {:bvbuiltin "bvslt"} BV32_SLT(bv32, bv32) : bool;

function {:bvbuiltin "bvsub"} BV32_SUB(bv32, bv32) : bv32;

const {:existential true} _b17: bool;

const {:existential true} _b18: bool;

const {:existential true} _b19: bool;

const {:existential true} _b20: bool;
