Return-Path: <devicetree+bounces-205230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C21CB28698
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 21:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 892641CC8C53
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 19:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37D352BD5B2;
	Fri, 15 Aug 2025 19:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="GYF51Rxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D90220F2F
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 19:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755287271; cv=none; b=N6uDKiEovJ+kxj9XFsuVZg+zXRhHc0GHXzcPOHSfCgvhjrNVEQVwwskxqn1z9z/+Ot/4HodrZ6XrIGIc0aeuVDJ8x8LDAxqSkDfPhOgwWJbKCudm9FrH6ajFUXK20iy0G2TL6rouz3cvdoL9Q59mvBmGemeCz3yxrMroooUw2XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755287271; c=relaxed/simple;
	bh=oWYDcKuGIULB7CrJx0ee124+RyCD7qwjqONXpXpoWjk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F9LCZwwJuTpPkaCxPOciyMunasGtKtX4VVrPBtGeIxnRP6SOk1PO8MG6dO8FkYH9rkbgzckRn6gV565/U4raLjcJcmcNvvPu6cpJWlnkqWn81jh78CyvTfyE8GOlKFgSNBrmERAfjctihQKQk7uNxd7PcxMJS0bevsQfxfwJcv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=GYF51Rxj; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FIonrt022409;
	Fri, 15 Aug 2025 19:47:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=wB3GZ7BA20S/EiVo6
	8LEbZykCg00/1rIm9eGU1e+FcI=; b=GYF51RxjB5R8YD4oOYLapvakDJ5aXIEuz
	FnNJzDh4zaatFRvfUGfdITOPwz8Ry4Uj4G0jnilImmDhnOY8uMtmqqATwC5KM0Va
	QeIsLZ9pOJvPjgoaS5vW7gUkMgRAi08YBd31xtdTfw9a7Kuf/fYKJm20eF6OlQ4A
	bm1/bsBb+4Fo2nlwkcdmFcFbKisnBy0/MdNOaqHCFonXVSAsfs0aWPoBu7MXbtZl
	5vdTNJ5c3xP3CL1V8OpUHT4WTQHwmqBEdbWGho1NcXXKAzAZfKx4SG/MGeLDyY/1
	5Qi/YJAT/PqTJmJE4sCVx37YLSOit34sEARlJw8DrkOQ3qVlSFgPg==
Received: from ppma12.dal12v.mail.ibm.com (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 48dx15130m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Aug 2025 19:47:40 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
	by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 57FJJhD4010622;
	Fri, 15 Aug 2025 19:47:39 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
	by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 48egnv2n9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Aug 2025 19:47:39 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 57FJlcGO15991542
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Aug 2025 19:47:38 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 357BB58058;
	Fri, 15 Aug 2025 19:47:38 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 05C785805D;
	Fri, 15 Aug 2025 19:47:38 +0000 (GMT)
Received: from slate16 (unknown [9.61.135.91])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 15 Aug 2025 19:47:37 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, andrew@codeconstruct.com.au,
        conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        eajames@linux.ibm.com
Subject: [PATCH v4 1/4] dt-bindings: arm: aspeed: add IBM Balcones board
Date: Fri, 15 Aug 2025 14:47:27 -0500
Message-ID: <20250815194730.41695-2-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250815194730.41695-1-eajames@linux.ibm.com>
References: <20250815194730.41695-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: mX8f6xuVL34o807ShTKlXJoEcAIUIceG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDIyNCBTYWx0ZWRfX6+TWtix2Gpbw
 IPCDjXtSOY1QojoxCwlhYsoqgtKgPirEM18Iiw5HHY9vL3yFklomwDfCi9Kf/eHGVu9AdaIqo90
 lKiPLlo422AMxNNBIuaA7dsqcmj4QcBuZJ8/fPI1JtqIGV5kNLclKkXPGxxFGET0MTSC6LIOwZ9
 HtIZscr62AGCiJhZJkxP7cPTCpA3udZ9LZkLigkSH2+wUwvS2Oq3b5Z7mG+fe+0nzEMRewjKgWT
 ULi50p0ifEeuJ/DJFFMUJ9zjUGb71c2+ReESrvp8VIKeeTV+Pd0keifdlYXOoQGdwYSzzWgkd+K
 kKd7aa1amHgMsi//F+yscMUJwLXa0fLZ3rIEa6sa6DVGxK0YHdsKsL5neHRAkCqLwdz6Qbo0bem
 qynYPDkI
X-Proofpoint-GUID: mX8f6xuVL34o807ShTKlXJoEcAIUIceG
X-Authority-Analysis: v=2.4 cv=fLg53Yae c=1 sm=1 tr=0 ts=689f8edc cx=c_pps
 a=bLidbwmWQ0KltjZqbj+ezA==:117 a=bLidbwmWQ0KltjZqbj+ezA==:17
 a=2OwXVqhp2XgA:10 a=VnNF1IyMAAAA:8 a=3wLJMGCjkU_6NCSB5IAA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_07,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501 impostorscore=0
 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508120224

Document a new AST2600 BMC board for IBM P11 server.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index b3c9d3310d57..1283ef1a3520 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -92,6 +92,7 @@ properties:
               - facebook,minerva-cmc
               - facebook,santabarbara-bmc
               - facebook,yosemite4-bmc
+              - ibm,balcones-bmc
               - ibm,blueridge-bmc
               - ibm,everest-bmc
               - ibm,fuji-bmc
-- 
2.50.1


