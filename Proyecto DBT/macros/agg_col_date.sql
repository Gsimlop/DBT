{% macro add_audit_columns(model_name=none) %}
    , current_timestamp as loaded_at
    , '{{ model_name if model_name else this.name }}' as source_model
    , current_user() as loaded_by
{% endmacro %}
