Return-Path: <devicetree+bounces-220833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D94AB9AEFF
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:58:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B5D91B281B3
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 16:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD21314B61;
	Wed, 24 Sep 2025 16:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ktWUXseM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA50314A79
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758733087; cv=none; b=heSOUSwUjOCvfbILdoJdZlQf/LGSkGGtaGHdfFNRXJr/XtZvdYuHVOzS3yJQwpTVZD831bxl4wUqNT/7nYktkVvkoIPHYlTR0nZbiOrCeqSY06GN/2vU5S0vD4X4q7ScSWKGjVya6yvby0QwPpC70xAv9Y1hpDncQUUOG6bNoJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758733087; c=relaxed/simple;
	bh=IGN5U7nLchdIJ9+t4kEUHTtURx48mGfXTiNwIvV2Y5Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eeLsIPcK83XsdENguG51tZVLlLZlPFQ3qVqHJDTkQ6wb5VZoegyjlujfwEVnOzVfECSSAWS2oDOXwTTivg14gYfqetfRiOu3FC1GGgHBTDDi6tlUGu0q73uFvQ8Oy3cBy0/HoLc07TMB6CbpTlhnh1HDhEPybDUeNnfX8KMd0XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ktWUXseM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCkQaf029712
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:58:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e/BkY1LLI9ozyqQ6eUzCMLS/ra6VSlcuobkeZlX9n1Q=; b=ktWUXseMQyWJDsKA
	C/fsG6tBFa1RLK5wwNfo+p7uNbGhcTx1IcOBRe9hWYOJx4o03YqITOQMFia8SNdc
	LDN1ucMuPMM7gxJU1cXn5zIDmKeBkgKN9E0Bq9VYyQePhl8YoMf425fpxPGkM6QG
	3F32HzkYVsRWyGE3fxcsfnPmyrmp9Mg4QYslNgJcTo1a6tRp/JW+gLIVYqs4gpXW
	DfD6mMFVkKygGNWoTraoYSkTEBHefzNHIw1z/smD7GG+qPrs/oXvNElcDoH57wlQ
	Yq6MU6Xf/o42H7NcjP2OFZMRMgGZcjp+ieSrb9dx0CFZkxLgEjh8ypaLCjH8pDWU
	st0W3w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fn0kr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:58:05 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24457ef983fso454625ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 09:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758733084; x=1759337884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e/BkY1LLI9ozyqQ6eUzCMLS/ra6VSlcuobkeZlX9n1Q=;
        b=U6DoenWVrhWuUdYLMUlWwgKiIM4UhEvhEuonilhzZl3guR2pr0VyuCa/eo6F0CB9Dp
         nzpKESeFLW6s2ufOFTRak1RRs5JW/SfIbz84p3I2V6zu0Nff3bD9KdBzR3aVx0awZpUY
         AD2DZgsZTqffFsAndjKjkacXekPj5zgIF8hDMPbeTWwZFuQ/HxtIFaMjGj4LFa0orq4+
         NQq5HzHI0l6RDK8aNUS23XdcRai+5AX81FGyvF8owRLBF9T+NNho5QF8K2xA/wavhUp2
         04Rq9hsqE7sPr2hnm0SS2kBh04ps2ABq+vU2m15Tfe2jJi0sSgPs7R6O1UfbprI0Tyr/
         hILA==
X-Forwarded-Encrypted: i=1; AJvYcCW+OXIDIhW6EUPOdX3BSh6ryfh14CohgW2Vc4d/LBUcH1eeupzCfxcbLfexgK8JijI2vxaRGkPa73ob@vger.kernel.org
X-Gm-Message-State: AOJu0YwkjD4aH78LombYn5fAZYmZ6YRHiDLSpGF/zlQqJr0cYisE4BXl
	pyLrbaH494322P2ksZawoifMC5bwUxjm88BESPklzF9Kq4dDcXy7OKZSNzvHxDht6odXDDA42d/
	j05uT8/K+T9cSLClHUfI7TkZJbsjKnHmVkYrE2KlQ96yawyuLEiLF4IsSD+be6XRRbsAMUe3v5/
	M=
X-Gm-Gg: ASbGncv/u/aCnUpK0UwhxIalalBTmAlTouiqNrMTm1XGNCYj2BAq6zDS3Vo1/46x36M
	nh0V4WDIsNfaPrg9McTdqOGiFiQ8Wp28fJKCoLwcc48DNtQnCiZLoibM5bjx1oc1L6JsW1RNIea
	QU+sOh0c1+vgCn9TWnt1OLJBG+8f3keLy4H+J+kemX+4rhdPxWPhcMqk9uaRhjV0ccN8ms7oXRU
	Xcpn/3CaOgWvvdNZe5W/HoAYi050OCjPCX2/IFNhj65cBe+toRtIjGYAWPVpUrfx0fiD8htpuYm
	JVMEByccbQCAbPPCX97R3OKbOLqA3teTv8f/hBYj9wWem84X8A0TMnUarB9wbfRqZr7ksDQNgES
	5EynnK6dH0+feULvA+7LASM9iWQ==
X-Received: by 2002:a17:903:2446:b0:272:a900:c42b with SMTP id d9443c01a7336-27ed4a5a862mr4251795ad.31.1758733084215;
        Wed, 24 Sep 2025 09:58:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELB6uENUsQUxLp0glYE/434Zg0JWgqKtx8Rxei2PPhvfpXf+pb4eQQCxhGPcpV674wIaiJZw==
X-Received: by 2002:a17:903:2446:b0:272:a900:c42b with SMTP id d9443c01a7336-27ed4a5a862mr4251455ad.31.1758733083514;
        Wed, 24 Sep 2025 09:58:03 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26980053078sm197415895ad.10.2025.09.24.09.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 09:58:03 -0700 (PDT)
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 22:27:33 +0530
Subject: [PATCH v2 1/2] dt-bindings: spmi: add bindings for
 glymur-spmi-pmic-arb (arbiter v8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-glymur-spmi-v8-v2-1-202fc7a66a97@oss.qualcomm.com>
References: <20250924-glymur-spmi-v8-v2-0-202fc7a66a97@oss.qualcomm.com>
In-Reply-To: <20250924-glymur-spmi-v8-v2-0-202fc7a66a97@oss.qualcomm.com>
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758733076; l=5744;
 i=kamal.wadhwa@oss.qualcomm.com; s=20241018; h=from:subject:message-id;
 bh=QseB4mSAc/+LmgNpuRoU87i6+aLt9O4zwSfWCRie4MA=;
 b=mzOhlYvbIvccUK6x+yxcRpMAVEJ6GltSwQfOgskJZVtSNsYe3MdcD3v9gED1GZ2L2fWamso/x
 +TEtZBhu7I3DRKqL0bIiglc3RQ0O7tF2r64UGvo36ypgzXdeUvV/6Qh
X-Developer-Key: i=kamal.wadhwa@oss.qualcomm.com; a=ed25519;
 pk=XbPE6DM5/mJi2tsiYwMCJCZ4O5XPMqColJRlGVcM7Hs=
X-Proofpoint-ORIG-GUID: Mxoe5cM48TpQiYjAJmb_6E0Cl1_itH1o
X-Proofpoint-GUID: Mxoe5cM48TpQiYjAJmb_6E0Cl1_itH1o
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4231d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=t41Tp4pyULMMg2XcS3IA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX57JeUGvknsAm
 3811QuZ9yTm0mi5mxnl63rxEZk4vXOayGRWePa/Exz/tcPrgiE7rC8ythRA0lS/zQ4IqjIbQDA1
 9qGGA4xLCcPV2wEh98AvT706DpnM+VW5PXGD4wuPKNt4+170gV6m7y+W1gh5h2b6Q1Y8f4wq8NT
 NwETT7+B/VSr4Vm4vBaA3qrtlMJLtlOK0XGcAwstnR13cL26jDm7ea3Bt/7JqtUm6lV5bvP5i9Y
 9j3WdLYCHrlYh3/pCNifP1azGpcdhbbB9rkuJzTNVZjY46nXnpO8qR2DkpUo6PHUjp8jIUzWWGT
 Djdy+DZSAQamb+ORxeOibzSmG47Q4ZrdILYUoh4kPBFFnq6u84tLejsZm6ekPsZB7xNIiEGGhMZ
 F5kAakr+
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

SPMI PMIC Arbiter version 8 builds upon version 7 with support for
up to four SPMI buses.  To achieve this, the register map was
slightly rearranged.  Add a new binding file and compatible string
for version 8 using the name 'glymur' as the Qualcomm Technologies,
Inc. Glymur SoC is the first one to use PMIC arbiter version 8.  This
specifies the new register ranges needed only for version 8.

Signed-off-by: David Collins <david.collins@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
---
 .../bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml   | 158 +++++++++++++++++++++
 1 file changed, 158 insertions(+)

diff --git a/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..e80997a5fb4bcf59328e49c8b3e68c9511176a8c
--- /dev/null
+++ b/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml
@@ -0,0 +1,158 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spmi/qcom,glymur-spmi-pmic-arb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. Glymur SPMI Controller (PMIC Arbiter v8)
+
+maintainers:
+  - Stephen Boyd <sboyd@kernel.org>
+
+description: |
+  The Glymur SPMI PMIC Arbiter implements HW version 8 and it's an SPMI
+  controller with wrapping arbitration logic to allow for multiple on-chip
+  devices to control up to 4 SPMI separate buses.
+
+  The PMIC Arbiter can also act as an interrupt controller, providing interrupts
+  to slave devices.
+
+properties:
+  compatible:
+    enum:
+      - qcom,glymur-spmi-pmic-arb
+
+  reg:
+    items:
+      - description: core registers
+      - description: tx-channel per virtual slave registers
+      - description: rx-channel (called observer) per virtual slave registers
+      - description: channel to PMIC peripheral mapping registers
+
+  reg-names:
+    items:
+      - const: core
+      - const: chnls
+      - const: obsrvr
+      - const: chnl_map
+
+  ranges: true
+
+  '#address-cells':
+    const: 2
+
+  '#size-cells':
+    const: 2
+
+  qcom,ee:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 5
+    description: >
+      indicates the active Execution Environment identifier
+
+  qcom,channel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 5
+    description: >
+      which of the PMIC Arb provided channels to use for accesses
+
+patternProperties:
+  "^spmi@[a-f0-9]+$":
+    type: object
+    $ref: /schemas/spmi/spmi.yaml
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        items:
+          - description: configuration registers
+          - description: interrupt controller registers
+          - description: channel owner EE mapping registers
+
+      reg-names:
+        items:
+          - const: cnfg
+          - const: intr
+          - const: chnl_owner
+
+      interrupts:
+        maxItems: 1
+
+      interrupt-names:
+        const: periph_irq
+
+      interrupt-controller: true
+
+      '#interrupt-cells':
+        const: 4
+        description: |
+          cell 1: slave ID for the requested interrupt (0-15)
+          cell 2: peripheral ID for requested interrupt (0-255)
+          cell 3: the requested peripheral interrupt (0-7)
+          cell 4: interrupt flags indicating level-sense information,
+                  as defined in dt-bindings/interrupt-controller/irq.h
+
+required:
+  - compatible
+  - reg-names
+  - qcom,ee
+  - qcom,channel
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        arbiter@c400000 {
+            compatible = "qcom,glymur-spmi-pmic-arb";
+            reg = <0x0 0xc400000 0x0 0x3000>,
+                  <0x0 0xc900000 0x0 0x400000>,
+                  <0x0 0xc4c0000 0x0 0x400000>,
+                  <0x0 0xc403000 0x0 0x8000>;
+            reg-names = "core", "chnls", "obsrvr", "chnl_map";
+
+            qcom,ee = <0>;
+            qcom,channel = <0>;
+
+            #address-cells = <2>;
+            #size-cells = <2>;
+            ranges;
+
+            spmi@c426000 {
+                reg = <0x0 0xc426000 0x0 0x4000>,
+                      <0x0 0xc8c0000 0x0 0x10000>,
+                      <0x0 0xc42a000 0x0 0x8000>;
+                reg-names = "cnfg", "intr", "chnl_owner";
+
+                interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "periph_irq";
+                interrupt-controller;
+                #interrupt-cells = <4>;
+
+                #address-cells = <2>;
+                #size-cells = <0>;
+            };
+
+            spmi@c437000 {
+                reg = <0x0 0xc437000 0x0 0x4000>,
+                      <0x0 0xc8d0000 0x0 0x10000>,
+                      <0x0 0xc43b000 0x0 0x8000>;
+                reg-names = "cnfg", "intr", "chnl_owner";
+
+                interrupts-extended = <&pdc 3 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "periph_irq";
+                interrupt-controller;
+                #interrupt-cells = <4>;
+
+                #address-cells = <2>;
+                #size-cells = <0>;
+            };
+        };
+    };

-- 
2.25.1


