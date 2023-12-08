# active_record_monkey_patch.rb
# creating this to revert:
# https://github.com/rails/rails/commit/5f6efdab0f9acef8d04ca9a018667bfcd1cf59b5
# Beause our schema is customer specific, we do not want to add the schema to schema.rb

module ActiveRecord
  module ConnectionAdapters
    module PostgreSQL
      class SchemaDumper < ConnectionAdapters::SchemaDumper
        def schemas(stream)
        end
      end
    end
  end
end
