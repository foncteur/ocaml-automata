(***********)
(*Main file*)
(***********)

let a = 2;;
print_int a;;
print_newline();;


type state = int;;
type letter = A | B | C;; (*TODO*)
type alphabet = letter list
type word = letter list;;
type transition_fun = state -> letter -> state;;


type automata_fdc = {
  sigma : alphabet ;
  states_set : state list ;
  initial_state : state ;
  final_states : state list ;
  transitions : transition_fun ;
};;

let mk_automata_fdc (si : alphabet) (st : state list) (init : state) (final : state list) (trans : transition_fun) : automata_fdc =
  {sigma = si; states_set = st; initial_state = init; final_states = final; transitions = trans}
;;

let get_alphabet_fdc (afdc : automata_fdc) : alphabet =
  afdc.sigma
;;

let get_states_fdc (afdc : automata_fdc) =
  afdc.states_set
;;

let get_initial_fdc (afdc : automata_fdc) =
  afdc.initial_state
;;

let get_final_fdc (afdc : automata_fdc) =
  afdc.final_states
;;

let get_trans (afdc : automata_fdc) =
  afdc.transitions
;;


let rec accepts_word_fdc (afdc : automata_fdc) (w : word) : bool =
  match w with
  | [] -> (List.mem afdc.initial_state afdc.final_states)
  | t::q -> let new_afdc = mk_automata_fdc (afdc.sigma) (afdc.states_set) (afdc.transitions (afdc.initial_state) t) (afdc.final_states) (afdc.transitions) in
    accepts_word_fdc new_afdc q
;;


