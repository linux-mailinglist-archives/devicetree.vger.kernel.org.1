Return-Path: <devicetree+bounces-219290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18963B89CFD
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:10:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52BC05A33D6
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF96C313E0B;
	Fri, 19 Sep 2025 14:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D6LdSlJh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0923D3101C5
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758291012; cv=none; b=RkrHsv/zmTzsKoy5VNtexHEpG2wqE1lRV2/Zhf/z6jKbVkv54400GjUSlS0qEBq+4xRhYYL9GdUrfB5NTM/iGDw7quIKQdnQhtmijeT0mmoEDetRExt6bU175IRLFwoywjeUrj0CdLAFQdyk+c963GoI2Moo3OQt67uJLxsJ1OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758291012; c=relaxed/simple;
	bh=Ftr7Rk2E1qjIyAAxEeFjq3bv/Y1G9PinJpwEVFKfAsA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=K6wu2wYjZOIiqHbs64v1eUGQPoBnJsK4ubRvMtPhzQ127ie0COTKPNCU+ubug8orDX/DPUyIVBGu6e9P3chigr9m/l2lQryK3D2+/hdoB+T88m74w1uC7q9cKlETUQgFByebYVTPJMl3SgVEH0omrkQGgKd6MSJEwj/O5Z5L2sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D6LdSlJh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JDOnUD030556
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:10:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=aU9rrRsxGZJ5bX1FLuguMvGEjwygXeBO7pH
	/6CBxlLU=; b=D6LdSlJhpc+XiY64JauFr8ypgVbgv7P8ZdpFhuLKe9EPPFpsU3K
	ns8NKvi/65CNTkcxJqTd0mMHeki/aW/IAdAeOdo0rm53+r9tAwIcqm2grBH/cJLI
	ZAiZZF7KivCkaow5i0S/seO/exGgAnyVRnGw5eSUbQhd9fUVGoTyOcSJb0YFFcV2
	uuMvi+HUKMpj7EEFrQ8vvRDWZxV9hYxWMFCmqCjkNIpj+4U9EPPbZO2QetGbZNxl
	4aGbgKE63aa3pnKtSFORw22Vw/3EGjRb99DJ6Qw2U7Mhsk1GZA5cjV0loRXUgJof
	lzbGPcTFAsPDU+jLmoFFGjKSPQ5zsowjjzg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49916x1grj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:10:09 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3307af9b55eso1518022a91.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:10:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291009; x=1758895809;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aU9rrRsxGZJ5bX1FLuguMvGEjwygXeBO7pH/6CBxlLU=;
        b=FyAefyDZlOw6uftv/f8hV4fHx5Kz8lw7P2BJA+RaiNRQK/Y0SSOg2e0aM8m2gGDHkd
         RjTsAtuH+FiuhWXm5BD9TRUQ7tPFFXSwPZfStvB9V+Aqw710fMYVqO69kpHzIV06FoPJ
         0onllhu8xMHJAyxfeA1vpyYDiGM9crksOVdaC0f4G42dIB7KDDYikoV+TS0JsHa9ybpt
         ojBew9JuHZF+e7W63lgrvILYESwaEzwGhc1EaN6dcEH0YEI+4rxo0gogFiQFm3YDZRzF
         CrKgRdJnxLtBWq0P6eUkIXVlXpMaV4i8s31uMzPSQlSdbVyjo76aB8wW43CYLE/CCncF
         U54w==
X-Forwarded-Encrypted: i=1; AJvYcCWq8BcnhPZpmkF1JbVMUfkHHGA6w2gPMPaZEZfOly8DyL+mHlstNfybwYM64fBkVxGs3uyk4fx7eCLX@vger.kernel.org
X-Gm-Message-State: AOJu0YxV1i2HmGkd8ox+MscQewrj+QAvaLiKZPYdCk7XcKOXj+jT2qaJ
	lXhy5oKcrLQ2cKqF2+DWVSRhmPcrFC7ZU6+9RErDkNpd/8IAyeRC+S+mYUd22Z58k6SHobzc0nn
	TY7Mj5/qgpYcsfAn4NW/TEouQJyVbePxLt1jw37uVL1XlDeStZ9MS5VN3G0hSOB5B
X-Gm-Gg: ASbGncvlPCGiseRPko7LE53qCXU2fbtNB+FvRuj/hhwsy/SIHaRgjvtmaJwwxehlJe9
	oNTLVgu5FmKmpa/FNSwbs2mElMYq/ICkTs/u7wmNBVFUgRtZZLCMe0NlBALAJ1NL8TUgWmpDASC
	HQ7Tui/2rrfzgw5jg1jqVNl1+Gg2b0cpKbGYyQ3k3Yow/Rnu7Q11+MwXL5//WzX8JKlEzy4Det/
	+9LiAK/hMxkfy5sNNqCUPuKPr2ZOCkOWhH19yHNYd1CCmlisaIbcu5ZuztrA60TVjeH1llGekqV
	NjNmIBYCYhKV+ifV83lyr6wyC7riSUaw2vekPiImu9Jx5ApDh1ACj4pd9bM2sMItNsMHVyLzC8F
	RSxu1LcMf0phA32HVJhsu+4G1drgIFRD+xrx8P3nJdaoxfkaLdrZY1VPpsEtP
X-Received: by 2002:a17:90b:3e86:b0:32b:cafc:e339 with SMTP id 98e67ed59e1d1-33098398714mr3989294a91.36.1758291008721;
        Fri, 19 Sep 2025 07:10:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErQzIaSQcEsJdQnvxCy8h4m+hTnW8xaHFZBBjCr29z5XzZ5zG99MiqrvIyNHbXCP515qCgpQ==
X-Received: by 2002:a17:90b:3e86:b0:32b:cafc:e339 with SMTP id 98e67ed59e1d1-33098398714mr3989250a91.36.1758291008086;
        Fri, 19 Sep 2025 07:10:08 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33060619245sm5644272a91.1.2025.09.19.07.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:10:07 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: spmi: add bindings for glymur-spmi-pmic-arb (arbiter v8)
Date: Fri, 19 Sep 2025 19:39:52 +0530
Message-Id: <20250919140952.1057737-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE5MDA0OCBTYWx0ZWRfXwfmYGTUnhcBn
 QCweEEYlaVVQfgp+8wxkdhoHPWdNxGE5NIrT33XqTDVNoJ7MD8I77TDepQIQDKkEgnJZA89gDO6
 vyf9UiKhCzMFhsomYgIFdxdz8WTwAufVxxlY5C3lO/j+UuoSX0x3ND0JpWzZjSj4SKeEtvGWVfV
 BUePJh5GxJdexwPiPZ5y/clDd5qnK1UHrCPMdlQ8/9+jXv9MZ/Eq1tCuTAGfWn8VPe91SvGIKoT
 no1J+z6Rfz5Nhnmfqe7qABUzwPaSEi5kzVy4z5d/A+a2GBrHvLYiXlrXZbx47j0bNu/Dl6rgIaQ
 Xfy8tGCv9Bn4XE9tp4eAMs9Peec3RJKbGlNuow2UKCM61V8AQCmwbtWjM+CV3gAZqnfRcqcqM1A
 3Zdi+ytB
X-Proofpoint-GUID: B8G1qI0pyHlBXP4VNFE0fYFoUFoR5cAn
X-Authority-Analysis: v=2.4 cv=LcM86ifi c=1 sm=1 tr=0 ts=68cd6441 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=t41Tp4pyULMMg2XcS3IA:9 a=mQ_c8vxmzFEMiUWkPHU9:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: B8G1qI0pyHlBXP4VNFE0fYFoUFoR5cAn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 spamscore=0 impostorscore=0
 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509190048

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
---
 .../spmi/qcom,glymur-spmi-pmic-arb.yaml       | 158 ++++++++++++++++++
 1 file changed, 158 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml

diff --git a/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,glymur-spmi-pmic-arb.yaml
new file mode 100644
index 000000000000..e80997a5fb4b
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
2.34.1


