Return-Path: <devicetree+bounces-242220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B98DC881FC
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 06:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9859C35118C
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 05:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF1BA314D39;
	Wed, 26 Nov 2025 05:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N4UcXV6Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KX5IEF9+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85BE313542
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764134020; cv=none; b=ES8Zt3VVEN3Q2HZ5o/Kzk7FNbpnpAp01oArLIK0RYGQv9CNSqS7R4+CqUkwgVtvQe3mIj+bsv081G/Bxg5se8CBR1gY8bBsUsOi6Rvr7lwDZmN1qrer5xeTdmXzF1JcOIcmjck5IhR5vXxkYAYop5QPC1Rts/MzvMSAA1+XbTic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764134020; c=relaxed/simple;
	bh=Mjr3Uq5yLFh/qgABCSff6VcI7sqTN5uXjj3NPpSl7us=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bixDOCzgLMzuY70BBtLX1x084SbtWTKtWtl/AJn1binPwohALNjRyM0eIwVPx/0cpP2P4uG9PGIcpmH7XJILoqbwq6/LIM8YshtA0bpyibfwS7UQ7kYDOQUTrvBkyLRd0eJzt0j3dz7cHA1r7nxiOlFQxT/c+78KMqPiDU7RNrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N4UcXV6Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KX5IEF9+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APM3QX03256242
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:13:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x5sWxNbDVr+10c9u1k51VriM1dvH8KtZLvCkbTT9Z24=; b=N4UcXV6ZEMi6ooLl
	/sogQnv/YOPUIuTTUYwmDRRUA/B1ZSXj2y6YWbKMXW7zABk1tucKluG6h5hMmswm
	BG9diQy8ls/bxLt2NgdjdXPWnJVi/r2mwWczzGALJbmJxaw5RV/KCiqRwCL1mgbu
	v4MIdruoL3RVE20PYW5SvKRpVl6r1YlJXntww9w7fCVe6oDzN6b8OUZ4qq55FmM+
	wooH7HEJ4QNejyuU7UHVevEVe6TeSvGQHIizafllNIPHtz8WXJWIzdlLI/D3/Aay
	ybYUDm5GJbiRBHItE0rSlPerhTRuCHh1R8M97kxhNuueboLhbluo8SQ14AIEvkpS
	jp95gg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anb9c2m44-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:13:33 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29845b18d1aso124078395ad.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764134013; x=1764738813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x5sWxNbDVr+10c9u1k51VriM1dvH8KtZLvCkbTT9Z24=;
        b=KX5IEF9+8PT0arox2idLpNppnsDYpMpw+polrPvnIOzQIxpCCWa8CmFg0WMjnJdrXi
         aeRGXy+AqW7B6cMQMk2qzHL9ovdNaPn544bFZA3wGvNKVTG0NIZch2bLx/u9eOK6uxDJ
         GSVwYpTs4Tgc1xF6ChAEZQs/iMkiL+E+7SK1SexQh9/baHcUpIR5MZteYyv1wJgrSVkO
         Upu5KXWwnBHacIivpBJ9l0dIRxrk3wNm7PIFZEeX+YGCfqX6rUCk5rqxv8/vgJ5lGaac
         FZeol77aJXe3Rd2QPxxA07DyCbLbCgFsn58GYcPL/XHDxQ97in9VR6dwlEsWP+OZ1o4L
         Q+8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764134013; x=1764738813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x5sWxNbDVr+10c9u1k51VriM1dvH8KtZLvCkbTT9Z24=;
        b=NIP8zTknHqzkEKddXgeUctjw5pyHkK+ha6fvWDH7t+uRIfK7ED/5kY8GeEErkjweGR
         5cdY2aWuluzbZKwXq3x3HejS07s0BK+j5InNyY0NTKLflsElgFxmXA+G5wMX1IbMREgR
         dZqNkbGoteT2j0zimaHe26SGnWwcOH4CL3Xeu92MjJmE6BoE3K5eD+9YkNN4G9GQBN1+
         inAl4U3jh9pGWYbA2evoniaXg/45sSVIImFegkJ8RseZ6gO9K3Ndmht0iKd77Qdnfdlk
         KUm06NNS7YfzK2huekM3JhJm9Gs4yCOLPfN+Ky7YIY0LnTYOJJdUtWeHrxcQjFWPg1mp
         nizw==
X-Forwarded-Encrypted: i=1; AJvYcCVx4DoOsWARqpUEfb2sUSz1qqTwBEN5Ng8QxixZWpOdLoLehFiRfesEgVglvaLiIW6cNK3avOlRcRcD@vger.kernel.org
X-Gm-Message-State: AOJu0YyggFdkkK04gxq3+ihx4jKEH0+PH4Gdn1WVUwZmVGvDl/IOu+Pa
	IG9D1xjZtq6dpRNBbZW/EXOh3t8Pi9XxRgTMjXtU1MB4oDJ21423Yac8hYrN12v+LFIIUoQ2yra
	qNVCVuGbW6Tl4F4xg+n3613OsXWwfazT3l9aptSNhn9uu4u9DSdgTBPtT/H5DRfIs
X-Gm-Gg: ASbGncuhHNMB5EIEREW9J+NnWo4pV86kVGNy3vdsdzCA/nmuK+/YlP6QgM4p1a0ATit
	uYKmnjQOaG5KMNPJmF4Hb4XQdzaHFvgpPqSew/lc/KolGS8Tf/DBVXhHtSK/Ydz8w1E8wZ+ynJ0
	ie/XQhjr/dUdQ1swW38LZXpJPd83tlMLa7r5iytGNIhqnmMHebgLjyMimtj/vqBKVlO7eawIJY/
	kL/VHBUGpzewbHeBTzitjdp4+w18TSaYdHHi3/Yfyf7LbijRa71cIPoPMHseq23qSLzD7Y94Wct
	BbX8iYQVIsYsMrQtf8hNHtVlp3zhCH3KczvedyLGOleZ80E90UhIibm+WzC6fGOPOOZVUedYyGt
	L5DAXIhlr09G7dV/cHMGxjSGhQ3G8+IRYhLrpuMxAZ4H/
X-Received: by 2002:a17:902:ccca:b0:297:f2e7:96f3 with SMTP id d9443c01a7336-29b6c6b693cmr220351345ad.50.1764134012779;
        Tue, 25 Nov 2025 21:13:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFexRh2WeqBUK/mStfH2nv4fzK3NCPdAJpCb5WJtPLYEs3zPnC4ZSuNPqcRCnF+VCdOBCW7IA==
X-Received: by 2002:a17:902:ccca:b0:297:f2e7:96f3 with SMTP id d9443c01a7336-29b6c6b693cmr220351005ad.50.1764134012304;
        Tue, 25 Nov 2025 21:13:32 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b13a870sm183591315ad.34.2025.11.25.21.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 21:13:32 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 10:42:54 +0530
Subject: [PATCH v5 2/3] dt-bindings: spmi: add support for
 glymur-spmi-pmic-arb (arbiter v8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251126-pmic_arb_v8-v5-2-4dd8dc5dc5a1@oss.qualcomm.com>
References: <20251126-pmic_arb_v8-v5-0-4dd8dc5dc5a1@oss.qualcomm.com>
In-Reply-To: <20251126-pmic_arb_v8-v5-0-4dd8dc5dc5a1@oss.qualcomm.com>
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Collins <david.collins@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, kamal.wadhwa@oss.qualcomm.com,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764133999; l=5772;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=Mjr3Uq5yLFh/qgABCSff6VcI7sqTN5uXjj3NPpSl7us=;
 b=IduOHIhVyyDWu0SM7MNUPgJ8fx5hreQA7iRY1Xp9s/8rDNtLyP67R2WCz71GzSRt/dALW4uVy
 Gw/ZYYRwLuDC69etygaW+wbDDMvQajoMcw8ssTSJC+21lhf+kyBF8LU
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-GUID: iANBi_a3PqjQ__AdLgvjsfjbOEmhunzV
X-Proofpoint-ORIG-GUID: iANBi_a3PqjQ__AdLgvjsfjbOEmhunzV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDA0MCBTYWx0ZWRfX2JjDTu//kwDv
 BzxIKk1Vqi9uoyJG34jC3yrbgxCaeH//NmpNubT6FvmuBBmmmRiBr+z7yGRAy1HONtU+dDtpS8u
 V2bDkpsyRtUb3MrVU2wz6to609NBOxt/YNyb6Jz305wcCcKPssm5562hkTAAMZ9vzumg10D6WE3
 fkyVmDb8HUrRzQ0rHXH07Ykf45pPOA1IWyl2WUWvkHnlt4jd6OupQFgmGh6c4qmS+yaVz5yltSm
 F06lRN73IWKL0D0pzen+UXa9hUPPOIVY0LsejoiGN1o4/wt0JROjt6TUILVTcnU/pO6mv7VnaNA
 dYoFNRfgLPmGri6pbaS4dFuuVWHx83PP4VBZgHbET+tc5kMyDbOWCJptQTuRr3KhaudtU3/OWSN
 OpBCI4m4sGY6XkRVmZ9MPnsexhKJSg==
X-Authority-Analysis: v=2.4 cv=VKbQXtPX c=1 sm=1 tr=0 ts=69268c7d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=t41Tp4pyULMMg2XcS3IA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 phishscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511260040

SPMI PMIC Arbiter version 8 builds upon version 7 with support for
up to four SPMI buses.  To achieve this, the register map was
slightly rearranged.  Add a new binding file and compatible string
for version 8 using the name 'glymur' as the Qualcomm Technologies,
Inc. Glymur SoC is the first one to use PMIC arbiter version 8.  This
specifies the new register ranges needed only for version 8.

Also document SPMI PMIC Arbiter for Qualcomm Kaanapali SoC, by adding
fallback to Glymur compatible string, as it too has version 8
functionality.

Signed-off-by: David Collins <david.collins@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
 .../bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml   | 150 +++++++++++++++++++++
 1 file changed, 150 insertions(+)

diff --git a/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml
new file mode 100644
index 000000000000..3b5005b96c6d
--- /dev/null
+++ b/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml
@@ -0,0 +1,150 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spmi/qcom,glymur-spmi-pmic-arb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. Glymur SPMI Controller (PMIC Arbiter v8)
+
+maintainers:
+  - David Collins <david.collins@oss.qualcomm.com>
+
+description: |
+  The Glymur SPMI PMIC Arbiter implements HW version 8 and it's an SPMI
+  controller with wrapping arbitration logic to allow for multiple on-chip
+  devices to control up to 4 SPMI separate buses.
+
+  The PMIC Arbiter can also act as an interrupt controller, providing interrupts
+  to slave devices.
+
+allOf:
+  - $ref: /schemas/spmi/qcom,spmi-pmic-arb-common.yaml
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-spmi-pmic-arb
+          - const: qcom,glymur-spmi-pmic-arb
+      - enum:
+          - qcom,glymur-spmi-pmic-arb
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
+
+unevaluatedProperties: false
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


