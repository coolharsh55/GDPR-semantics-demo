# GDPR semantics demo

**Test-driven approach towards GDPR compliance**

An organisation using personal data should document its data governance processes to maintain and demonstrate compliance with the General Data Protection Regulation (GDPR). As processes evolve, their documentation should reflect these changes with an assessment showing ongoing compliance. We show how semantic representations of processes are useful towards maintaining ongoing GDPR compliance by using a test-driven approach that generates and checks constraints for adherence to GDPR requirements. We first check whether all required information has been documented, and then whether it is compliant. We prototype our testing approach using a real-world website’s consent mechanism for GDPR compliance, and persist results towards generating documentation. We use previously-published ontologies to represent processes (GDPRov), consent (GConsent), and GDPR (GDPRtEXT), with SHACL used to test requirement constraints.
See [https://w3id.org/GDPRep/semantic-tests](https://w3id.org/GDPRep/semantic-tests) for more information.

This repository holds the test data to demo this approach. See the (accompanying paper)[https://harshp.com/research/publications/029-test-driven-approach-gdpr-compliance].

> Cite as: Pandit H.J., O’Sullivan D., Lewis D. (2019) Test-Driven Approach Towards GDPR Compliance. In: Acosta M., Cudré-Mauroux P., Maleshkova M., Pellegrini T., Sack H., Sure-Vetter Y. (eds) Semantic Systems. The Power of AI and Knowledge Graphs. SEMANTiCS 2019. Lecture Notes in Computer Science, vol 11702. Springer, Cham. https://doi.org/10.1007/978-3-030-33220-4_2

```bibtex
@InProceedings{10.1007/978-3-030-33220-4_2,
author="Pandit, Harshvardhan J.
and O'Sullivan, Declan
and Lewis, Dave",
editor="Acosta, Maribel
and Cudr{\'e}-Mauroux, Philippe
and Maleshkova, Maria
and Pellegrini, Tassilo
and Sack, Harald
and Sure-Vetter, York",
title="Test-Driven Approach Towards GDPR Compliance",
booktitle="Semantic Systems. The Power of AI and Knowledge Graphs",
year="2019",
publisher="Springer International Publishing",
address="Cham",
pages="19--33",
abstract="An organisation using personal data should document its data governance processes to maintain and demonstrate compliance with the General Data Protection Regulation (GDPR). As processes evolve, their documentation should reflect these changes with an assessment showing ongoing compliance. Through this paper, we show how semantic representations of processes are useful towards maintaining ongoing GDPR compliance by using a test-driven approach that generates and checks constraints for adherence to GDPR requirements. We first check whether all required information has been documented, and then whether it is compliant. We prototype our testing approach using a real-world website's consent mechanism for GDPR compliance, and persist results towards generating documentation. We use previously-published ontologies to represent processes (GDPRov), consent (GConsent), and GDPR (GDPRtEXT), with SHACL used to test requirement constraints.",
isbn="978-3-030-33220-4"
}

```