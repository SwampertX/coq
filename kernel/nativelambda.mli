(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)
open Constr
open Environ
open Genlambda

(** This file defines the lambda code generation phase of the native compiler *)

type lambda = Nativevalues.t Genlambda.lambda

val is_lazy : constr -> bool

val lambda_of_constr : env -> evars -> Constr.constr -> lambda
