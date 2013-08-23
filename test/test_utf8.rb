require 'java_properties/utf8'

class TestJavaProperties < Test::Unit::TestCase
	def test_utf8_encode_decode
		unencoded = 'test'
		encoded = JavaProperties::Encoding::Utf8.encode(unencoded)
		decoded = JavaProperties::Encoding::Utf8.decode(encoded)
		assert_equal unencoded, decoded
	end

	def test_utf8_decode
		decoded = JavaProperties::Encoding::Utf8.decode('\uac00')
		assert_equal "\352\260\200", decoded
	end
end