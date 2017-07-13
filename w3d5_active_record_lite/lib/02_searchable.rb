require_relative 'db_connection'
require_relative '01_sql_object'

module Searchable
  def where(params)
    where_line = params.keys.map { |key| "#{key} = ?" }.join(" AND ")
    para_values = params.values
    results = DBConnection.execute(<<-SQL, * para_values)
      SELECT
        *
      FROM
        #{table_name}
      WHERE
        #{where_line} = ?
    SQL

    results
  end
end

class SQLObject
  # Mixin Searchable here...
end
