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
 b0027: bool
 ) : bool;
type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



var {:source_name "cov"} {:global} $$cov: [int]int;

axiom {:array_info "$$cov"} {:global} {:elem_width 64} {:source_name "cov"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$cov: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$cov: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$cov: bool;

const _WATCHED_OFFSET: int;

const {:global_offset_x} global_offset_x: int;

const {:global_offset_y} global_offset_y: int;

const {:global_offset_z} global_offset_z: int;

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

function BV32_SEXT64(int) : int;

function BV_EXTRACT(int, int, int) : int;

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

function  BV64_SDIV(x: int, y: int) : int
{
  x div y
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

procedure {:source_name "kernel2"} {:kernel} $kernel2($m: int, $n: int);
  requires {:sourceloc_num 0} {:thread 1} (if $m == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $n == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($m, 1) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($m, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($n, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($n), -2147483648) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$cov ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$cov && !_WRITE_HAS_OCCURRED_$$cov && !_ATOMIC_HAS_OCCURRED_$$cov;
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
  modifies _WRITE_HAS_OCCURRED_$$cov, _WRITE_READ_BENIGN_FLAG_$$cov, _WRITE_READ_BENIGN_FLAG_$$cov;



implementation {:source_name "kernel2"} {:kernel} $kernel2($m: int, $n: int)
{
  var $c0.0$1: int;
  var $c0.0$2: int;
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $0$1: int;
  var $0$2: int;
  var $1$1: int;
  var $1$2: int;
  var $2$1: int;
  var $2$2: int;
  var $c3.0$1: int;
  var $c3.0$2: int;
  var $3$1: int;
  var $3$2: int;
  var v0$1: int;
  var v0$2: int;
  var v1$1: int;
  var v1$2: int;
  var v2$1: int;
  var v2$2: int;
  var v3$1: int;
  var v3$2: int;
  var v4$1: bool;
  var v4$2: bool;
  var v5$1: bool;
  var v5$2: bool;
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
  var _WRITE_HAS_OCCURRED_$$cov$ghost$$3: bool;
  var _WRITE_HAS_OCCURRED_$$cov$ghost$$14: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := BV32_ZEXT64(local_id_x$1);
    v2$2 := BV32_ZEXT64(local_id_x$2);
    v3$1 := BV32_ZEXT64(local_id_y$1);
    v3$2 := BV32_ZEXT64(local_id_y$2);
    $c0.0$1 := BV64_MUL(32, v0$1);
    $c0.0$2 := BV64_MUL(32, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  ( p0$1 ==> $c0.0$1 mod 8192 == BV64_MUL(32, v0$1) mod 8192 )  && ( p0$2 ==> $c0.0$2 mod 8192 == BV64_MUL(32, v0$2) mod 8192 ) ,  ( p0$1 ==> BV32_SLE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_SLE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_SGE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_SGE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_ULE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_ULE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  ( p0$1 ==> BV32_UGE($c0.0$1, BV64_MUL(32, v0$1)) )  && ( p0$2 ==> BV32_UGE($c0.0$2, BV64_MUL(32, v0$2)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) ==> p0$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) ==> p0$2 ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$cov ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$cov ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 5} p0$1 ==> true;
    v4$1 := (if p0$1 then BV64_SLT($c0.0$1, BV32_SEXT64($m)) else v4$1);
    v4$2 := (if p0$2 then BV64_SLT($c0.0$2, BV32_SEXT64($m)) else v4$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p14$1 := false;
    p14$2 := false;
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    p0$1 := (if p0$1 && !v4$1 then v4$1 else p0$1);
    p0$2 := (if p0$2 && !v4$2 then v4$2 else p0$2);
    $c1.0$1 := (if p1$1 then BV64_ADD(BV64_MUL(32, v1$1), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$1), $c0.0$1), 8160), 8192))) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_ADD(BV64_MUL(32, v1$2), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$2), $c0.0$2), 8160), 8192))) else $c1.0$2);
    p2$1 := (if p1$1 then true else p2$1);
    p2$2 := (if p1$2 then true else p2$2);
    _WRITE_HAS_OCCURRED_$$cov$ghost$$3 := _WRITE_HAS_OCCURRED_$$cov;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $3;

  $3:
    assume {:captureState "loop_head_state_1"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$cov ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p1$1 ==> _WRITE_HAS_OCCURRED_$$cov$ghost$$3 == _WRITE_HAS_OCCURRED_$$cov ) ,  true ,  true  ); 


    assume {:predicate "p2"} {:dominator_predicate "p1"} true;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  ( p2$1 ==> $c1.0$1 mod 8192 == BV64_ADD(BV64_MUL(32, v1$1), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$1), $c0.0$1), 8160), 8192))) mod 8192 )  && ( p2$2 ==> $c1.0$2 mod 8192 == BV64_ADD(BV64_MUL(32, v1$2), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$2), $c0.0$2), 8160), 8192))) mod 8192 ) ,  ( p2$1 ==> BV32_SLE($c1.0$1, BV64_ADD(BV64_MUL(32, v1$1), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$1), $c0.0$1), 8160), 8192)))) )  && ( p2$2 ==> BV32_SLE($c1.0$2, BV64_ADD(BV64_MUL(32, v1$2), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$2), $c0.0$2), 8160), 8192)))) ) ,  ( p2$1 ==> BV32_SGE($c1.0$1, BV64_ADD(BV64_MUL(32, v1$1), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$1), $c0.0$1), 8160), 8192)))) )  && ( p2$2 ==> BV32_SGE($c1.0$2, BV64_ADD(BV64_MUL(32, v1$2), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$2), $c0.0$2), 8160), 8192)))) ) ,  ( p2$1 ==> BV32_ULE($c1.0$1, BV64_ADD(BV64_MUL(32, v1$1), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$1), $c0.0$1), 8160), 8192)))) )  && ( p2$2 ==> BV32_ULE($c1.0$2, BV64_ADD(BV64_MUL(32, v1$2), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$2), $c0.0$2), 8160), 8192)))) ) ,  ( p2$1 ==> BV32_UGE($c1.0$1, BV64_ADD(BV64_MUL(32, v1$1), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$1), $c0.0$1), 8160), 8192)))) )  && ( p2$2 ==> BV32_UGE($c1.0$2, BV64_ADD(BV64_MUL(32, v1$2), BV64_MUL(8192, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_MUL(-32, v1$2), $c0.0$2), 8160), 8192)))) ) ,  ( p2$1 ==> p2$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) )  && ( p2$2 ==> p2$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) ==> p2$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) ==> p2$2 ) ,  (  _WRITE_HAS_OCCURRED_$$cov ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$cov ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 7} p2$1 ==> true;
    v5$1 := (if p2$1 then BV64_SLT($c1.0$1, BV32_SEXT64($m)) else v5$1);
    v5$2 := (if p2$2 then BV64_SLT($c1.0$2, BV32_SEXT64($m)) else v5$2);
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
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
    p3$1 := (if p2$1 && v5$1 then v5$1 else p3$1);
    p3$2 := (if p2$2 && v5$2 then v5$2 else p3$2);
    p2$1 := (if p2$1 && !v5$1 then v5$1 else p2$1);
    p2$2 := (if p2$2 && !v5$2 then v5$2 else p2$2);
    v6$1 := (if p3$1 then BV64_SLT(BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$1, v3$1), $c0.0$1), $c1.0$1), 1), 0) else v6$1);
    v6$2 := (if p3$2 then BV64_SLT(BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$2, v3$2), $c0.0$2), $c1.0$2), 1), 0) else v6$2);
    p5$1 := (if p3$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p3$2 && v6$2 then v6$2 else p5$2);
    p4$1 := (if p3$1 && !v6$1 then !v6$1 else p4$1);
    p4$2 := (if p3$2 && !v6$2 then !v6$2 else p4$2);
    $0$1 := (if p4$1 then BV64_SDIV(BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$1, v3$1), $c0.0$1), $c1.0$1), 1), 16) else $0$1);
    $0$2 := (if p4$2 then BV64_SDIV(BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$2, v3$2), $c0.0$2), $c1.0$2), 1), 16) else $0$2);
    $0$1 := (if p5$1 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$1, v3$1), $c0.0$1), $c1.0$1), 1)), 16), 1), 16)) else $0$1);
    $0$2 := (if p5$2 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$2, v3$2), $c0.0$2), $c1.0$2), 1)), 16), 1), 16)) else $0$2);
    v7$1 := (if p3$1 then BV64_SGT(v3$1, BV64_ADD(BV64_ADD(v3$1, BV64_MUL(16, $0$1)), 16)) else v7$1);
    v7$2 := (if p3$2 then BV64_SGT(v3$2, BV64_ADD(BV64_ADD(v3$2, BV64_MUL(16, $0$2)), 16)) else v7$2);
    p6$1 := (if p3$1 && v7$1 then v7$1 else p6$1);
    p6$2 := (if p3$2 && v7$2 then v7$2 else p6$2);
    p7$1 := (if p3$1 && !v7$1 then !v7$1 else p7$1);
    p7$2 := (if p3$2 && !v7$2 then !v7$2 else p7$2);
    $1$1 := (if p6$1 then v3$1 else $1$1);
    $1$2 := (if p6$2 then v3$2 else $1$2);
    v8$1 := (if p7$1 then BV64_SLT(BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$1, v3$1), $c0.0$1), $c1.0$1), 1), 0) else v8$1);
    v8$2 := (if p7$2 then BV64_SLT(BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$2, v3$2), $c0.0$2), $c1.0$2), 1), 0) else v8$2);
    p9$1 := (if p7$1 && v8$1 then v8$1 else p9$1);
    p9$2 := (if p7$2 && v8$2 then v8$2 else p9$2);
    p8$1 := (if p7$1 && !v8$1 then !v8$1 else p8$1);
    p8$2 := (if p7$2 && !v8$2 then !v8$2 else p8$2);
    $2$1 := (if p8$1 then BV64_SDIV(BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$1, v3$1), $c0.0$1), $c1.0$1), 1), 16) else $2$1);
    $2$2 := (if p8$2 then BV64_SDIV(BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$2, v3$2), $c0.0$2), $c1.0$2), 1), 16) else $2$2);
    $2$1 := (if p9$1 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$1, v3$1), $c0.0$1), $c1.0$1), 1)), 16), 1), 16)) else $2$1);
    $2$2 := (if p9$2 then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_SUB(BV64_SUB(BV64_ADD(BV64_SUB(v2$2, v3$2), $c0.0$2), $c1.0$2), 1)), 16), 1), 16)) else $2$2);
    $1$1 := (if p7$1 then BV64_ADD(BV64_ADD(v3$1, BV64_MUL(16, $2$1)), 16) else $1$1);
    $1$2 := (if p7$2 then BV64_ADD(BV64_ADD(v3$2, BV64_MUL(16, $2$2)), 16) else $1$2);
    $c3.0$1 := (if p3$1 then $1$1 else $c3.0$1);
    $c3.0$2 := (if p3$2 then $1$2 else $c3.0$2);
    p10$1 := (if p3$1 then true else p10$1);
    p10$2 := (if p3$2 then true else p10$2);
    _WRITE_HAS_OCCURRED_$$cov$ghost$$14 := _WRITE_HAS_OCCURRED_$$cov;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $14;

  $14:
    assume {:captureState "loop_head_state_2"} true;
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  (  _WRITE_HAS_OCCURRED_$$cov ==> _WATCHED_OFFSET mod 1 == 0 mod 1 ) ,  (  !p3$1 ==> _WRITE_HAS_OCCURRED_$$cov$ghost$$14 == _WRITE_HAS_OCCURRED_$$cov )  ); 


    assume {:predicate "p10"} {:dominator_predicate "p3"} true;
    assert p10$1 ==> p2$1;
    assert p10$2 ==> p2$2;
    assert p2$1 ==> p0$1;
    assert p2$2 ==> p0$2;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
assert  my_inv (  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  true ,  ( p10$1 ==> $c3.0$1 mod 16 == $1$1 mod 16 )  && ( p10$2 ==> $c3.0$2 mod 16 == $1$2 mod 16 ) ,  ( p10$1 ==> BV32_SLE($c3.0$1, $1$1) )  && ( p10$2 ==> BV32_SLE($c3.0$2, $1$2) ) ,  ( p10$1 ==> BV32_SGE($c3.0$1, $1$1) )  && ( p10$2 ==> BV32_SGE($c3.0$2, $1$2) ) ,  ( p10$1 ==> BV32_ULE($c3.0$1, $1$1) )  && ( p10$2 ==> BV32_ULE($c3.0$2, $1$2) ) ,  ( p10$1 ==> BV32_UGE($c3.0$1, $1$1) )  && ( p10$2 ==> BV32_UGE($c3.0$2, $1$2) ) ,  ( p10$1 ==> p10$1 ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) )  && ( p10$2 ==> p10$2 ==> BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) ) ,  (  BV64_SLT($c0.0$1, BV32_SEXT64($m)) && BV64_SLT($c1.0$1, BV32_SEXT64($m)) && BV64_SLE($c3.0$1, $3$1) ==> p10$1 )  && (  BV64_SLT($c0.0$2, BV32_SEXT64($m)) && BV64_SLT($c1.0$2, BV32_SEXT64($m)) && BV64_SLE($c3.0$2, $3$2) ==> p10$2 ) ,  (  _WRITE_HAS_OCCURRED_$$cov ==> BV64_SLT($c0.0$1, BV32_SEXT64($m)) ) ,  (  _WRITE_HAS_OCCURRED_$$cov ==> BV64_SLT($c1.0$1, BV32_SEXT64($m)) ) ,  true ,  true ,  true ,  true ,  true  ); 


    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 3} {:thread 1} (if _WRITE_HAS_OCCURRED_$$cov ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($m, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 1)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m), $m))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $m))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 18} p10$1 ==> true;
    v9$1 := (if p10$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1)) else v9$1);
    v9$2 := (if p10$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1)) else v9$2);
    p11$1 := false;
    p11$2 := false;
    p12$1 := false;
    p12$2 := false;
    p13$1 := false;
    p13$2 := false;
    p12$1 := (if p10$1 && v9$1 then v9$1 else p12$1);
    p12$2 := (if p10$2 && v9$2 then v9$2 else p12$2);
    p11$1 := (if p10$1 && !v9$1 then !v9$1 else p11$1);
    p11$2 := (if p10$2 && !v9$2 then !v9$2 else p11$2);
    $3$1 := (if p11$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$1), 1) else $3$1);
    $3$2 := (if p11$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($m), $c1.0$2), 1) else $3$2);
    $3$1 := (if p12$1 then 31 else $3$1);
    $3$2 := (if p12$2 then 31 else $3$2);
    v10$1 := (if p10$1 then BV64_SLE($c3.0$1, $3$1) else v10$1);
    v10$2 := (if p10$2 then BV64_SLE($c3.0$2, $3$2) else v10$2);
    p13$1 := (if p10$1 && v10$1 then v10$1 else p13$1);
    p13$2 := (if p10$2 && v10$2 then v10$2 else p13$2);
    p10$1 := (if p10$1 && !v10$1 then v10$1 else p10$1);
    p10$2 := (if p10$2 && !v10$2 then v10$2 else p10$2);
    call {:sourceloc} {:sourceloc_num 23} _LOG_WRITE_$$cov(p13$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($m)), BV64_ADD($c1.0$1, $c3.0$1)), 32, 0), 0, $$cov[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($m)), BV64_ADD($c1.0$1, $c3.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$cov(p13$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($m)), BV64_ADD($c1.0$2, $c3.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 23} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 23} _CHECK_WRITE_$$cov(p13$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($m)), BV64_ADD($c1.0$2, $c3.0$2)), 32, 0), 0);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$cov"} true;
    $$cov[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($m)), BV64_ADD($c1.0$1, $c3.0$1)), 32, 0)] := (if p13$1 then 0 else $$cov[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c0.0$1), BV32_SEXT64($m)), BV64_ADD($c1.0$1, $c3.0$1)), 32, 0)]);
    $$cov[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($m)), BV64_ADD($c1.0$2, $c3.0$2)), 32, 0)] := (if p13$2 then 0 else $$cov[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c0.0$2), BV32_SEXT64($m)), BV64_ADD($c1.0$2, $c3.0$2)), 32, 0)]);
    $c3.0$1 := (if p13$1 then BV64_ADD($c3.0$1, 16) else $c3.0$1);
    $c3.0$2 := (if p13$2 then BV64_ADD($c3.0$2, 16) else $c3.0$2);
    p10$1 := (if p13$1 then true else p10$1);
    p10$2 := (if p13$2 then true else p10$2);
    goto $14.backedge, $14.tail;

  $14.tail:
    assume !p10$1 && !p10$2;
    $c1.0$1 := (if p3$1 then BV64_ADD($c1.0$1, 8192) else $c1.0$1);
    $c1.0$2 := (if p3$2 then BV64_ADD($c1.0$2, 8192) else $c1.0$2);
    p2$1 := (if p3$1 then true else p2$1);
    p2$2 := (if p3$2 then true else p2$2);
    goto $3.backedge, $3.tail;

  $3.tail:
    assume !p2$1 && !p2$2;
    $c0.0$1 := (if p1$1 then BV64_ADD($c0.0$1, 8192) else $c0.0$1);
    $c0.0$2 := (if p1$2 then BV64_ADD($c0.0$2, 8192) else $c0.0$2);
    p0$1 := (if p1$1 then true else p0$1);
    p0$2 := (if p1$2 then true else p0$2);
    goto $1.backedge, $1.tail;

  $1.tail:
    assume !p0$1 && !p0$2;
    return;

  $1.backedge:
    assume {:backedge} p0$1 || p0$2;
    assume {:captureState "loop_back_edge_state_0_0"} true;
    goto $1;

  $3.backedge:
    assume {:backedge} p2$1 || p2$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $3;

  $14.backedge:
    assume {:backedge} p10$1 || p10$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $14;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 32 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;







function  BV32_ULE(x: int, y: int) : bool
{
  x <= y
}









































const _WATCHED_VALUE_$$cov: int;

procedure {:inline 1} _LOG_READ_$$cov(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$cov;



implementation {:inline 1} _LOG_READ_$$cov(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$cov := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cov == _value then true else _READ_HAS_OCCURRED_$$cov);
    return;
}



procedure _CHECK_READ_$$cov(_P: bool, _offset: int, _value: int);
  requires {:source_name "cov"} {:array "$$cov"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$cov && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$cov);
  requires {:source_name "cov"} {:array "$$cov"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$cov && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$cov: bool;

procedure {:inline 1} _LOG_WRITE_$$cov(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$cov, _WRITE_READ_BENIGN_FLAG_$$cov;



implementation {:inline 1} _LOG_WRITE_$$cov(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$cov := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cov == _value then true else _WRITE_HAS_OCCURRED_$$cov);
    _WRITE_READ_BENIGN_FLAG_$$cov := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cov == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$cov);
    return;
}



procedure _CHECK_WRITE_$$cov(_P: bool, _offset: int, _value: int);
  requires {:source_name "cov"} {:array "$$cov"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$cov && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cov != _value);
  requires {:source_name "cov"} {:array "$$cov"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$cov && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$cov != _value);
  requires {:source_name "cov"} {:array "$$cov"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$cov && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$cov(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$cov;



implementation {:inline 1} _LOG_ATOMIC_$$cov(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$cov := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$cov);
    return;
}



procedure _CHECK_ATOMIC_$$cov(_P: bool, _offset: int);
  requires {:source_name "cov"} {:array "$$cov"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$cov && _WATCHED_OFFSET == _offset);
  requires {:source_name "cov"} {:array "$$cov"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$cov && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cov(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$cov;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$cov(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$cov := (if _P && _WRITE_HAS_OCCURRED_$$cov && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$cov);
    return;
}



var _TRACKING: bool;

function  BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function  BV32_SLT(x: int, y: int) : bool
{
  x < y
}










