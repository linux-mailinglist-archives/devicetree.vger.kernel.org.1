Return-Path: <devicetree+bounces-287080-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ORUGVwh3Wn4aAkAu9opvQ
	(envelope-from <devicetree+bounces-287080-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:01:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D603F0825
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 19:01:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1C9203044EFA
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 16:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA33532AABD;
	Mon, 13 Apr 2026 16:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="auqwFBAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A200329371;
	Mon, 13 Apr 2026 16:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.148.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776099409; cv=none; b=sK6D68JCejhws/ZqdwX5UZYdOl7/2DxugSILqSwsW6X6sfl5hjMe29gpWVNrNMmEqW8qomY2EtjJd8cJJ26LqhWV21l9MhJ/IlvcC8FoOXeGVd5eoMasNBPvteeJDaX/EwwvAKv/EwYJixFaqAZKuJN+NGWI7uegoc2YcbShe8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776099409; c=relaxed/simple;
	bh=J61KCBRt23wqwl/LxmaxpMBr0QeQcZsLz8xDPCTO8v4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ht6TeyjKi7L/HAbs5WkSJ8tEe1K9gVQsygZeSRA39iQ14SF4oCC6FMcwnTguIkdSmsICzygs4+yHfdVHTqOEk7xolxIC0uFEP8Zvl5D9gQn+rYCpGglwcUSEfktDHdY1eEXN3CRRbRk90MjBUBfiLCIc/U8d3EXxoSgGwA9a6T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=pass smtp.mailfrom=marvell.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=auqwFBAb; arc=none smtp.client-ip=67.231.148.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marvell.com
Received: from pps.filterd (m0431384.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63DF4Vk6312862;
	Mon, 13 Apr 2026 09:56:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=pfpt0220; bh=rV/MIWTwT48YMZwMmF2Cv5xUq
	VS1qo4fO7NrYq2vYhI=; b=auqwFBAb8YInSVNCIuK+jLNVkxo+EjpGsweqU2CPi
	6wVMde4KGm/Ze9Iy7oUxO3SXrHCGlaSqMG8ZrFHKGro5lsjN59TRPbBMTWSdI2Mv
	xjKui+GaMfInr0CyI1EFSYBuh6d7p+CtlYlYCnvZp5wFyO+IOcCYGy7Bbfq6phNU
	k8yqWThOSKzbt+UCWw0hGnobmqjrmmuHXxcsk4TtMG3hYUSdV03l6HwlX7ePiCjv
	yN1t0+SOH+Q0zGoHtqreq+dC+/L22njNVZFradNG8DA0mGdVtUJhkE0In7EOgzjL
	Zqekh4oLAt/n3ZmMbJC6qbLHratr/oWEDOYF5voa3tOtQ==
Received: from dc5-exch05.marvell.com ([199.233.59.128])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 4dgaja2k5d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Apr 2026 09:56:29 -0700 (PDT)
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 13 Apr 2026 09:56:29 -0700
Received: from DC6WP-EXCH02.marvell.com (10.76.176.209) by
 DC6WP-EXCH02.marvell.com (10.76.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 13 Apr 2026 09:56:28 -0700
Received: from maili.marvell.com (10.69.176.80) by DC6WP-EXCH02.marvell.com
 (10.76.176.209) with Microsoft SMTP Server id 15.2.1544.25 via Frontend
 Transport; Mon, 13 Apr 2026 09:56:28 -0700
Received: from hyd1soter3.marvell.com (unknown [10.29.37.12])
	by maili.marvell.com (Postfix) with ESMTP id D47D83F7075;
	Mon, 13 Apr 2026 09:56:25 -0700 (PDT)
From: Geetha sowjanya <gakula@marvell.com>
To: <linux-perf-users@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
CC: <mark.rutland@arm.com>, <will@kernel.org>, <krzk+dt@kernel.org>
Subject: [PATCH v5 1/2] dt-bindings: perf: marvell: Add CN20K DDR PMU binding
Date: Mon, 13 Apr 2026 22:26:20 +0530
Message-ID: <20260413165621.10921-2-gakula@marvell.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260413165621.10921-1-gakula@marvell.com>
References: <20260413165621.10921-1-gakula@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: LLxu3ot9QvGzWgNB7Ph-GtrQoGZD2oT0
X-Authority-Analysis: v=2.4 cv=W4YIkxWk c=1 sm=1 tr=0 ts=69dd203d cx=c_pps
 a=rEv8fa4AjpPjGxpoe8rlIQ==:117 a=rEv8fa4AjpPjGxpoe8rlIQ==:17
 a=A5OVakUREuEA:10 a=VkNPw1HP01LnGYTKEx00:22 a=l0iWHRpgs5sLHlkKQ1IR:22
 a=TtqV-g6YmW1Jfm2GSLaY:22 a=gEfo2CItAAAA:8 a=M5GUcnROAAAA:8
 a=cxBr6QS3EhuSzrwsu80A:9 a=sptkURWiP4Gy88Gu7hUp:22 a=OBjm3rFKGHvpk9ecZwUJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDE2NiBTYWx0ZWRfX5Q/yJNJB8dYm
 WILQru0fbUve74KIVjxERaHrqdJplvCPoZKAXg6MqhCAv3NP+Mc1IvCLGkcykmnV8qGNuua71hq
 drwwSgTMg7HJC6Rfu5k6oZr/5ZapgNqO9mHez5zL8M7/GY9v8c5TVH91VFhTAJ3aBq+zthOXkNV
 DBxcK9bXAiIKuPzRnWnvZjgXPU7de3PxLg8k+/c+OQrHm3SR+nWNyvidW/Cl8Zo+N9uJi+VtFVg
 hNe0Tlf3Yi3SNEnO4BT2Suuzn/HctCmJXLcSQFtjzhzxhvcMqNXYw2T3nGEB8aMSmA+OhhBSdQA
 3QFJ8XKQeYIlXqOfHCTdM0jzi5sQMKkLFUESdb+B1G6M0DcvPWl+6FsQxpecYH3h2QAoujOfiUG
 Rm69uKJPJxirTmeeTTBkNv/efbdBMlFPThEbGaRXHJzPTSka2Ne62pz9LBVa/4c91oyfWDdXcBy
 92pLiHd1VIr+pVhizuQ==
X-Proofpoint-GUID: LLxu3ot9QvGzWgNB7Ph-GtrQoGZD2oT0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_03,2026-04-13_04,2025-10-01_01
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[marvell.com,none];
	R_DKIM_ALLOW(-0.20)[marvell.com:s=pfpt0220];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[marvell.com:+];
	TAGGED_FROM(0.00)[bounces-287080-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,marvell.com:dkim,marvell.com:email,marvell.com:mid,devicetree.org:url];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gakula@marvell.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 20D603F0825
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Marvell CN20K SoCs integrate a DDR Performance Monitoring Unit (PMU)
associated with the DDR controller. The block provides hardware counters
to monitor DDR traffic and performance events and is accessed via a
dedicated MMIO region.

The CN20K DDR PMU is functionally equivalent to the CN10K DDR PMU, with
minor register offset differences.

Signed-off-by: Geetha sowjanya <gakula@marvell.com>
---
 .../bindings/perf/marvell,cn20k-ddr-pmu.yaml  | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/marvell,cn20k-ddr-pmu.yaml

diff --git a/Documentation/devicetree/bindings/perf/marvell,cn20k-ddr-pmu.yaml b/Documentation/devicetree/bindings/perf/marvell,cn20k-ddr-pmu.yaml
new file mode 100644
index 000000000000..cc6aa760de49
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/marvell,cn20k-ddr-pmu.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/marvell,cn20k-ddr-pmu.yaml#
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


