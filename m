Return-Path: <devicetree+bounces-219008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0274B865B6
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 20:04:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80C451885A75
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 18:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3014628C860;
	Thu, 18 Sep 2025 18:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="iRO30896"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC2728489D
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758218665; cv=none; b=nv/kHyNOS+HBnya6mWMj8nweOO4VYI1cbVxA+BN7/QuATy7tRHItPMyd4fHZ4pGSW1J9OW3HSFHeLlU/iGmI7Ooy3bkcDE8LfBLjrzClleG4j8nQs4DdYMFGwPVmJMHsdqHpEP1gqhRlKIaJA4/dOMFeaOc7B+nOx7JcBoz7nf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758218665; c=relaxed/simple;
	bh=W0Q3qHRmI4NEaQgmei73T1z6QW0+SYmu+lHtEGoBVZw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aOo4gIE0g+95wZSqEy+SMTAeqvAb8oq8tmBvXEzo7j3Xshf1rzxXIo5GMfo5pWloNZopEjKFVxiJGMTjW8oR4fABVwfYKDHD2+8XA7sdEJtM8uTSWRdUkQ9NjGPoAZcmtZ0PA3trhVFg5Spo+CvfbzgTrCDRKS1LsB7YKC4YasY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=iRO30896; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58IFLaX4000328;
	Thu, 18 Sep 2025 18:04:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=KtNynSvFVjpudk4Te
	AKmNfR+UQ5kPia28l4BEDQM4xU=; b=iRO30896lBOjQwghXCCrYsVYcC2BDspMz
	9Rx2A4DHHpbecCpSveIxvTVacRv1/34rYOlePj0bqW2pktQ/CC/syFxaSksIUO7a
	BySxf95T5fSdCE1K7c2DX/CoIIK3sPi5EsW2N456loZHVwF/NYssgdLQVvS3R/Pw
	olGfB74mLKo4jlo+21hPyVVrmrDFYaEJoZCtKataLML0qgCGY7El9rPw2exZ1Fjm
	c98SvHsc16aKIdY3CBvyWhiks+B/OO4FeNnT/Av55hwdHl2ZFYr/QZlBE/i5CFCJ
	A4reOoHoal4TDcp0gbYkdEFE6VvCo5iRP4J5O4EQzI+2xLdGhhlAw==
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 498dtwk7u2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Sep 2025 18:04:12 +0000 (GMT)
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 58IGZFc2029514;
	Thu, 18 Sep 2025 18:04:11 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 495kb1891e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Sep 2025 18:04:11 +0000
Received: from smtpav03.dal12v.mail.ibm.com (smtpav03.dal12v.mail.ibm.com [10.241.53.102])
	by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 58II4Bb8524806
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 18 Sep 2025 18:04:11 GMT
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 09D185803F;
	Thu, 18 Sep 2025 18:04:11 +0000 (GMT)
Received: from smtpav03.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CD87D58060;
	Thu, 18 Sep 2025 18:04:10 +0000 (GMT)
Received: from slate16 (unknown [9.61.169.208])
	by smtpav03.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 18 Sep 2025 18:04:10 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v6 2/7] dt-bindings: arm: aspeed: add IBM Bonnell board
Date: Thu, 18 Sep 2025 13:03:57 -0500
Message-ID: <20250918180402.199373-3-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250918180402.199373-1-eajames@linux.ibm.com>
References: <20250918180402.199373-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Authority-Analysis: v=2.4 cv=EYvIQOmC c=1 sm=1 tr=0 ts=68cc499c cx=c_pps
 a=5BHTudwdYE3Te8bg5FgnPg==:117 a=5BHTudwdYE3Te8bg5FgnPg==:17
 a=yJojWOMRYYMA:10 a=VnNF1IyMAAAA:8 a=VwQbUJbxAAAA:8 a=3pJJXNp13jenLdaujSYA:9
X-Proofpoint-ORIG-GUID: xxzJ8fr7rVra0VjZ2F1qIVZe9AUBSB6G
X-Proofpoint-GUID: xxzJ8fr7rVra0VjZ2F1qIVZe9AUBSB6G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE4MDA2NSBTYWx0ZWRfXzrPTR3o39Spm
 9DfT2CR1fYMa4YVs1QW/JWc0q34fkzmEHHZDdqGhRs1GGM3J9hSDVThUSRBwRYDOknXZFYhMLnI
 Ecoa57ESiE7D9fwIPUx6XWzgI5xSXFDqy84gZ1oHukjSnlOpMiFlanlZAZVU2BOPyCQHAIWFs3d
 dm4yBltLVeY8ghwbHcxGmwBu1krXf+UvUT4NbWJvdOtRRS8pXUmXGNRiLAExWWTt6M9flaA4W9n
 /T+TgJG5iSDAP6Ma6A+VHSWvKDF59pxf6GYYKoW2fucMSUL29yVcfnlmHhlfF+bSniD5o+xEO0c
 Oul9BZgdYJC1CBXmoRzGb5N0PHMUuvqZP+P24frG9WmLwe7C95KqROw9883teY/KDhcQrlefdKY
 QiwoSMNU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-18_02,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 suspectscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509180065

Document the existing AST2600 BMC board for IBM P10 server.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index b2fcfcc4a3b9a..9730df98b945a 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -95,6 +95,7 @@ properties:
               - facebook,yosemite4-bmc
               - ibm,balcones-bmc
               - ibm,blueridge-bmc
+              - ibm,bonnell-bmc
               - ibm,everest-bmc
               - ibm,fuji-bmc
               - ibm,rainier-bmc
-- 
2.51.0


