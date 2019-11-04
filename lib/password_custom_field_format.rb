module Redmine
  module FieldFormat
    class PasswordFormat < StringFormat
        add 'password'
        self.searchable_supported = false
        self.form_partial = nil
        self.is_filter_supported = false

        def edit_tag(view, tag_id, tag_name, custom_value, options={})
          view.password_field_tag(tag_name, custom_value, {type: :password})
        end
    end
  end
end

Redmine::FieldFormat.add 'password', Redmine::FieldFormat::PasswordFormat
