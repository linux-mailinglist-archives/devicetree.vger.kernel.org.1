Return-Path: <devicetree+bounces-285387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eF4zHsYq1Wli1wcAu9opvQ
	(envelope-from <devicetree+bounces-285387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:03:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DE03B1765
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BF1530D89E8
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 15:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D01393CF023;
	Tue,  7 Apr 2026 15:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="LdJ8wfBT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185B333D4F3;
	Tue,  7 Apr 2026 15:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.156.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775577371; cv=none; b=dVw4tZfAtXuEbfgAh0YdqjoTg3ZKWa21Fifxh432mbHK9L6GxF+p4tLiw1x6g/39eI5UmbWNuDIrw/xsr9G2dO6HVLN2jNyM05hyXQtPlnMCY38KM6TO0NAxQn4dwIk3RSpMi1EhKV7bpsSmVNu+BFRg6HBsYDgMpkPR0ubEn4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775577371; c=relaxed/simple;
	bh=tlfkevO3OEheBee/4CcpLIsOqpAub1U+qU6JYBCuvmQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fR1QNYysObC3FbIQVZQb6WhMfwwObI+oXYWn+7lMZKtVMsVq8q3AVOF/UdCdBWTwJbkhjOUXrlLnq7FOSEfkvg+Xpvtyth12eEnqQqsbtPM76LBjaqJgMpFo9UCOgRyU5WaTns3CEg4w56odKgJ5LCDo0eBkzApOIhHe0acOYrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=pass smtp.mailfrom=marvell.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=LdJ8wfBT; arc=none smtp.client-ip=67.231.156.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marvell.com
Received: from pps.filterd (m0431383.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 637DbuhR560624;
	Tue, 7 Apr 2026 08:35:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=pfpt0220; bh=/fKSUdkJa8S13Mjb9Z4zDuPVR
	YpCHCVQdrMjRNCPKMo=; b=LdJ8wfBTkcpz59fhBWnyk92ZrCf3kmOTBve6pMYsZ
	Xq6DmtB1ZOnBFwvE5DU2bTwcsTCc9KlVch5c9yKRJLiGrq7M8xAHfDdqm8nQ5qLt
	UONiDsn8pZp620JkARrBYSd8oOEy0Yic6qJq8bujpVF5qb5eGc4HiV/X6lj4zUN4
	1INZCeJpPgnSFIZfIplOpTLGPJj4AjLZw2hmR0ceVYczMDyEOKOe2p21DuFalQx+
	MMzkXp42sp866c73S0U5+LIS51tWe42TntezxECGIv00MmDIKd/KecSnQH4dFa5y
	uh0KzS4DzCBmYCa1td/pIyEd6qClKM5et+1Pk7DILX06w==
Received: from dc5-exch05.marvell.com ([199.233.59.128])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 4dcms6t0j0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Apr 2026 08:35:19 -0700 (PDT)
Received: from DC5-EXCH05.marvell.com (10.69.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 7 Apr 2026 08:35:18 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH05.marvell.com
 (10.69.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Tue, 7 Apr 2026 08:35:18 -0700
Received: from hyd1soter3.marvell.com (unknown [10.29.37.12])
	by maili.marvell.com (Postfix) with ESMTP id 144AF3F7043;
	Tue,  7 Apr 2026 08:35:15 -0700 (PDT)
From: Geetha sowjanya <gakula@marvell.com>
To: <linux-perf-users@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
CC: <mark.rutland@arm.com>, <will@kernel.org>, <krzk+dt@kernel.org>
Subject: [PATCH v4 1/2] dt-bindings: perf: marvell: Add CN20K DDR PMU binding
Date: Tue, 7 Apr 2026 21:05:10 +0530
Message-ID: <20260407153511.4250-2-gakula@marvell.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260407153511.4250-1-gakula@marvell.com>
References: <20260407153511.4250-1-gakula@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Authority-Analysis: v=2.4 cv=D+p37PRj c=1 sm=1 tr=0 ts=69d52437 cx=c_pps
 a=rEv8fa4AjpPjGxpoe8rlIQ==:117 a=rEv8fa4AjpPjGxpoe8rlIQ==:17
 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=l0iWHRpgs5sLHlkKQ1IR:22
 a=qit2iCtTFQkLgVSMPQTB:22 a=gEfo2CItAAAA:8 a=M5GUcnROAAAA:8
 a=cxBr6QS3EhuSzrwsu80A:9 a=sptkURWiP4Gy88Gu7hUp:22 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-GUID: aIddzSPyhTQsTsOx42NFllAPZdh7bDh8
X-Proofpoint-ORIG-GUID: aIddzSPyhTQsTsOx42NFllAPZdh7bDh8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA3MDE0MiBTYWx0ZWRfX6UWrvcnQA6kQ
 Lf3UC07svgYOl393ZvYGxtekNyxFr/5+Hm1GuIne0A6z+P7rhDu1J7c0dwWHcZsYznf+nCVQ1Mt
 8aDhAc/DjTtY3sDVC1ysME/qBO2u59qSHLXgJapR18ueaq/GqWEDVM8H/iSR3CiRDz3belGXlaW
 J35/mvPhfK6qHJKxUTYRTYw8/kjkB7X20RgTavWMRWeOs6IMrG3rzbB1NIDYW3nSlIxo4HnX7dL
 71prORYksreA6jpmKmeVVnyR11Kdru+UXYtUHbYBSnTHKTc8ah5nTjgXXOPWD2i2uVcAqzFdXlf
 CU4KlWGulY7k+W196l+zbIyzahSVXlt+vIsiE5C+7RArNynNixBQBxyTrcqurtxCl+D2q3PHpqD
 09sXvbaURukFVfQITl3aBJXnmYs6P8RD+d14tBD37a/TCwL4zDYJAWSgh1FRUSxaTrkt8CXEnog
 mY8fPVZefyu6e9ARl5w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-07_03,2026-04-07_02,2025-10-01_01
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[marvell.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[marvell.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285387-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[ddr-pmu.c200000000:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[marvell.com:dkim,marvell.com:email,marvell.com:mid,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,c200000000:email];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gakula@marvell.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 23DE03B1765
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Marvell CN20K SoCs integrate a DDR Performance Monitoring Unit (PMU)
associated with the DDR controller. The block provides hardware counters
to monitor DDR traffic and performance events and is accessed via a
dedicated MMIO region.

The CN20K DDR PMU is functionally equivalent to the CN10K DDR PMU, with
minor register offset differences. This binding documents the CN20K
variant and introduces a specific compatible string to allow software
to distinguish between the two implementations.

Signed-off-by: Geetha sowjanya <gakula@marvell.com>
---
 .../bindings/perf/marvell-cn20k-ddr-pmu.yaml  | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/marvell-cn20k-ddr-pmu.yaml

diff --git a/Documentation/devicetree/bindings/perf/marvell-cn20k-ddr-pmu.yaml b/Documentation/devicetree/bindings/perf/marvell-cn20k-ddr-pmu.yaml
new file mode 100644
index 000000000000..78a0cd9a7b1f
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/marvell-cn20k-ddr-pmu.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/marvell-cn20k-ddr-pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell CN20K DDR performance monitor
+
+description:
+  Performance Monitoring Unit (PMU) for the DDR controller
+  in Marvell CN20K SoCs.
+
+maintainers:
+  - Geetha sowjanya <gakula@marvell.com>
+
+properties:
+  compatible:
+    const: marvell,cn20k-ddr-pmu
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
+        ddr-pmu@c200000000 {
+            compatible = "marvell,cn20k-ddr-pmu";
+            reg = <0xc200 0x00000000 0x0 0x100000>;
+        };
+    };
-- 
2.25.1


