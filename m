Return-Path: <devicetree+bounces-281050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MK3vI4L6xGnn5QQAu9opvQ
	(envelope-from <devicetree+bounces-281050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 10:21:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B34773322DE
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 10:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E50373086E81
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5143BAD95;
	Thu, 26 Mar 2026 09:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="PCiG3Sgp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B63A1D45E8;
	Thu, 26 Mar 2026 09:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.148.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774516024; cv=none; b=jrh/DVFmMHEgJTC44Vt5HWTfhfBz8pf42kmO7MRk3zX+uSYdcSampRRe1rHNWJEX/gQABYPil27RSaNm1ceeov8XMvfEQXd8dqv+128YvrUbzmYA2F+YN+ojOmY8bTxbCBlDi5rRg5lHUNhYIChPesOgLV6kg2FKDNM/UdcHbco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774516024; c=relaxed/simple;
	bh=8Dem+Qg7gHnBB++ByLPrNLh4BB7PBaE09mAU2r0hNDs=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HlMY5EP4moH4X+W6bU+LsD1yOQj/g0GMGIiQEE7+ZbRBiC59X0aAw4Jq4DUnI0K5QTW1OY7ZO2KOjNg+KCL8nxWwp3RDCW8ESBD7Qv4q3z5YWGI9EukrdFzDGV3YlLAEr6ceRYCdtAZTdVPc35Ir/sUreaZqIjCjSTzEV1ZbCNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=pass smtp.mailfrom=marvell.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=PCiG3Sgp; arc=none smtp.client-ip=67.231.148.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marvell.com
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62Q7H9fV2125486;
	Thu, 26 Mar 2026 02:06:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=pfpt0220; bh=se03Pleb/yvbhpdA/nP9mguBl
	HjhILkDPsR0MJ+AyMY=; b=PCiG3SgpEbvWRQTu4kad+h6ehEIX2FG2sgfMFfm97
	2IyIFOytkWTPP3y/A69tcRdT0Mn/XV597ExFDCjToeP8KWtgCrdPKKD6ItID4q9z
	Z76dQnmz174pryk/BpMda52ICP9POUgSPhFytaV805zXN/snHPyZK20TOAEjSueo
	0jdLS0Yme9hlKE7Z/yYoqDZfeTLla7ssYwIOFQIpjhSU2qNF2s9RIywaEQgKmtSW
	ffEn9L8nt1UVZDjmuLMTrccAP9cMLQMsITrS5vTAe1c9d9yol9CyqKeqSN2UQt3Q
	QlyOCiKFIgzKBwFzMZIMkRVOGQ4OCXY8E/QKBFuKjnWTQ==
Received: from dc5-exch05.marvell.com ([199.233.59.128])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 4d47nac0ts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Mar 2026 02:06:53 -0700 (PDT)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Mar 2026 02:06:52 -0700
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Mar 2026 02:06:52 -0700
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Thu, 26 Mar 2026 02:06:52 -0700
Received: from hyd1soter3.marvell.com (unknown [10.29.37.12])
	by maili.marvell.com (Postfix) with ESMTP id 995BD3F7041;
	Thu, 26 Mar 2026 02:06:49 -0700 (PDT)
From: Geetha sowjanya <gakula@marvell.com>
To: <linux-perf-users@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
CC: <mark.rutland@arm.com>, <will@kernel.org>, <krzk+dt@kernel.org>
Subject: [PATCH 1/2] dt-bindings: perf: marvell: Document CN20K DDR PMU
Date: Thu, 26 Mar 2026 14:36:44 +0530
Message-ID: <20260326090645.22590-2-gakula@marvell.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260326090645.22590-1-gakula@marvell.com>
References: <20260326090645.22590-1-gakula@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI2MDA2NiBTYWx0ZWRfX/J5Arq7S4bjC
 zQadQ6PFaV0w2/oFsNfaidkz+iO+2cu5Hi9YgIUeVHXLVR4qhx6vFlCwVYoDq6wkufZU2N/qT61
 zoBL6eWy9IbAwL9OJn0fQWPPKTf/88z7ev3fwJdXTdQedyQXpx9lWCpZu/eYdVo/3z99S0bkeIg
 xXHTOAE/0BF0c1p+/UvQy5pacMXAl1lmIQ1FESU6js04bYI/MaVBpagdw2nqhgZmRSQx/j450Tr
 v0Vcno+IS7rFhHfpiwsaS8vw4clrt0Z/kGaQV6HNHJdTL4csFopMXee58ze6jqU5S++OobTU+/Y
 HBKNgfEKn7g8oJIPjTNQbvLaWZ6OJmS95keEWveK9pS6MRNTastgNXWEOU4nrKq3cHmyS4ZbWOp
 fEHeHc2NHl9g9GA2Qu5ff6ju2O+L2N1UV1f97J+HMHc/pJ3RKaAaNjCFqW441pEIusH8miSgpvM
 vBh8Wcj0HDsAEJHw6IA==
X-Authority-Analysis: v=2.4 cv=LsifC3dc c=1 sm=1 tr=0 ts=69c4f72d cx=c_pps
 a=rEv8fa4AjpPjGxpoe8rlIQ==:117 a=rEv8fa4AjpPjGxpoe8rlIQ==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=l0iWHRpgs5sLHlkKQ1IR:22
 a=EAYMVhzMl8SCOHhVQcBL:22 a=gEfo2CItAAAA:8 a=M5GUcnROAAAA:8
 a=4RHyKZYBQQhKSXLDbdEA:9 a=sptkURWiP4Gy88Gu7hUp:22 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-ORIG-GUID: 0st2OJMtM2llfiW5VdOFHYLxAIjmqY_r
X-Proofpoint-GUID: 0st2OJMtM2llfiW5VdOFHYLxAIjmqY_r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_02,2026-03-24_01,2025-10-01_01
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[marvell.com,none];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[marvell.com:+];
	TAGGED_FROM(0.00)[bounces-281050-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,marvell.com:dkim,marvell.com:email,marvell.com:mid,devicetree.org:url];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gakula@marvell.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B34773322DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a devicetree binding for the Marvell CN20K DDR performance
monitor block, including the marvell,cn20k-ddr-pmu compatible
string and the required MMIO reg region.

Signed-off-by: Geetha sowjanya <gakula@marvell.com>
---
 .../bindings/perf/marvell-cn20k-ddr.yaml      | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/marvell-cn20k-ddr.yaml

diff --git a/Documentation/devicetree/bindings/perf/marvell-cn20k-ddr.yaml b/Documentation/devicetree/bindings/perf/marvell-cn20k-ddr.yaml
new file mode 100644
index 000000000000..6677d9eb4ba3
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/marvell-cn20k-ddr.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/marvell-cn20k-ddr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell CN20K DDR performance monitor
+
+maintainers:
+  - Geetha sowjanya <gakula@marvell.com>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - marvell,cn20k-ddr-pmu
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        ddrcpmu {
+            compatible = "marvell,cn20k-ddr-pmu";
+            reg = <0xc200 0x00000000 0x0 0x100000>;
+        };
+    };
-- 
2.25.1


