# Patch jekyll-multiple-languages-plugin to support Ruby 3.3
module Dir
  class << self
    alias_method :exists?, :exist? unless respond_to?(:exists?)
  end
end
puts "[✓] Patch Dir.exists? carregado com sucesso!"