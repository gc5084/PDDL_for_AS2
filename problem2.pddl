(define (problem grid4x4_3k)
(:domain a2-grid)
(:objects 	node0-0 node0-1 node0-2 node0-3
		node1-0 node1-1 node1-2 node1-3
		node2-0 node2-1 node2-2 node2-3
		node3-0 node3-1 node3-2 node3-3
		box0 box1 box2 key0 key1 key2
		red green blue
		hand0 hand1)

(:init (place node0-0) (place node0-1) (place node0-2) (place node0-3)
	(place node1-0) (place node1-1) (place node1-2) (place node1-3)
	(place node2-0) (place node2-1) (place node2-2) (place node2-3)
	(place node3-0) (place node3-1) (place node3-2) (place node3-3)
	(conn node0-0 node1-0) (conn node0-0 node0-1)
	(conn node0-1 node0-0) (conn node0-1 node1-1) (conn node0-1 node0-2)
	(conn node0-2 node0-1) (conn node0-2 node1-2) (conn node0-2 node0-3)
	(conn node0-3 node0-2) (conn node0-3 node1-3)
	(conn node1-0 node0-0) (conn node1-0 node1-1) (conn node1-0 node2-0)
	(conn node1-1 node0-1) (conn node1-1 node1-0) (conn node1-1 node2-1) (conn node1-1 node1-2)
	(conn node1-2 node0-2) (conn node1-2 node1-1) (conn node1-2 node2-2) (conn node1-2 node1-3)
	(conn node1-3 node0-3) (conn node1-3 node1-2) (conn node1-3 node2-3)
	(conn node2-0 node1-0) (conn node2-0 node2-1) (conn node2-0 node3-0)
	(conn node2-1 node1-1) (conn node2-1 node2-0) (conn node2-1 node3-1) (conn node2-1 node2-2)
	(conn node2-2 node1-2) (conn node2-2 node2-1) (conn node2-2 node3-2) (conn node2-2 node2-3)
	(conn node2-3 node1-3) (conn node2-3 node2-2) (conn node2-3 node3-3)
	(conn node3-0 node2-0) (conn node3-0 node3-1) 
	(conn node3-1 node2-1) (conn node3-1 node3-0) (conn node3-1 node3-2)
	(conn node3-2 node2-2) (conn node3-2 node3-1) (conn node3-2 node3-3)
	(conn node3-3 node2-3) (conn node3-3 node3-2)
	(color red) (color green) (color blue)
	(box box0) (at box0 node1-1) (locked box0) (box-color box0 red)
	(box box1) (at box1 node2-2) (locked box1) (box-color box1 green)
	(box box2) (at box2 node3-1) (locked box2) (box-color box2 blue)
	(key key0) (at key0 node0-2) (key-color key0 red)
	(key key1) (at key1 node0-2) (key-color key1 green)
	(key key2) (at key2 node2-1) (key-color key2 blue)
	(hand hand0) (hand hand1) (handfree hand0) (handfree hand1)
	(at-agent node0-0)
)

(:goal (and (open box0) (open box1) (open box2) (at-agent node0-0)))	


)
