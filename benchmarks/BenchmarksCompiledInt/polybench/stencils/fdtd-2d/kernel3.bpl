type _SIZE_T_TYPE = bv32;

procedure _ATOMIC_OP64(x: [int]int, y: int) returns (z$1: int, A$1: [int]int, z$2: int, A$2: [int]int);



axiom {:array_info "$$ex"} {:global} {:elem_width 64} {:source_name "ex"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ex: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ex: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ex: bool;

axiom {:array_info "$$ey"} {:global} {:elem_width 64} {:source_name "ey"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$ey: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$ey: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$ey: bool;

var {:source_name "hz"} {:global} $$hz: [int]int;

axiom {:array_info "$$hz"} {:global} {:elem_width 64} {:source_name "hz"} {:source_elem_width 64} {:source_dimensions "*"} true;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _READ_HAS_OCCURRED_$$hz: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _WRITE_HAS_OCCURRED_$$hz: bool;

var {:race_checking} {:global} {:elem_width 64} {:source_elem_width 64} {:source_dimensions "*"} _ATOMIC_HAS_OCCURRED_$$hz: bool;

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

function FADD64(int, int) : int;

function FMUL64(int, int) : int;

function FSUB64(int, int) : int;

function {:inline true} BV1_ZEXT32(x: int) : int
{
  x
}

function {:inline true} BV32_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV32_AND(x: int, y: int) : int
{
  (if x == y then x else (if x == 0 || y == 0 then 0 else BV32_AND_UF(x, y)))
}

function BV32_AND_UF(int, int) : int;

function {:inline true} BV32_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV32_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV32_SUB(x: int, y: int) : int
{
  x - y
}

function {:inline true} BV32_UDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV32_UGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV32_UREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV32_ZEXT64(x: int) : int
{
  x
}

function {:inline true} BV64_ADD(x: int, y: int) : int
{
  x + y
}

function {:inline true} BV64_MUL(x: int, y: int) : int
{
  x * y
}

function {:inline true} BV64_SDIV(x: int, y: int) : int
{
  x div y
}

function {:inline true} BV64_SGE(x: int, y: int) : bool
{
  x >= y
}

function {:inline true} BV64_SLE(x: int, y: int) : bool
{
  x <= y
}

function {:inline true} BV64_SLT(x: int, y: int) : bool
{
  x < y
}

function {:inline true} BV64_SREM(x: int, y: int) : int
{
  x mod y
}

function {:inline true} BV64_SUB(x: int, y: int) : int
{
  x - y
}

procedure {:source_name "kernel3"} {:kernel} $kernel3($ny: int, $tmax: int, $nx: int, $c0: int);
  requires {:sourceloc_num 0} {:thread 1} (if $ny == 512 then 1 else 0) != 0;
  requires {:sourceloc_num 1} {:thread 1} (if $tmax == 256 then 1 else 0) != 0;
  requires {:sourceloc_num 2} {:thread 1} (if $nx == 1024 then 1 else 0) != 0;
  requires {:sourceloc_num 3} {:thread 1} (if BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV32_SGE($ny, 2) then 1 else 0)), BV1_ZEXT32((if BV32_SLE($ny, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($tmax, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV32_SGE($nx, 2) then 1 else 0))), BV1_ZEXT32((if BV32_SLE($nx, 2147483647) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($tmax), BV64_ADD($c0, 1)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE($c0, 0) then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$hz ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), -8160) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1))), BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32))))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)))), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(256, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)), BV64_MUL(32, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 8190), 8192))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$ex ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ny), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny)), BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16))))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)))), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 8174), 8192), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), BV64_ADD(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16), BV32_ZEXT64(local_id_y$1)), BV64_MUL(16, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16))), 8146)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
  requires !_READ_HAS_OCCURRED_$$ex && !_WRITE_HAS_OCCURRED_$$ex && !_ATOMIC_HAS_OCCURRED_$$ex;
  requires !_READ_HAS_OCCURRED_$$ey && !_WRITE_HAS_OCCURRED_$$ey && !_ATOMIC_HAS_OCCURRED_$$ey;
  requires !_READ_HAS_OCCURRED_$$hz && !_WRITE_HAS_OCCURRED_$$hz && !_ATOMIC_HAS_OCCURRED_$$hz;
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
  modifies _READ_HAS_OCCURRED_$$hz, _WRITE_HAS_OCCURRED_$$hz, _WRITE_READ_BENIGN_FLAG_$$hz, _WRITE_READ_BENIGN_FLAG_$$hz;



implementation {:source_name "kernel3"} {:kernel} $kernel3($ny: int, $tmax: int, $nx: int, $c0: int)
{
  var $c1.0$1: int;
  var $c1.0$2: int;
  var $c2.0$1: int;
  var $c2.0$2: int;
  var $c4.0$1: int;
  var $c4.0$2: int;
  var $0$1: int;
  var $0$2: int;
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
  var v9$1: int;
  var v9$2: int;
  var v10$1: int;
  var v10$2: int;
  var v11$1: int;
  var v11$2: int;
  var v12$1: int;
  var v12$2: int;
  var v13$1: int;
  var v13$2: int;
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
  var _HAVOC_int$1: int;
  var _HAVOC_int$2: int;
  var _READ_HAS_OCCURRED_$$hz$ghost$$4: bool;
  var _WRITE_HAS_OCCURRED_$$hz$ghost$$4: bool;
  var _READ_HAS_OCCURRED_$$hz$ghost$$6: bool;
  var _WRITE_HAS_OCCURRED_$$hz$ghost$$6: bool;


  $0:
    v0$1 := BV32_ZEXT64(group_id_x$1);
    v0$2 := BV32_ZEXT64(group_id_x$2);
    v1$1 := BV32_ZEXT64(group_id_y$1);
    v1$2 := BV32_ZEXT64(group_id_y$2);
    v2$1 := BV32_ZEXT64(local_id_x$1);
    v2$2 := BV32_ZEXT64(local_id_x$2);
    v3$1 := BV32_ZEXT64(local_id_y$1);
    v3$2 := BV32_ZEXT64(local_id_y$2);
    $c1.0$1 := BV64_MUL(32, v0$1);
    $c1.0$2 := BV64_MUL(32, v0$2);
    p0$1 := false;
    p0$2 := false;
    p0$1 := true;
    p0$2 := true;
    assume {:captureState "loop_entry_state_0_0"} true;
    goto $1;

  $1:
    assume {:captureState "loop_head_state_0"} true;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b31 ==> _WRITE_HAS_OCCURRED_$$hz ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b30 ==> _READ_HAS_OCCURRED_$$hz ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b5 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1))) ==> p0$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b5 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($nx, 1))) ==> p0$2;
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b4 ==> BV32_UGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b4 ==> BV32_UGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b3 ==> BV32_ULE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b3 ==> BV32_ULE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b2 ==> BV32_SGE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b2 ==> BV32_SGE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopBound"} {:thread 1} p0$1 ==> _b1 ==> BV32_SLE($c1.0$1, BV64_MUL(32, v0$1));
    assert {:tag "loopBound"} {:thread 2} p0$2 ==> _b1 ==> BV32_SLE($c1.0$2, BV64_MUL(32, v0$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p0$1 ==> _b0 ==> $c1.0$1 mod 8192 == BV64_MUL(32, v0$1) mod 8192;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p0$2 ==> _b0 ==> $c1.0$2 mod 8192 == BV64_MUL(32, v0$2) mod 8192;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$ex ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ny), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny)), BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16))))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)))), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 8174), 8192), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), BV64_ADD(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16), BV32_ZEXT64(local_id_y$1)), BV64_MUL(16, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16))), 8146)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), -8160) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1))), BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32))))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)))), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(256, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)), BV64_MUL(32, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 8190), 8192))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$hz ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 9} p0$1 ==> true;
    v4$1 := (if p0$1 then BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1))) else v4$1);
    v4$2 := (if p0$2 then BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($nx, 1))) else v4$2);
    p1$1 := false;
    p1$2 := false;
    p2$1 := false;
    p2$2 := false;
    p3$1 := false;
    p3$2 := false;
    p4$1 := false;
    p4$2 := false;
    p10$1 := false;
    p10$2 := false;
    p1$1 := (if p0$1 && v4$1 then v4$1 else p1$1);
    p1$2 := (if p0$2 && v4$2 then v4$2 else p1$2);
    p0$1 := (if p0$1 && !v4$1 then v4$1 else p0$1);
    p0$2 := (if p0$2 && !v4$2 then v4$2 else p0$2);
    v5$1 := (if p1$1 then BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(v2$1, $c1.0$1), 2)) else v5$1);
    v5$2 := (if p1$2 then BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(v2$2, $c1.0$2), 2)) else v5$2);
    p3$1 := (if p1$1 && v5$1 then v5$1 else p3$1);
    p3$2 := (if p1$2 && v5$2 then v5$2 else p3$2);
    $c2.0$1 := (if p3$1 then BV64_MUL(32, v1$1) else $c2.0$1);
    $c2.0$2 := (if p3$2 then BV64_MUL(32, v1$2) else $c2.0$2);
    p4$1 := (if p3$1 then true else p4$1);
    p4$2 := (if p3$2 then true else p4$2);
    _READ_HAS_OCCURRED_$$hz$ghost$$4 := _READ_HAS_OCCURRED_$$hz;
    _WRITE_HAS_OCCURRED_$$hz$ghost$$4 := _WRITE_HAS_OCCURRED_$$hz;
    assume {:captureState "loop_entry_state_1_0"} true;
    goto $4;

  $4:
    assume {:captureState "loop_head_state_1"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b35 ==> !p3$1 ==> _WRITE_HAS_OCCURRED_$$hz$ghost$$4 == _WRITE_HAS_OCCURRED_$$hz;
    assert {:tag "disabledMaintainsInstrumentation"} _b34 ==> !p3$1 ==> _READ_HAS_OCCURRED_$$hz$ghost$$4 == _READ_HAS_OCCURRED_$$hz;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b33 ==> _WRITE_HAS_OCCURRED_$$hz ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b32 ==> _READ_HAS_OCCURRED_$$hz ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assume {:predicate "p4"} {:dominator_predicate "p3"} true;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b16 ==> _WRITE_HAS_OCCURRED_$$hz ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b15 ==> _WRITE_HAS_OCCURRED_$$hz ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b14 ==> _READ_HAS_OCCURRED_$$hz ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b13 ==> _READ_HAS_OCCURRED_$$hz ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b12 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1))) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($ny, 1))) ==> p4$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b12 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($nx, 1))) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2)) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($ny, 1))) ==> p4$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p4$1 ==> _b11 ==> p4$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1))) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p4$2 ==> _b11 ==> p4$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($nx, 1))) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b10 ==> BV32_UGE($c2.0$1, BV64_MUL(32, v1$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b10 ==> BV32_UGE($c2.0$2, BV64_MUL(32, v1$2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b9 ==> BV32_ULE($c2.0$1, BV64_MUL(32, v1$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b9 ==> BV32_ULE($c2.0$2, BV64_MUL(32, v1$2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b8 ==> BV32_SGE($c2.0$1, BV64_MUL(32, v1$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b8 ==> BV32_SGE($c2.0$2, BV64_MUL(32, v1$2));
    assert {:tag "loopBound"} {:thread 1} p4$1 ==> _b7 ==> BV32_SLE($c2.0$1, BV64_MUL(32, v1$1));
    assert {:tag "loopBound"} {:thread 2} p4$2 ==> _b7 ==> BV32_SLE($c2.0$2, BV64_MUL(32, v1$2));
    assert {:tag "loopCounterIsStrided"} {:thread 1} p4$1 ==> _b6 ==> $c2.0$1 mod 8192 == BV64_MUL(32, v1$1) mod 8192;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p4$2 ==> _b6 ==> $c2.0$2 mod 8192 == BV64_MUL(32, v1$2) mod 8192;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$ex ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ny), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny)), BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16))))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)))), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 8174), 8192), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), BV64_ADD(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16), BV32_ZEXT64(local_id_y$1)), BV64_MUL(16, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16))), 8146)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), -8160) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1))), BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32))))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)))), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(256, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)), BV64_MUL(32, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 8190), 8192))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$hz ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 12} p4$1 ==> true;
    v6$1 := (if p4$1 then BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($ny, 1))) else v6$1);
    v6$2 := (if p4$2 then BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($ny, 1))) else v6$2);
    p5$1 := false;
    p5$2 := false;
    p6$1 := false;
    p6$2 := false;
    p5$1 := (if p4$1 && v6$1 then v6$1 else p5$1);
    p5$2 := (if p4$2 && v6$2 then v6$2 else p5$2);
    p4$1 := (if p4$1 && !v6$1 then v6$1 else p4$1);
    p4$2 := (if p4$2 && !v6$2 then v6$2 else p4$2);
    $c4.0$1 := (if p5$1 then v3$1 else $c4.0$1);
    $c4.0$2 := (if p5$2 then v3$2 else $c4.0$2);
    p6$1 := (if p5$1 then true else p6$1);
    p6$2 := (if p5$2 then true else p6$2);
    _READ_HAS_OCCURRED_$$hz$ghost$$6 := _READ_HAS_OCCURRED_$$hz;
    _WRITE_HAS_OCCURRED_$$hz$ghost$$6 := _WRITE_HAS_OCCURRED_$$hz;
    assume {:captureState "loop_entry_state_2_0"} true;
    goto $6;

  $6:
    assume {:captureState "loop_head_state_2"} true;
    assert {:tag "disabledMaintainsInstrumentation"} _b39 ==> !p5$1 ==> _WRITE_HAS_OCCURRED_$$hz$ghost$$6 == _WRITE_HAS_OCCURRED_$$hz;
    assert {:tag "disabledMaintainsInstrumentation"} _b38 ==> !p5$1 ==> _READ_HAS_OCCURRED_$$hz$ghost$$6 == _READ_HAS_OCCURRED_$$hz;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b37 ==> _WRITE_HAS_OCCURRED_$$hz ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assert {:tag "accessedOffsetsSatisfyPredicates"} _b36 ==> _READ_HAS_OCCURRED_$$hz ==> _WATCHED_OFFSET mod 1 == 0 mod 1;
    assume {:predicate "p6"} {:dominator_predicate "p5"} true;
    assert p6$1 ==> p4$1;
    assert p6$2 ==> p4$2;
    assert p4$1 ==> p0$1;
    assert p4$2 ==> p0$2;
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b29 ==> _WRITE_HAS_OCCURRED_$$hz ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($ny, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b28 ==> _WRITE_HAS_OCCURRED_$$hz ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b27 ==> _WRITE_HAS_OCCURRED_$$hz ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b26 ==> _READ_HAS_OCCURRED_$$hz ==> BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($ny, 1)));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b25 ==> _READ_HAS_OCCURRED_$$hz ==> BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2));
    assert {:do_not_predicate} {:tag "accessOnlyIfEnabledInEnclosingScopes"} {:thread 1} _b24 ==> _READ_HAS_OCCURRED_$$hz ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1)));
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 1} _b23 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1))) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($ny, 1))) && BV64_SLE($c4.0$1, $0$1) ==> p6$1;
    assert {:do_not_predicate} {:tag "conditionsImplyingEnabledness"} {:thread 2} _b23 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($nx, 1))) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2)) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($ny, 1))) && BV64_SLE($c4.0$2, $0$2) ==> p6$2;
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 1} p6$1 ==> _b22 ==> p6$1 ==> BV64_SLT($c1.0$1, BV32_SEXT64(BV32_SUB($nx, 1))) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), $c1.0$1), 2)) && BV64_SLT($c2.0$1, BV32_SEXT64(BV32_SUB($ny, 1)));
    assert {:tag "conditionsImpliedByEnabledness"} {:thread 2} p6$2 ==> _b22 ==> p6$2 ==> BV64_SLT($c1.0$2, BV32_SEXT64(BV32_SUB($nx, 1))) && BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$2), $c1.0$2), 2)) && BV64_SLT($c2.0$2, BV32_SEXT64(BV32_SUB($ny, 1)));
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b21 ==> BV32_UGE($c4.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b21 ==> BV32_UGE($c4.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b20 ==> BV32_ULE($c4.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b20 ==> BV32_ULE($c4.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b19 ==> BV32_SGE($c4.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b19 ==> BV32_SGE($c4.0$2, v3$2);
    assert {:tag "loopBound"} {:thread 1} p6$1 ==> _b18 ==> BV32_SLE($c4.0$1, v3$1);
    assert {:tag "loopBound"} {:thread 2} p6$2 ==> _b18 ==> BV32_SLE($c4.0$2, v3$2);
    assert {:tag "loopCounterIsStrided"} {:thread 1} p6$1 ==> _b17 ==> $c4.0$1 mod 16 == v3$1 mod 16;
    assert {:tag "loopCounterIsStrided"} {:thread 2} p6$2 ==> _b17 ==> $c4.0$2 mod 16 == v3$2 mod 16;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 7} {:thread 1} (if _READ_HAS_OCCURRED_$$ex ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($ny), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny)), BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16))))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_y$1), BV64_MUL(16, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14)), 16), 1), 16)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)))), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 8174), 8192), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), BV64_ADD(BV64_ADD(BV64_ADD(BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16), BV32_ZEXT64(local_id_y$1)), BV64_MUL(16, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_y$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 14), 16))), 8146)) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 6} {:thread 1} (if _READ_HAS_OCCURRED_$$hz ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 5} {:thread 1} (if _READ_HAS_OCCURRED_$$ey ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SLE(BV32_ZEXT64(local_id_x$1), 31) then 1 else 0)), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(local_id_x$1), -8160) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_SEXT64($nx), BV64_ADD(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)))), 2)) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1))), BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32))))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV32_ZEXT64(local_id_x$1), BV64_MUL(32, (if BV64_SLT(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 0) then BV64_SUB(0, BV64_SDIV(BV64_SUB(BV64_ADD(BV64_SUB(0, BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30)), 32), 1), 32)) else BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)))), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_ADD(BV32_ZEXT64(group_id_x$1), BV64_MUL(256, BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(BV64_SUB(0, BV64_SREM(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32)), BV64_MUL(32, BV32_ZEXT64(group_id_x$1))), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 8190), 8192))) == BV64_SDIV(BV64_ADD(BV64_ADD(BV64_SUB(0, BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), (if BV32_SGE($nx, 2) then $nx else 1)))), 30), 32) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:procedure_wide_invariant} {:do_not_predicate} {:sourceloc_num 4} {:thread 1} (if _WRITE_HAS_OCCURRED_$$hz ==> BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV32_AND(BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 0) then 1 else 0)), BV1_ZEXT32((if BV64_SLE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), 8191) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($nx, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx), 0) then 1 else 0))), BV1_ZEXT32((if BV32_UGE($ny, BV32_ADD(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 2)) then 1 else 0))), BV1_ZEXT32((if BV32_UGE(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 0) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192)), BV64_MUL(32, BV32_ZEXT64(group_id_y$1))) then 1 else 0))), BV1_ZEXT32((if BV64_SGE(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_y$1)), 31), BV32_ZEXT64(BV32_UREM(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), 8192))) then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV64_ADD(BV64_MUL(32, BV32_ZEXT64(group_id_x$1)), BV32_ZEXT64(local_id_x$1)), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny), $nx))), 8192) == 0 then 1 else 0))), BV1_ZEXT32((if BV64_SREM(BV64_SUB(BV32_ZEXT64(local_id_y$1), BV32_ZEXT64(BV32_UREM(BV32_UDIV(BV32_MUL(8, _WATCHED_OFFSET), 8), $ny))), 16) == 0 then 1 else 0))) != 0 then 1 else 0) != 0;
    assert {:block_sourceloc} {:sourceloc_num 14} p6$1 ==> true;
    v7$1 := (if p6$1 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$1), 2)) else v7$1);
    v7$2 := (if p6$2 then BV64_SLT(31, BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$2), 2)) else v7$2);
    p7$1 := false;
    p7$2 := false;
    p8$1 := false;
    p8$2 := false;
    p9$1 := false;
    p9$2 := false;
    p8$1 := (if p6$1 && v7$1 then v7$1 else p8$1);
    p8$2 := (if p6$2 && v7$2 then v7$2 else p8$2);
    p7$1 := (if p6$1 && !v7$1 then !v7$1 else p7$1);
    p7$2 := (if p6$2 && !v7$2 then !v7$2 else p7$2);
    $0$1 := (if p7$1 then BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$1), 2) else $0$1);
    $0$2 := (if p7$2 then BV64_SUB(BV64_SUB(BV32_SEXT64($ny), $c2.0$2), 2) else $0$2);
    $0$1 := (if p8$1 then 31 else $0$1);
    $0$2 := (if p8$2 then 31 else $0$2);
    v8$1 := (if p6$1 then BV64_SLE($c4.0$1, $0$1) else v8$1);
    v8$2 := (if p6$2 then BV64_SLE($c4.0$2, $0$2) else v8$2);
    p9$1 := (if p6$1 && v8$1 then v8$1 else p9$1);
    p9$2 := (if p6$2 && v8$2 then v8$2 else p9$2);
    p6$1 := (if p6$1 && !v8$1 then v8$1 else p6$1);
    p6$2 := (if p6$2 && !v8$2 then v8$2 else p6$2);
    call {:sourceloc} {:sourceloc_num 19} _LOG_READ_$$hz(p9$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0), $$hz[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)]);
    assume {:do_not_predicate} {:check_id "check_state_0"} {:captureState "check_state_0"} {:sourceloc} {:sourceloc_num 19} true;
    call {:check_id "check_state_0"} {:sourceloc} {:sourceloc_num 19} _CHECK_READ_$$hz(p9$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0), $$hz[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)]);
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_READ_$$hz"} true;
    v9$1 := (if p9$1 then $$hz[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)] else v9$1);
    v9$2 := (if p9$2 then $$hz[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)] else v9$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v10$1 := (if p9$1 then _HAVOC_int$1 else v10$1);
    v10$2 := (if p9$2 then _HAVOC_int$2 else v10$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v11$1 := (if p9$1 then _HAVOC_int$1 else v11$1);
    v11$2 := (if p9$2 then _HAVOC_int$2 else v11$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v12$1 := (if p9$1 then _HAVOC_int$1 else v12$1);
    v12$2 := (if p9$2 then _HAVOC_int$2 else v12$2);
    havoc _HAVOC_int$1, _HAVOC_int$2;
    v13$1 := (if p9$1 then _HAVOC_int$1 else v13$1);
    v13$2 := (if p9$2 then _HAVOC_int$2 else v13$2);
    call {:sourceloc} {:sourceloc_num 24} _LOG_WRITE_$$hz(p9$1, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0), FADD64(FMUL64(-4618891777831180698, FSUB64(FADD64(FSUB64(v10$1, v11$1), v12$1), v13$1)), v9$1), $$hz[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)]);
    call _UPDATE_WRITE_READ_BENIGN_FLAG_$$hz(p9$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0));
    assume {:do_not_predicate} {:check_id "check_state_1"} {:captureState "check_state_1"} {:sourceloc} {:sourceloc_num 24} true;
    call {:check_id "check_state_1"} {:sourceloc} {:sourceloc_num 24} _CHECK_WRITE_$$hz(p9$2, BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0), FADD64(FMUL64(-4618891777831180698, FSUB64(FADD64(FSUB64(v10$2, v11$2), v12$2), v13$2)), v9$2));
    assume {:captureState "call_return_state_0"} {:procedureName "_CHECK_WRITE_$$hz"} true;
    $$hz[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)] := (if p9$1 then FADD64(FMUL64(-4618891777831180698, FSUB64(FADD64(FSUB64(v10$1, v11$1), v12$1), v13$1)), v9$1) else $$hz[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$1, $c1.0$1), BV32_SEXT64($ny)), BV64_ADD($c2.0$1, $c4.0$1)), 32, 0)]);
    $$hz[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)] := (if p9$2 then FADD64(FMUL64(-4618891777831180698, FSUB64(FADD64(FSUB64(v10$2, v11$2), v12$2), v13$2)), v9$2) else $$hz[BV_EXTRACT(BV64_ADD(BV64_MUL(BV64_ADD(v2$2, $c1.0$2), BV32_SEXT64($ny)), BV64_ADD($c2.0$2, $c4.0$2)), 32, 0)]);
    $c4.0$1 := (if p9$1 then BV64_ADD($c4.0$1, 16) else $c4.0$1);
    $c4.0$2 := (if p9$2 then BV64_ADD($c4.0$2, 16) else $c4.0$2);
    p6$1 := (if p9$1 then true else p6$1);
    p6$2 := (if p9$2 then true else p6$2);
    goto $6.backedge, $6.tail;

  $6.tail:
    assume !p6$1 && !p6$2;
    $c2.0$1 := (if p5$1 then BV64_ADD($c2.0$1, 8192) else $c2.0$1);
    $c2.0$2 := (if p5$2 then BV64_ADD($c2.0$2, 8192) else $c2.0$2);
    p4$1 := (if p5$1 then true else p4$1);
    p4$2 := (if p5$2 then true else p4$2);
    goto $4.backedge, $4.tail;

  $4.tail:
    assume !p4$1 && !p4$2;
    $c1.0$1 := (if p1$1 then BV64_ADD($c1.0$1, 8192) else $c1.0$1);
    $c1.0$2 := (if p1$2 then BV64_ADD($c1.0$2, 8192) else $c1.0$2);
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

  $4.backedge:
    assume {:backedge} p4$1 || p4$2;
    assume {:captureState "loop_back_edge_state_1_0"} true;
    goto $4;

  $6.backedge:
    assume {:backedge} p6$1 || p6$2;
    assume {:captureState "loop_back_edge_state_2_0"} true;
    goto $6;
}



axiom (if group_size_z == 1 then 1 else 0) != 0;

axiom (if num_groups_z == 1 then 1 else 0) != 0;

axiom (if group_size_x == 32 then 1 else 0) != 0;

axiom (if group_size_y == 16 then 1 else 0) != 0;

axiom (if num_groups_x == 32 then 1 else 0) != 0;

axiom (if num_groups_y == 16 then 1 else 0) != 0;

axiom (if global_offset_x == 0 then 1 else 0) != 0;

axiom (if global_offset_y == 0 then 1 else 0) != 0;

axiom (if global_offset_z == 0 then 1 else 0) != 0;

const {:local_id_z} local_id_z$1: int;

const {:local_id_z} local_id_z$2: int;

const {:group_id_z} group_id_z$1: int;

const {:group_id_z} group_id_z$2: int;

const {:existential true} _b0: bool;

const {:existential true} _b1: bool;

const {:existential true} _b2: bool;

function {:inline true} BV32_ULE(x: int, y: int) : bool
{
  x <= y
}

const {:existential true} _b3: bool;

const {:existential true} _b4: bool;

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

const _WATCHED_VALUE_$$ex: int;

procedure {:inline 1} _LOG_READ_$$ex(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$ex;



implementation {:inline 1} _LOG_READ_$$ex(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ex == _value then true else _READ_HAS_OCCURRED_$$ex);
    return;
}



procedure _CHECK_READ_$$ex(_P: bool, _offset: int, _value: int);
  requires {:source_name "ex"} {:array "$$ex"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ex && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ex);
  requires {:source_name "ex"} {:array "$$ex"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ex && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ex: bool;

procedure {:inline 1} _LOG_WRITE_$$ex(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$ex, _WRITE_READ_BENIGN_FLAG_$$ex;



implementation {:inline 1} _LOG_WRITE_$$ex(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ex == _value then true else _WRITE_HAS_OCCURRED_$$ex);
    _WRITE_READ_BENIGN_FLAG_$$ex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ex == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ex);
    return;
}



procedure _CHECK_WRITE_$$ex(_P: bool, _offset: int, _value: int);
  requires {:source_name "ex"} {:array "$$ex"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ex != _value);
  requires {:source_name "ex"} {:array "$$ex"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ex && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ex != _value);
  requires {:source_name "ex"} {:array "$$ex"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ex(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$ex;



implementation {:inline 1} _LOG_ATOMIC_$$ex(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ex := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ex);
    return;
}



procedure _CHECK_ATOMIC_$$ex(_P: bool, _offset: int);
  requires {:source_name "ex"} {:array "$$ex"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ex && _WATCHED_OFFSET == _offset);
  requires {:source_name "ex"} {:array "$$ex"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ex && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ex(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$ex;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ex(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ex := (if _P && _WRITE_HAS_OCCURRED_$$ex && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ex);
    return;
}



const _WATCHED_VALUE_$$ey: int;

procedure {:inline 1} _LOG_READ_$$ey(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$ey;



implementation {:inline 1} _LOG_READ_$$ey(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then true else _READ_HAS_OCCURRED_$$ey);
    return;
}



procedure _CHECK_READ_$$ey(_P: bool, _offset: int, _value: int);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$ey);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$ey: bool;

procedure {:inline 1} _LOG_WRITE_$$ey(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$ey, _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:inline 1} _LOG_WRITE_$$ey(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then true else _WRITE_HAS_OCCURRED_$$ey);
    _WRITE_READ_BENIGN_FLAG_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$ey);
    return;
}



procedure _CHECK_WRITE_$$ey(_P: bool, _offset: int, _value: int);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey != _value);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$ey != _value);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$ey(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$ey;



implementation {:inline 1} _LOG_ATOMIC_$$ey(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$ey := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$ey);
    return;
}



procedure _CHECK_ATOMIC_$$ey(_P: bool, _offset: int);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);
  requires {:source_name "ey"} {:array "$$ey"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$ey;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$ey(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$ey := (if _P && _WRITE_HAS_OCCURRED_$$ey && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$ey);
    return;
}



const _WATCHED_VALUE_$$hz: int;

procedure {:inline 1} _LOG_READ_$$hz(_P: bool, _offset: int, _value: int);
  modifies _READ_HAS_OCCURRED_$$hz;



implementation {:inline 1} _LOG_READ_$$hz(_P: bool, _offset: int, _value: int)
{

  log_access_entry:
    _READ_HAS_OCCURRED_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz == _value then true else _READ_HAS_OCCURRED_$$hz);
    return;
}



procedure _CHECK_READ_$$hz(_P: bool, _offset: int, _value: int);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:write_read} !(_P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset && _WRITE_READ_BENIGN_FLAG_$$hz);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:atomic_read} !(_P && _ATOMIC_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);



var _WRITE_READ_BENIGN_FLAG_$$hz: bool;

procedure {:inline 1} _LOG_WRITE_$$hz(_P: bool, _offset: int, _value: int, _value_old: int);
  modifies _WRITE_HAS_OCCURRED_$$hz, _WRITE_READ_BENIGN_FLAG_$$hz;



implementation {:inline 1} _LOG_WRITE_$$hz(_P: bool, _offset: int, _value: int, _value_old: int)
{

  log_access_entry:
    _WRITE_HAS_OCCURRED_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz == _value then true else _WRITE_HAS_OCCURRED_$$hz);
    _WRITE_READ_BENIGN_FLAG_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz == _value then _value != _value_old else _WRITE_READ_BENIGN_FLAG_$$hz);
    return;
}



procedure _CHECK_WRITE_$$hz(_P: bool, _offset: int, _value: int);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:write_write} !(_P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz != _value);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:read_write} !(_P && _READ_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset && _WATCHED_VALUE_$$hz != _value);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:atomic_write} !(_P && _ATOMIC_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _LOG_ATOMIC_$$hz(_P: bool, _offset: int);
  modifies _ATOMIC_HAS_OCCURRED_$$hz;



implementation {:inline 1} _LOG_ATOMIC_$$hz(_P: bool, _offset: int)
{

  log_access_entry:
    _ATOMIC_HAS_OCCURRED_$$hz := (if _P && _TRACKING && _WATCHED_OFFSET == _offset then true else _ATOMIC_HAS_OCCURRED_$$hz);
    return;
}



procedure _CHECK_ATOMIC_$$hz(_P: bool, _offset: int);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:write_atomic} !(_P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);
  requires {:source_name "hz"} {:array "$$hz"} {:race} {:read_atomic} !(_P && _READ_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset);



procedure {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$hz(_P: bool, _offset: int);
  modifies _WRITE_READ_BENIGN_FLAG_$$hz;



implementation {:inline 1} _UPDATE_WRITE_READ_BENIGN_FLAG_$$hz(_P: bool, _offset: int)
{

  _UPDATE_BENIGN_FLAG:
    _WRITE_READ_BENIGN_FLAG_$$hz := (if _P && _WRITE_HAS_OCCURRED_$$hz && _WATCHED_OFFSET == _offset then false else _WRITE_READ_BENIGN_FLAG_$$hz);
    return;
}



var _TRACKING: bool;

function {:inline true} BV32_SGT(x: int, y: int) : bool
{
  x > y
}

function {:inline true} BV32_SLT(x: int, y: int) : bool
{
  x < y
}

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
