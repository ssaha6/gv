function {:existential true} my_inv (
 b0000: bool,
 b0001: bool,
 b0002: bool,
 b0003: bool,
 b0004: bool,
 b0005: bool,
 b0006: bool,
 b0007: bool,
 b0008: bool,
 b0009: bool,
 b0010: bool,
 b0011: bool,
 b0012: bool,
 b0013: bool,
 b0014: bool,
 b0015: bool,
 b0016: bool,
 b0017: bool,
 b0018: bool,
 b0019: bool,
 b0020: bool,
 b0021: bool,
 b0022: bool,
 b0023: bool,
 b0024: bool,
 b0025: bool,
 b0026: bool,
 b0027: bool,
 b0028: bool,
 b0029: bool,
 b0030: bool,
 b0031: bool,
 b0032: bool,
 b0033: bool,
 b0034: bool,
 b0035: bool,
 b0036: bool,
 b0037: bool,
 b0038: bool,
 b0039: bool,
 b0040: bool,
 b0041: bool,
 b0042: bool,
 b0043: bool,
 b0044: bool,
 b0045: bool,
 b0046: bool,
 b0047: bool,
 b0048: bool,
 b0049: bool,
 b0050: bool,
 b0051: bool,
 b0052: bool,
 b0053: bool,
 b0054: bool,
 b0055: bool,
 b0056: bool,
 b0057: bool,
 b0058: bool,
 b0059: bool,
 b0060: bool,
 b0061: bool,
 b0062: bool,
 b0063: bool,
 b0064: bool,
 b0065: bool,
 b0066: bool,
 b0067: bool,
 b0068: bool,
 b0069: bool,
 b0070: bool,
 b0071: bool,
 b0072: bool,
 b0073: bool,
 b0074: bool,
 b0075: bool,
 b0076: bool,
 b0077: bool,
 b0078: bool,
 b0079: bool,
 b0080: bool,
 b0081: bool,
 b0082: bool,
 b0083: bool,
 b0084: bool,
 b0085: bool,
 b0086: bool,
 b0087: bool,
 b0088: bool,
 b0089: bool,
 b0090: bool,
 b0091: bool,
 b0092: bool,
 b0093: bool,
 b0094: bool,
 b0095: bool,
 b0096: bool,
 b0097: bool,
 b0098: bool,
 b0099: bool,
 b0100: bool,
 b0101: bool,
 b0102: bool,
 b0103: bool,
 b0104: bool,
 b0105: bool,
 b0106: bool,
 b0107: bool,
 b0108: bool,
 b0109: bool,
 b0110: bool,
 b0111: bool,
 b0112: bool,
 b0113: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$d"} {:global} {:elem_width 64} {:source_name "d"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$d: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$d: bool;

axiom {:array_info "$$e"} {:global} {:elem_width 64} {:source_name "e"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$e: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$e: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$e: bool;

axiom {:array_info "$$f"} {:global} {:elem_width 64} {:source_name "f"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$f: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$f: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$f: bool;

var {:source_name "p"} {:global} $$p: [int]int;

axiom {:array_info "$$p"} {:global} {:elem_width 64} {:source_name "p"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$p: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$p: bool;

var {:source_name "shared_d"} {:group_shared} $$kernel25.shared_d: [bv1][int]int;

axiom {:array_info "$$kernel25.shared_d"} {:group_shared} {:elem_width 64} {:source_name "shared_d"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel25.shared_d: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel25.shared_d: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d: bool;

var {:source_name "shared_e"} {:group_shared} $$kernel25.shared_e: [bv1][int]int;

axiom {:array_info "$$kernel25.shared_e"} {:group_shared} {:elem_width 64} {:source_name "shared_e"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel25.shared_e: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel25.shared_e: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e: bool;

var {:source_name "shared_f"} {:group_shared} $$kernel25.shared_f: [bv1][int]int;

axiom {:array_info "$$kernel25.shared_f"} {:group_shared} {:elem_width 64} {:source_name "shared_f"} {:source_elem_width 64} {:source_dimensions "1"} true;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$kernel25.shared_f: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$kernel25.shared_f: bool;

var {:race_checking} {:group_shared} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f: bool;

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

function BV32_SEXT64(int) : int;

function BV_EXTRACT(int, int, int) : int;

function FADD64(int, int) : int;

function FDIV64(int, int) : int;

function FMUL64(int, int) : int;

function FSUB64(int, int) : int;

function  BV1_ZEXT32(x: int) : int
{
  x
}

function  BV32_ADD(x: int, y: int) : int
{
  x + y
}

function  BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function  BV32_MUL(x: int, y: int) : int
{
  x * y
}

function  BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function  BV32_SUB(x: int, y: int) : int
{
  x - y
}

function  BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function  BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function  BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function  BV32_ZEXT64(x: int) : int
{
  x
}

function  BV64_ADD(x: int, y: int) : int
{
  x + y
}

function  BV64_MUL(x: int, y: int) : int
{
  x * y
}

function  BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function  BV64_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV64_SLE(x: int, y: int) : bool
{
  x <= y
}

function  BV64_SLT(x: int, y: int) : bool
{
  x < y
}

function  BV64_SREM(x: int, y: int) : int
{
  x mod y
}

function  BV64_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel25"} {:kernel} $kernel25($n: int, $tsteps: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $n == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $tsteps == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($n, 3) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($tsteps, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, 1) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tsteps), $c0) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$d && !_WRITE_HAS_OCCURRED_$$d && !_ATOMIC_HAS_OCCURRED_$$d;
  requires !_READ_HAS_OCCURRED_$$e && !_WRITE_HAS_OCCURRED_$$e && !_ATOMIC_HAS_OCCURRED_$$e;
  requires !_READ_HAS_OCCURRED_$$f && !_WRITE_HAS_OCCURRED_$$f && !_ATOMIC_HAS_OCCURRED_$$f;
  requires !_READ_HAS_OCCURRED_$$p && !_WRITE_HAS_OCCURRED_$$p && !_ATOMIC_HAS_OCCURRED_$$p;
  requires !_READ_HAS_OCCURRED_$$kernel25.shared_d && !_WRITE_HAS_OCCURRED_$$kernel25.shared_d && !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_d;
  requires !_READ_HAS_OCCURRED_$$kernel25.shared_e && !_WRITE_HAS_OCCURRED_$$kernel25.shared_e && !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_e;
  requires !_READ_HAS_OCCURRED_$$kernel25.shared_f && !_WRITE_HAS_OCCURRED_$$kernel25.shared_f && !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_f;
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
  modifies $$kernel25.shared_d, $$kernel25.shared_e, $$kernel25.shared_f, _WRITE_HAS_OCCURRED_$$kernel25.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d, _WRITE_HAS_OCCURRED_$$kernel25.shared_e, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e, _WRITE_HAS_OCCURRED_$$kernel25.shared_f, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f, $$p, _TRACKING, _READ_HAS_OCCURRED_$$kernel25.shared_f, _READ_HAS_OCCURRED_$$kernel25.shared_d, _READ_HAS_OCCURRED_$$p, _READ_HAS_OCCURRED_$$kernel25.shared_e, _WRITE_HAS_OCCURRED_$$p, _WRITE_READ_BENIGN_FLAG_$$p, _WRITE_READ_BENIGN_FLAG_$$p, _TRACKING;



implementation {:source_name "kernel25"} {:kernel} $kernel25($n: int, $tsteps: int, $c0: int)
{
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $c2.0$1: int;
  var $c2.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $c4.0$1: int;
  var $c4.0$2: int;
  var $1$1: int;
  var $1$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: bool;
  var v2$2: bool;
  var v3$1: int;
  var v3$2: int;
  var v4$1: int;
  var v4$2: int;
  var v5$1: int;
  var v5$2: int;
  var v6$1: bool;
  var v6$2: bool;
  var v7$1: bool;
  var v7$2: bool;
  var v8$1: bool;
  var v8$2: bool;
  var v9$1: bool;
  var v9$2: bool;
  var v10$1: bool;
  var v10$2: bool;
  var v11$1: bool;
  var v11$2: bool;
  var v12$1: bool;
  var v12$2: bool;
  var v13$1: int;
  var v13$2: int;
  var v14$1: int;
  var v14$2: int;
  var v15$1: int;
  var v15$2: int;
  var v16$1: int;
  var v16$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$p$ghost$$5: bool;
  var _WRITE_HAS_OCCURRED_$$p$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$5: bool;
  var _READ_HAS_OCCURRED_$$p$ghost$$12: bool;
  var _WRITE_HAS_OCCURRED_$$p$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$12: bool;
  var _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$12: bool;


  __partitioned_block_$0_0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(local_id_x$1);
    v1$2 := BV32_ZEXT64(local_id_x$2);
    v2$1 := v1$1 == 0;
    v2$2 := v1$2 == 0;
    p0$1 := false;
    p0$2 := false;
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p0$1 := (if v2$1 then v2$1 else p0$1);
    p0$2 := (if v2$2 then v2$2 else p0$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v3$1 := (if p0$1 then _HAVOC_int$1 else v3$1);
    v3$2 := (if p0$2 then _HAVOC_int$2 else v3$2);
    call {:sourceloc} {:sourceloc_num 8} _LOG_WRITE_$$kernel25.shared_d(p0$1, 0, v3$1, $$kernel25.shared_d[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_5"} {:captureState "check_state_5"} {:sourceloc} {:sourceloc_num 8} true;
    call {:check_id "check_state_5"} {:sourceloc} {:sourceloc_num 8} _CHECK_WRITE_$$kernel25.shared_d(p0$2, 0, v3$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel25.shared_d"} true;
    $$kernel25.shared_d[1bv1][0] := (if p0$1 then v3$1 else $$kernel25.shared_d[1bv1][0]);
    $$kernel25.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v3$2 else $$kernel25.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v4$1 := (if p0$1 then _HAVOC_int$1 else v4$1);
    v4$2 := (if p0$2 then _HAVOC_int$2 else v4$2);
    call {:sourceloc} {:sourceloc_num 10} _LOG_WRITE_$$kernel25.shared_e(p0$1, 0, v4$1, $$kernel25.shared_e[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_6"} {:captureState "check_state_6"} {:sourceloc} {:sourceloc_num 10} true;
    call {:check_id "check_state_6"} {:sourceloc} {:sourceloc_num 10} _CHECK_WRITE_$$kernel25.shared_e(p0$2, 0, v4$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel25.shared_e"} true;
    $$kernel25.shared_e[1bv1][0] := (if p0$1 then v4$1 else $$kernel25.shared_e[1bv1][0]);
    $$kernel25.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v4$2 else $$kernel25.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v5$1 := (if p0$1 then _HAVOC_int$1 else v5$1);
    v5$2 := (if p0$2 then _HAVOC_int$2 else v5$2);
    call {:sourceloc} {:sourceloc_num 12} _LOG_WRITE_$$kernel25.shared_f(p0$1, 0, v5$1, $$kernel25.shared_f[1bv1][0]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f(p0$2, 0);
    assume {:do_not_predicate} {:check_id "check_state_7"} {:captureState "check_state_7"} {:sourceloc} {:sourceloc_num 12} true;
    call {:check_id "check_state_7"} {:sourceloc} {:sourceloc_num 12} _CHECK_WRITE_$$kernel25.shared_f(p0$2, 0, v5$2);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$kernel25.shared_f"} true;
    $$kernel25.shared_f[1bv1][0] := (if p0$1 then v5$1 else $$kernel25.shared_f[1bv1][0]);
    $$kernel25.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] := (if p0$2 then v5$2 else $$kernel25.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    goto __partitioned_block_$0_1;

  __partitioned_block_$0_1:
    call {:sourceloc_num 14} $bugle_barrier_duplicated_0(-1, -1);
    $c1.0$1 := BV64_MUL(32, v0$1);
    $c1.0$2 := BV64_MUL(32, v0$2);
    p2$1 := true;
    p2$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p2$1 ==> $c1.0$1 mod 1048576 == BV64_MUL(32, v0$1) mod 1048576 )  && ( p2$2 ==> $c1.0$2 mod 1048576 == BV64_MUL(32, v0$2) mod 1048576 ) ,  ( p2$1 ==> BV32_SLE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p2$2 ==> BV32_SLE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  ( p2$1 ==> BV32_SGE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p2$2 ==> BV32_SGE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  ( p2$1 ==> BV32_ULE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p2$2 ==> BV32_ULE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  ( p2$1 ==> BV32_UGE($c1.0$1, BV64_MUL(32, v0$1)) )  && ( p2$2 ==> BV32_UGE($c1.0$2, BV64_MUL(32, v0$2)) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ==> p2$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) ==> p2$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p2$1 == p2$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p2$1 == p2$2 ) ,  (  p2$1 && p2$2 ==> $c1.0$1 == $c1.0$2 ) ,  (  p2$1 && p2$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p2$1 && p2$2 ==> $0$1 == $0$2 ) ,  (  p2$1 && p2$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p2$1 && p2$2 ==> $1$1 == $1$2 ) ,  (  p2$1 && p2$2 ==> v6$1 == v6$2 ) ,  (  p2$1 && p2$2 ==> v7$1 == v7$2 ) ,  (  p2$1 && p2$2 ==> v8$1 == v8$2 ) ,  (  p2$1 && p2$2 ==> v9$1 == v9$2 ) ,  (  p2$1 && p2$2 ==> v10$1 == v10$2 ) ,  (  p2$1 && p2$2 ==> v11$1 == v11$2 ) ,  (  p2$1 && p2$2 ==> v12$1 == v12$2 ) ,  (  p2$1 && p2$2 ==> v13$1 == v13$2 ) ,  (  p2$1 && p2$2 ==> v14$1 == v14$2 ) ,  (  p2$1 && p2$2 ==> v15$1 == v15$2 ) ,  (  p2$1 && p2$2 ==> v16$1 == v16$2 ) ,  (  !_READ_HAS_OCCURRED_$$p ) ,  (  !_WRITE_HAS_OCCURRED_$$p ) ,  (  _READ_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !_READ_HAS_OCCURRED_$$kernel25.shared_d ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_d ==> _WATCHED_OFFSET == 0 ) ,  (  !_READ_HAS_OCCURRED_$$kernel25.shared_e ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_e ==> _WATCHED_OFFSET == 0 ) ,  (  !_READ_HAS_OCCURRED_$$kernel25.shared_f ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_f ==> _WATCHED_OFFSET == 0 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 15} p2$1 ==> true;
    v6$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) else v6$1);
    v6$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) else v6$2);
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
    $c2.0$1 := (if p3$1 then 0 else $c2.0$1);
    $c2.0$2 := (if p3$2 then 0 else $c2.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$p$ghost$$5 := _READ_HAS_OCCURRED_$$p;
    _WRITE_HAS_OCCURRED_$$p$ghost$$5 := _WRITE_HAS_OCCURRED_$$p;
    _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$5 := _READ_HAS_OCCURRED_$$kernel25.shared_d;
    _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$5 := _READ_HAS_OCCURRED_$$kernel25.shared_e;
    _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$5 := _READ_HAS_OCCURRED_$$kernel25.shared_f;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $5;

  $5:
    assume {:captureState "loop_head_state_1"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  p4$1 == p4$2 ) ,  (  group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> p4$1 == p4$2 ) ,  (  p4$1 && p4$2 ==> $c2.0$1 == $c2.0$2 ) ,  (  p4$1 && p4$2 ==> $0$1 == $0$2 ) ,  (  p4$1 && p4$2 ==> $c4.0$1 == $c4.0$2 ) ,  (  p4$1 && p4$2 ==> $1$1 == $1$2 ) ,  (  p4$1 && p4$2 ==> v7$1 == v7$2 ) ,  (  p4$1 && p4$2 ==> v8$1 == v8$2 ) ,  (  p4$1 && p4$2 ==> v9$1 == v9$2 ) ,  (  p4$1 && p4$2 ==> v10$1 == v10$2 ) ,  (  p4$1 && p4$2 ==> v11$1 == v11$2 ) ,  (  p4$1 && p4$2 ==> v12$1 == v12$2 ) ,  (  p4$1 && p4$2 ==> v13$1 == v13$2 ) ,  (  p4$1 && p4$2 ==> v14$1 == v14$2 ) ,  (  p4$1 && p4$2 ==> v15$1 == v15$2 ) ,  (  p4$1 && p4$2 ==> v16$1 == v16$2 ) ,  (  !_READ_HAS_OCCURRED_$$p ) ,  (  !_WRITE_HAS_OCCURRED_$$p ) ,  (  _READ_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p3$1 ==> _READ_HAS_OCCURRED_$$p$ghost$$5 == _READ_HAS_OCCURRED_$$p ) ,  (  !p3$1 ==> _WRITE_HAS_OCCURRED_$$p$ghost$$5 == _WRITE_HAS_OCCURRED_$$p ) ,  (  !_READ_HAS_OCCURRED_$$kernel25.shared_d ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_d ==> _WATCHED_OFFSET == 0 ) ,  (  !p3$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$5 == _READ_HAS_OCCURRED_$$kernel25.shared_d ) ,  (  !_READ_HAS_OCCURRED_$$kernel25.shared_e ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_e ==> _WATCHED_OFFSET == 0 ) ,  (  !p3$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$5 == _READ_HAS_OCCURRED_$$kernel25.shared_e ) ,  (  !_READ_HAS_OCCURRED_$$kernel25.shared_f ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_f ==> _WATCHED_OFFSET == 0 ) ,  (  !p3$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$5 == _READ_HAS_OCCURRED_$$kernel25.shared_f ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p4$1 ==> $c2.0$1 mod 32 == 0 mod 32 )  && ( p4$2 ==> $c2.0$2 mod 32 == 0 mod 32 ) ,  ( p4$1 ==> BV32_SLE($c2.0$1, 0) )  && ( p4$2 ==> BV32_SLE($c2.0$2, 0) ) ,  ( p4$1 ==> BV32_SGE($c2.0$1, 0) )  && ( p4$2 ==> BV32_SGE($c2.0$2, 0) ) ,  ( p4$1 ==> BV32_ULE($c2.0$1, 0) )  && ( p4$2 ==> BV32_ULE($c2.0$2, 0) ) ,  ( p4$1 ==> BV32_UGE($c2.0$1, 0) )  && ( p4$2 ==> BV32_UGE($c2.0$2, 0) ) ,  ( p4$1 ==> p4$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) )  && ( p4$2 ==> p4$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ==> p4$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) ==> p4$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _WRITE_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 17} p4$1 ==> true;
    v7$1 := (if p4$1 then BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) else v7$1);
    v7$2 := (if p4$2 then BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) else v7$2);
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
    v8$1 := (if p5$1 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$1, $c1.0$1), 2)) else v8$1);
    v8$2 := (if p5$2 then BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(v1$2, $c1.0$2), 2)) else v8$2);
    p7$1 := (if p5$1 && v8$1 then v8$1 else p7$1);
    p7$2 := (if p5$2 && v8$2 then v8$2 else p7$2);
    v9$1 := (if p7$1 then BV64_SGE(BV64_ADD(v1$1, $c1.0$1), 1) else v9$1);
    v9$2 := (if p7$2 then BV64_SGE(BV64_ADD(v1$2, $c1.0$2), 1) else v9$2);
    p9$1 := (if p7$1 && v9$1 then v9$1 else p9$1);
    p9$2 := (if p7$2 && v9$2 then v9$2 else p9$2);
    v10$1 := (if p9$1 then BV64_SGT(0, BV64_ADD(BV64_SUB(0, $c2.0$1), 1)) else v10$1);
    v10$2 := (if p9$2 then BV64_SGT(0, BV64_ADD(BV64_SUB(0, $c2.0$2), 1)) else v10$2);
    p11$1 := (if p9$1 && v10$1 then v10$1 else p11$1);
    p11$2 := (if p9$2 && v10$2 then v10$2 else p11$2);
    p10$1 := (if p9$1 && !v10$1 then !v10$1 else p10$1);
    p10$2 := (if p9$2 && !v10$2 then !v10$2 else p10$2);
    $0$1 := (if p10$1 then BV64_ADD(BV64_SUB(0, $c2.0$1), 1) else $0$1);
    $0$2 := (if p10$2 then BV64_ADD(BV64_SUB(0, $c2.0$2), 1) else $0$2);
    $0$1 := (if p11$1 then 0 else $0$1);
    $0$2 := (if p11$2 then 0 else $0$2);
    $c4.0$1 := (if p9$1 then $0$1 else $c4.0$1);
    $c4.0$2 := (if p9$2 then $0$2 else $c4.0$2);
    p12$1 := (if p9$1 then true else p12$1);
    p12$2 := (if p9$2 then true else p12$2);
    _READ_HAS_OCCURRED_$$p$ghost$$12 := _READ_HAS_OCCURRED_$$p;
    _WRITE_HAS_OCCURRED_$$p$ghost$$12 := _WRITE_HAS_OCCURRED_$$p;
    _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$12 := _READ_HAS_OCCURRED_$$kernel25.shared_d;
    _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$12 := _READ_HAS_OCCURRED_$$kernel25.shared_e;
    _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$12 := _READ_HAS_OCCURRED_$$kernel25.shared_f;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $12;

  $12:
    assume {:captureState "loop_head_state_2"} true;
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _READ_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  _WRITE_HAS_OCCURRED_$$p ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$p$ghost$$12 == _READ_HAS_OCCURRED_$$p ) ,  (  !p9$1 ==> _WRITE_HAS_OCCURRED_$$p$ghost$$12 == _WRITE_HAS_OCCURRED_$$p ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_d ==> _WATCHED_OFFSET == 0 ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_d$ghost$$12 == _READ_HAS_OCCURRED_$$kernel25.shared_d ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_e ==> _WATCHED_OFFSET == 0 ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_e$ghost$$12 == _READ_HAS_OCCURRED_$$kernel25.shared_e ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_f ==> _WATCHED_OFFSET == 0 ) ,  (  !p9$1 ==> _READ_HAS_OCCURRED_$$kernel25.shared_f$ghost$$12 == _READ_HAS_OCCURRED_$$kernel25.shared_f )  ); 


    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_f ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_e ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _WRITE_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assert {:tag "groupSharedArraysDisjointAcrossGroups"} _READ_HAS_OCCURRED_$$kernel25.shared_d ==> group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2;
    assume {:predicate "p12"} {:dominator_predicate "p9"} true;
    assert p12$1 ==> p4$1;
    assert p12$2 ==> p4$2;
    assert p4$1 ==> p2$1;
    assert p4$2 ==> p2$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p12$1 ==> $c4.0$1 mod 1 == $0$1 mod 1 )  && ( p12$2 ==> $c4.0$2 mod 1 == $0$2 mod 1 ) ,  ( p12$1 ==> BV32_SLE($c4.0$1, $0$1) )  && ( p12$2 ==> BV32_SLE($c4.0$2, $0$2) ) ,  ( p12$1 ==> BV32_SGE($c4.0$1, $0$1) )  && ( p12$2 ==> BV32_SGE($c4.0$2, $0$2) ) ,  ( p12$1 ==> BV32_ULE($c4.0$1, $0$1) )  && ( p12$2 ==> BV32_ULE($c4.0$2, $0$2) ) ,  ( p12$1 ==> BV32_UGE($c4.0$1, $0$1) )  && ( p12$2 ==> BV32_UGE($c4.0$2, $0$2) ) ,  ( p12$1 ==> p12$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1) )  && ( p12$2 ==> p12$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1) ) ,  (  BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1) && BV64_SLE($c4.0$1, $1$1) ==> p12$1 )  && (  BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($n, 1))) && BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2)) && BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 1) && BV64_SLE($c4.0$2, $1$2) ==> p12$2 ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_f ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_d ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1) ) ,  (  _READ_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$p ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$p ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) ) ,  (  _READ_HAS_OCCURRED_$$p ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) ) ,  (  _READ_HAS_OCCURRED_$$kernel25.shared_e ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1) ) ,  (  _WRITE_HAS_OCCURRED_$$p ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _WRITE_HAS_OCCURRED_$$p ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($n, 1))) ) ,  (  _WRITE_HAS_OCCURRED_$$p ==> BV64_SGE(BV32_SEXT64($n), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) ) ,  (  _WRITE_HAS_OCCURRED_$$p ==> BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 1) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _READ_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 3)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$p ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 1048575) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)), 1) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($n, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), 1) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $n), BV32_SUB($n, 1)))), 1048576) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 24} p12$1 ==> true;
    v11$1 := (if p12$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2)) else v11$1);
    v11$2 := (if p12$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2)) else v11$2);
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
    $1$1 := (if p13$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$1), 2) else $1$1);
    $1$2 := (if p13$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($n), $c2.0$2), 2) else $1$2);
    $1$1 := (if p14$1 then 31 else $1$1);
    $1$2 := (if p14$2 then 31 else $1$2);
    v12$1 := (if p12$1 then BV64_SLE($c4.0$1, $1$1) else v12$1);
    v12$2 := (if p12$2 then BV64_SLE($c4.0$2, $1$2) else v12$2);
    p15$1 := (if p12$1 && v12$1 then v12$1 else p15$1);
    p15$2 := (if p12$2 && v12$2 then v12$2 else p15$2);
    p12$1 := (if p12$1 && !v12$1 then v12$1 else p12$1);
    p12$2 := (if p12$2 && !v12$2 then v12$2 else p12$2);
    call {:sourceloc} {:sourceloc_num 29} _LOG_READ_$$kernel25.shared_f(p15$1, 0, $$kernel25.shared_f[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 29} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 29} _CHECK_READ_$$kernel25.shared_f(p15$2, 0, $$kernel25.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel25.shared_f"} true;
    v13$1 := (if p15$1 then $$kernel25.shared_f[1bv1][0] else v13$1);
    v13$2 := (if p15$2 then $$kernel25.shared_f[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v13$2);
    call {:sourceloc} {:sourceloc_num 30} _LOG_READ_$$kernel25.shared_d(p15$1, 0, $$kernel25.shared_d[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 30} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 30} _CHECK_READ_$$kernel25.shared_d(p15$2, 0, $$kernel25.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel25.shared_d"} true;
    v14$1 := (if p15$1 then $$kernel25.shared_d[1bv1][0] else v14$1);
    v14$2 := (if p15$2 then $$kernel25.shared_d[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v14$2);
    call {:sourceloc} {:sourceloc_num 31} _LOG_READ_$$p(p15$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1)), 32, 0), $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_2"} {:captureState "check_state_2"} {:sourceloc} {:sourceloc_num 31} true;
    call {:check_id "check_state_2"} {:sourceloc} {:sourceloc_num 31} _CHECK_READ_$$p(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1)), 32, 0), $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$p"} true;
    v15$1 := (if p15$1 then $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$1, $c4.0$1), 1)), 32, 0)] else v15$1);
    v15$2 := (if p15$2 then $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_SUB(BV64_ADD($c2.0$2, $c4.0$2), 1)), 32, 0)] else v15$2);
    call {:sourceloc} {:sourceloc_num 32} _LOG_READ_$$kernel25.shared_e(p15$1, 0, $$kernel25.shared_e[1bv1][0]);
    assume {:do_not_predicate} {:check_id "check_state_3"} {:captureState "check_state_3"} {:sourceloc} {:sourceloc_num 32} true;
    call {:check_id "check_state_3"} {:sourceloc} {:sourceloc_num 32} _CHECK_READ_$$kernel25.shared_e(p15$2, 0, $$kernel25.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$kernel25.shared_e"} true;
    v16$1 := (if p15$1 then $$kernel25.shared_e[1bv1][0] else v16$1);
    v16$2 := (if p15$2 then $$kernel25.shared_e[(if group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 then 1bv1 else 0bv1)][0] else v16$2);
    call {:sourceloc} {:sourceloc_num 33} _LOG_WRITE_$$p(p15$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0), FDIV64(FSUB64(-9223372036854775808, v13$1), FADD64(FMUL64(v14$1, v15$1), v16$1)), $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_4"} {:captureState "check_state_4"} {:sourceloc} {:sourceloc_num 33} true;
    call {:check_id "check_state_4"} {:sourceloc} {:sourceloc_num 33} _CHECK_WRITE_$$p(p15$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0), FDIV64(FSUB64(-9223372036854775808, v13$2), FADD64(FMUL64(v14$2, v15$2), v16$2)));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$p"} true;
    $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)] := (if p15$1 then FDIV64(FSUB64(-9223372036854775808, v13$1), FADD64(FMUL64(v14$1, v15$1), v16$1)) else $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$1, $c1.0$1), BV32_SEXT64($n)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)]);
    $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)] := (if p15$2 then FDIV64(FSUB64(-9223372036854775808, v13$2), FADD64(FMUL64(v14$2, v15$2), v16$2)) else $$p[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v1$2, $c1.0$2), BV32_SEXT64($n)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)]);
    $c4.0$1 := (if p15$1 then BV64_ADD($c4.0$1, 1) else $c4.0$1);
    $c4.0$2 := (if p15$2 then BV64_ADD($c4.0$2, 1) else $c4.0$2);
    p12$1 := (if p15$1 then true else p12$1);
    p12$2 := (if p15$2 then true else p12$2);
    goto $12.backedge, __partitioned_block_$12.tail_0;

  __partitioned_block_$12.tail_0:
    assume !p12$1 && !p12$2;
    goto __partitioned_block_$12.tail_1;

  __partitioned_block_$12.tail_1:
    call {:sourceloc_num 37} $bugle_barrier_duplicated_1(-1, -1, p5$1, p5$2);
    $c2.0$1 := (if p5$1 then BV64_ADD($c2.0$1, 32) else $c2.0$1);
    $c2.0$2 := (if p5$2 then BV64_ADD($c2.0$2, 32) else $c2.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $5.backedge, $5.tail;

  $5.tail:
    assume !p4$1 && !p4$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 1048576) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 1048576) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    return;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $3;

  $5.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $5;

  $12.backedge:
    assume {:backedge} p12$1 || p12$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $12;
}



axiom (if group_size_y == 1 then 1 else 0) != 0;

axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_y == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

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

procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_0($0: int, $1: int);
  modifies $$kernel25.shared_d, $$kernel25.shared_e, $$kernel25.shared_f, $$p, _TRACKING;



procedure {:inline 1} {:safe_barrier} {:source_name "bugle_barrier"} {:barrier} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool);
  modifies $$kernel25.shared_d, $$kernel25.shared_e, $$kernel25.shared_f, $$p, _TRACKING;









function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}





















































































const _WATCHED_VALUE_$$d: int;

procedure {:inline 1} _LOG_READ_$$d(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_READ_$$d(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _READ_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_READ_$$d(_P: bool, _offset: int, _value: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$d);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$d: bool;

procedure {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$d, _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _LOG_WRITE_$$d(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then true else _WRITE_HAS_OCCURRED_$$d);
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



procedure _CHECK_WRITE_$$d(_P: bool, _offset: int, _value: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$d != _value);
  requires {:source_name "d"} {:array "$$d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$d;



implementation {:inline 1} _LOG_ATOMIC_$$d(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$d := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$d);
    return;
}



procedure _CHECK_ATOMIC_$$d(_P: bool, _offset: int);
  requires {:source_name "d"} {:array "$$d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);
  requires {:source_name "d"} {:array "$$d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$d(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$d := (if _P && _WRITE_HAS_OCCURRED_$$d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$d);
    return;
}



const _WATCHED_VALUE_$$e: int;

procedure {:inline 1} _LOG_READ_$$e(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$e;



implementation {:inline 1} _LOG_READ_$$e(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e == _value then true else _READ_HAS_OCCURRED_$$e);
    return;
}



procedure _CHECK_READ_$$e(_P: bool, _offset: int, _value: int);
  requires {:source_name "e"} {:array "$$e"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$e);
  requires {:source_name "e"} {:array "$$e"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$e: bool;

procedure {:inline 1} _LOG_WRITE_$$e(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$e, _WRITE_READ_BENIGN_FLAG_$$e;



implementation {:inline 1} _LOG_WRITE_$$e(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e == _value then true else _WRITE_HAS_OCCURRED_$$e);
    _WRITE_READ_BENIGN_FLAG_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$e);
    return;
}



procedure _CHECK_WRITE_$$e(_P: bool, _offset: int, _value: int);
  requires {:source_name "e"} {:array "$$e"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e != _value);
  requires {:source_name "e"} {:array "$$e"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$e != _value);
  requires {:source_name "e"} {:array "$$e"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$e(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$e;



implementation {:inline 1} _LOG_ATOMIC_$$e(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$e := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$e);
    return;
}



procedure _CHECK_ATOMIC_$$e(_P: bool, _offset: int);
  requires {:source_name "e"} {:array "$$e"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);
  requires {:source_name "e"} {:array "$$e"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$e(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$e;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$e(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$e := (if _P && _WRITE_HAS_OCCURRED_$$e && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$e);
    return;
}



const _WATCHED_VALUE_$$f: int;

procedure {:inline 1} _LOG_READ_$$f(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$f;



implementation {:inline 1} _LOG_READ_$$f(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f == _value then true else _READ_HAS_OCCURRED_$$f);
    return;
}



procedure _CHECK_READ_$$f(_P: bool, _offset: int, _value: int);
  requires {:source_name "f"} {:array "$$f"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$f);
  requires {:source_name "f"} {:array "$$f"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$f: bool;

procedure {:inline 1} _LOG_WRITE_$$f(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$f, _WRITE_READ_BENIGN_FLAG_$$f;



implementation {:inline 1} _LOG_WRITE_$$f(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f == _value then true else _WRITE_HAS_OCCURRED_$$f);
    _WRITE_READ_BENIGN_FLAG_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$f);
    return;
}



procedure _CHECK_WRITE_$$f(_P: bool, _offset: int, _value: int);
  requires {:source_name "f"} {:array "$$f"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f != _value);
  requires {:source_name "f"} {:array "$$f"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$f != _value);
  requires {:source_name "f"} {:array "$$f"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$f(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$f;



implementation {:inline 1} _LOG_ATOMIC_$$f(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$f := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$f);
    return;
}



procedure _CHECK_ATOMIC_$$f(_P: bool, _offset: int);
  requires {:source_name "f"} {:array "$$f"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);
  requires {:source_name "f"} {:array "$$f"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$f(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$f;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$f(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$f := (if _P && _WRITE_HAS_OCCURRED_$$f && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$f);
    return;
}



const _WATCHED_VALUE_$$p: int;

procedure {:inline 1} _LOG_READ_$$p(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_READ_$$p(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _READ_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_READ_$$p(_P: bool, _offset: int, _value: int);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$p);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$p: bool;

procedure {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$p, _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _LOG_WRITE_$$p(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then true else _WRITE_HAS_OCCURRED_$$p);
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



procedure _CHECK_WRITE_$$p(_P: bool, _offset: int, _value: int);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$p != _value);
  requires {:source_name "p"} {:array "$$p"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$p;



implementation {:inline 1} _LOG_ATOMIC_$$p(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$p := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$p);
    return;
}



procedure _CHECK_ATOMIC_$$p(_P: bool, _offset: int);
  requires {:source_name "p"} {:array "$$p"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);
  requires {:source_name "p"} {:array "$$p"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$p;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$p(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$p := (if _P && _WRITE_HAS_OCCURRED_$$p && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$p);
    return;
}



const _WATCHED_VALUE_$$kernel25.shared_d: int;

procedure {:inline 1} _LOG_READ_$$kernel25.shared_d(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel25.shared_d;



implementation {:inline 1} _LOG_READ_$$kernel25.shared_d(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel25.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d == _value then true else _READ_HAS_OCCURRED_$$kernel25.shared_d);
    return;
}



procedure _CHECK_READ_$$kernel25.shared_d(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel25.shared_d(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel25.shared_d, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d;



implementation {:inline 1} _LOG_WRITE_$$kernel25.shared_d(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel25.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d == _value then true else _WRITE_HAS_OCCURRED_$$kernel25.shared_d);
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d);
    return;
}



procedure _CHECK_WRITE_$$kernel25.shared_d(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_d != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel25.shared_d(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d;



implementation {:inline 1} _LOG_ATOMIC_$$kernel25.shared_d(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel25.shared_d);
    return;
}



procedure _CHECK_ATOMIC_$$kernel25.shared_d(_P: bool, _offset: int);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_d"} {:array "$$kernel25.shared_d"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d := (if _P && _WRITE_HAS_OCCURRED_$$kernel25.shared_d && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_d);
    return;
}



const _WATCHED_VALUE_$$kernel25.shared_e: int;

procedure {:inline 1} _LOG_READ_$$kernel25.shared_e(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel25.shared_e;



implementation {:inline 1} _LOG_READ_$$kernel25.shared_e(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel25.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e == _value then true else _READ_HAS_OCCURRED_$$kernel25.shared_e);
    return;
}



procedure _CHECK_READ_$$kernel25.shared_e(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel25.shared_e(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel25.shared_e, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e;



implementation {:inline 1} _LOG_WRITE_$$kernel25.shared_e(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel25.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e == _value then true else _WRITE_HAS_OCCURRED_$$kernel25.shared_e);
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e);
    return;
}



procedure _CHECK_WRITE_$$kernel25.shared_e(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_e != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel25.shared_e(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e;



implementation {:inline 1} _LOG_ATOMIC_$$kernel25.shared_e(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel25.shared_e);
    return;
}



procedure _CHECK_ATOMIC_$$kernel25.shared_e(_P: bool, _offset: int);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_e"} {:array "$$kernel25.shared_e"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e := (if _P && _WRITE_HAS_OCCURRED_$$kernel25.shared_e && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_e);
    return;
}



const _WATCHED_VALUE_$$kernel25.shared_f: int;

procedure {:inline 1} _LOG_READ_$$kernel25.shared_f(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$kernel25.shared_f;



implementation {:inline 1} _LOG_READ_$$kernel25.shared_f(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$kernel25.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f == _value then true else _READ_HAS_OCCURRED_$$kernel25.shared_f);
    return;
}



procedure _CHECK_READ_$$kernel25.shared_f(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



var _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f: bool;

procedure {:inline 1} _LOG_WRITE_$$kernel25.shared_f(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$kernel25.shared_f, _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f;



implementation {:inline 1} _LOG_WRITE_$$kernel25.shared_f(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$kernel25.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f == _value then true else _WRITE_HAS_OCCURRED_$$kernel25.shared_f);
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f);
    return;
}



procedure _CHECK_WRITE_$$kernel25.shared_f(_P: bool, _offset: int, _value: int);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$kernel25.shared_f != _value && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _LOG_ATOMIC_$$kernel25.shared_f(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f;



implementation {:inline 1} _LOG_ATOMIC_$$kernel25.shared_f(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f := (if _P && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$kernel25.shared_f);
    return;
}



procedure _CHECK_ATOMIC_$$kernel25.shared_f(_P: bool, _offset: int);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);
  requires {:source_name "shared_f"} {:array "$$kernel25.shared_f"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset && group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f := (if _P && _WRITE_HAS_OCCURRED_$$kernel25.shared_f && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$kernel25.shared_f);
    return;
}



var _TRACKING: bool;

implementation {:inline 1} $bugle_barrier_duplicated_0($0: int, $1: int)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} true;
    goto anon0;

  anon0:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_d;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_d;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_d;
    goto anon1;

  anon1:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_e;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_e;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_e;
    goto anon2;

  anon2:
    assume $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_f;
    assume $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_f;
    assume $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_f;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($0 != 0 || $0 != 0);
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_READ_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$p;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && ($1 != 0 || $1 != 0);
    havoc $$p;
    goto anon10;

  anon12_Then:
    assume {:partition} $0 != 0 || $0 != 0;
    havoc $$kernel25.shared_d;
    goto anon5;

  anon5:
    havoc $$kernel25.shared_e;
    goto anon6;

  anon6:
    havoc $$kernel25.shared_f;
    goto anon7;

  anon11_Then:
    assume {:partition} false;
    goto __Disabled;

  __Disabled:
    return;
}



implementation {:inline 1} $bugle_barrier_duplicated_1($0: int, $1: int, _P$1: bool, _P$2: bool)
{

  __BarrierImpl:
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !((!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2)));
    goto anon0;

  anon0:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_d;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_d;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_d;
    goto anon1;

  anon1:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_e;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_e;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_e;
    goto anon2;

  anon2:
    assume _P$1 && $0 != 0 ==> !_READ_HAS_OCCURRED_$$kernel25.shared_f;
    assume _P$1 && $0 != 0 ==> !_WRITE_HAS_OCCURRED_$$kernel25.shared_f;
    assume _P$1 && $0 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$kernel25.shared_f;
    goto anon3;

  anon3:
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !((_P$1 && $0 != 0) || (_P$2 && $0 != 0));
    goto anon7;

  anon7:
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_READ_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_WRITE_HAS_OCCURRED_$$p;
    assume group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 ==> _P$1 && $1 != 0 ==> !_ATOMIC_HAS_OCCURRED_$$p;
    goto anon8;

  anon8:
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0));
    goto anon10;

  anon10:
    havoc _TRACKING;
    return;

  anon13_Then:
    assume {:partition} group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && _P$1 && _P$2 && ($1 != 0 || $1 != 0);
    havoc $$p;
    goto anon10;

  anon12_Then:
    assume {:partition} (_P$1 && $0 != 0) || (_P$2 && $0 != 0);
    havoc $$kernel25.shared_d;
    goto anon5;

  anon5:
    havoc $$kernel25.shared_e;
    goto anon6;

  anon6:
    havoc $$kernel25.shared_f;
    goto anon7;

  anon11_Then:
    assume {:partition} (!_P$1 && !_P$2) || (group_id_x$1 == group_id_x$2 && group_id_y$1 == group_id_y$2 && group_id_z$1 == group_id_z$2 && (!_P$1 || !_P$2));
    goto __Disabled;

  __Disabled:
    return;
}



function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}










































































































































