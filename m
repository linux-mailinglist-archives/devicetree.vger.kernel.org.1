Return-Path: <devicetree+bounces-242105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BC40DC864EC
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 18:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 810554E33C7
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 17:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 103EC32ABC8;
	Tue, 25 Nov 2025 17:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TUOxagG+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kgkYO27J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2976932ED3E
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764092776; cv=none; b=gr5N6B77u1e/w1uO3IpZMhsGAcD5Vw2CbHZxEAUlIlbtzhImWd9RWvo2dM9ieTEOMiwnfQkhoyRDVNEHmYSVqXDRkzamVg5AodKTJ9D4FwvR4quYWGlQDwfu8cCGrEg81AuTVtTCCCQJ7KlvbRntojX9cWCaOnqyI5lKQpKYX9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764092776; c=relaxed/simple;
	bh=mxL2/J1PkTzM02kuzytmpCbrOAbYYyYLw8v7TbTH6ZU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CjlFRvhB3vuZHFgEuO4SzuJgrm1tYWuzCCdhIsLKGshZO5tz70mCgvy5vcJWDcO8A5Qqqc9b+MvfTaYyciDyuTAX5VMpFzA90OPX/OlquToePNAbkV5uB2LmcnOJQWqnBl/p6c2mzchhXuPaCK7Wk57r2Nek6TCIBYJwqY7oB+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TUOxagG+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kgkYO27J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APHAcCd3890139
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:46:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fcze+Z5M95zMTHyAarxADGPc1EfZnUg/Zksfc+m9oxI=; b=TUOxagG+VNde+kgy
	tFNeXTBD6tdFq2a5urHdfarWlwbIWxFCLbxL+jYMmOxvodUNPhYpMnWNdc/6WKJ3
	JFHs5wOSkwvx2PuJOLpFDWC7eMNmdmG/Mo+XAYCcTGppAbHHfwHPtgaZJbF4aynV
	SlY1k6cborfqc9NeddEf+VIZ4Rfjd48y01/R5a/2REaXjIOOPKBzTJypnozjiLWx
	XVYqOA+koE85QUrV03CZ5L7JDib4+9EhfKkNeOtuE1bQQ67GnLx1jhMoZbQVc9Xf
	Z3obU4elpKWaaUB8rulKqzNiY4U3qTugh7gjy/RbTvVkmPPCPZr41Z7XxTL/XckK
	IXqjtw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4angme83cu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:46:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297ddb3c707so47444205ad.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764092773; x=1764697573; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fcze+Z5M95zMTHyAarxADGPc1EfZnUg/Zksfc+m9oxI=;
        b=kgkYO27J2pGdd852+uiT3+uQDv8nZ6fxvyyyeihle5R371ohTG/+57Y4xQa7Q3QRm5
         Wtt45wkLv8JZAWROdyWo+DvQBm40kLQ6ajbvhFXR0hWXYq819B8pAMs3MnFOSYKOzeZQ
         +H3TLdBjneccublABEL1/sxSIZzUa9g71eyslsmvL+HylABtsB0TFNKwJafKl9Lo+Vpb
         eTME+qgwNB7iqZg77kgfqb/FSVRuVJAfAQ92wnzph9y4lzivcCuQvAMKBVkdBDRgK9sU
         7s8lNJXazvO8DIQj6djyFeIFAbdjX2tvW77XFY6iDmVA4t9Kna52tCiO9ePFL1hDlXbk
         /g0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764092773; x=1764697573;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fcze+Z5M95zMTHyAarxADGPc1EfZnUg/Zksfc+m9oxI=;
        b=qpqn9Om3xrT2xC9hYmGFDy/VjqMm9BJ/c7tnDQT0QoqW215tZxD2jjgbKFVcItxyrf
         TJ8Oro3zh2kXAcAjrZISXVIo6XfQJ/gTGVCjJ+uayQcP8xTjJndQrxgGAgcHKd6RvmW7
         NsvnFu4a0bOZsTe80B1NzFE3BAq3BafzKdcwSweXzZVmFrVHKR8lEAfRxCZyxePnaJNr
         Y55stla+/46Si0NiJzO52YAvXryIWIZ2f+FBPLguy1H6+HnkPyXsOeTPlSeZIHizj32h
         Gylq8CktSxOB6DfJHsK3zLGV4Iv5yZCoRQyBjzdgW5RJEMcI9CCEvv29DazbUGwJX0t1
         GQ/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWPxqyidQw524FH85ZVO1zPgyAiYugFvnMvRDMa9t2n7hJmbOf5x7YsstMMLpw4aKVyhFh5TJKdcYIe@vger.kernel.org
X-Gm-Message-State: AOJu0YzMaxYHZlC7bkJ6kIJ1B3RowsHClYGbkzZ9FVIsP/Df2DpkCytX
	Nb08KQm2CEobSPYziTSDVtsxNRDyHXCwRaoGUNaNIQV9xoREQpbDX9GaVlQ9wszVSDqE5qQTfwD
	C9vyTxVWfdUSnPfbdAe82Qlhb4vgaTRb3//TPNhX6GGWhodNyq6VyLfAAGtYZVj0z
X-Gm-Gg: ASbGncvem07hGbjJ+0ke6eAb+zfkMTt7l8loH6+xY7eke6r4eM5o3zs0F9ZA3JeV1II
	K0dl3pZCk+oq6fr1TqHK+fkHiht/2hlnBTQDvfax3k/2j/emPXx4vlHQm3Af1abiKf52bqxKC7n
	ewS//O21TjmBm22guWfh7nne7Dap7Xoo5X2IkYr2wlOKyAFZlYtpb1ZsI2IpBS7rhKhamxtsJIj
	9CPx8TfVp6CiHPKpNSYlvGbqVyBFmRWYPh07i/cLwVBv2QeDhmE1BSOfBeW+m4Tjivt0BbNujWN
	6pxk/xLPFtumO4+7jkUxPb5AoC1OQicQ1dZW1gTx8SfA2FbVtdNRfFvzYKe5jEXka0uJYZ1NTz4
	5Hx0GAozDaSdOh6yJt9o=
X-Received: by 2002:a17:902:c407:b0:297:d4c4:4d99 with SMTP id d9443c01a7336-29baae454d1mr43798835ad.6.1764092772933;
        Tue, 25 Nov 2025 09:46:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGsX/SvGhV77knoqc60F/1w3/azvBYmcyHgOJsy1m2dcG9nkCuwP5HRNq2T5SUVbWuuLLz3aA==
X-Received: by 2002:a17:902:c407:b0:297:d4c4:4d99 with SMTP id d9443c01a7336-29baae454d1mr43798395ad.6.1764092772441;
        Tue, 25 Nov 2025 09:46:12 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b13964dsm174500785ad.38.2025.11.25.09.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 09:46:11 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 23:15:16 +0530
Subject: [PATCH v2 07/11] dt-bindings: clock: qcom: document the Kaanapali
 GPU Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-kaanapali-mmcc-v2-v2-7-fb44e78f300b@oss.qualcomm.com>
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
In-Reply-To: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=PJgCOPqC c=1 sm=1 tr=0 ts=6925eb65 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=dEo2bzUl0lUh28VgVkgA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDE0OCBTYWx0ZWRfXyLp5IdwR9na7
 mUGWJ2FhzWf0EhdLph0YoJwv3YotKWCLVZZbZDa7oSBBRE6Yj7xr6AWO7OQD/JHcpP8JWqo/ciU
 P6Mjkm7AULWdrWyPHjlD77HN6iy28765Wf4KRRWysJSLBJryb5QYDkL2GrWN1zMN5/hPqKgsu/i
 FH7C4RXIi/5Ff31akvx+lrSmKWEGxHUbbhwyqX1Cb02NwHIXZ9L0v52aNbMneXbNORg9cphiwv3
 LnkbLHACdBscgiGi4h/Ql2fgKhUg915TUCggMqnH6wVFm0hkskfykjEp69dBYg3Klw9WH/XKbmC
 SxYxfTtH85GGUb/BGUq2sWSMv7mhl9h/SssIdXTiLo8ANWAM65ValBRa5+y4dP1HvyP/TcMfU0Y
 6dPWx+mVnzldCY73XFuJoKsqV6Oqdg==
X-Proofpoint-GUID: 3S75ZF_75R6MjCOmhx0sCmXM1r3bDu85
X-Proofpoint-ORIG-GUID: 3S75ZF_75R6MjCOmhx0sCmXM1r3bDu85
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511250148

Add bindings documentation for the Kaanapali Graphics Clock and Graphics
power domain Controller.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 .../bindings/clock/qcom,kaanapali-gxclkctl.yaml    | 63 ++++++++++++++++++++++
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |  2 +
 include/dt-bindings/clock/qcom,kaanapali-gpucc.h   | 47 ++++++++++++++++
 .../dt-bindings/clock/qcom,kaanapali-gxclkctl.h    | 12 +++++
 4 files changed, 124 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml b/Documentation/devicetree/bindings/clock/qcom,kaanapali-gxclkctl.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..31398aec839d88007c9f1de7e1a248beae826640
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
index 0000000000000000000000000000000000000000..460e21881c4fec46f2b50ccf10fe504636a52ef1
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
2.34.1


