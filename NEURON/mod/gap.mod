COMMENT
Gap junction similar to what is described in the Neuron book page 271
I modified r to cond (resistance to conductance)
ENDCOMMENT

NEURON {
	POINT_PROCESS Gap
	POINTER vgap
	RANGE cond, i
	NONSPECIFIC_CURRENT i
}
PARAMETER {
	cond = 1e-6 (micromho)
}
ASSIGNED { 
	v (millivolt)
	vgap (millivolt)
	i (nanoamp) 
}
BREAKPOINT {
	i = (v - vgap)*cond
}
