(define (domain a2-grid)
(:requirements :strips)
(:predicates (conn ?x ?y)
			(key-color ?k ?c)
			(box-color ?b ?c)
			(at ?r ?x )
			(at-agent ?x)
			(place ?p)
			(key ?k)
			(color ?c)
			(box ?b)
			(locked ?b)
			(open ?b)
			(holding ?k ?h)
			(hand ?h)
			(handfree ?h))


(:action move
:parameters (?curpos ?nextpos)
:precondition (and (place ?curpos) (place ?nextpos)
			(at-agent ?curpos) (conn ?curpos ?nextpos))
:effect (and (at-agent ?nextpos) (not(at-agent ?curpos))))


(:action pickup
:parameters (?curpos ?key ?hand)
:precondition (and (place ?curpos) (key ?key) (hand ?hand)
			(at-agent ?curpos) (at ?key ?curpos) (handfree ?hand))
:effect (and (holding ?key ?hand) (not (at ?key ?curpos)) (not (handfree ?hand)) )
)

(:action drop
:parameters (?curpos ?key ?hand)
:precondition (and (place ?curpos) (key ?key) (hand ?hand)
				(at-agent ?curpos) (holding ?key ?hand))
:effect (and (at ?key ?curpos)  (handfree ?hand)  (not (holding ?key ?hand)))
)

(:action unlock
:parameters (?curpos ?key ?box ?color ?hand)
:precondition ( and (place ?curpos) (key ?key) (box ?box) (color ?color) (hand ?hand)
				(key-color ?key ?color) (box-color ?box ?color)
				(at-agent ?curpos) (at ?box ?curpos) (locked ?box) (holding ?key ?hand))
				
:effect (and (handfree ?hand) (not (holding ?key ?hand)) (open ?box) (not (locked ?box)))
)

)




             
