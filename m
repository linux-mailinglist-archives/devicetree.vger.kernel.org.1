Return-Path: <devicetree+bounces-251481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B842CF3700
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 13:11:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D1FA73005F2C
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 12:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C684E3358D6;
	Mon,  5 Jan 2026 12:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="fUsi3thm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A773358D2;
	Mon,  5 Jan 2026 12:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767614647; cv=none; b=cwrqp0Uqw+OKQrVIsfyZ8UeiVs+CHPawmwXvt2I5vLGkQLYRJp/tF19qe583Uplr3QDYfDpV1QppTF00SY4JAoWDcpGSVLifrz2rm10ZERZ6KG7W8OjUgZ1Qk2K6WaOPwUyO1U82veh49cC/Sj1NLUVxT2asJaJw0M72VxVmvfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767614647; c=relaxed/simple;
	bh=gXM9MF09qpJwGQz/+mN15umULK8PYgGnQAJbLtYwIMg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bfwekyn84lH1hrZG3bU80/ZicdDPvilUCxk0Q3GhVQncEFAA0cvc3JdyENf/zG55t4cqMvJJV+XXHC8G2CcXoQ3aplIhsWibm8DhgXf2VoFzHqD+ae5slNXoxE8gBnf8/ZInvwhmUANPPRG6qiZ0J5/c1DvdH0aNqNup8DXU+gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=fUsi3thm; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058t1pR4096333;
	Mon, 5 Jan 2026 07:03:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=f02Sp
	KKrBCju8O2cjnPU2GvUaiSoxyQmxHx0q7YtmnM=; b=fUsi3thmN6OcVih0706W3
	9xOLMNwxfUuLjqyX33agcqbYLMCbmhrVNHReJ1zRv+EwWw5JoyNxlL2+e7opl2tV
	pHVGKN++ZmCznM9qW6msknR3f7CS/n9RncLwYFT77yZ4HBCbWY34ndsJ5VDS5gfZ
	Nh2LXTSZ0YOnXKmnAnfFWFqVv6HHpBFTVQdi2qVOr13YE1uylvbvyMAJMRp4c+i6
	qK8TtT+Fpl2X8Yu5q3TM0RtwRdQoz3l//OWA3nXIiMX1/etzJcUAurlhaBoUF+8q
	4bCJOKyqAtHztNVCnFIemzlcPOlrMaRA3D7662yT2e8tqQWxuXKNrxv8oWOG9EmT
	A==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bg6a1snfp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 Jan 2026 07:03:57 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 605C3uYw038542
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Jan 2026 07:03:56 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Mon, 5 Jan
 2026 07:03:56 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Mon, 5 Jan 2026 07:03:56 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 605C3SjZ015791;
	Mon, 5 Jan 2026 07:03:47 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: mux: adg2404: add support
Date: Mon, 5 Jan 2026 14:00:30 +0200
Message-ID: <20260105120117.57607-2-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260105120117.57607-1-antoniu.miclaus@analog.com>
References: <20260105120117.57607-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEwNSBTYWx0ZWRfX8LIEyq2lQBzc
 qxcDTJ7+woEITrCG9eCyovVvDs34oCvZkNWMPoLO1XpFZlzofQvh4djso92uN6HYkVY7CUBCtsb
 /xk9AKf1wqVJMJNEMxgaoTKSvOHj2tYRmzxH6hw/g/XBkO4hLV62wCKOUW3SVHeQXcbl43etGIY
 a3Bkhv8wB5Q+R8JGz/vtmmRctdd68cvlGPLM/eBM2ojSl/o6d1R1aI506mBn1oldyQ8LR3BOHZ4
 BHjLPJsyub0ndXfzorv55AcGdZb4rjhGE2Xe6WK6sGUtJDo61GhsxOuSNVEAGMOWFRodJ2Dg53j
 eB/Dzkx36iBqihkohVkR35bim8WAr1caTcWi62fyeMmfaTaE83QNYHanSCxIbVAYMVLW+SfPTPr
 MzfesaUvE0p8uOzwuqfAbCDYA1Xh1XIJWcx1fwSOYSIes1bpe8/NIlKq534LCOZMioRu3zkdxLw
 1YRkdIPQYA/jF9LKQ0A==
X-Proofpoint-GUID: tucdolVVGw1Xmg4nC_C_D_ziA8UMm7Mv
X-Proofpoint-ORIG-GUID: tucdolVVGw1Xmg4nC_C_D_ziA8UMm7Mv
X-Authority-Analysis: v=2.4 cv=cM7tc1eN c=1 sm=1 tr=0 ts=695ba8ad cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=gAnH3GRIAAAA:8
 a=EgIdapzY1BfK4M8Bkr0A:9 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 clxscore=1015 bulkscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050105

Add dt bindings for adg2404.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
changes in v2:
 * rename addr-gpios to mux-gpios
 * rename en-gpios to enable-gpios
 * use items format for mux-gpios description
 * simplify property descriptions
---
 .../devicetree/bindings/mux/adi,adg2404.yaml  | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/adi,adg2404.yaml

diff --git a/Documentation/devicetree/bindings/mux/adi,adg2404.yaml b/Documentation/devicetree/bindings/mux/adi,adg2404.yaml
new file mode 100644
index 000000000000..d5a7c205d579
--- /dev/null
+++ b/Documentation/devicetree/bindings/mux/adi,adg2404.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mux/adi,adg2404.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices ADG2404 4:1 multiplexer
+
+maintainers:
+  - Antoniu Miclaus <antoniu.miclaus@analog.com>
+
+description: |
+  Bindings for Analog Devices ADG2404 4:1 single-ended analog multiplexer
+
+  The multiplexer state corresponds to the selected input channel:
+  * 0: Channel S1 selected
+  * 1: Channel S2 selected
+  * 2: Channel S3 selected
+  * 3: Channel S4 selected
+
+allOf:
+  - $ref: mux-controller.yaml#
+
+properties:
+  compatible:
+    const: adi,adg2404
+
+  mux-gpios:
+    description:
+      GPIO pins connected to the address inputs.
+    items:
+      - description: A0 address pin
+      - description: A1 address pin
+
+  enable-gpios:
+    description:
+      GPIO connected to the EN (enable) pin. Active high.
+    maxItems: 1
+
+  '#mux-control-cells':
+    const: 0
+
+required:
+  - compatible
+  - mux-gpios
+  - enable-gpios
+  - '#mux-control-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    mux-controller {
+        compatible = "adi,adg2404";
+        #mux-control-cells = <0>;
+
+        mux-gpios = <&gpio 1 GPIO_ACTIVE_HIGH>,
+                    <&gpio 2 GPIO_ACTIVE_HIGH>;
+        enable-gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+
+        idle-state = <0>; /* Select channel S1 when idle */
+    };
+
+...
-- 
2.43.0


