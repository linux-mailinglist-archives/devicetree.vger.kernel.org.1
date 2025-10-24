Return-Path: <devicetree+bounces-230601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF9CC0454D
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 06:25:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53C671AA047A
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 04:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A51B82957B6;
	Fri, 24 Oct 2025 04:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QIssYSvO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9798270EBA
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 04:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761279890; cv=none; b=IzPAuNcJFiUd89dYzIO6T/BCzYobnsoEPapwrBKZweOL4dC/YMsbDoNDKa4+bFUungp7Bqd3lcx8kNxzMOsYCOpn7kRP1slpkoT9oRm8paoTcKV6AXuTpOYWZUuRs++SeAExbao8mCPqJ/XMp91w2bumOa43UO65w1IInIgFzyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761279890; c=relaxed/simple;
	bh=e3gKlIgcNEy2r9Mx1i7bMF3/Ao/g9nApBx5pbLsL/sA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JzRWR1DdLixqhrtVzUVolnfbhWkuHhkE5QHOY9LtTXMyCKM6deDGqzRoV+kOLJFV5vPnzU2r9//VacloZ7ohuRM6lAYxaJNIeLSOJT/jNcV6hrXC9xQna6bAMEuSi40w1370eAX+BJGtIscJnSBsUkUeSKBxRX70bpFP3tICXUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QIssYSvO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FPT1003412
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 04:24:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	spEKHx63+sJKj605M8Bf9cWcS/D+6tO2xX01XfJCvsc=; b=QIssYSvOBBLPnjru
	hFyWpfglRpMnbvT5WBPFAiJ7SGgo6MNZkNutzYyPwJ5U1bCpWCDSL42ExuBgkGW+
	ebD4Dl25Yn2y5LqlkUd2ynciqZ5yOtj4dFV1NcxMp5JJGbMYTMy9UXlWf9ucQQAM
	c0yznRw3Trb8/kuAWh8nFvw+upRklLyevW0dpYWmERXpckzE8UngyufImOrBXOPj
	OP/LSFkgQrw5PhswEpfFwL27jjzJV9veCsM5i0um/hM+wzHhm2WH29pA0Olzi6BJ
	S7dEyaAXOE9xu3N1hhPHMgUW0qrnr+nMKSCwXcS0BWqAiBU9XqRaOAZi+P3/mU1W
	W9jKHA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v27janwt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 04:24:47 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5535902495so1006665a12.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 21:24:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761279886; x=1761884686;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=spEKHx63+sJKj605M8Bf9cWcS/D+6tO2xX01XfJCvsc=;
        b=EyaW6BAVlesnUh4r8XYYP8rPtefUPG9QBpD23/piP/U+Zp3EdkqoShnKTwnOZhsm3y
         S+nadBrBwDwn4fRgsEjsfJ+DhIF41L2GFYZVhAJk5cFA7CQrwKmAtUtlMTtEat9olvaL
         Z4y0g1asVA4E5x2LvX3cjYvIXr1XP8fbUu8dGRcmfpCSOSMLzbPLHkIKYT7FMoudjVax
         GZrm1pPJqsDLSkHgwkTkhA5alNaa6P12tYSfOBeY0ztaEX1iEyYjHKcLN8faREbU2YAi
         eyMKUT5c1/O/6i4Tov75i2hp8iAccG1/Reth271EY9gfbU2FJhTYv2iWukmuZmikzyLJ
         vO0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWM+WDMf7qgXZ5rV31NyYli8tAFpbSv7DBv5ZW/AgcKMyAbAbDJ76Jjk4yKxP2bjpykIhiHrhrHBuY2@vger.kernel.org
X-Gm-Message-State: AOJu0YxNKrmlrhePkVZmdpedjXu8tHiudFjHs4Jkqskl9Lp9NAiy1KMz
	CA3eQJWFofZvXU08N1sV7kJrhzcg+pLKR71D0hRKFg89hScpPIkHrf1CedRPf3JXCjKBQSUvyLE
	WWUCRGAnMUv2f99Ox4PBgE/3eqcQ7s7uW6HI0kDg3EPVgsa3iE/6zU7QGTbEXo3a3
X-Gm-Gg: ASbGncuzuo+VjbBRzVtyCB0b71ppqOM9oykGZgtWRdMaPrTSkspPLz0YFVHr7Z8E1Cm
	E7mDCr6aKl7JjJuhBEePEHQ/nEJ1vZQGK35v8MdKRVB/uSh7GvDbCSnBYy0EQtt7+bocaAAUqu+
	gAcG/DCKO6v9zwTPRFMgFIX8yv9s5D3GkvFKtG9swQHh1T6PIGmdiES0Tg9P5rxX2OzMYquRz0W
	J0paQvrXl3w3bWF9AbBJYiEq97DgUlsCcUE/+ttUncF0exDABFmH1ARr8K0CBpyONUD1sMTV/D5
	yl7vztv2RopKa6cU//yOx3kRe/oWm217KmO7QkWm4ty/Rwzbc9epCr+yn68Y8IAV3+rmMJSnHaa
	d3eAN8szVEDJsdtpmk6BbBao=
X-Received: by 2002:a17:902:db11:b0:240:48f4:40f7 with SMTP id d9443c01a7336-290cba4efc9mr410770705ad.39.1761279886194;
        Thu, 23 Oct 2025 21:24:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7cllgMj+gzOOi2ac9raSJeUASgxvajSlhUmTQMabpCptfmYnMLxp4y2gSOOqrvxqtLj4luw==
X-Received: by 2002:a17:902:db11:b0:240:48f4:40f7 with SMTP id d9443c01a7336-290cba4efc9mr410770385ad.39.1761279885672;
        Thu, 23 Oct 2025 21:24:45 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dfd0576sm40259805ad.67.2025.10.23.21.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 21:24:45 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 09:54:24 +0530
Subject: [PATCH v3 3/4] dt-bindings: clock: qcom: Add SM8750 video clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-sm8750-videocc-v2-v3-3-6286bbda3c8e@oss.qualcomm.com>
References: <20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com>
In-Reply-To: <20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxOCBTYWx0ZWRfX9zHnzOqerHN3
 2FUgRXYNm4AEbWNrG7kJ6sq2+xy9xs8rt130e6Di0cgiJKeIzoqIvBkslIpPpJFErXaZGqtu7oX
 bQTUoVGrgnVr3xl5QMzVLCSG/Kn8oUDyk9ySZkKYxetYn4cR+bq0rdfF9dARSW5nc2h7fgK/Bl6
 XOV2tYYSuTU4pPzcOvLADpXujrVTWJ66KkFMPKP7VhbjpytOLMnv9I9Rc/yvxJ/0W+4ZRdJhatM
 w4KRxX2rzo4LqRSMhpZbMF3Hf6A2BbYd4qa0ja4lBzy69d5XqnovQ98No3XGbrvsGbl7wG9Ku+M
 oshFCa6GfS2nQtC55i95NFyiSJ5x27B4qP3V7mYdbSc98T3IN5nzD31miqjwW72nrI/QRJzhskH
 zq/IjFYtjfQvj8pDDzzNGoWG9uiEcw==
X-Authority-Analysis: v=2.4 cv=G4UR0tk5 c=1 sm=1 tr=0 ts=68faff8f cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=1oqufa9daVNmb7UKLHcA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 8d_ZGPWxPhRhIbyTOdM1sKIl_2le9BmG
X-Proofpoint-ORIG-GUID: 8d_ZGPWxPhRhIbyTOdM1sKIl_2le9BmG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180018

Add compatible string for SM8750 video clock controller and the bindings
for SM8750 Qualcomm SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/clock/qcom,sm8450-videocc.yaml        |  5 ++-
 include/dt-bindings/clock/qcom,sm8750-videocc.h    | 40 ++++++++++++++++++++++
 2 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
index fcd2727dae46711650fc8fe71221a06630040026..b31bd833552937fa896f69966cfe5c79d9cfdd21 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm Video Clock & Reset Controller on SM8450
 
 maintainers:
-  - Taniya Das <quic_tdas@quicinc.com>
+  - Taniya Das <taniya.das@oss.qualcomm.com>
   - Jagadeesh Kona <quic_jkona@quicinc.com>
 
 description: |
@@ -17,6 +17,7 @@ description: |
   See also:
     include/dt-bindings/clock/qcom,sm8450-videocc.h
     include/dt-bindings/clock/qcom,sm8650-videocc.h
+    include/dt-bindings/clock/qcom,sm8750-videocc.h
 
 properties:
   compatible:
@@ -25,6 +26,7 @@ properties:
       - qcom,sm8475-videocc
       - qcom,sm8550-videocc
       - qcom,sm8650-videocc
+      - qcom,sm8750-videocc
       - qcom,x1e80100-videocc
 
   clocks:
@@ -61,6 +63,7 @@ allOf:
             enum:
               - qcom,sm8450-videocc
               - qcom,sm8550-videocc
+              - qcom,sm8750-videocc
     then:
       required:
         - required-opps
diff --git a/include/dt-bindings/clock/qcom,sm8750-videocc.h b/include/dt-bindings/clock/qcom,sm8750-videocc.h
new file mode 100644
index 0000000000000000000000000000000000000000..f3bfa2ba51607d0133efcdad9c7729eb7a49b177
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,sm8750-videocc.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8750_H
+#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_SM8750_H
+
+/* VIDEO_CC clocks */
+#define VIDEO_CC_AHB_CLK					0
+#define VIDEO_CC_AHB_CLK_SRC					1
+#define VIDEO_CC_MVS0_CLK					2
+#define VIDEO_CC_MVS0_CLK_SRC					3
+#define VIDEO_CC_MVS0_DIV_CLK_SRC				4
+#define VIDEO_CC_MVS0_FREERUN_CLK				5
+#define VIDEO_CC_MVS0_SHIFT_CLK					6
+#define VIDEO_CC_MVS0C_CLK					7
+#define VIDEO_CC_MVS0C_DIV2_DIV_CLK_SRC				8
+#define VIDEO_CC_MVS0C_FREERUN_CLK				9
+#define VIDEO_CC_MVS0C_SHIFT_CLK				10
+#define VIDEO_CC_PLL0						11
+#define VIDEO_CC_SLEEP_CLK					12
+#define VIDEO_CC_SLEEP_CLK_SRC					13
+#define VIDEO_CC_XO_CLK						14
+#define VIDEO_CC_XO_CLK_SRC					15
+
+/* VIDEO_CC power domains */
+#define VIDEO_CC_MVS0_GDSC					0
+#define VIDEO_CC_MVS0C_GDSC					1
+
+/* VIDEO_CC resets */
+#define VIDEO_CC_INTERFACE_BCR					0
+#define VIDEO_CC_MVS0_BCR					1
+#define VIDEO_CC_MVS0C_CLK_ARES					2
+#define VIDEO_CC_MVS0C_BCR					3
+#define VIDEO_CC_MVS0_FREERUN_CLK_ARES				4
+#define VIDEO_CC_MVS0C_FREERUN_CLK_ARES				5
+#define VIDEO_CC_XO_CLK_ARES					6
+
+#endif

-- 
2.34.1


