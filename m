Return-Path: <devicetree+bounces-204139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6677BB24367
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 09:58:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E372880F1D
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 07:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 195782EA48D;
	Wed, 13 Aug 2025 07:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VSWPPfEs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9486D2EA48B
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755071767; cv=none; b=X2FN3tSqKIXaQ6F2XL0JDzppNewFWsIrg/c9dFI7xmSBgbcZxi832P4nfDyEWnL+OHt+JqocEN95Zfi/44DR524jJW5ZiqJkDnlpriY1rbLr8GYpJNQV9XAwh4BzTLDfTExDFNSgUm9o5JSH1DRe10YegJ68wYl2Oy4Bww/Nqj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755071767; c=relaxed/simple;
	bh=sHf7vbULTz2C/ybAwmFsk/gb/8n1wIkojTIqqM9GJ2A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tz6KbPc0oCDjtk/YaAoANQ2botpqc3C0PnQcEl2ovbpeFnu1uwlK7OTJTGuJVsyafTQrYiCn55IRmOgWaVOaIA+DKv6/wck4PekxtTe81Dnbox+QPZOf00EzSrznIH8lADXNR+tg6G4iJ0gDIaUrCrSSYBWiQWBBkfSv/Ol17kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VSWPPfEs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mXE1028990
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fUsD0dVnhmqkRsajdXDAuWEgzh80GlwERn+EBG0yzc4=; b=VSWPPfEsZhieDTOx
	To8YnaE13MmNjVCN3ulAKV6jKfDBHs+tvKwn6z0RsLGwjr1olOGwihF67pjLMlAm
	pYT2UqTEAXReCQK6KNHclJ00TROfOGtH17Z21I69vj8TP0omGeGh8Gu6mHX0fdWY
	JkOJWE4MaZptPVlN+S75I43XrJYMrbega7JfX0tlIu54m7sJUM7YHdro3viXiYfi
	i7AMUPOgwkrRBPL2g9DL4HwPnB5osjvKzQUhzxw+vqGUXUlOCb/h09H8eABdQz9h
	QNDjsfxoT9bPhiZA6ORqzbxh/AtvC+abKphmpCA1zsyR3z7fr9T33uEucsRBkjCA
	i3d/dQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxj4b0a3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 07:56:04 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76bcd829ff1so6035831b3a.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 00:56:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755071764; x=1755676564;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fUsD0dVnhmqkRsajdXDAuWEgzh80GlwERn+EBG0yzc4=;
        b=lCOGGniTPfSrlEw9QheJCCAjoqN/gLqn29bfyCyGfqmgHOPk7MCX6+r9p4DjeDdmkx
         7Tzi2vf/woalcNIXxnWBYf9AKgaZdCg5/B5oqRp9GMVBXBUk0NgrRSVLqt/d5wFu1jrK
         +upjERk9GcYmWt7IU+WRisO0MennL4pePr6nyiPwIz4B8hSkdSjpERrHTg85u6ceLhyW
         XWOR8hm2UlfkFQ4T+nmM3gkT2GsUl3brtjodGXK7vI22BQHGH4rTC5h34vV4zLyp7unT
         z5rqNUwHopvUXWmtMpEZnzp0tnICwf8Ft0XNbym9xdEpRMXijPNpjJrBZqcl6qVGiygb
         XXuw==
X-Forwarded-Encrypted: i=1; AJvYcCVjNONLVl0NZXGfFm+eKDwOs816IWLAo2F8pJzT+Y/Hc5pKXFCP4YAYcgSE0yx6ZNv8GRu74VSdoJzx@vger.kernel.org
X-Gm-Message-State: AOJu0YzhUtZNXK7jKNFJjDUFouI/kqXuC/nONNmQbLTctObC7DNFnP+E
	I4eitT7acTA9CFGCHBGYQ4zU0ZY6ptzWhn/Sbk+htQt2jLOlgc+pIFUtsDGBG9IfUNya+brtnvm
	Zs40APkLSnFnkqBPFgGNoJ9SCJy2kUGIFAAbu6CfBAlmlKpv6AlxhjqEnvmhShWqe
X-Gm-Gg: ASbGncuQzU7Zl2XndQMRc+/CYJW63b1FPYyH8Mn+N/0rQTBp7J2/IsyceQkbEp6znwE
	2QeKcwl3c+1X7LtNItw0w1LNr41fvw1CGaK1j8nlMOM2JGj4S6r5TFlcCovAHLsa4uGZlW90NUq
	X1tfKyHJw1fA+KuzlTH0poPXLHs5LJ41A8XQQpbJICmNsCzVTm0qyUUmwD+VHqp/uKdU2TUJCSf
	t4PsrFYB9ohpnnjZLip+Hv5WU9uOMQvtjSv/nkjKRPN5LUj45M4ztWmhxVLV98y2SESbe2vSmC8
	Xk0LOd6BL0KcvTImDpBCGxmT7fsCaVJkrDydiAcFXt0ECSRvisOJ7PoG4Q1iuQ25
X-Received: by 2002:a05:6a00:2396:b0:76b:f1c0:224b with SMTP id d2e1a72fcca58-76e20fd02b7mr3433306b3a.23.1755071763984;
        Wed, 13 Aug 2025 00:56:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERFxv9gFWTq8pe8BgE9fFX8Kld5lCGhSgqJZoo2m38yCdBawTCYOPwqUMppj5BB8hBCFL8Dw==
X-Received: by 2002:a05:6a00:2396:b0:76b:f1c0:224b with SMTP id d2e1a72fcca58-76e20fd02b7mr3433259b3a.23.1755071763502;
        Wed, 13 Aug 2025 00:56:03 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbd22csm31395754b3a.65.2025.08.13.00.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 00:56:03 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 13:25:18 +0530
Subject: [PATCH v4 2/7] dt-bindings: clock: qcom: Document the Glymur SoC
 TCSR Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-glymur-clock-controller-v4-v4-2-a408b390b22c@oss.qualcomm.com>
References: <20250813-glymur-clock-controller-v4-v4-0-a408b390b22c@oss.qualcomm.com>
In-Reply-To: <20250813-glymur-clock-controller-v4-v4-0-a408b390b22c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNyBTYWx0ZWRfXzIiIG/CTC43R
 N5JmeCJDIOSW8yQsU1RVbTvNTF5OfwXbQ8//rHV66BFcFB5Kjk129Zgz+zviRsT3Wry/otOpik0
 wnetKrCfTf5MSq0JjVtLionTChKwJEt/cWUvzNlMxnBeD5p54VvKtDwI92lItCyCJKyR5TV9VEi
 ZFeK4dpGmcdIHrbwzQZTPg4eajPzKfU8GdfJ06lVCp9BIIHQWt3ljHtzvuQqwfUfLObP8hgFfa2
 6aPWEsvLt43Uhs7XCLwHq/yy/ixlDXJdMuWGZi03AeofceU4GiumWdvKjQ2HqwrIadYRF39KeU7
 NRzf9ZWoJtGdAyXb3ZHTI7t4XbR6uVquNhxJym20xd5auKRNZ8pQ2MC05D3lmvTXPipkrzLAjjm
 jRVceYeB
X-Authority-Analysis: v=2.4 cv=fvDcZE4f c=1 sm=1 tr=0 ts=689c4514 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=NoBSHRPQAjGLFGKXj-wA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: HNex1uTJLN4p_DHqoVQsHc9Et7lHUJIF
X-Proofpoint-GUID: HNex1uTJLN4p_DHqoVQsHc9Et7lHUJIF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090027

The Glymur SoC TCSR block provides CLKREF clocks for EDP, PCIe, and USB. Add
this to the TCSR clock controller binding together with identifiers for
the clocks.

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
index 0000000000000000000000000000000000000000..72614226b113bb60f1e430fc18e13c46c8b043d3
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,glymur-tcsr.h
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


