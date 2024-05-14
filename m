Return-Path: <devicetree+bounces-66950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE9B8C5CC0
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 23:26:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73497282EF9
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 21:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B727181333;
	Tue, 14 May 2024 21:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="r8wPE+m4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FBC1E491
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 21:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715722003; cv=none; b=B881vPF2MIY2h1VExfkzNh/R/5JPgttaiAXHtnDrzG1XkeOwuTX3AFl8dYUKZQy3bJ/nQCIRByyfr8y/AT3RVbAk8eo595Hn9XseUD2cannuPIWyZZaUTv1vDVKprRFaTBoDRnoBkfW0d7fyeNccbC1qObP3dDO3M4LGH/f3S90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715722003; c=relaxed/simple;
	bh=enNUzQMVDP7aC4H06We94AucIa+j8wqf3udM0d9vbDE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CSZF0MR9/jsynl+FQNTc1Q3ls43uO09R1zkGZh0cuyuIDQYwIpWcjPEFtK5Iw6mT1OLZbtbFD163j9h62Xz9f6KMxaYHiXqbeIwvgNKz1PV1hJ9uRVuPe55Yys62Nj7cE2l1FQ0GurgdNI3DAmC4iRgFoLhkdUr1AUxkmogAmHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=r8wPE+m4; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 44EKus2e028824;
	Tue, 14 May 2024 21:26:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : content-transfer-encoding : mime-version; s=pp1;
 bh=9C3rW6kcDGgCn5l1NGfsnaKBGns0kOKzqDFKnbrdSNM=;
 b=r8wPE+m475P6VHavlhU1BfCZW6Sz/HbCFxlVy71yBMruV+OW/rc6MrfLjOPrhS0kTRE4
 H5BXuaxH6ghlMFVjsvPa7WvW/F08ttPa/t9CcTPqLjwSpMosW7Lcw4MrMfylnoBRWMzA
 FWgfSxmgj9fV/ZnMIgPWJkSZ0QmO9T5YtUfOdlpwMBfj0Y2kgdPAzW90HKBsscK1gPDH
 vydHkCb65s7U+SLVg7i8Yha4g8/N3F47iJdgUsBqWszyXE7rISMiSq8Kgk84/T/RICmW
 NH3UIkyTqrcLo2DHCATPscrJ8CZ0POkFHOqHDN0b1QxC822ufmV8LaxxXOc/4qmufMh7 rg== 
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y4fehr328-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 May 2024 21:26:26 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 44EI6oRt020403;
	Tue, 14 May 2024 21:25:58 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3y2kcyywms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 May 2024 21:25:58 +0000
Received: from smtpav05.dal12v.mail.ibm.com (smtpav05.dal12v.mail.ibm.com [10.241.53.104])
	by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 44ELPtXT49218108
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 May 2024 21:25:57 GMT
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 79E7558069;
	Tue, 14 May 2024 21:25:55 +0000 (GMT)
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3E1CB58056;
	Tue, 14 May 2024 21:25:55 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.107.19])
	by smtpav05.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue, 14 May 2024 21:25:55 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, eajames@linux.ibm.com,
        andrew@codeconstruct.com.au, joel@jms.id.au, conor+dt@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Subject: [PATCH v5] dt-bindings: arm: aspeed: add IBM P11 BMC boards
Date: Tue, 14 May 2024 16:25:55 -0500
Message-Id: <20240514212555.158788-1-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: Zre2XvoxiRsrhMVYLUpmFbsTcxjD_fBW
X-Proofpoint-GUID: Zre2XvoxiRsrhMVYLUpmFbsTcxjD_fBW
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-14_13,2024-05-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 spamscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=686 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2405140154

Document two new AST2600 BMC boards for IBM P11 systems.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
This patch was previously included in
https://lore.kernel.org/all/20240429210131.373487-1-eajames@linux.ibm.com/

 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 95113df178cc5..e386d0ebfb14a 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -86,7 +86,9 @@ properties:
               - facebook,harma-bmc
               - facebook,minerva-cmc
               - facebook,yosemite4-bmc
+              - ibm,blueridge-bmc
               - ibm,everest-bmc
+              - ibm,fuji-bmc
               - ibm,rainier-bmc
               - ibm,system1-bmc
               - ibm,tacoma-bmc
-- 
2.39.3


