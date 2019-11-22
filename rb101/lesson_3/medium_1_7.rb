munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.keys.each do |family_member|
    # family_member["age"] += 42
    puts family_member["age"]

    # family_member["gender"] = "other"
    puts family_member["gender"]

  end
end

mess_with_demographics(munsters)
