defvector W2Q 2 2 2 1 1
main {
	set sh [hcp south]
	reject if {$sh>10} {$sh<5} {[clubs south]>3} {[diamonds south]>3}
	set s [spades south]
	if {$s == 6} {
		reject if {[hearts south]>3} {[W2Q south spades]<=3}
		accept
	}
	reject if {$s>3}
	set h [hearts south]
	reject if {$h!=6} {[W2Q south hearts]<=3}
	accept
}