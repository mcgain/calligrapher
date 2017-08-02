class ForceCreateSourceMethodUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :SourceMethod, :uuid, force: true
  end

  def down
    drop_constraint :SourceMethod, :uuid
  end
end
