#!/usr/bin/env groovy

pipeline {
	agent any
	stages {
		stage('\u2776 Build') {
			 steps {								
				sh '''sed -i 's+/home/blue/code/EtherTerm/src/+../src/+' linux/EtherTerm.mk'''
				sh '''sed -i 's+/home/merc/code/EtherTerm/src/+../src/+' linux/EtherTerm.mk'''
				dir ('linux') {
					sh 'make -f Makefile clean'
					sh 'make -f Makefile -j3'
				}
			 }
		}
	}
}
