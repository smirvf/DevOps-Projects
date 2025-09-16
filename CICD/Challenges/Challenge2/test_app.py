import unittest

from appT import hello_world

class TestAppT(unittest.TestCase):
    def test_say_hello(self):
        self.assertEqual(hello_world(), "")
