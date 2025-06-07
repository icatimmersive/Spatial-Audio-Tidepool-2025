function load(impname, chans){
	for(i = 0; i < chans; i++){
		outlet(0, "set", i+1, i+1, impname, i+1);
	}
}