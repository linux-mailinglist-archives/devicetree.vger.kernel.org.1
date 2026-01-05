Return-Path: <devicetree+bounces-251475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 388D4CF3697
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 13:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68FE73074445
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 11:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B24C32D0FE;
	Mon,  5 Jan 2026 11:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="qnTXwQLI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDF512B143;
	Mon,  5 Jan 2026 11:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767614373; cv=none; b=r5wquJi7QbOqzxYxCKAy2A48VVnpu5GF9dptw+KeMsARNs8zAXRJ6PuS1DAll1KvYSs3wf3Szxm3+E261OtK4Cdnxym/CCeeZa9hFKCDB14za2fxfyI8GJY1lB79W5VDoY/7khq8lZs8RUIrfaatwmMRZkv4aG/Jpg74sGYD26M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767614373; c=relaxed/simple;
	bh=5DD0SVQB+sE4yrM71Dr0qYd5BA4V+MZ+0UgE09Cjb84=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Xnxpyco3b4+H6NuSQlHd5NdYKcSydpTzPTnIGoSjPUSI4kKGoL5R8Bv17RwmAk3xbD+r0kG57MB0EIoGjh2u/C/9nVzLfRVvBAe4y3U7IjWxOlD7nZFo1qXZ+OIdCVRE9X3/kNSIMyLYFMDa3oubVSoJ31bcxeToUuL3MZYQx38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=qnTXwQLI; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058n2VJ4096678;
	Mon, 5 Jan 2026 06:59:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=l6q8i
	UxYhf0Gxc1NinTd3JXP/rwe92cZ3KO5ttSrKRs=; b=qnTXwQLIWo1nCGEqamGKu
	oF7tK4c2/Qtg4renBTKqoEHQ/rD7xawlYJpzlb2m7z4Pv5dWOmFRLyugj0pDB/dr
	Crwb637l+hKct/spfxyZLyYIip76bAFYqUWP+dOFEY0I5Gqq8vTsgC8rBCoKj0Z+
	U4jFEY7drA3Hu2fjAe/Bnw+ZZU5Xp0hBfsj2uechEuocnISxnVAD+TAQhNZStbiD
	+M3/fUlTwTjJvjZxCJnc8fJYWdAKyL8elgKLOL8/jFhzCFXDzr0fvhXgeunQOF3D
	s5F++8uUHtzdwEEXi70Mqqi7a6dmkzVtYf4xfCibbMJm6Lqu7aBNvI2raumyosUS
	Q==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4bg6a1smsj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 Jan 2026 06:59:22 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 605BxL8U037605
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Jan 2026 06:59:21 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Mon, 5 Jan
 2026 06:59:21 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Mon, 5 Jan 2026 06:59:21 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 605BwsSt014872;
	Mon, 5 Jan 2026 06:59:14 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
        Antoniu Miclaus
	<antoniu.miclaus@analog.com>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: mux: adg1736: add support
Date: Mon, 5 Jan 2026 13:57:56 +0200
Message-ID: <20260105115825.57032-2-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260105115825.57032-1-antoniu.miclaus@analog.com>
References: <20260105115825.57032-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEwNSBTYWx0ZWRfX4KZMW5Q92gDu
 uTBJAzzZMpvzkB5KcA/34GukNZnksZgLp4sni9ako6hz4urhWdaF58IT9tm+S4wpOK4UorQPLxY
 Zl2CZnY4rnHOpqmiocPQ6CLSU53B2ZRAhRRcQSp9MN2fX/Z2jcw9w6DW1MXNuTTr8DCOn0JUnp6
 1bcHBNHH2U94MlmtCV4NN1Zy776y1mvPHWeoVQzA6COQLDIqFxSa8aBO3BN7Y72pYng7/NoGRkh
 ypa+x6+iwNYw+At4xPCPFapJMysV2V2zC4+1GnGtF3g8OTYgEbVk1jkAStqKgHJSuUmK78F8yc9
 9MNKZ4UpCtvC9CL72wbB8Gc/HoVCg9+RJc3i9t+NAu5ErtWUQVO0dsPC2qdXkJXYbY5UFV30iDE
 wfF2b+JxImqgg0W8Txro4OHsxuclPp0eY824oplUhCG6WNFLV4j8bmVWvrlxeKuwzPZhyOgcP2k
 6HPzx4r4iHZRzBBTHaw==
X-Proofpoint-GUID: 8ucvaQhvnp0WFcfBZJv68cLaS4w5cTDM
X-Proofpoint-ORIG-GUID: 8ucvaQhvnp0WFcfBZJv68cLaS4w5cTDM
X-Authority-Analysis: v=2.4 cv=cM7tc1eN c=1 sm=1 tr=0 ts=695ba79a cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=gAnH3GRIAAAA:8
 a=bcMhJ97iO3pGYJRQIAUA:9 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 clxscore=1015 bulkscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050105

Add device tree bindings for ADG1736, a dual SPDT switch that
functions as two independent 2:1 multiplexers. Each switch can
connect its drain terminal to one of two source terminals (A or B).

The device provides two mux controllers controlled by individual
GPIO pins, with a shared enable pin for disabling all switches.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
changes in v2:
 * rename ctrl-gpios to mux-gpios
 * rename en-gpios to enable-gpios
 * use items format for mux-gpios description
 * simplify property descriptions
---
 .../devicetree/bindings/mux/adi,adg1736.yaml  | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mux/adi,adg1736.yaml

diff --git a/Documentation/devicetree/bindings/mux/adi,adg1736.yaml b/Documentation/devicetree/bindings/mux/adi,adg1736.yaml
new file mode 100644
index 000000000000..cef4bca3cb97
--- /dev/null
+++ b/Documentation/devicetree/bindings/mux/adi,adg1736.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mux/adi,adg1736.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices ADG1736 Dual SPDT Switch Multiplexer
+
+maintainers:
+  - Antoniu Miclaus <antoniu.miclaus@analog.com>
+
+description: |
+  Analog Devices ADG1736 dual single-pole, double-throw (SPDT)
+  switch. The device features two independent SPDT switches, each functioning
+  as a 2:1 multiplexer. Each switch can connect its common drain terminal (D)
+  to one of two source terminals (SA or SB).
+
+  The device has two independent mux controllers (mux 0 and mux 1), each with
+  two states:
+    * 0: SxB to Dx (control GPIO low)
+    * 1: SxA to Dx (control GPIO high)
+
+  The EN pin is shared between both switches and can disable all channels when
+  set low (inactive).
+
+allOf:
+  - $ref: mux-controller.yaml#
+
+properties:
+  compatible:
+    const: adi,adg1736
+
+  mux-gpios:
+    description:
+      GPIO pins connected to the control inputs IN1 and IN2.
+    items:
+      - description: Control GPIO for switch 1 (S1A/S1B to D1)
+      - description: Control GPIO for switch 2 (S2A/S2B to D2)
+
+  enable-gpios:
+    description:
+      GPIO connected to the EN (enable) pin. Active high.
+    maxItems: 1
+
+  '#mux-control-cells':
+    const: 1
+    description:
+      Mux controller index (0 or 1) to select which SPDT switch to control.
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
+    #include <dt-bindings/mux/mux.h>
+
+    mux-controller {
+        compatible = "adi,adg1736";
+        #mux-control-cells = <1>;
+
+        mux-gpios = <&gpio 10 GPIO_ACTIVE_HIGH>,
+                    <&gpio 11 GPIO_ACTIVE_HIGH>;
+        enable-gpios = <&gpio 12 GPIO_ACTIVE_HIGH>;
+
+        /* Disconnect both switches when idle */
+        idle-states = <MUX_IDLE_DISCONNECT MUX_IDLE_DISCONNECT>;
+    };
+
+...
-- 
2.43.0


