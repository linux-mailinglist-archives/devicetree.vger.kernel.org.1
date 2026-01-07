Return-Path: <devicetree+bounces-252265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2BECFD422
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 11:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0394130074A9
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 10:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F40E932827A;
	Wed,  7 Jan 2026 09:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DP/N4zbB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BcOb/3cG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F84327C13
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 09:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767779051; cv=none; b=FsdV2qrgSTV/cE4TMIxWwwqHRhfOcxTXJeyvbMh4YTGDRkVxFMUQMKxiuPX3AFd1GyKmCAp0VL4WZK9wjb7LaXSquPp5T4+4zg2gN9dUtbwnn2nl+BjZ6oAat+Wtfqn1frPlLOLs7LshX8tcxf2WWtBU8pnhuIGtLe0Rq9QPNdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767779051; c=relaxed/simple;
	bh=RPnjBxdYHeiWW0sdHRQcwdbBtUrgPt4t1vNikSILk1M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B0o77ShhrcEZmLBuD/clG+lkoJJ3dSmn3lWhkVjQJrcm0bv2JRcX80vaGdRMEm8xKgYP+OJ5nEzP7jYIH6BaMwbUaeB8rZnuUiqs4f2pxQIoA+UUvm4dySq2T62SpDe83whUNpmIsUfFKpidd+m1qmw4of3ECn4PVhPvcrpTRps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DP/N4zbB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BcOb/3cG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6073mtYL1462698
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 09:44:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uoxee+h4RjL1xykbTwqckzvbi5sXcV85vpSTPbs6KOQ=; b=DP/N4zbBHZDeipLm
	2LAIhuwn41aPR3w0ZIv4/G1oWXv+U1EGInDJDTT28b6xtnHnjVmgliIV5nD1K8iZ
	hPJ8JaKdc8BYg8fiaP1rHR+jVcxJcWJvZiB1IQkvD3TUVW8mKz2rVBIc4qpiuSlK
	fmfZ4kLCIQbRoMH2Z1wrcWnK4vcLhhYWr8+WGrXhwsqT87Pa0FfyBR3uXKGKkXCv
	jxutgWDLKHKQa0au6p65G4kLCTUhtq3FQT45hqkShNBmgSTfKxzIs7y2ZN0J7h0D
	QtxcZNsNWKmMA77iuOdF/FQNzFnA952wNZ5twfBbxmgjGwL2/SxE2vxoltbWrfjS
	35GMhg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh0vm3t8k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 09:44:09 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7f21951c317so1463170b3a.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 01:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767779049; x=1768383849; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uoxee+h4RjL1xykbTwqckzvbi5sXcV85vpSTPbs6KOQ=;
        b=BcOb/3cG2OjjfeP7ql9vVGqemJHa/2fD+BUY25J7QGaAfNglpAspUBVWPLh87zTFkQ
         UBHV6A5tywTxPZ4J2s/6VtX72fxU0Fqw1k59XIghkqEnWQw25YdAZDOmdIX37G6LHTPP
         pkUThZpcuuNDVlO45doUN/9W3nIXTWfg73gqWC2AYRccrCIcU8B5R+7B16yFtkVheCeM
         f79Yf3MMpGhBrnL/hKBOrSziW2dDeTmmWZRoiRBeHoXISQe0KTlukeCq1x19uUI6uJLq
         NDJbpu+2AE0YTjZ1BkLdB/3M1uPihfNFWGWHj63KTtUk7oS36Q2GtLQugC+4AxRNPkx2
         1JyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767779049; x=1768383849;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uoxee+h4RjL1xykbTwqckzvbi5sXcV85vpSTPbs6KOQ=;
        b=Q6EYL/6XwlRvwT8YdjLNDcZhnPjyFUEJQ6szAKZLf9jy88ng7BJxewFyoonL/OTC6I
         Er2U3WFr4pRc4M1DLrTnmpb4/V5pEKRkZo58ZU6WenSsN7wkWXn/ymr5yR/rvUTT6Tu0
         sbhDP2tS2KUfpxV0+Ee0nTsIbCSkz24q3le1NeOeI8+QVoNEObIwouNhlbdpeILfBANJ
         PytyxTmrfcFA3GCqIyfQhkGSHjeZY0Yv0WN4jQuNOuCSYMuAT4zkwJ0JCUi09UvoyTtl
         NC98x+iOPqdBrG/EWEkbw5hwmxI8kLHGa3+D8foSfmanLOHhRCPNJPzFs9NW32eMZP3p
         E+YA==
X-Forwarded-Encrypted: i=1; AJvYcCXStefXlJ7vjct4sloteQ1RQVhkzwG88XK2BP7JSlkNhP1CkVxrWP1uqVYYPhYNqEyqeqMMA3rsOPWM@vger.kernel.org
X-Gm-Message-State: AOJu0YwvVrKWaGOC4Pcvic1HW5wLqgyL6A2JzM3HOkfXT+OZVaUA5ol8
	y8dgxYT0l/B7idlN4UN8Msu7n5Bmbb/M3ylI1p8Ni0oKfD4PjF/1WP0Lht2RKq6t994+OhtdN1B
	1Khz1DSAaiR3nWSVEL7RYNPi/DrUNC1dV1CLvsamLqcOqDfKCJcc3dR9yGqyS2kBC
X-Gm-Gg: AY/fxX6PqJ10Xa2GTuqYDSsbPzjxWDS6bhKoUeorLhBxG8In4fHA0Jy93lq51FU5ucF
	Rqo243d9anVFu0P9rmRAzQ9Ko2WpeWfga+qQFra8JXWHAVCfXQWhcPoNkhLdIKxjj6oA3dQFu/D
	/e0NwI7zhonkisqKzx833J2cYERAhvwVjMxiHpeywpe/AlM7BZx1Pe5YsAAPoGzmQZ35TX/a4A4
	lY+Dye9GUoCfSqO0ekehAcKZoRWUHIUVmPyyNc/fD8QmFMnLNZpm52pdr0t0E2iWZS5RGzTUGLC
	zXwOQVOQ2EweXyCORWXo2Cp1jJz8moQWid1vr27u1lA+r84sy+F5UKNqxkvmz4ZhSadVO7Ipo7b
	BKHkGW61NuBCoRRcxoTLWTjqg1aBxl6ivSA==
X-Received: by 2002:a05:6a00:331b:b0:7e8:4471:8dd with SMTP id d2e1a72fcca58-81b7fbc8d76mr2091656b3a.62.1767779048730;
        Wed, 07 Jan 2026 01:44:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzlFxm5Gj5e+T1ypcUeQYLoHF+GV0ngio/WwkHD0VhUanJJDn3ygFj6ZVjFlWN3cas4gxBJQ==
X-Received: by 2002:a05:6a00:331b:b0:7e8:4471:8dd with SMTP id d2e1a72fcca58-81b7fbc8d76mr2091618b3a.62.1767779048155;
        Wed, 07 Jan 2026 01:44:08 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9568sm4472944b3a.15.2026.01.07.01.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 01:44:07 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 07 Jan 2026 15:13:10 +0530
Subject: [PATCH v3 07/11] dt-bindings: clock: qcom: document the Kaanapali
 GPU Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260107-kaanapali-mmcc-v3-v3-7-8e10adc236a8@oss.qualcomm.com>
References: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
In-Reply-To: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=Pa3yRyhd c=1 sm=1 tr=0 ts=695e2ae9 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=l5CasOIcougls8LOFwwA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Cog7HIJeX5ZkHhIY1X9lFhgILHkjN6AJ
X-Proofpoint-ORIG-GUID: Cog7HIJeX5ZkHhIY1X9lFhgILHkjN6AJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA3OCBTYWx0ZWRfX4CjgzBPOXARN
 jZt1sQ2AQ++gvqMU/y80HXf9xipgv3QFzGHudNCfoBwEK1NH5FhAhxSQf+T2yX/KJCo7gfMTiS1
 5VGmTFYtO4VowG3DD4Ybac+U1+r05fbD+VfAttUOZVXmSRRq+x4ooUG/PjrT4shhOdKKABB/gpS
 uDryu55C1coqKPpM+BtdW8m/3YhGRJ5Q5zANQCATmsAxD73yIgVxoCGnSpZr7zcms0VFrvc46Uz
 g/xe8UhFflKAd1+1R53OTcacusr36AemM8JKEZqh+baDCQ4+i2o/dWYAyM/dSA1D3pJfq5NGkJt
 ntniWbebR8cTmG1GH5gcQ2xDWMy9Ujllad7amt6vN9Rc9KiX44Y2NBGXp0TxfvduHP16F/EwtQ8
 fgw4LI5M9OB3it563Po3FlHZOuD9fNfqVhkWzwi6RmqoJ4PY4Ks//avqMkuTGopMvk2xfEtBL9g
 ZBoypHY46nvPf7yx6NQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070078

Qualcomm GX(graphics) is a clock controller which has PLLs, clocks and
Power domains (GDSC), but the requirement from the SW driver is to use
the GDSC power domain from the clock controller to recover the GPU
firmware in case of any failure/hangs. The rest of the resources of the
clock controller are being used by the firmware of GPU. This module
exposes the GDSC power domains which helps the recovery of Graphics
subsystem.

Add bindings documentation for the Kaanapali Graphics Clock and Graphics
power domain Controller for Kaanapali SoC.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    | 63 ++++++++++++++++++++++
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |  2 +
 include/dt-bindings/clock/qcom,kaanapali-gpucc.h   | 47 ++++++++++++++++
 .../dt-bindings/clock/qcom,kaanapali-gxclkctl.h    | 13 +++++
 4 files changed, 125 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..5490a975f3db7d253a17cc13a67f6c44e0d47ef3
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
+  Qualcomm GX(graphics) is a clock controller which has PLLs, clocks and
+  Power domains (GDSC). This module provides the power domains control
+  of gxclkctl on Qualcomm SoCs which helps the recovery of Graphics subsystem.
+
+  See also:
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
+        clock-controller@3d64000 {
+            compatible = "qcom,kaanapali-gxclkctl";
+            reg = <0x0 0x03d64000 0x0 0x6000>;
+            power-domains = <&rpmhpd RPMHPD_GFX>,
+                            <&rpmhpd RPMHPD_GMXC>,
+                            <&gpucc 0>;
+            #power-domain-cells = <1>;
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
index 44380f6f81368339c2b264bde4d8ad9a23baca72..6feaa32569f9a852c2049fee00ee7a2e2aefb558 100644
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
index 0000000000000000000000000000000000000000..e8dc2009c71b705b4369a6c8cf83024a18c611d5
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
index 0000000000000000000000000000000000000000..f32dade67cf2f26e29b2df6a30018b2d1f62dea2
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h
@@ -0,0 +1,13 @@
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
+#define GX_CLKCTL_GX_SLICE_GDSC				1
+
+#endif

-- 
2.34.1


