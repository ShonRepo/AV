state = orientation.up
enum orientation
{
	left,right,up,down 
}

audio_falloff_set_model(audio_falloff_linear_distance);
audio_play_sound_at(good_wave, x, y, 0, 10, 50, 1, true, 0);