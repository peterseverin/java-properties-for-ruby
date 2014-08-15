require 'java_properties/utf8'

class TestJavaProperties < Test::Unit::TestCase
	def test_utf8_encode_decode
		unencoded = 'test'
		encoded = JavaProperties::Encoding::Utf8.encode(unencoded)
		decoded = JavaProperties::Encoding::Utf8.decode(encoded)
		assert_equal unencoded, decoded
	end

	def test_utf8_encode_decode_russian
		unencoded = "\320\240\320\276\320\264\320\270\320\276\320\275"
		encoded = JavaProperties::Encoding::Utf8.encode(unencoded)
		decoded = JavaProperties::Encoding::Utf8.decode(encoded)
		assert_equal unencoded, decoded
	end

	def test_utf8_encode_decode_finnish
		unencoded = "\303\244e"
		encoded = JavaProperties::Encoding::Utf8.encode(unencoded)
		decoded = JavaProperties::Encoding::Utf8.decode(encoded)
		assert_equal unencoded, decoded
	end

	def test_utf8_decode
		decoded = JavaProperties::Encoding::Utf8.decode('\uac00')
		assert_equal "\352\260\200", decoded
	end

	def test_utf8_decode2
		decoded = JavaProperties::Encoding::Utf8.decode('\u0420\u043e')
		assert_equal "\320\240\320\276", decoded
	end
end