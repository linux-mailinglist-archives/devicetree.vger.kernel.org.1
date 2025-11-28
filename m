Return-Path: <devicetree+bounces-243003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BDCC925E2
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:50:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76A734E5B6C
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 14:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40EC02FDC43;
	Fri, 28 Nov 2025 14:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="yGSB0QW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902A332E745;
	Fri, 28 Nov 2025 14:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764341415; cv=none; b=mmW0918csBdokHCHEH/Hu3gsf8taAm86weDfIaGwGK9x0F8PZtY9nT4KIfWrA6VI/nsl//UEIN4KhGXCghv61ifYcmHABiMjgepGi4HZ/F5Lop5OWp42U6SnRy84e8PtX851gFMYx592kBRyq9elQCRI5os45TH32OiVBypcerw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764341415; c=relaxed/simple;
	bh=aL6gOmHH5ETGSX9ZtLGAsBugOnBR62FOZ6h7YHqwUsA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DLHXuLd9FIS96LHAZ3N3UDq+cgHfIXr0/zLYdzq9EssmH0UpcLq7UPc+PptKjtUpfnjSSYGV0St5cZmPwBqlGKY7lteBp7EUDwDCuJKW0JGQJ1G+rOmzgJKk5q0/ffrEQbvFw4uPXtcUNeHa1UPHaZYw1la0g4mTawiWInn6C9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=yGSB0QW+; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS9tUBN3943744;
	Fri, 28 Nov 2025 09:50:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=Pr8dq
	1RNgOl9WJ1fNyhKQo/xr7MvyKUfF50YF0mYqVg=; b=yGSB0QW+YF6JN2EQZ/3xx
	s5Pl/DgpHDLZnMuySNSADiv6WQop6ik9GdsTJhTnwU+GRyW/IEyxCZHwETLSf/KR
	39Q8e7Iy1Ec4dp0ZZFN/YbBjEbgCsVTzyVB1vzYmWjKrX0EuEV0u5+yKCE7Mrrqb
	80mYjwe43GbuzKYGe4ZKZt9aKof5vmEsqyGVAO7X5etVk4x90Eb4SnyotSveU3sm
	xZKzY4Q8hYp/TDPWvbaX1I1f64u3UEBNgfUNZbAEiA4gaVg3Cqu8zfQzzy78Jm0L
	z4c0NI6vZVRcQmsUHI6YkJyh8Sil+4U0mZ2SP0+sz/lEf2u6IRw8NV7XIx7RC507
	w==
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4aph60ps2h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Nov 2025 09:50:11 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 5ASEoAK5027555
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 28 Nov 2025 09:50:10 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Fri, 28 Nov
 2025 09:50:10 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 28 Nov 2025 09:50:10 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 5ASEnshL011641;
	Fri, 28 Nov 2025 09:50:06 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu Miclaus
	<antoniu.miclaus@analog.com>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/1] dt-bindings: switch: adg1712: add ADG1712 SPST switch binding
Date: Fri, 28 Nov 2025 16:46:13 +0200
Message-ID: <20251128144627.24910-2-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251128144627.24910-1-antoniu.miclaus@analog.com>
References: <20251128144627.24910-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: wIB7lsAi-RNN3g-KAyJOKQbTJSWoUWJM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDEwOSBTYWx0ZWRfX3dKK8os9dkLE
 j0Wi+8/eDaqHmof8T0OaKkz7i8F2gd94sOZQfoipzrF868W3OTG163Jq9IoKD2TkySI+cSOd8if
 q+cjSNiR3azSNorS1e7/J59dLd09OrqTCR6R8cs44IciiwxJkidkS3GCPTg59zOKmB4nw1u7PHo
 WeKdMmDS5CvTfYDZJgV4vY65weNLl5SfqZ02YiQSINv2GRyItREU0vUBcXuzTgRY1IgoosgpzQh
 JTyZ0Z+kma3ROPfpy2cvH6Xjp9rsGPv8sqxVPULIlRhukmudcrWSRZL4VxVu8/kVIBX/e4LcJ9J
 BaeMkbOgsXDzf4+E9KTBtBMxikhfsag2WTuhSyc3ifUqCbQXjgL0seLwDYtPQHAIhAarx9awcxn
 fVXCQyJuEl8j3kTyt33SZhvCJkRtIQ==
X-Authority-Analysis: v=2.4 cv=BN2+bVQG c=1 sm=1 tr=0 ts=6929b6a3 cx=c_pps
 a=PpDZqlmH/M8setHirZLBMw==:117 a=PpDZqlmH/M8setHirZLBMw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=gAnH3GRIAAAA:8 a=kAWTVmwcsxydm42GZzUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=8fm6hfnWjXMA:10 a=JzfDffya2EkA:10
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: wIB7lsAi-RNN3g-KAyJOKQbTJSWoUWJM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280109

Add devicetree bindings for the ADG1712 quad SPST switch.

The ADG1712 contains four independent single-pole, single-throw (SPST)
switches, each controlled by a dedicated GPIO pin. While the device
uses the existing gpio-mux driver infrastructure (as each switch can be
modeled as a simple 2-state mux), a dedicated binding document is needed
to provide clear documentation on how to properly represent the ADG1712
in devicetree, following the pattern of one mux-controller node per
independent switch.

The binding references the gpio-mux schema and demonstrates how each of
the four independent switches should be instantiated as separate
mux-controller nodes in the devicetree.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
 .../bindings/switch/adi,adg1712.yaml          | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/switch/adi,adg1712.yaml

diff --git a/Documentation/devicetree/bindings/switch/adi,adg1712.yaml b/Documentation/devicetree/bindings/switch/adi,adg1712.yaml
new file mode 100644
index 000000000000..7de9ec1b7447
--- /dev/null
+++ b/Documentation/devicetree/bindings/switch/adi,adg1712.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/switch/adi,adg1712.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices ADG1712 quad SPST switch
+
+maintainers:
+  - Antoniu Miclaus <antoniu.miclaus@analog.com>
+
+description: |
+  The ADG1712 contains four independent single-pole, single-throw (SPST)
+  switches controlled by GPIO pins. The device operates with a low-voltage
+  single supply range from +1.08V to +5.5V or a low-voltage dual supply
+  range from ±1.08V to ±2.75V.
+
+  Datasheet: https://www.analog.com/en/products/adg1712.html
+
+select: false
+
+allOf:
+  - $ref: /schemas/mux/gpio-mux.yaml#
+
+properties:
+  compatible:
+    const: gpio-mux
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    /* ADG1712 with four independent switches, each as a 2-state mux */
+    adg1712_sw1: mux-controller-0 {
+        compatible = "gpio-mux";
+        #mux-control-cells = <0>;
+        mux-gpios = <&gpio 10 GPIO_ACTIVE_HIGH>;
+        idle-state = <0>;  /* Switch open */
+    };
+
+    adg1712_sw2: mux-controller-1 {
+        compatible = "gpio-mux";
+        #mux-control-cells = <0>;
+        mux-gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
+        idle-state = <0>;  /* Switch open */
+    };
+
+    adg1712_sw3: mux-controller-2 {
+        compatible = "gpio-mux";
+        #mux-control-cells = <0>;
+        mux-gpios = <&gpio 12 GPIO_ACTIVE_HIGH>;
+        idle-state = <1>;  /* Switch closed */
+    };
+
+    adg1712_sw4: mux-controller-3 {
+        compatible = "gpio-mux";
+        #mux-control-cells = <0>;
+        mux-gpios = <&gpio 13 GPIO_ACTIVE_HIGH>;
+        idle-state = <0>;  /* Switch open */
+    };
+...
-- 
2.43.0


