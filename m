Return-Path: <devicetree+bounces-196934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FA1B0797F
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2A75580530
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 419BC2F49FD;
	Wed, 16 Jul 2025 15:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jtDk9F8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA542F4303
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679241; cv=none; b=YNU2FknMlgl5nT2DQHPgpxGTCLVszTzxbOkQM37AwpLzREgHKmAlHtFVBUGqzhgXUU07Um4A9kEstHczvIn9cZDbmoqY9ThoCaUB+Q3nZ62ePWiDLaMze3GGAM4uLOWPUJMbY8Jt7ovH4suv8UwcSmC9HLgwMdoqLP9WfIXjFZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679241; c=relaxed/simple;
	bh=FHbMUWIwDLjzzDs7EACZx+RwtXAev+AhH2JinKmvF9s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Eqgq0XLPaNu8kns0aaNXhcI4pswHuLOGPyG/h0pTR/kvlWGt63QocLNEBhKBp4Ym2xp6I4lRkPQ5z9wckKowoxx0c2iMUueKeGBZUfy+hul/0ibiImYs5ojjQyA1a8rqwd7t3nfPRlCfd4JTzC7yyTMxcsbh/85vexqsM+NWGmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jtDk9F8P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GC7rso018985
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bH6uNs2EMbe
	7CtZfXiVtThZ2PeSVgjpvGZz47v2mqpE=; b=jtDk9F8PHMl9kNWkKwMSmXcULF+
	PUJpskpLrHiP5JfJTBa9vy8RPQ86XDjZYX2apQWb9vIw+IDGmmBtyE4BTyIUBCaX
	P+30Jrac+YckoyjfoBi9QDjmd1ABQBhxed6P8Mpt7voOnt65a3bkRf/p8BPiGhGb
	Wk06ACWBxQ85RVvKBhAFUjLJSJSFImZkht3cbEQv7nj6aUo1kBUmaL0Pg4817yb5
	cCk5jVzhph66+XXMqIrLppd9xuzauJK+VzSFqU/BnGUeFp9az3sFEt0SHRFaA4j/
	N7hqxiEcMYHxH4ZfeKQhM5SpWGRtyKvkSHjUhNZVxB1tdW745Ql1ntP+uzw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47xbsq8ng5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:37 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-748f3d4c7e7so21912b3a.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:20:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679236; x=1753284036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bH6uNs2EMbe7CtZfXiVtThZ2PeSVgjpvGZz47v2mqpE=;
        b=RSrl0nMbAf4cmA0lAyFxn/3eFQxnLNq0SnCB1bHxhSq9yyK4OZWVNuvpiklApm2AOc
         MdR81KgsjTz7pNyG3nIPCHFpy5MYkPhNgq9Ugi8LdNplDPqClih93yykdyVvN2pGGZqq
         XY04a+YDWaGD9A/yDPyFnXioRrURe1IqFc5hAGXt2ggrzvKx18Nf/IBFT5pk7EjVzlOh
         sYj58Mf29g3kURoZpwkHBMiFw5zOnydWw/zASDKdpclHCl4zorxgU2bkBUQ3/kprXIWr
         2MiQJyP94B2IcxUCy8vxXyr+0PV4zpyor4y+k7PL1pG94fK8/zkL6wljZmF2uKKycIrc
         thsA==
X-Forwarded-Encrypted: i=1; AJvYcCVDpYN09QibonFMENvPfrjEB1aaRlPnzFrDqJ0JJZrRnrTcNd1Z+g2Mjnbiycxw0ANjRSeDaSabOBLb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3QmbZSCLm+KjJxfSt6qrvKZweYWObErWw0J3nGVIlBaLtdX7o
	Ai+nCluZrM0rNURAwKRBLCcPRzzITMlK6fPguorEunxYhJtHJ9FLbMMNKuZxUl8YExVQILG6quT
	/ndMK9sAPVNmu9exXHlggVW/QyJW6guVCQLw2veOWXVxQVbkduXOFnm7a35ZY8Y+B
X-Gm-Gg: ASbGncvPQEmdX+z3i4BPZd2fzf2OPrQYpk9TMLRINJkzumNdro6rw1f3rADvebFb3Rt
	P1lu3Wi49P6lc/GBEQlX+kCkjBIOUz7e3BD0gn9aLw7ZCkhIAhKdYCeCvi+JMaSfLB/nJtnyUO9
	qG8V/qe9qyIBP25vDuS9Wd6SHoBMz3qaj+TUAWlrM1g1lGtBIdO6YYGxpnbkLOVLIow7P2scprV
	sTo3SYLTPQmYgzeXa1dNwo0yxEmhc8GyCDrT2BnvPLyUffZzITGCJW3wQd7nQFZRRAPpwbpLFSG
	WutK0EFat+Jog+Us8kJ/J1FLPduztNUdxb/a1wdLc53WxZwduF6MtRsK5mgzVjiiamEzpaq0xjt
	fnxBuOA49RznF3GdtiaAeWsE7mQJWCjoQ/iAldtl4jNeYrfcIw6G06ta5hJcx
X-Received: by 2002:a05:6a21:6daa:b0:234:98ee:daae with SMTP id adf61e73a8af0-23812457aa5mr4461476637.21.1752679236024;
        Wed, 16 Jul 2025 08:20:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBtaZlHU0tQo2Ac+UAKtWkfyPrldBaiGlgpbsQEnA2s8MxScmuw65VlcnWVn6PGRrM3sdiZw==
X-Received: by 2002:a05:6a21:6daa:b0:234:98ee:daae with SMTP id adf61e73a8af0-23812457aa5mr4461416637.21.1752679235516;
        Wed, 16 Jul 2025 08:20:35 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe6bd8f8sm13912054a12.38.2025.07.16.08.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:20:35 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quic_rjendra@quicinc.com, taniya.das@oss.qualcomm.com
Cc: linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] dt-bindings: clock: qcom: Add bindings documentation for the Glymur TCSR
Date: Wed, 16 Jul 2025 20:50:12 +0530
Message-Id: <20250716152017.4070029-3-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ad1hnQot c=1 sm=1 tr=0 ts=6877c345 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=NoBSHRPQAjGLFGKXj-wA:9
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: Lh9vynScVPlQ6gYuKpisQUiGae3a3SwU
X-Proofpoint-GUID: Lh9vynScVPlQ6gYuKpisQUiGae3a3SwU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOCBTYWx0ZWRfX64EYCTsXv5CS
 9K+PXowNk75FCZPBw+DJMUVX/ZSxqBYfvTraoezrsiplVgi592pUhSAuuutyij1k/H/ErwjObD7
 QE4z+Fd0o0ulYKROiIy0MZldh3xRwVYoPMgUb8UbHyv75GZCWzCGZ0EYhQb+xD1KWUMTTNYHxbY
 1XFGNIrWCxwx42MtnpcMpbkg8rRssMdakhpS6tX1717VjW5AkZxvgPSvd0aINYOQ+V6b3x5bOrv
 FtW0/zxMDUfheM59nROx03BG+Ydkb8YdwfG4xuVH4FYuRO6YltDMjq9fw25cWbzIqci3RbKv0l0
 LhPtG4h073k7KqlscC/LYNEZXnl7cGzSE9Hh9jU8WzFEHoN9wWeJoUchygw1BUCzK2ZBNAHFO9F
 rlG2fKS2k8o06484ypID/aPwvIiMK4DJZeUBeipxxKXEM9UntPmGrxlCL8Q9NmoDa+X93zIB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160138

From: Taniya Das <taniya.das@oss.qualcomm.com>

The Glymur TCSR block provides CLKREF clocks for EDP, PCIe, and USB. Add
this to the TCSR clock controller binding together with identifiers for
the clocks

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 .../bindings/clock/qcom,sm8550-tcsr.yaml      |  3 +++
 .../dt-bindings/clock/qcom,glymur-tcsrcc.h    | 24 +++++++++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 include/dt-bindings/clock/qcom,glymur-tcsrcc.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index f3afbb25e868..9fbf88836782 100644
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
           - qcom,sar2130p-tcsr
           - qcom,sm8550-tcsr
           - qcom,sm8650-tcsr
diff --git a/include/dt-bindings/clock/qcom,glymur-tcsrcc.h b/include/dt-bindings/clock/qcom,glymur-tcsrcc.h
new file mode 100644
index 000000000000..72614226b113
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,glymur-tcsrcc.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
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


