# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :minitest do
  # with Minitest::Unit
  watch(%r{^test/.+_test\.rb})
  watch(%r{^app/(.+)\.rb})              { |m| "test/app/#{m[1]}_controller_test.rb" }
  watch(%r{^models/(.+)\.rb})           { |m| "test/models/#{m[1]}_test.rb" }
  watch(%r{^lib/(.*/)?([^/]+)\.rb})     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  watch(%r{^test/test_helper\.rb})      { 'test' }

  # with Minitest::Spec
  # watch(%r{^spec/(.*)_spec\.rb})
  # watch(%r{^lib/(.+)\.rb})         { |m| "spec/#{m[1]}_spec.rb" }
  # watch(%r{^spec/spec_helper\.rb}) { 'spec' }
end