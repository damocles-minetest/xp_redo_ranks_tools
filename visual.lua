-- flat ranks
xp_redo.create_entity_properties = function(rank)
  return {
    visual = "upright_sprite",
    visual_size = {x=0.5,y=0.5},
    textures = {rank.icon, rank.icon},
    physical = false,
    collide_with_objects = false,
    pointable = false,
    static_save = false
  }
end
