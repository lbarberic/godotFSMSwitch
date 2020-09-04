class_name Bullet
extends RigidBody2D

var counter: = 0
onready var animation_player = $AnimationPlayer
var damage: = 50.0

func destroy():
	animation_player.play("destroy")


func _on_body_entered(body):

	if body is Enemy:
		body.destroy(damage)
