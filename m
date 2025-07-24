Return-Path: <devicetree+bounces-199358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC0AB10671
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:38:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 686BC189BA6F
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 09:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B3C62D375F;
	Thu, 24 Jul 2025 09:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BIucVM/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACA512D374A
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753349370; cv=none; b=T4bT5aHOhBBMuyjO04vm8bd8llKykBAPHZC3KECd8y0PzxzcUnngvz+AbgU5DUl97KelouYu8Y4MPwnZGNuuudUBUkhf7szmRWbzQi8N6/t2Doqu4bckd4Fe2iLPsFAbLCDSC/3YRbIVpIyDZZa1GbAMSP00cjfXVxDoAIhzNCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753349370; c=relaxed/simple;
	bh=ftsZHYmSTdNDK1xhNA6An+wsxiIuArfv5EbhQ/0rruY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X7YG9RLeg/FobnvYJ9iBZzvdHYTDx0ALsbPGCnB33X4Ksoua5TuKemU8KFNJEDK93saIYE/HmVbfWRE4RcSinz09psFk6GYa1LGd+70VAl9o2IayeUa+2uJKRC5j6uWDKpTWuuu4HtxuZZNQNDbMi+ud0wWmpPInMoiU2Kh7Ckk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BIucVM/k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56NMXbnE029489
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VvkVBusXf/9P1C7z7mb5VbEpYZmMjVfPSXxMRPvLOH4=; b=BIucVM/kUQWEii66
	xqWW/TORZA7g4z1+XKY+bg8t7JUMxSGU+lNQhJL6o6PecB6iFs6QupNmAK7L/3lm
	uINr3ZOqwUXT/w+++Ic+MsPhz08/IHrMlAeLZm4486nf6RmQaLTpfhiQJ43HlQjC
	NpN+OZmVK1dRLUEp2il3Hc2vhrjw7LB0qFmw9zX7WgN1zeH3G7h1+s3VZEm6DBFM
	MLgbsWkfXT84re59R2/uH925FHNgiYiIuE44b+ifG2wmaG0EwMWTaTEIU+iTRp5N
	X6Guw/N7KZs7pGjX//0Qeq3VctmJHGzR9bz9SVQAftWHSfnH/d9btlFuJ+YE52/M
	XTHRuQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4826t1fh66-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:27 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-234a102faa3so7630945ad.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 02:29:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753349366; x=1753954166;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VvkVBusXf/9P1C7z7mb5VbEpYZmMjVfPSXxMRPvLOH4=;
        b=WsO0yvSrfRS1dq4W27Al2Yv1bNDMrKdapGn5bWOA4pv+zKzRz3WI56xs7qQ6HbhCw3
         RfMVGr+KLbkrDhg/6bwDaEeogG0HjTHkNDAOpzB5yHG/l/piRXGvEHu+jjepNHxjSlXF
         wuQDeJQ+E+HoHk2n4eulshX0TTzYdiZJhHrqmrkCb7399kvl2DkdCEh+JRWXhLHrizRC
         ehC7Lea8vpM32QtufoS9Lh1tM3R79wciFlmV0ieIpni11HTZ8YUvOPqWyYmrOPom/W/a
         zBa2WeNso/C3utJ0V8gZYRlHGBqjj00dWyqUrM/JM2rFOGvlFEqY/z+1KZfuRzemvmIF
         i/sg==
X-Forwarded-Encrypted: i=1; AJvYcCW1Un1+CjPWufohLNTwKctykhdgJ9N+IM/p22Os0tbAqJDuYj/OT+RgIq3HKCjv3KtSvYWkoC1oF5oP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg+ZZiGl52FP/nWdB9WW61f1mwAlEMV2JNCh6Q/9lH4OJ130hf
	onKlNbsNU3IEHI69qGI8CoWu3C4P9vCMaTf/Sca4d9gxZr8AArHZGV4XnfqZCotmQS++2vdjFhe
	63a/UIEfu/9EFuS1Xwn3HAC5hmR/QPuY/4VYza345kTrcoUXpuN5B/FfOfaMASYfn
X-Gm-Gg: ASbGncvOQ0DxLID+0RxflamNEeqwbQpSTr6SxbWbsLeQ9wJ0cVVcRfRFuN4/sZkFFhN
	21dTrVpHlRoVeM6tM6Ye0fleOS2Mdg+XEoFb6RIrLXH/rH70Y/THX/URMawyAkyF9Y7voQ/UcJX
	8SQiNNCT3x11x/etjKlWBEvAwBIymNzvCoqjnsEh4KBjw9Tvcf6EiV5HXkH1M2UjFpxpu15PvM8
	YaogfWPSYliJSEfbbbA7oC/5WTk+z8y/bDIgf7Bbv6N2ea1zCOkdC7LeHT5oEU56zbCHdzxg8eb
	iqMhylzC430nKjZ3EopgCvGA9Xgky/+RfWMoRjZE6XwWDmi97j30FrGvnuYDooFu
X-Received: by 2002:a17:903:1b68:b0:234:a44c:18d with SMTP id d9443c01a7336-23f98152403mr103406585ad.22.1753349366471;
        Thu, 24 Jul 2025 02:29:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESV1RftWuUfUb7+nHHJvX8znKt+IEEEX2BUkusf0xIjZFIwajv/dH7ner8urS8MeOxKxAZjA==
X-Received: by 2002:a17:903:1b68:b0:234:a44c:18d with SMTP id d9443c01a7336-23f98152403mr103406105ad.22.1753349365935;
        Thu, 24 Jul 2025 02:29:25 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa475f8a0sm11276505ad.24.2025.07.24.02.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 02:29:25 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 14:59:10 +0530
Subject: [PATCH v2 2/7] dt-bindings: clock: qcom: Document the Glymur TCSR
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250724-glymur_clock_controllers-v2-2-ab95c07002b4@oss.qualcomm.com>
References: <20250724-glymur_clock_controllers-v2-0-ab95c07002b4@oss.qualcomm.com>
In-Reply-To: <20250724-glymur_clock_controllers-v2-0-ab95c07002b4@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: jXfHKY5s8ZjTLINrNGe4AI1IONRc56yz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA2OCBTYWx0ZWRfX9I1hcRqbYuVA
 wIcE1aXo1Ph2bLotD0+NvG/tPOFeNDK84W6zupsF3BqnfvRXmpkW9LoZSWFjLRbPfkiuPQujy41
 I6p+0MtS25SfpWoGJiIqS+m2I5siruO0CzG1hwFozicGNHAIBTgFfcbyCN+u0KX+WXulY7WVA2h
 hBunpuoseygDHKcv+Ha+Jr+ABzh3lo5Ez4H+S12DLg6eEC74kaRI/OjNnwGaEnlWI1orlJHcWvb
 anHbLkjUYsjAUpvGQLjKyMMLxZtf8JZPGwKwi0oiJhzDIBZ8KHafOBHja7e7bfSjsL1thrPWm4F
 ywprGe9ZUeBuGoEelC4pCbokieR3Neap29Ebje7HgWJnYCAASwR3q1R4oy7DUHJhw5iwEXeP1HG
 y4vdl1pXJLBNgDkWSAZveMYnTi3xMSxrUtN0HnctzkJfUQ5q+E69ngVpAFo7zXaXyb05qqQj
X-Authority-Analysis: v=2.4 cv=E8/Npbdl c=1 sm=1 tr=0 ts=6881fcf7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=NoBSHRPQAjGLFGKXj-wA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: jXfHKY5s8ZjTLINrNGe4AI1IONRc56yz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_01,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240068

Add documentation to support the Glymur Clock Controller, which is
necessary to provide a complete description of the clock control module.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 .../bindings/clock/qcom,sm8550-tcsr.yaml           |  3 +++
 include/dt-bindings/clock/qcom,glymur-tcsr.h       | 24 ++++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index 2ed7d59722fc7e1e8ccc3adbef16e26fc44bf156..2c992b3437f29b38d9c73e3c600f2c55e0b8ae98 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
@@ -8,12 +8,14 @@ title: Qualcomm TCSR Clock Controller on SM8550
 
 maintainers:
   - Bjorn Andersson <andersson@kernel.org>
+  - Taniya Das <taniya.das@oss.qualcomm.com>
 
 description: |
   Qualcomm TCSR clock control module provides the clocks, resets and
   power domains on SM8550
 
   See also:
+  - include/dt-bindings/clock/qcom,glymur-tcsr.h
   - include/dt-bindings/clock/qcom,sm8550-tcsr.h
   - include/dt-bindings/clock/qcom,sm8650-tcsr.h
   - include/dt-bindings/clock/qcom,sm8750-tcsr.h
@@ -22,6 +24,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-tcsr
           - qcom,milos-tcsr
           - qcom,sar2130p-tcsr
           - qcom,sm8550-tcsr
diff --git a/include/dt-bindings/clock/qcom,glymur-tcsr.h b/include/dt-bindings/clock/qcom,glymur-tcsr.h
new file mode 100644
index 0000000000000000000000000000000000000000..cba5e545a751816fc92d25abb4e61f1b8f4aae7a
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,glymur-tcsr.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2025, Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_TCSR_CC_GLYMUR_H
+#define _DT_BINDINGS_CLK_QCOM_TCSR_CC_GLYMUR_H
+
+/* TCSR_CC clocks */
+#define TCSR_EDP_CLKREF_EN					0
+#define TCSR_PCIE_1_CLKREF_EN					1
+#define TCSR_PCIE_2_CLKREF_EN					2
+#define TCSR_PCIE_3_CLKREF_EN					3
+#define TCSR_PCIE_4_CLKREF_EN					4
+#define TCSR_USB2_1_CLKREF_EN					5
+#define TCSR_USB2_2_CLKREF_EN					6
+#define TCSR_USB2_3_CLKREF_EN					7
+#define TCSR_USB2_4_CLKREF_EN					8
+#define TCSR_USB3_0_CLKREF_EN					9
+#define TCSR_USB3_1_CLKREF_EN					10
+#define TCSR_USB4_1_CLKREF_EN					11
+#define TCSR_USB4_2_CLKREF_EN					12
+
+#endif

-- 
2.34.1


