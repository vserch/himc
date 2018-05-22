methods::setClass("node")

#' A class to represent a maybe-node.
#'
#' Union between classes NULL and node
#' @export
methods::setClassUnion("maybeNode",c(NULL,"node"))

#' A class to represent a node.
#'
#' @slot name A character vector
#' @slot snps A list
#' @slot req A list
#' @slot children A list
#' @export
methods::setClass("node",slots = c(name="character",snps="list",req="list",children="list"))

node_l0 <- methods::new("node",name="L0",snps=list("9042T","9347G","5442C"),req=list(),children=list())
node_a2 <- methods::new("node",name="A2",snps=list("12007A","16111T"),req=list(),children=list())
node_a <- methods::new("node",name="A",snps=list("1736G"),req=list(),children=list(node_a2))
node_x2 <- methods::new("node",name="X2",snps=list("1719A"),req=list("6371T"),children=list())
node_x <- methods::new("node",name="X",snps=list("6371T","14470C"),req=list("6371T"),children=list(node_x2))
node_k <- methods::new("node",name="K",snps=list("10550G"),req=list(),children=list())
node_u8b <- methods::new("node",name="U8b",snps=list("9055A"),req=list(),children=list(node_k))
node_u <- methods::new("node",name="U",snps=list("12308G"),req=list(),children=list(node_u8b))
node_t1 <- methods::new("node",name="T1",snps=list("16189C"),req=list(),children=list())
node_t <- methods::new("node",name="T",snps=list("13368A","4917G"),req=list(),children=list(node_t1))
node_j <- methods::new("node",name="J",snps=list("13708A"),req=list("10398G"),children=list())
node_jt <- methods::new("node",name="JT",snps=list("11251G","15452A"),req=list(),children=list(node_t))
node_b2 <- methods::new("node",name="B2",snps=list("4977C","9950C","11177T"),req=list(),children=list())
node_b4bde <- methods::new("node",name="B4b'd'e",snps=list("15535T"),req=list(),children=list(node_b2))
node_b5 <- methods::new("node",name="B5",snps=list("9950C"),req=list("10398G"),children=list())
node_v <- methods::new("node",name="V",snps=list("4580A"),req=list(),children=list())
node_h2a2a <- methods::new("node",name="H2a2a",snps=list("15326A"),req=list(),children=list())
node_h2a <- methods::new("node",name="H2a",snps=list("4769A"),req=list(),children=list(node_h2a2a))
node_h2 <- methods::new("node",name="H2",snps=list("1438A"),req=list(),children=list(node_h2a))
node_h <- methods::new("node",name="H",snps=list("7028C"),req=list(),children=list(node_h2))
node_hv <- methods::new("node",name="HV",snps=list("14766C"),req=list(),children=list(node_h,node_v))
node_r <- methods::new("node",name="R",snps=list("12705C"),req=list(),children=list(node_u,node_jt,node_b4bde,node_hv))
node_i <- methods::new("node",name="I",snps=list("16391A"),req=list("16391A","1719A","10400C","15043A"),children=list())
node_n1a1b <- methods::new("node",name="N1a1b",snps=list("8251A"),req=list("8251A","1719A","10400C","15043A"),children=list(node_i))
node_n1a1 <- methods::new("node",name="N1a1",snps=list("1719A","15043A","10398G"),req=list("10398G","15043A","1719A","10400C"),children=list(node_n1a1b))
node_w <- methods::new("node",name="W",snps=list("11947G","8251A","3505G"),req=list("12414C"),children=list())
node_n <- methods::new("node",name="N",snps=list("10398A"),req=list("10398A"),children=list(node_a,node_x,node_r,node_w))
node_c <- methods::new("node",name="C",snps=list("3552A","14318C","13263G"),req=list(),children=list())
node_d1 <- methods::new("node",name="D1",snps=list("2092T"),req=list(),children=list())
node_d2 <- methods::new("node",name="D2",snps=list("8703T"),req=list(),children=list())
node_d4 <- methods::new("node",name="D4",snps=list("8414T","14668T"),req=list(),children=list(node_d1,node_d2))
node_d <- methods::new("node",name="D",snps=list("5178A"),req=list("4883T"),children=list(node_d4))
node_m <- methods::new("node",name="M",snps=list("10400T"),req=list(),children=list(node_c,node_d))
node_k1 <- methods::new("node",name="K1",snps=list("10398G"),req=list(),children=list())
node_k_alt <- methods::new("node",name="K",snps=list("10550G"),req=list("10398A"),children=list(node_k1))
node_u8b_alt <- methods::new("node",name="U8b",snps=list("9055A"),req=list("10398A"),children=list(node_k_alt))
node_u_alt <- methods::new("node",name="U",snps=list("12308G"),req=list("10398A"),children=list(node_u8b_alt))
node_jt_alt <- methods::new("node",name="JT",snps=list("11251G","15452A"),req=list("11251G","15452A"),children=list(node_j))
node_r_alt <- methods::new("node",name="R",snps=list("12705C"),req=list("10398A","12705C"),children=list(node_b5,node_jt_alt,node_u_alt))
node_n_alt <- methods::new("node",name="N",snps=list("10398G"),req=list("10398A"),children=list(node_n1a1,node_r_alt))
node_l3 <- methods::new("node",name="L3",snps=list("1018G"),req=list(),children=list(node_n,node_m,node_n_alt))
node_l34 <- methods::new("node",name="L3'4",snps=list("3594C"),req=list(),children=list(node_l3))
node_l2 <- methods::new("node",name="L2",snps=list("10115C"),req=list(),children=list())
node_l2346 <- methods::new("node",name="L2'3'4'6",snps=list("825T","13506C"),req=list(),children=list(node_l34,node_l2))
node_l23456 <- methods::new("node",name="L2'3'4'5'6",snps=list("8468C"),req=list(),children=list(node_l2346))
node_l1b <- methods::new("node",name="L1b",snps=list("1438A"),req=list(),children=list())
node_l1 <- methods::new("node",name="L1",snps=list("13789C","14178C","14560A"),req=list(),children=list(node_l1b))
root <- methods::new("node",name="unclassified",snps=list(),req=list(),children=list(node_l0,node_l1,node_l23456))
