require 'neo4j'
require 'pry-byebug'

require 'neo4j/core/cypher_session/adaptors/http'
neo4j_adaptor = Neo4j::Core::CypherSession::Adaptors::HTTP.new('http://0.0.0.0:7474')
Neo4j::ActiveBase.on_establish_session { Neo4j::Core::CypherSession.new(neo4j_adaptor) }


class SourceClass
  include Neo4j::ActiveNode

  property :name

  has_many :out, :source_methods, type: :source_method
end

class SourceMethod
  include Neo4j::ActiveNode
  property :line_number

  has_many :in, :source_class, type: :source_class
end

class Call
  include Neo4j::ActiveNode

  has_one :out, :source_method, type: :source_method
  has_many :out, :children, type: :call
end
require'pry-byebug';binding.pry
'hello'
