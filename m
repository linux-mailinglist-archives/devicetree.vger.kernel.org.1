Return-Path: <devicetree+bounces-200370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A939B147C1
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 07:43:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5458E1604ED
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 05:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27970242D9F;
	Tue, 29 Jul 2025 05:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k70S/omx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9042423F439
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753767778; cv=none; b=kCdAfasrZm/i2BGS/LyKMRlD2OKZOilZ5rdMltpuFDq9rFbjjzbqdfquCCTL5OUP58iXA9zbpndgSWBs3N7Bff9aYn9wC6vT2FinCNZFKVeFJ47wiLJ52HuDoVZOIi2lvWokfuOnwTkfkzD5zBuVfcZW29dUKBBe6w6KS2KXARw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753767778; c=relaxed/simple;
	bh=+wJgt/MZzfS8zX94B7YslhfyO7jaHuU3tElYwRHGIX4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Je1MackpReZjx0nWimkaI424aAc5Guu8WJsofBtZxBxEuGqqssmpxBxlBcE/nD6/dGU73YgZIenL9CEH8d+PE+V80uTHgYalPCj5X4nzA0fB9mCb1hUBz2BSKQeIHSarOzvQXVCM3eoUy5XkOpBj+Lw0kJ9YWK8nKbfgznN9Fnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k70S/omx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SKxGqr003999
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:42:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FDFklMpNhOXJhUUzrt6WRg7BRReJ4cQT/Ou85+l3lNw=; b=k70S/omxwDDGZS3t
	IfyiJFu0OVn/kVwtI9c6iuBmWVLicjUtxP/te1cbY30lVzURDepa0wZflYlEte7r
	IQAUTQNZR4z5115R8odLC9bDn3XzbnKpPuQJC3qKt/INAmNoyJCdelu50l7MT9rr
	Lzb0RjYnq1dyRosA9qVMzgAeTfpCRKBAps76dK4QmMv6Wf/AG9sM63+xgJYtDwRy
	vsxVOyRq4G/LMaFsOE+gSKAjHjf9iXCFX12Sga3IbhPJJpDG1hLY0OX0PIvBW9+J
	2/AeTO0KOKZeGlte8HFgOedWNzn530xKpUZOi7u8/udy10gu08DaXq2T/xJIJnmf
	bO/rxQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2eu6n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:42:55 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b2fcbd76b61so6868401a12.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 22:42:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753767774; x=1754372574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FDFklMpNhOXJhUUzrt6WRg7BRReJ4cQT/Ou85+l3lNw=;
        b=Ayc+2GdJGVWBQPajp7EBMka3cHvrGfwSTU7+mj2yxj5mGKCOEUmXxM2xqQRVD5/2nx
         qIwZHwHD4d/0qNxbXEelo1MumPc7kTQU1ffo9EMJ+EREQ69+/d0sQlm3Yt2w8gAGQdhL
         JA3a0bJYu+YyfwtFNMWF3KZcigo2DsWl/cuwaPGNZG+ufIuW/AUWuE3w+1wG3tkSD3qr
         HDjer6L9EJC9go/3fdjvtM/ljlN2WD7VM5PO0724btZQEzrO9DY4bSdz+BRpu846Z1y9
         fI1/C93RO/0ywoQQagDqQsc9I5PZFAxe7aMwQXLFHO7bXqzefNdC1Cqgz2tiMwGc+HuS
         Y1dw==
X-Forwarded-Encrypted: i=1; AJvYcCX0iRSY50MtptH8XXzhB9VE377rOjKqL5wjKAo8fkDL54iy+TxOgOz3Rf3JnbLo+5YQ2itBC6Q66zlP@vger.kernel.org
X-Gm-Message-State: AOJu0YzW26JJpaSr1Hl3dgGmcru/g+Y8scWQ8tD7xm47GG0MGf5gfcQ3
	FSmqA59Okhrw0RzgQclgmoneg4mH0PwGBScQ5gza7RrqvEnjguu5AwqHdcXiQaJUCzAhm/ocJpu
	nlbQl140TozJTL61S8VIpPfgQsg9i+IrC7v9WMqxA5gq9wPPRs7ydXvpYRgjDwE1h
X-Gm-Gg: ASbGncsEEqfNvhBBIdrNbQel9PkayrOVdCrsabm2vCcdhS+RVFBDhW9vgMm2LLH0780
	+iJaeMg6DC70CwRAZsRxbncfenv2RaHW4rkxF11OI3C+mbbTRQG0OFEuLZ8PQAGXN82rWl5H68b
	8nuHaeFI/y3apttvgErhKciwVZfxiyTrfPmGyWh9z2+ryBBIAYZiH33yqZn79E3lTb0IiLVoMcd
	yFYjQ5Z9G9cmkuJgHHEqcnSSqJ6K+YbwgNGTdByR44cOgSVab6ql9+5UgkMETY6CuFoNAWTZOxa
	ikKB94sCb7D0XOY+bTmhK5os83k0mZiG1P31qLHhtAc0eocBgYJAGflwhmJhIS3p
X-Received: by 2002:a17:903:22c1:b0:240:2610:a057 with SMTP id d9443c01a7336-2402610a284mr76973835ad.0.1753767773587;
        Mon, 28 Jul 2025 22:42:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuyijweDxrMiwgBqN/idRldkyPp8drzrqj6AfWgmXdWv7KrRn2IrpZsZxZOMXJWFqdnEi80g==
X-Received: by 2002:a17:903:22c1:b0:240:2610:a057 with SMTP id d9443c01a7336-2402610a284mr76973435ad.0.1753767772540;
        Mon, 28 Jul 2025 22:42:52 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fe9b67485sm54505235ad.47.2025.07.28.22.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 22:42:52 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 11:12:36 +0530
Subject: [PATCH v3 2/7] dt-bindings: clock: qcom: Document the Glymur TCSR
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-2-227cfe5c8ef4@oss.qualcomm.com>
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
In-Reply-To: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
To: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: VAP1Ogri3RkY0o0aYcFTjMbCY2YEdQq5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA0MSBTYWx0ZWRfX2kdPclTZ0e/5
 DyYKCgeJ+r+QAnRedhdSsGB4dxezIvMW0GkZR5fzPzrjm93k9WC/7ZMy6b7arHebrSGDmQTa1BV
 r/hcpqTGWGvF8huCzdUP88LZcSpapZo4KR+IAsGS5b1saGcFkbpRL9rAjctt3fhDzFJhEVhuv50
 FwgUZEEccwEMn9PIgW6If3J5Mpi9EMu0TXPiA4DiLhkZucwDcn/uDQNoGBGFJe8WREZ7UDn7Kpy
 ELTNnEPUNtQjcVMFoCUzDAl52L+Wq49LUkcwYJFUbrQt+K8Af/0tr/zYpvlJz5MhER+N0dJoLGO
 vfXAEcf5OivPxsJiCNFrSgEZ9F2sHkSLSb8U5eyVAPBAsMf7kt2rr6+Vi2tX44zbqZaGqwrUPiT
 tP6g/x0vPDDeEQD+IsaYrj8m/G0tBhMMkTcS5XoRLFKxtIq/qRxSOLv3YQZg9c9SFlyGjvsH
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=68885f5f cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=NoBSHRPQAjGLFGKXj-wA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: VAP1Ogri3RkY0o0aYcFTjMbCY2YEdQq5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_01,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290041

Add bindings documentation for the Glymur TCSR Clock Controller.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 .../bindings/clock/qcom,sm8550-tcsr.yaml           |  3 +++
 include/dt-bindings/clock/qcom,glymur-tcsr.h       | 24 ++++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index f3afbb25e8682de83fb16acaa35448545f77ce77..9fbf8883678245b20d99c13cd1a7cd8c0feee11b 100644
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


