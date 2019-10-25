json.breach_info do
  json.(breach, 	:id, :number, :name_of_covered_entity, :state, 
  					:business_associate_involved, :individuals_affected, 
  					:date_of_breach, :type_of_breach, :location_of_breached_information,
  					:date_posted_or_updated, :summary, :breach_start, :breach_end, :year, 
  					:created_at, :updated_at)
end
