Return-Path: <devicetree+bounces-233572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6570BC23966
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:43:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C14E24F1811
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 07:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F09132C331;
	Fri, 31 Oct 2025 07:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nScAccjy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QY6p2q8X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8AC32AAB5
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761896526; cv=none; b=L7Weu565saJUrYrAY0ShOwb/nGS4if5SM3eKc5AiXV/ECPxnRs2Me9X/X6kOf0JOhcDDUenLN+TXomD8BvQEho1omqj1WU5BSa2lx1OHYfk51X6mZdiB3v2Q8/mMuId8HxM9J3XOlEgFGV9782Uz2wCXEeQqDUu4sC09tHBSIPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761896526; c=relaxed/simple;
	bh=Mrwm2w3gP4pup1gFppprLwnrB+/2dZ6XTLrhpN0Bg3E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jMVTbNxEm+NraqGlJpWjH+qh4cxVBg5u/DtgdJlwpGqWSLwdSDDIyjKNkVt0si36s7FsHXf+FT6ly7oj7atWVStWcTsccFE+nuzL1l0lYG0BvgGeQkyJxXgh16eDNhC66/uTy6/sdk1Si6MRVbv5wUoSByNzsKCAldPUrAVYJ2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nScAccjy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QY6p2q8X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V4MCiH1827950
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:42:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sd2NAJYeF5EPJon8vC2MavJcE3s4GuukSnaZE6VO7Tw=; b=nScAccjytMfh9CWf
	U+oZ90cBTTzaC1WgJExUO8KaGrMX2I6PemhJUj99Lyg8JE96QBpSTI6zAVj2xE7Z
	dlPUAzMe1I7EP26rZeD1TLcn7mLByTQzQ0vUgaXy1u12f64F7kXoYasEcNqzNRKD
	6UsWTLt06ZS0Z+qMmx8cmPTdazob2J+N8Z3v8OzDha8bHeluJiw3xqnxufSUdG8g
	Sthk3xNh/GJgOMzY7QHiObOc2npgqWkUr5UyYWmQwA5eyhmdsUwsq/bDcDdWSThj
	Qvi3sKFvjNGLJXVLp0ppQbHkeBoOcrwhS03vEKdpy4eE46dPwbIa9/ypFZMWOYEX
	DftAsA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4p11refw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:42:03 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34077439124so2085087a91.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 00:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761896522; x=1762501322; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sd2NAJYeF5EPJon8vC2MavJcE3s4GuukSnaZE6VO7Tw=;
        b=QY6p2q8XSDDyW5s+FQcMo+VJ6DDSlJgQe4fLi7BU5hIERZUMCWP8zOQElW48UZ6Gp4
         TcqsF3jUBR4vLDdcfgxJPQZnrK6lgFgrCjFHcoGfoDh1lK/r8uSmh1ubqvKmzRCEVrcL
         ggYdbr8L4XRoWzBJSfbyVCQJl/EdD3gAsQaNbtp+ZWiqXk0b/H8OsH0VSeDL4hX/6Qjj
         iBxYVL3BQX//PnS3MRxeBM3My4BqgSLKvXjlW8g0ASe8iRCtEHXjwCT66Wub5bgHHncp
         h/uoYr1G0a+g77TtiRmlkHkB7aSxd26HxkuLFxl7wuhCwDWKpzJGfZ9QSozpNLRsOwrh
         Xfwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761896522; x=1762501322;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sd2NAJYeF5EPJon8vC2MavJcE3s4GuukSnaZE6VO7Tw=;
        b=Qg1K2gyNdeGyPd6ITDEyj+eWfMmbRJj3sQsw92P6ek3jnyNm0wJXhQ5qvzxSbh7p3X
         M9i6CIzTadiC+zbv/K5a87d3bHSz8A7dwR8jrHILZa1YkipceBweunKbk/OjLXAYthkz
         HQEmXytUTp+IGqi01htzBdCrt35+YZA+694daNjHozJHyjk9oGqbeUHinBYF0A47ugG6
         e3iIqf9/YkTNhieuLGuqC0l3qPXx+fH4E8/SVRkJF5Um4nCMiRQP1B4XdBZ+2hFFHZCl
         7LdjcLpxqyzVIcBEcXsISJXa6SZbKoM1fGBwPq8ZPn7Iipa1ZnD8PBA8sNSdRMjJCJ7X
         quVQ==
X-Forwarded-Encrypted: i=1; AJvYcCU08UolhCeqsFyBs12pCkcdNSdqqoLlTXur72xFOQstdv+9o2IlwDg1GHwjXneIZefMbwSAgH58THDp@vger.kernel.org
X-Gm-Message-State: AOJu0YwnY2xdvasjQPO3n8OfS7raujG/vIRX6DxnZS6YodsEjgVP6tPU
	ZwsewYIidTH4OyZzAk1OxUje6/9o7c0hApisv8MxbUFyL6BOfIlkMRud+xKCCjNFtR21QOynMal
	vShZkHI6o+mciyRcru3C+nD+6N06P425juC5hsL+DFmbvuYt3VX7cZffReD/HItvu
X-Gm-Gg: ASbGncsLZxocVYEScZVGBErZPhuiH4hA+KFAar1nyD8GjpJWU2MAd49t/kj7LxK1RFn
	qbN+LzAYLwO3zmwh7IONP4do0evOuMH0+5EXeA2xg4zXQDzRy2KjboOKGPRiosw/b6Lv3ufXhR0
	46CzWxWIVbZTr/kp1t3Wio2wxeuEYwg39I3+P7sjphuKsYAVnafZAIYvHdijUyKjtFBweN9NUUf
	oLPCWpbPXTSwRTY1RvooPxbVqKFcBcuT8rRGyt+LcnpPo8T/qOx+ulHZfXT70XQ29qFGLJpSUvS
	TmEn3JTrUn8PaGV3J+rTGIITqf0Sz2PzyzKxzQaQTjnjm7lwFvrzm6bHLzX2PowvpE+/oV8NuXx
	omh2ZHgjZT4O2E+auCvT26yW5TP4HDm6G4QafK3T/okehvbr3rQ==
X-Received: by 2002:a17:902:e804:b0:294:cc1d:e2b3 with SMTP id d9443c01a7336-2951a496d9amr38666185ad.38.1761896522457;
        Fri, 31 Oct 2025 00:42:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJj6X9MV1Z0cRhHcN8eC+t2x62hYrSiQFW8BXORXcU1niZOPl+sv2s9T7Sw3hYkCZuDxLSrA==
X-Received: by 2002:a17:902:e804:b0:294:cc1d:e2b3 with SMTP id d9443c01a7336-2951a496d9amr38665755ad.38.1761896521930;
        Fri, 31 Oct 2025 00:42:01 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952696f0c8sm13276735ad.71.2025.10.31.00.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 00:42:01 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 00:41:45 -0700
Subject: [PATCH v3 2/3] arm64: dts: qcom: Add header file for IPCC physical
 client IDs on Kaanapali platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-knp-ipcc-v3-2-62ffb4168dff@oss.qualcomm.com>
References: <20251031-knp-ipcc-v3-0-62ffb4168dff@oss.qualcomm.com>
In-Reply-To: <20251031-knp-ipcc-v3-0-62ffb4168dff@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761896518; l=2629;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Mrwm2w3gP4pup1gFppprLwnrB+/2dZ6XTLrhpN0Bg3E=;
 b=99o3IwikSaopDYajqFIDb8QwA5+r8xJZbRLCTWovDygBPdG6RIsYZhgLvMAGSAUNBVdMDX0V1
 ujJg8beeq3XC0JDFtZoLIyJLzz+baBWCnHnRdTIOPBC1eGm0Zi9S+SF
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: tQPU9WEsEtnxSixkQHXYiwn2d4HbcyTp
X-Authority-Analysis: v=2.4 cv=RbCdyltv c=1 sm=1 tr=0 ts=6904684b cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FrzIo-fGRRgtQo6wEFQA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: tQPU9WEsEtnxSixkQHXYiwn2d4HbcyTp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDA2OSBTYWx0ZWRfX6R6AlsA/HAj3
 O7hnuPGLRxaQgfN9G10GdRz+uyoG2EUjBVHYLtQPR5W1m6wMICJrVQPxNvlB9hOgLyHClw9r3W6
 dvFFu0bfiLQ7FIvQXysWCc1sV8UAZRm4wjmDTj1FaChndC9Iwj61K7bwTeAEs8DjX5QT5XPWFLR
 u9gcVNZKaGHUFmnowoAaW6kef4a2PELUzkEXoI02psT3wTBTbvdEre2plrLT5eEK9p6bvsq6284
 EIqwftOlbqolnR566JCVmH/+H/LPjK1YYSeJzSNfg1KrUbC9xW1XtyPiRFroS+QSqPDkohU8+Ra
 VlUoFEI5dSu7mvsfZhCWH7e/UPieTXWgKZ3WIFR3z4ND0vtIqykN8/GY04lKGHgmUveQ/GqKa2H
 sVbO6Z2FJddNp+1yf4TyYKzFW2m8sQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310069

On earlier platforms, Inter Process Communication Controller (IPCC) used
virtual client IDs and performed virtual-to-physical mapping in hardware,
so the IDs defined in dt-bindings/mailbox/qcom-ipcc.h are common across
platforms. Physical client IDs instead of virtual client IDs are used for
qcom new platforms like Kaanapali, which will be parsed by the devicetree
and passed to hardware to use Physical client IDs directly. Since physical
client IDs could vary across platforms, add a corresponding header file
for the Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-ipcc.h | 58 +++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-ipcc.h b/arch/arm64/boot/dts/qcom/kaanapali-ipcc.h
new file mode 100644
index 000000000000..125375a4aac0
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/kaanapali-ipcc.h
@@ -0,0 +1,58 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef __DTS_KAANAPALI_MAILBOX_IPCC_H
+#define __DTS_KAANAPALI_MAILBOX_IPCC_H
+
+/* Physical client IDs */
+#define IPCC_MPROC_AOP			0
+#define IPCC_MPROC_TZ			1
+#define IPCC_MPROC_MPSS			2
+#define IPCC_MPROC_LPASS		3
+#define IPCC_MPROC_SDC			4
+#define IPCC_MPROC_CDSP			5
+#define IPCC_MPROC_APSS			6
+#define IPCC_MPROC_SOCCP		13
+#define IPCC_MPROC_DCP			14
+#define IPCC_MPROC_SPSS			15
+#define IPCC_MPROC_TME			16
+#define IPCC_MPROC_WPSS			17
+
+#define IPCC_COMPUTE_L0_CDSP		2
+#define IPCC_COMPUTE_L0_APSS		3
+#define IPCC_COMPUTE_L0_GPU		4
+#define IPCC_COMPUTE_L0_CVP		8
+#define IPCC_COMPUTE_L0_CAM		9
+#define IPCC_COMPUTE_L0_CAM1		10
+#define IPCC_COMPUTE_L0_DCP		11
+#define IPCC_COMPUTE_L0_VPU		12
+#define IPCC_COMPUTE_L0_SOCCP		16
+
+#define IPCC_COMPUTE_L1_CDSP		2
+#define IPCC_COMPUTE_L1_APSS		3
+#define IPCC_COMPUTE_L1_GPU		4
+#define IPCC_COMPUTE_L1_CVP		8
+#define IPCC_COMPUTE_L1_CAM		9
+#define IPCC_COMPUTE_L1_CAM1		10
+#define IPCC_COMPUTE_L1_DCP		11
+#define IPCC_COMPUTE_L1_VPU		12
+#define IPCC_COMPUTE_L1_SOCCP		16
+
+#define IPCC_PERIPH_CDSP		2
+#define IPCC_PERIPH_APSS		3
+#define IPCC_PERIPH_PCIE0		4
+#define IPCC_PERIPH_PCIE1		5
+
+#define IPCC_FENCE_CDSP			2
+#define IPCC_FENCE_APSS			3
+#define IPCC_FENCE_GPU			4
+#define IPCC_FENCE_CVP			8
+#define IPCC_FENCE_CAM			8
+#define IPCC_FENCE_CAM1			10
+#define IPCC_FENCE_DCP			11
+#define IPCC_FENCE_VPU			20
+#define IPCC_FENCE_SOCCP		24
+
+#endif

-- 
2.25.1


