using Godot;
using System;

public partial class main_menu : Node2D
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	public void _on_start_button_pressed()
	{
		GD.Print("Play button clicked");
		GetTree().ChangeSceneToFile("res://testscene.tscn");
	}
	
}
