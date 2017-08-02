class ForceCreateCallUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :Call, :uuid, force: true
  end

  def down
    drop_constraint :Call, :uuid
  end
end
