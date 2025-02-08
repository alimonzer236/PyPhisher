#!/usr/bin/env python

from setuptools import setup

version = open("files/version.txt").read().strip()
long_description = open("README.md").read().strip()

setup(
    name='PyPhisher',
    version=version,
    description='Ultimate phishing tool in python with dual tunneling, 77 templates and many more!',
    long_description=long_description,
    long_description_content_type='text/markdown',
    author='alimonzer236',
    author_email='alimon3er236@gmail.com',
    license="MIT",
    url='https://github.com/alimonzer236/PyPhisher/',
    scripts=['pyphisher'],
    install_requires=["requests", "rich"]
)
