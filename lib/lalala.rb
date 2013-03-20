module Lalala

  require "lalala/version"

  require 'rails/all'

  groups = Rails.groups(:assets => %w(development test)).map(&:to_sym)

  require 'activeadmin'
  require 'carrierwave'
  require 'closure_tree'
  require 'globalize3'
  require 'jquery-rails'
  require 'meta_search'
  require 'mini_magick'
  require 'redcarpet'
  require 'stringex'

  if groups.include?(:assets)
    require 'sass'
    require 'sass-rails'
    require 'compass-rails'

    require 'coffee_script/source'
    require 'coffee-rails'
    require 'sprockets/commonjs'

    require 'uglifier'
  end

  require 'lalala/engine'

  require 'lalala/views/tree_table_for'
  require 'lalala/views/index_as_tree_table'
  require 'lalala/markdown'

  module Core
    require 'lalala/core/class_inheritable_setting'
  end

  module Pages
    require 'lalala/pages/child_type_validator'
    require 'lalala/pages/path_handler'
  end

end
