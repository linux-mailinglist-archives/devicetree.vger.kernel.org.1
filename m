Return-Path: <devicetree+bounces-286581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yODzJtcw2WkOnQgAu9opvQ
	(envelope-from <devicetree+bounces-286581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 19:18:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4B53DAFB3
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 19:18:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 120AE300D6A9
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 17:16:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15EF03E3170;
	Fri, 10 Apr 2026 17:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b="HTjgmach"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1473DB63C;
	Fri, 10 Apr 2026 17:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.147.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775841405; cv=none; b=lHdgblupy5hZs4wHqum0BvB7nhAURRalEjRY809NFA5EKW8sB13Sgh0qktrAWHh8iTQ1q6GAf4NdO1va4ZiULbCdWRGqmhpPw0LMmf5GONcfkIFcH98IYaS0XOxLPeeB0mgUvRtibUN60HiLR08yVxarOQ+IObFBM8/fHm/F8fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775841405; c=relaxed/simple;
	bh=MDdimWRgxdCpSBq5R8Dm01Y9mUHm8EwqlaFRTelKIa4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CAOHCCz5AN9jnbndz9gcGdKJUcS91rTX2MjDJMQEWDttfHufv9k1a43wWTeSpxPQlKZs3ByoALxzJsUapuUMsNTtKzGA2XEG6oxeHelGml4IDLMoCwKRS77qvW4ogUJqoXYpyYCLLu+I12psoqrnr1S3q/4XJ7ONF5MRhevcKZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com; spf=pass smtp.mailfrom=hpe.com; dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b=HTjgmach; arc=none smtp.client-ip=148.163.147.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hpe.com
Received: from pps.filterd (m0134422.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63ADSf3L700659;
	Fri, 10 Apr 2026 17:16:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=pps0720; bh=xXA44oQsFEQ9J
	7VmBPmiBuOSaGoyF6XluUzLaeSYqaQ=; b=HTjgmachV9sA8T1x1xHQSAWUpuqAn
	8WIORRhj7Wr52HIRobTfTaSDpeESsXJ9G3e7mIJ0RF4Jo6UF0nJ+GqRlp7rqNGn2
	fnmC+Ip98DntF+XRvq6oQG0MZ7l3pd4IbUgHwoH0qwtvv26gubCZ78UxbPLKNeLP
	qVFsS8jrDsv8iCr6O0XKEXQk5gbz5u85QPCp9wTl92451Fk6d1Vfaem3RkJtAyJ5
	/eLkQLid73G8MIAINiad/cCxpCcAz7TUC8KOf92ya0IugErS68CnEeaCqxNt2aBf
	bX83eGrs7PfQJVyW5dZuFlQ+aoc8DekwyxJ/NM4YUzlCxpGfRg4OCx71w==
Received: from p1lg14879.it.hpe.com (p1lg14879.it.hpe.com [16.230.97.200])
	by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 4df24b2hg4-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 10 Apr 2026 17:16:21 +0000 (GMT)
Received: from p1lg14885.dc01.its.hpecorp.net (unknown [10.119.18.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by p1lg14879.it.hpe.com (Postfix) with ESMTPS id BA3ADD1D6;
	Fri, 10 Apr 2026 17:16:20 +0000 (UTC)
Received: from hpe.com (unknown [16.231.227.36])
	by p1lg14885.dc01.its.hpecorp.net (Postfix) with ESMTP id 53DA5801629;
	Fri, 10 Apr 2026 17:16:20 +0000 (UTC)
From: nick.hawkins@hpe.com
To: catalin.marinas@arm.com, will@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowski@oss.qualcomm.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Nick Hawkins <nick.hawkins@hpe.com>
Subject: [PATCH v5 2/4] arm64: Kconfig: Add ARCH_HPE platform
Date: Fri, 10 Apr 2026 17:16:09 +0000
Message-ID: <20260410171611.2547255-3-nick.hawkins@hpe.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260410171611.2547255-1-nick.hawkins@hpe.com>
References: <20260410171611.2547255-1-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Yss/gYYX c=1 sm=1 tr=0 ts=69d93065 cx=c_pps
 a=5jkVtQsCUlC8zk5UhkBgHg==:117 a=5jkVtQsCUlC8zk5UhkBgHg==:17
 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gQcMVamqm3wCPoSYhaRC:22
 a=ModqzXLkJJ0tFyq98apW:22 a=MvuuwTCpAAAA:8 a=EUspDBNiAAAA:8
 a=XVOEL-q19URcyAXAXPUA:9
X-Proofpoint-ORIG-GUID: Wpo8iSVfXcuG8Hiy5lP5CXnxszRhqY62
X-Proofpoint-GUID: Wpo8iSVfXcuG8Hiy5lP5CXnxszRhqY62
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEwMDE2MiBTYWx0ZWRfX57ZnCZtspLpE
 kHFQXxYBcxH4RkD3NMfd/oMPEMH6mjoXAyJNxxoBn7n4XH01CDBqEvrJ799VHR3VgD/BBSriVmS
 5FQRQHeDR3zPzWath2Q7A0aYMYlSvlOahxzhfZRVZZnuxzS7TMTWAraGoXnW/45DrNgKGSF/6jt
 1S6Zxx5WVhfsQJkcmhJbgdn6R2RSP2LnK3X8JLn5cMMC5qWDjMOnuNXlma5KXWcvzMTfgfwMDF+
 KFlGthxfeSPsL3P+tmtAIVuituSkLDGEIdJZBfSxlVWiw9XwQ03PlMHJbtMHZE7gbyJziNvpNAg
 E+jK8HItakryFh1EuUAS2X+PD/cGJxZmcbwy6kKUZyffxTyLM06OGqHlkatag6znyL2nigA4M4h
 4YmbAd/Q7Vcs++WhoKTEp9j3KwWKiqGt3xbphHzTT/+z1yj0zhWZWYB4l1+bKSI8HCr88Tuqq/J
 kkpz62lYc56qmxilzcQ==
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-10_05,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604010000 definitions=main-2604100162
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[hpe.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[hpe.com:s=pps0720];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286581-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[hpe.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,hpe.com:dkim,hpe.com:email,hpe.com:mid];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick.hawkins@hpe.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EA4B53DAFB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Nick Hawkins <nick.hawkins@hpe.com>

Add the ARCH_HPE config for HPE ARM64 BMC SoCs to Kconfig.platforms.

Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/Kconfig.platforms | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 54eb1d7fd419..b4217809c774 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -168,6 +168,17 @@ config ARCH_HISI
 	help
 	  This enables support for Hisilicon ARMv8 SoC family
 
+config ARCH_HPE
+	bool "HPE SoC Support"
+	select PINCTRL
+	select GENERIC_IRQ_CHIP
+	select CLKSRC_MMIO
+	help
+	  This enables support for HPE ARM-based SoC chips used
+	  on HPE servers. HPE SoCs serve as the Baseboard
+	  Management Controller (BMC) providing out-of-band server
+	  management.
+
 config ARCH_KEEMBAY
 	bool "Keem Bay SoC"
 	help
-- 
2.34.1

