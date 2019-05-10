# GDPR semantics demo

**Test-driven approach towards GDPR compliance**

An organisation using personal data should document its data governance processes to maintain and demonstrate compliance with the General Data Protection Regulation (GDPR). As processes evolve, their documentation should reflect these changes with an assessment showing ongoing compliance. We show how semantic representations of processes are useful towards maintaining ongoing GDPR compliance by using a test-driven approach that generates and checks constraints for adherence to GDPR requirements. We first check whether all required information has been documented, and then whether it is compliant. We prototype our testing approach using a real-world website’s consent mechanism for GDPR compliance, and persist results towards generating documentation. We use previously-published ontologies to represent processes (GDPRov), consent (GConsent), and GDPR (GDPRtEXT), with SHACL used to test requirement constraints.
See [https://w3id.org/GDPRep/semantic-tests](https://w3id.org/GDPRep/semantic-tests) for more information.

This repository holds the test data to demo this approach. See the accompanying [paper](docs/paper/paper.html) for more information.