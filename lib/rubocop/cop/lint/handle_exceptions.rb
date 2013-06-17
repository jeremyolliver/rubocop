# encoding: utf-8

module Rubocop
  module Cop
    module Lint
      class HandleExceptions < Cop
        MSG = 'Do not suppress exceptions.'

        def on_resbody(node)
          _exc_list_node, _exc_var_node, body_node = *node

          add_offence(:warning, node.loc.expression, MSG) unless body_node

          super
        end
      end
    end
  end
end