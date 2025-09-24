Return-Path: <devicetree+bounces-220996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF90B9CBD9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:58:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 628553BDC55
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D4C2D2490;
	Wed, 24 Sep 2025 23:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wo/jAPv7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF332D0C9B
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758226; cv=none; b=EMcvyo+zbwb6KN92czl8tjqo2DIuVoLB4LvMBBijfFEAFCjCKSmN1noKS0BUcDlfLGBn4ZZHlPckJQONDTCt0jOUgvsY0fEB4KLamyI9iYneyFG+Ub7FqsJBVRvPA3innG6RbTBPhMYDcKm23Tf67sz3K758HkVibKN0be9kTt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758226; c=relaxed/simple;
	bh=eCkBKHaNPdtpqB67OQbfFkYMawea60ibvcUoDFcITMc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mAMTDLSvBe84kLx0yo0YTQAkGFH9ncDNZ29QzIxAVYxhf/W4q7raw0B2UO09LJtsA0rus+ADLsQ/++HbTmEAYhHKF3zLQXiZWhRSIpr2fmaccZO7h3BIyoRWNT+eeTOF7BPcJoY6V7C4E+Vskkb9H/HKgM6PhdJyiPRhaMgEWQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wo/jAPv7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODM0fn001948
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:57:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cTmi/UyKj7qkJkOliY/6Aqc8mHisf8eGbJha61ggIsY=; b=Wo/jAPv73ZmP1ECl
	qSlSMUgoHaR+wKHJBnYRBvEk164S7+UdXgzSIxIJK/pCEWmfH1P31bKPQHIf2i5t
	j21Gwgjf6tE+8xr/ZmyedO4292zFTvGdi81FOcxcZ64TN+UCyliXxaOoGF6+zPaI
	w8D7TZfpt28FC1+ceqB458gwJOPaKADN5pTR/5FMqjrqeB2GYFhFHqXvicA8TR5K
	7acbeVjxDtMviM5rnZXU1oMHYj7wfzUCrtZEk3Pk7eOJBLazwPj1tSYqe3Pw9vTv
	/xPJv3aAq8bq2+/UjxDQSsh6n/Uv1gRn3zla/eU0MdOdcw/Ai7UeS/PoUFalVIsk
	8z1IjQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p41b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:57:03 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2697410e7f9so7655245ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:57:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758758222; x=1759363022;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cTmi/UyKj7qkJkOliY/6Aqc8mHisf8eGbJha61ggIsY=;
        b=vIykPlOXLDw7J9QLuVg1q4YFJaZ/+n9iC5/2T+Rnp6bDH4MP25DOp4VyeJSnTMQD5h
         G9g1CrlEdnuZmpJOFmWGUrw3cwdLm5kwAiXeNr3f0eGRWroayNEYaJlvnlFRzh7wBm4y
         HGdiLSTc/qIUR5jOD9xu94oVNV+dRmww5NejC04fdXJwLqbyRiAbwItGMUGGLX3Jj5vt
         4p8tj6JEEqmUKXWWBcUuMBjbAim6EKZ/mby+oBmpnRmnoIHO1YMKkJPTsztRdujzbRb2
         FmdBGrY53smHSH4+MWzifkOljBIksKlqG/hKwzptetmxnOZIwmLunPwoH9xIsinutrDo
         Czzw==
X-Forwarded-Encrypted: i=1; AJvYcCXiiO6MB0oW9Nr+WQtDMpQOHzW9mO37Q1b2aDgFDcJn+/CaTpByWmxdAWXUmVIprZRv4BHD58vRNlyu@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt7uGSxliez1+T972QwkvxEK1TDv6T41NfZZ/En3N4WjFBWpfk
	kHmN0HGoSMJkEs8yaZE7WtAsFCMfZoVbl79Rvs++vvAY/JSWbKtKdvwd7iag/lGMj+/qLDclgBZ
	LcCdcNgLFxxcOzRq8Vb7e8hYd05153wxofvqOPHDvXJA1QcfcV07Il9hsyPhRfU1OZxC4m0Pk96
	U=
X-Gm-Gg: ASbGnctLiyvzNZ9SEBkklL7v9J3W/KVhv+Nw0ek2MK2eHgA1IEjR4LvMdheGdkm01Kp
	H8StA1rT3vnuK5D+tkuEaYkFj2XNE7LGexCXLjwmQ+ryoIXGIkDVXRUrK4GDZ0hnIbAIer2gpPQ
	N91liIB3Hcki6czEA+73JMTSUQQL3IgCvZSePdtCA8+YWqcUHcuN4LN0kSaTvOTq6jS6lSCNJyA
	RD1vUjy/0Xq6Cr1yY0BvJbR4UksMpVL+yyfLFw47jNWP0ZYV5Tj43WVLhYw/aHxNnrt9gKBJ6mw
	fNeNfeynuJLIk0rVprWRUXLEGdVkuoT9dIOzBSqA8zXrk8BlzlyZsxO6cqU5x3QCuNq0LlHmi1S
	9mD7be/E5A1D0TaA=
X-Received: by 2002:a17:902:d4cd:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-27ed49decddmr18175455ad.18.1758758222003;
        Wed, 24 Sep 2025 16:57:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGz1ZXxkFFFTlD2SQ441OysgvC2Kuy4qXtteB6KyN7lhfx4bZVyRt0+Bz8roDUaQ8SB4gd/1g==
X-Received: by 2002:a17:902:d4cd:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-27ed49decddmr18175065ad.18.1758758221571;
        Wed, 24 Sep 2025 16:57:01 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6881fd6sm4557185ad.87.2025.09.24.16.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:57:01 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:56:46 -0700
Subject: [PATCH 5/9] dt-bindings: clock: qcom: document the Kaanapali GPU
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-mmclk-v1-5-d7ea96b4784a@oss.qualcomm.com>
References: <20250924-knp-mmclk-v1-0-d7ea96b4784a@oss.qualcomm.com>
In-Reply-To: <20250924-knp-mmclk-v1-0-d7ea96b4784a@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758758212; l=5673;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=3+AMGrPvAvQBSY+2/qnhXi9oqAQFFYcu3uy9wKNCKO0=;
 b=5hhic4HmTesLT9qJZ1m1XWzbJTfsiHTnnWLFKj0i3PaC3pzyKIePY94nEYjmeQ769U7ZUnmc5
 TnYV41MknKVA+n8o8WLPzc9CI/rpPhVyKkOW+1rdFgxjTAil/OiODVO
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: Xl2iMdG56DnydyVLaitWA8koQaNGamFi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXzMru0x1Mlr3c
 /AWClbUt6JopsXretYiRNxbwz9tOoeLYMle4Bd0VEZc6EIL/q+Awa8wh+9nTFJsgPEpDWhq+YwB
 dJAYVWzaBsn/DYhSSvlzToCV7NnT1CyylLywuNrIzJtzSwx+/4r0ZWkgvMy8naKTgyhqCaDWh4z
 LyEeZOvhtcml7Ly99b/uV6kZEJP0JyWoWKlyxZBGtGmPUFKEg9icALs7o7ddG56STNenOiHYpXW
 0zFv0qdBtuwWBj24gWKI5G8kdflk2f8tO15XU6CVG67EbBgdfCGvvBPG/fpldIWcrHYxDWA8fa5
 rPo0S7m4Vulz/Gx3C6uPhcIWWCK16D8dzOBQD1KXYaUq19226xDkpzHrohlzqrVwiZvuHmBVzgN
 G9oZqnIG
X-Proofpoint-ORIG-GUID: Xl2iMdG56DnydyVLaitWA8koQaNGamFi
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d4854f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=dEo2bzUl0lUh28VgVkgA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add bindings documentation for the Kaanapali Graphics Clock and Graphics
power domain Controller.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    | 63 ++++++++++++++++++++++
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |  2 +
 include/dt-bindings/clock/qcom,kaanapali-gpucc.h   | 47 ++++++++++++++++
 .../dt-bindings/clock/qcom,kaanapali-gxclkctl.h    | 12 +++++
 4 files changed, 124 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
new file mode 100644
index 000000000000..31398aec839d
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,kaanapali-gxclkctl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Graphics power domain Controller on Kaanapali
+
+maintainers:
+  - Taniya Das <taniya.das@oss.qualcomm.com>
+
+description: |
+  Qualcomm graphics power domain control module provides the power
+  domains on Qualcomm SoCs. This module exposes the GDSC power domain
+  which helps the recovery of Graphics subsystem.
+
+  See also::
+    include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h
+
+properties:
+  compatible:
+    enum:
+      - qcom,kaanapali-gxclkctl
+
+  power-domains:
+    description:
+      Power domains required for the clock controller to operate
+    items:
+      - description: GFX power domain
+      - description: GMXC power domain
+      - description: GPUCC(CX) power domain
+
+  '#power-domain-cells':
+    const: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - power-domains
+  - '#power-domain-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        clock-controller@3d68024 {
+            compatible = "qcom,kaanapali-gxclkctl";
+            reg = <0 0x3d68024 0x0 0x8>;
+            power-domains = <&rpmhpd RPMHPD_GFX>,
+                            <&rpmhpd RPMHPD_GMXC>,
+                            <&gpucc 0>;
+            #power-domain-cells = <1>;
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
index 44380f6f8136..6feaa32569f9 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
@@ -14,6 +14,7 @@ description: |
   domains on Qualcomm SoCs.
 
   See also::
+    include/dt-bindings/clock/qcom,kaanapali-gpucc.h
     include/dt-bindings/clock/qcom,milos-gpucc.h
     include/dt-bindings/clock/qcom,sar2130p-gpucc.h
     include/dt-bindings/clock/qcom,sm4450-gpucc.h
@@ -26,6 +27,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,kaanapali-gpucc
       - qcom,milos-gpucc
       - qcom,sar2130p-gpucc
       - qcom,sm4450-gpucc
diff --git a/include/dt-bindings/clock/qcom,kaanapali-gpucc.h b/include/dt-bindings/clock/qcom,kaanapali-gpucc.h
new file mode 100644
index 000000000000..e8dc2009c71b
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,kaanapali-gpucc.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_GPU_CC_KAANAPALI_H
+#define _DT_BINDINGS_CLK_QCOM_GPU_CC_KAANAPALI_H
+
+/* GPU_CC clocks */
+#define GPU_CC_AHB_CLK						0
+#define GPU_CC_CB_CLK						1
+#define GPU_CC_CX_ACCU_SHIFT_CLK				2
+#define GPU_CC_CX_GMU_CLK					3
+#define GPU_CC_CXO_AON_CLK					4
+#define GPU_CC_CXO_CLK						5
+#define GPU_CC_DEMET_CLK					6
+#define GPU_CC_DPM_CLK						7
+#define GPU_CC_FF_CLK_SRC					8
+#define GPU_CC_FREQ_MEASURE_CLK					9
+#define GPU_CC_GMU_CLK_SRC					10
+#define GPU_CC_GPU_SMMU_VOTE_CLK				11
+#define GPU_CC_GX_ACCU_SHIFT_CLK				12
+#define GPU_CC_GX_GMU_CLK					13
+#define GPU_CC_HUB_AON_CLK					14
+#define GPU_CC_HUB_CLK_SRC					15
+#define GPU_CC_HUB_CX_INT_CLK					16
+#define GPU_CC_HUB_DIV_CLK_SRC					17
+#define GPU_CC_MEMNOC_GFX_CLK					18
+#define GPU_CC_PLL0						19
+#define GPU_CC_PLL0_OUT_EVEN					20
+#define GPU_CC_RSCC_HUB_AON_CLK					21
+#define GPU_CC_RSCC_XO_AON_CLK					22
+#define GPU_CC_SLEEP_CLK					23
+
+/* GPU_CC power domains */
+#define GPU_CC_CX_GDSC						0
+
+/* GPU_CC resets */
+#define GPU_CC_CB_BCR						0
+#define GPU_CC_CX_BCR						1
+#define GPU_CC_FAST_HUB_BCR					2
+#define GPU_CC_FF_BCR						3
+#define GPU_CC_GMU_BCR						4
+#define GPU_CC_GX_BCR						5
+#define GPU_CC_XO_BCR						6
+
+#endif
diff --git a/include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h b/include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h
new file mode 100644
index 000000000000..460e21881c4f
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_GX_CLKCTL_KAANAPALI_H
+#define _DT_BINDINGS_CLK_QCOM_GX_CLKCTL_KAANAPALI_H
+
+/* GX_CLKCTL power domains */
+#define GX_CLKCTL_GX_GDSC				0
+
+#endif

-- 
2.25.1


