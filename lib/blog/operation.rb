# auto_register: false

require "dry/transaction/operation"

module Blog
  class Operation
    include Dry::Transaction::Operation
  end
end
