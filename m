Return-Path: <devicetree+bounces-289241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2K4MDeb+52lJEAIAu9opvQ
	(envelope-from <devicetree+bounces-289241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 00:49:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EB5440458
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 00:49:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B16B33105AA7
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 22:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DED83A872C;
	Tue, 21 Apr 2026 22:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="qMDTQkwr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1844C3A7F41;
	Tue, 21 Apr 2026 22:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776811585; cv=none; b=hc07E864Q1q6fsXMIZ5WkNQ1e2gggT1J4pzgqt/muJSBIrcu9VHK2pYR9kwFyhDualHG97xhIyySVuku6VvvDHcnhDGFFfNQukk3HGqK7vY/o8R91IjDIm62SJjiXGyUp3IC7nElUZjdLDs/20+u5BpVMp/Xh98A1OF5joWh63M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776811585; c=relaxed/simple;
	bh=dduPeycPr6yXWS8laZpySBbZ7Y//nGo+OVhxzEXL1ns=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=adVXmFEUjonz9aZyMcfKMMy1oird6C/FKl+44JKtRAfy4qPFQ0QSmz2sO4sQg9lojQtOVTl5Q0E7+zHxMdq/jtrVZuR7yU6OD+oIgilva8zz54nGGUlDGDFd0kykxf2/GaGYwbU4eu/onfeuvTbqidg5RhegCbGInhfG3FP0RsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=qMDTQkwr; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63LImN8L177198;
	Tue, 21 Apr 2026 22:46:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pp1; bh=DDWz+P6GH5r8rHmoX
	evBBS4CqD5JryiS1r07nfz5lJY=; b=qMDTQkwr03Jici3f50aRYn0V9hqXPJhNz
	mSzfWkSOQ6ucu4ljnGLmTnDRnesEslyL+a1cLoSefOSKUyrbVCmn8afe1BoPTAJN
	iBU+QHcWAQt1lSaG3TSSkrx26fDNWCJwOpcw6b38h5j2ub1rZjRvJ9hryrR1Lv0b
	ial/vywow7bJwdPvuiNA096v+iEeTw4RsCPtVOU/qDu6ZhmHcPC3lcVwaX6jKooA
	YZRbTsi3skhgsLf0lUDkHyC00Cuar5ipmjk8H+dG6SDvAsRLGpKrO9PyEGfqJtZX
	Zyuz8gIlV2mCCpwKZktbKTcuyJs0iWTPfL6NQ2cGaP1A6vxz/0URg==
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4dpeu68pcb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Apr 2026 22:46:01 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.18.1.7/8.18.1.7) with ESMTP id 63LMZIdg026427;
	Tue, 21 Apr 2026 22:46:01 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 4dmn9k2kvr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Apr 2026 22:46:01 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 63LMk0LA62456090
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 21 Apr 2026 22:46:00 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DF5BC58055;
	Tue, 21 Apr 2026 22:45:59 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 417415805D;
	Tue, 21 Apr 2026 22:45:59 +0000 (GMT)
Received: from pfw153.pfw.tadn.ibm.com (unknown [9.5.7.52])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue, 21 Apr 2026 22:45:59 +0000 (GMT)
From: Ninad Palsule <ninad@linux.ibm.com>
To: eajames@linux.ibm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc: Manojkiran Eda <manojkiran.eda@gmail.com>, ninad@linux.ibm.com
Subject: [PATCH v1 2/7] ARM: dts: aspeed: system1: Enable video engine
Date: Tue, 21 Apr 2026 17:45:39 -0500
Message-ID: <20260421224551.1611818-3-ninad@linux.ibm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260421224551.1611818-1-ninad@linux.ibm.com>
References: <20260421224551.1611818-1-ninad@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-Reinject: loops=2 maxloops=12
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDIyMiBTYWx0ZWRfXz63q7SEIVUvu
 ZgpuXMz0ATcqY+Njhinywkwp/HQpWfE87cvF+CS7qo8RKHnScmPFvfztf6CovvxZUjanraazxxu
 fwn0R276go1dK9gytsbiaZ1O8jJtaPBd/kIduKj4vSxL+BAWMP/pMQp0KARvtMQrkY4Yoj1CUY/
 aJn1FIlFHkIDqmyeRlWN9wnj6tP9wChT9Qb4XzU7dZV99FQwwLp7kI+MfAn6baPMdc397FXH4YU
 Yq4LoPTaBboYUQm3nPiW3Aa2+OtliHrn+puw3iHhxJU8C4z+zl4ZbE8nQb+0ateOMzQhW8C5zOb
 8NUjkZ1CwFyz1h5qm6gcrzo7wiGto1V/gsDCBFkc8IQXg82lIU8+UxVI8bg1AtqT1z+xuFD/+kH
 O0RYFbx/6Tuup/uCOdMk1UDEE93+hKx11ueE87mYEDDrcwO4no8ouUoQdYBtx3B9i4rHjiL22a6
 +233rgq/j3XrH/SjWFw==
X-Proofpoint-ORIG-GUID: 7UHNpH-fZV6Ra7jx-Cs5cveJSOOnkz8H
X-Proofpoint-GUID: iFhVbWu8b3FQJfxzSl7thmXDwlSG4DVD
X-Authority-Analysis: v=2.4 cv=BYfoFLt2 c=1 sm=1 tr=0 ts=69e7fe2a cx=c_pps
 a=GFwsV6G8L6GxiO2Y/PsHdQ==:117 a=GFwsV6G8L6GxiO2Y/PsHdQ==:17
 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=RnoormkPH1_aCDwRdu11:22
 a=RzCfie-kr_QcCd8fBx8p:22 a=pGLkceISAAAA:8 a=VnNF1IyMAAAA:8
 a=fhILFVcUSx_aPX8XqTsA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 clxscore=1015 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604210222
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ibm.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ibm.com:s=pp1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.ibm.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-289241-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ninad@linux.ibm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ibm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.ibm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: 95EB5440458
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Manojkiran Eda <manojkiran.eda@gmail.com>

This patch enables the aspeed video engine support in ASPEED BMC for
IBM System1. It is crucial for facilitating the BMC's video capture
and redirection capabilities, which are integral to remote management
and KVM (Keyboard-Video-Mouse) over IP functionality.

Signed-off-by: Manojkiran Eda <manojkiran.eda@gmail.com>
Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
index 488d0b3916a1..0ca799893791 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
@@ -531,6 +531,10 @@ &lpc_snoop {
 	snoop-ports = <0x80>, <0x81>;
 };
 
+&video {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
-- 
2.51.0


