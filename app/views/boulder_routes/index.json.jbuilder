json.boulder_routes do
  json.partial!('boulder_route', collection: @boulder_routes, as: :boulder_route)
end
