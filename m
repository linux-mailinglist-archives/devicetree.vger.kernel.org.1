Return-Path: <devicetree+bounces-206772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA20B2D8B9
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:43:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09FDE3A96AC
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F0A220F20;
	Wed, 20 Aug 2025 09:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="israyspq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398E41DD0EF
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755682550; cv=none; b=gCo3iIfPeA4uSAwtbdT/6hX35fGPvbqif8vKYQ18BqC79vM333Yct87tfdu0rue9UGt23kMK1B5xmEUmORc9fKAZSGacwLAIVgJzaQmmytc/zoMkCH7fCOZiqm2KKXk0RzQmBCciEywfa8s2O8VlvOnllpR8fxKZYu5fapELVlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755682550; c=relaxed/simple;
	bh=955LdwJghMXcL5Oa+X/F1FbgTdWO2XwHgQyUzbm6CDw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bpVp6yQstu47PH7AXmtTbuiMhBPNChPQwcohkLZ0Es4/8aOovg2oxsKOXLMuJ/6aJhmyxU+fKNzv0FGzhv17e75jWKqQ7tlEpTmu7srf31xejPK0jdqQmyS0LyVEH8SqJX3k3ZZtBpCBjWxFNVIjPfQkW0xw16sBIKhs+sinC7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=israyspq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1pGnu009680
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:35:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/49lgJ2lsCfdk25hmebOHzPWeKmLJyq/ws+x1TYhUE4=; b=israyspqpbWd2wp8
	leQfCenqxm2845XZ5xLbsqfuzlVK+zU6/lRl0sCjKN34B0Iiaagf43GLo4kBa5t5
	aSb6d8MEfAOG6wSJr6K49b6UNI8y6QXrb3AZET286aM7EN8CmPLsm7C0oX2R/kTw
	qJkiwa68HLMww/eTBN3bKU1iIWJSV79eQr4PXwjcUgUOcgyI7ipbdKTxHsgRDVh5
	OzTqLBsMEzDx4si0I+FXl/7eG4JGZ1gOwkiVwfCE3QyBlWj0sGi/6CCf1iT8LYp1
	vCQBhJkYqz4aWAenF7AbSFB+DwvgHmvFUF0/poHBilaE9XOU/MxC8PKOBqnf/Kwn
	HvLk0Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a17rv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:35:48 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24457f484d6so15313455ad.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 02:35:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682547; x=1756287347;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/49lgJ2lsCfdk25hmebOHzPWeKmLJyq/ws+x1TYhUE4=;
        b=aN6PJcx3fnsORXcUki7zFyiBLeso2oogqsJljWqjktBQeeit1RNyVYjgOaPm2qEdXA
         IgxsZxqSZphOn1UzcNtFQybNjskH3BsQCUqJFhGTaUxajIbFqwBnY9VX9FIbEQWOiGVs
         s+rqoo0S+WvAOqHjs8wqPkhWxp6L5pHQOo37V9EcwSXpMGVgr5Qo+XqEvcrblJ7U/s+O
         RNgopTDbYLiRf+dWncrCN3HhekigXJ9GKf2SuVA4h70KAzfoHiWqhvg2DhkwZdUgQDE1
         rb92hV1V9ZXGKV7vfouO8pAkXgIAPPaXP0Ac/hnmtmopGSlRMr/pqmH6QdepeSTB8kIg
         HzMg==
X-Forwarded-Encrypted: i=1; AJvYcCVrDIKGZcxG2dQFMuFiEJR6+i41F6O9Qor1hsSYjAeXWNx+wf2nueJgHGAJrbFu/CPWpv7MoYz1Q30A@vger.kernel.org
X-Gm-Message-State: AOJu0YyRDvuB+lzPetat8o78kMq/Bj4BN2BSXUbIpvWK62v2MFWd/PAX
	TC9XGHbMtZM/EQyCdxIG4fDIESk2rEmVVa3HB4G/j3h5qXZ/QeBiIErsCACsRA8A5ud5D/1DgKl
	N1F3FxMe9O9lG/BFp2e7Pz+34+1eFu6MFLZ5jQlFIzGBNnpt3Wxoksiik39JEVlxL
X-Gm-Gg: ASbGnctFKJeMuurgAcV3dHtHGgjZmGvFUpJeGnHMC3mbIBlOTkDMZwHvR084Uu12WZA
	ITegbqmYhSxEtwIC7e6+u1c7K31SA2RZt7pXktdxGPlsPbRrcofZIBDiVo8xcQK0V4bvTzdVhUe
	aO06hAvp8tqTlgWE8GcLA4VRTuwuN+35sTKbJPpXyULQkOrMnfPgdOLYgpm3hUhhTs6iRUhyZ5f
	tBhyBLc2QkKJIVvews3nSpvfy7iMg6vWFSfjD8HHciiVxdrslY/CraAEWJtiF9rCsB1+Smm9Rgm
	QhOseDm+RJazObshjTyM30/vJsRWExix4YOmMgabER3W+NKR/R6w1HmHCt+8w/jCqTYG0kzR9R6
	HNUTPKs2kq4eUBre0JcIMjNgxFQ6GjB90tt8K2aItrkZ6h7Y3c8qmuwn8
X-Received: by 2002:a17:902:eccf:b0:240:3e72:ef98 with SMTP id d9443c01a7336-245ef289590mr14784855ad.10.1755682547309;
        Wed, 20 Aug 2025 02:35:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEN7kE8X7szS3MCwXFpbr5XYPBLHKFwJ2wnJ+GWqlR/yDhGf6M8mCARQFC3BCAmxLuxBIVsiA==
X-Received: by 2002:a17:902:eccf:b0:240:3e72:ef98 with SMTP id d9443c01a7336-245ef289590mr14784525ad.10.1755682546776;
        Wed, 20 Aug 2025 02:35:46 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:35:46 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:44 +0800
Subject: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682520; l=3426;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=955LdwJghMXcL5Oa+X/F1FbgTdWO2XwHgQyUzbm6CDw=;
 b=nRN16ajcM4hDuEKG4MGhqYaO9MQPThBPfr7/k5iQv2p8RAz3Bpvm3qgoHRjh9h0AQnJ7Lr8uJ
 zPjRkWKFQ6FDsj88aANvA9/ugZbqSMVWLWriyLXGLLoVvPm0Bkvhv/o
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=feD0C0QF c=1 sm=1 tr=0 ts=68a596f4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=W1uZXkYdwnJCVkvvQWQA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: zMmZeKABgf2VBCJvedGyaVlutRQ2Iam3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0z3qte6P9O1p
 gymmoKqTHpetOOXkPUI404xI+75Q7wpORZRegfng4sx9B8Cp8tYirFb6bUvuCB5H9gQKYTLwp/v
 0HAnyvbminPV9jYgeD6ANgfGgEsG9NipZhzXuHioIRMMNgdv1m8lg1ZABN5hBY4QG0opip87/cI
 eLctmImIbPDxGg5FbtngUpgqWMRhjSgmpSo2rD1XRdAsjB7rgK349QHKSzXOhvjy6m4ScOvFbsl
 81AitSHI4O52kfTOtj8a37OXeWSWlTJKg3PocLalzHRUypod7v8/DLRPlMbqhYEBZxHgvcCq6ka
 NcNFeylkYCU6p4UgP2ef5l1qIobT4U3oTdMoVJ6fkparYc0MmIbn4jsxFgMBg6jOQMUMdz4fEir
 HmrXTOiUFAcRB1hrhVm1zNVaWFv1Jg==
X-Proofpoint-GUID: zMmZeKABgf2VBCJvedGyaVlutRQ2Iam3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
on QCS615 Platform. This PHY supports both USB3 and DP functionality
over USB-C, with PHY mode switching capability. It does not support
combo mode.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 108 +++++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..c2b1fbab2930f0653f4ddb95f7b54d8fe994f92d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
@@ -0,0 +1,108 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-usb3dp-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP USB3-DP PHY controller (DP, QCS615)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  The QMP PHY controller supports physical layer functionality for both
+  USB3 and DisplayPort over USB-C. While it enables mode switching
+  between USB3 and DisplayPort, but does not support combo mode.
+
+properties:
+  compatible:
+    enum:
+      - qcom,qcs615-qmp-usb3-dp-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: cfg_ahb
+      - const: ref
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy_phy
+      - const: dp_phy
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
+
+  "#clock-cells":
+    const: 1
+    description:
+      See include/dt-bindings/phy/phy-qcom-qmp.h
+
+  "#phy-cells":
+    const: 1
+    description:
+      See include/dt-bindings/phy/phy-qcom-qmp.h
+
+  qcom,tcsr-reg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the VLS CLAMP register
+      - items:
+          - description: phandle to TCSR hardware block
+          - description: offset of the DP PHY mode register
+    description: Clamp and PHY mode register present in the TCSR
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - "#clock-cells"
+  - "#phy-cells"
+  - qcom,tcsr-reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
+    phy@88e8000 {
+      compatible = "qcom,qcs615-qmp-usb3-dp-phy";
+      reg = <0x88e8000 0x2000>;
+
+      clocks = <&gcc GCC_AHB2PHY_WEST_CLK>,
+               <&gcc GCC_USB3_SEC_CLKREF_CLK>;
+      clock-names = "cfg_ahb",
+                    "ref";
+
+      resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR >,
+               <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
+      reset-names = "phy_phy",
+                    "dp_phy";
+
+      vdda-phy-supply = <&vreg_l11a>;
+      vdda-pll-supply = <&vreg_l5a>;
+
+      #clock-cells = <1>;
+      #phy-cells = <1>;
+
+      qcom,tcsr-reg = <&tcsr 0xbff0>,
+                      <&tcsr 0xb24c>;
+    };

-- 
2.34.1


