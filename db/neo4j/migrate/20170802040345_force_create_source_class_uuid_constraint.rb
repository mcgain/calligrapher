class ForceCreateSourceClassUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :SourceClass, :uuid, force: true
  end

  def down
    drop_constraint :SourceClass, :uuid
  end
end
