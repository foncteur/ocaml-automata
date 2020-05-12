(***********)
(*Interface*)
(***********)

type state;;
type letter;;
type alphabet;;
type word;;
type transition_fun;;
type automata_fdc;;

val mk_automata_fdc : alphabet -> state list -> state -> state list -> transition_fun -> automata_fdc;;
val get_alphabet_fdc : automata_fdc -> alphabet;;
val get_states_fdc : automata_fdc -> state list;;
val get_initial_fdc : automata_fdc -> state;;
val get_final_fdc : automata_fdc -> state list;;
val get_trans : automata_fdc -> transition_fun;;

val accepts_word_fdc : automata_fdc -> word -> bool;;


