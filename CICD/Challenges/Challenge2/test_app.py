import unittest

from appT import hello_world

class TestAppT(unittest.TestCase):
    def test_say_hello(self):
        self.assertEqual(hello_world(), "Hello, World! This is a placeholder text to test my CICD Code")
