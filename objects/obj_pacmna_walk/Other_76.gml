if(event_data[? "event_type"] == "sprite event") {
	switch(event_data[? "message"]){
		case "step":{
			//show_debug_message("step");
			audio_play_sound(snd_waka_un,1,0);
		}
	}	
}