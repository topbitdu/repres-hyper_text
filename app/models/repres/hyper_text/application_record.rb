##
# Application record 是模块内所有模型的抽象基类。

class Repres::HyperText::ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
