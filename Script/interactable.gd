class_name Interactable
extends Area3D



# Emitted when an Interactor starts looking at me.
signal focused(interactor: Interactor)
# Emitted when an Interactor stops looking at me.
signal unfocused(interactor: Interactor)
# Emitted when an Interactor interacts with me.
signal interacted(interactor: Interactor)
