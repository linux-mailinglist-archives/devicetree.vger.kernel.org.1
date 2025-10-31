Return-Path: <devicetree+bounces-233573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F5FC23975
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 08:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DDDF4010C6
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 07:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D4F32AAC4;
	Fri, 31 Oct 2025 07:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kpPeomOl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fL+0e5gN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79A132E159
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761896530; cv=none; b=ZzomPFZy8dazqghXQ9CxoRfyNwgs6XUiygIJ7ydHfBvXZKWn5fFIQhzlysQAGpWyszPFtSfSVvTN+hf/I33N2ICYkDc9Q+VtjHvOkVErbH3w2/HbZakVibfUYPJ3yGlF154Q3JCM+ASOOjBR44LyWqCT7JCWQekK+LNuhAG1WPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761896530; c=relaxed/simple;
	bh=qlUtzAzZxDCLyyPXTwLpPfLS4uA7aUaeJ2nseKmb40Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tVEmg1Tu+VEjWEIYOgaO4YVTFYzmWomhYCUNMYgaX/1AGPk7fyZO3IjLvWWfp9uuzcq9r6qsOhtjOVwzpMhMZKX+JRJ244socqWvUIFr36d2oZJYf2rKcwPDysyFxyvAgdPcAVGdOTIWUqAaV0salKx6Ds1xAQVjP9jNykG4aOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kpPeomOl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fL+0e5gN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UKx5lc3808855
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:42:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jEUn1B3/VYskPM+hcp4qb/Ei4KQ/Ans9UCSA4sJFPwI=; b=kpPeomOlj2aE5187
	a1tg2Dc6c53MMWB9yAFdxKx/Xbj14hiol8UVu8WpD3+jwrpJ5bXq3IkuYooUD5Sa
	7USJcgGcwkP193npPuXdLSCG+0F4O8/JPhKmNu9DhOqykDUC9xtkb3xP0iJ40wjN
	QPSTRwmTdxDPvdGgQ5YPGTdvNrghbftXJCFZgNPP1i1vI/672LjSNZeNfNgN99MG
	2Cc5bBh8kGbW0N6S+oxPI0JmZK3e5DEx20S6bocjb8YEPPqTGs6hAI1DH4I8dROF
	Kq9sNS134nWmyBmPiArdox9Dy3cZUKd5cFV1WiIB08g0xiuQjbcgKMXBXPh7gZV1
	+WvWGA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a46vvb278-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:42:04 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2904e9e0ef9so42524425ad.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 00:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761896524; x=1762501324; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jEUn1B3/VYskPM+hcp4qb/Ei4KQ/Ans9UCSA4sJFPwI=;
        b=fL+0e5gNNPYimRjAy7zJD9/1SiTjMRpcMmPYgjsv/BX9GYDOhjWr9C12L394zY/KC7
         YUiR2h9PE1/vHC+nAMW2HvZxmgjL2tdJespiMdeTjOfdPKI1JKedgIfdpC377xG1jJXG
         MZ4hcsVSl/EoJBpQYvbt79A4Lo2oJOXLBK0NUu27AxDBULh+ZUZtDdODjijQf/Jhjrx5
         dQVtFWfT7zhu5na4DorV+2rXwaOKO71QSlNTp1I87FDsPeWEFOYDg8hYlmgrMEZ+xKqN
         xmL0JsX04fwEtqb2tBiQ8B3dQEitBAl2htr96uLbIOyW83iC81YrPvbLCFzw3GVevvA/
         YPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761896524; x=1762501324;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jEUn1B3/VYskPM+hcp4qb/Ei4KQ/Ans9UCSA4sJFPwI=;
        b=WDD5W/+gCA4yo1FmhJQZPAeVn/IhoMCK180xlAtukommlWeKs2dDZDJ0U8G9xT33qh
         Z9aivSdEl2t0OMJT/e9DPTAT/pHROau3hJ0g0fmQTLLqcs/xb9IMn97Cq+17XCis7vFC
         t2yQImxKgXfLO1HQple3IvrXyhLX2I11pY5gvhUSIaktg69xZ4giy6LivowPPc1FTTVC
         C9oEPZh2YCoNjQ92wQv8Klx8X3ixLbwQvWgmdK1eUTFfXfjnD0CShBcdULYt9qADFkl7
         z9QZ6AQ7EWphBH3ZAq2BGfLxWOW3XBTUXLQBDZXsZcdKfiwd4+JsBiFoVGVdu6Tzv4VR
         0gvw==
X-Forwarded-Encrypted: i=1; AJvYcCWyh6WR3Khvds/0fKWFDtIXWXCpkGn8BxH8Pjdr7k48kpyB2FjFIFGoJPTylMi5ZEKOt5OIGUhq2MCl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5+s8u3VwhS5n4llu/PAYuAv7aIN0daket8UgM5EBE4VJvsrhw
	SnmiCUR7yhw3k8QAydOSeEcRXpRgEUCa1rDmoYZitvyClnOVxIcxcSJhWetOpUS87AdA2vgyPlQ
	Ht/GyRBJbSDn+jEsM+RrxssaMM31O8Vv59s9THG1EW+aJusqUIOzglXNBOoCjmY10
X-Gm-Gg: ASbGnctJfJ4B+CVtlPff7eQWMLkuX+BSLcy+JFNYBJPW/zWXy2Y4xwi0y2KuuEjdnQi
	g7KADs47SyokCA9Qf6dS3wA400QtE8/a8O56WvzPnRJFbintGkuNdHJfgCaIBMQyR3Ilsy3nlWS
	wQ9FOdOtFVLd+i8W/lUdywR+wZgzU9Ig48+sXjMbfdnTamM2pXd2vGVagfQ6juFFEpYsv7kULGH
	Fa9jBR02fBiC9QfhC2e7wGZ65kH/ooLYbguiFdBaMvpLhOUUBvEtREr9VylM19Jx5SzqxSft7MB
	xmFQ4G0hCNZLLtnPyAzCg6geeH5BIF0jmmtuocMR4U07ybsN33Dia1VVKr7CA2sSmT8g0YWjWhE
	oUenBVZ2w/UQiEx9STCuMALo0yQEwIzdp9nBOuAhNZkY5MKY4Pg==
X-Received: by 2002:a17:902:f605:b0:24b:4a9a:703a with SMTP id d9443c01a7336-2951a3d4644mr40113365ad.17.1761896523538;
        Fri, 31 Oct 2025 00:42:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErQsbrXyuB98W4VZPUZXjD0BZVT230MCSsO+Cs/nv14Hpl821fyNtz3MNGo8AVo+zWHBt37Q==
X-Received: by 2002:a17:902:f605:b0:24b:4a9a:703a with SMTP id d9443c01a7336-2951a3d4644mr40112935ad.17.1761896523025;
        Fri, 31 Oct 2025 00:42:03 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952696f0c8sm13276735ad.71.2025.10.31.00.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 00:42:02 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 00:41:46 -0700
Subject: [PATCH v3 3/3] arm64: dts: qcom: Add header file for IPCC physical
 client IDs on Glymur platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-knp-ipcc-v3-3-62ffb4168dff@oss.qualcomm.com>
References: <20251031-knp-ipcc-v3-0-62ffb4168dff@oss.qualcomm.com>
In-Reply-To: <20251031-knp-ipcc-v3-0-62ffb4168dff@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761896518; l=2593;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=6+n6xeXIQsCm4bVQMKIbgwhM/8zK3b3MTjTKsWiI6vA=;
 b=muuDjORrusoCJOFXDoPlj2+qe43LxVBqjAwpJdfoRCg/bKnNy9FuWMna4emTiZgOO5GFCoOke
 ofjPpCWIkF0Aycj2lyZBMJ2/g7VuDWmZLXsLOj0JkGazqN6W8poFtMf
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: HDjirtBAgCvgCG4i-V6lfQCBrqL-vPeb
X-Authority-Analysis: v=2.4 cv=dK6rWeZb c=1 sm=1 tr=0 ts=6904684c cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=469midWMXU5kPErhl_0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: HDjirtBAgCvgCG4i-V6lfQCBrqL-vPeb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDA2OSBTYWx0ZWRfX5ReqqNDkZW9d
 qaTygKYO1zMbo9Wsxc34uQRoUS6MwqINACCB9MC4DokGivl/dkVsA7Xdb9ImP4FWEkw5Wuqmnuo
 cMbp96Z5dUbMU2zr3sajE+U8hBJEqQUWGdSmcDse/zV8SbC2fTCB3zuaYdEBX+OSW7Rl9ukjFm8
 s8riFV0GZK1KrEHs2n8GFfB3k8TxbmkvjWpDmCc9WB/WZOHMMRRYFgn6SuwtyeTcvzFSF3ElLgy
 2aEm4JdPrBEPYaZVAMwKXxOe6dw2WaCWPsOu1mFLwvz7TLuwl1r3MxHKaZ8+HGMiLQJsfZDf/xv
 IpUcC0YZMUN1EYha2LwFmtqCOplE0y6x28IbF0s2/4eGC45/iE3703LuOXLHxoHgrMx7P57nF3F
 kl9SbxAqArFul21MUNX3YyWTX/NQTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310069

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Physical client IDs are used on Glymur Inter Process Communication
Controller (IPCC), add a corresponding header file.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-ipcc.h | 68 ++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-ipcc.h b/arch/arm64/boot/dts/qcom/glymur-ipcc.h
new file mode 100644
index 000000000000..700cd7114909
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/glymur-ipcc.h
@@ -0,0 +1,68 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef __DTS_GLYMUR_MAILBOX_IPCC_H
+#define __DTS_GLYMUR_MAILBOX_IPCC_H
+
+/* Glymur physical client IDs */
+#define IPCC_MPROC_AOP			0
+#define IPCC_MPROC_TZ			1
+#define IPCC_MPROC_MPSS			2
+#define IPCC_MPROC_LPASS		3
+#define IPCC_MPROC_SLPI			4
+#define IPCC_MPROC_SDC			5
+#define IPCC_MPROC_CDSP			6
+#define IPCC_MPROC_NPU			7
+#define IPCC_MPROC_APSS			8
+#define IPCC_MPROC_GPU			9
+#define IPCC_MPROC_ICP			11
+#define IPCC_MPROC_VPU			12
+#define IPCC_MPROC_PCIE0		13
+#define IPCC_MPROC_PCIE1		14
+#define IPCC_MPROC_PCIE2		15
+#define IPCC_MPROC_SPSS			16
+#define IPCC_MPROC_PCIE3		19
+#define IPCC_MPROC_PCIE4		20
+#define IPCC_MPROC_PCIE5		21
+#define IPCC_MPROC_PCIE6		22
+#define IPCC_MPROC_TME			23
+#define IPCC_MPROC_WPSS			24
+#define IPCC_MPROC_PCIE7		44
+#define IPCC_MPROC_SOCCP		46
+
+#define IPCC_COMPUTE_L0_LPASS		0
+#define IPCC_COMPUTE_L0_CDSP		1
+#define IPCC_COMPUTE_L0_APSS		2
+#define IPCC_COMPUTE_L0_GPU		3
+#define IPCC_COMPUTE_L0_CVP		6
+#define IPCC_COMPUTE_L0_ICP		7
+#define IPCC_COMPUTE_L0_VPU		8
+#define IPCC_COMPUTE_L0_DPU		9
+#define IPCC_COMPUTE_L0_SOCCP		11
+
+#define IPCC_COMPUTE_L1_LPASS		0
+#define IPCC_COMPUTE_L1_CDSP		1
+#define IPCC_COMPUTE_L1_APSS		2
+#define IPCC_COMPUTE_L1_GPU		3
+#define IPCC_COMPUTE_L1_CVP		6
+#define IPCC_COMPUTE_L1_ICP		7
+#define IPCC_COMPUTE_L1_VPU		8
+#define IPCC_COMPUTE_L1_DPU		9
+#define IPCC_COMPUTE_L1_SOCCP		11
+
+#define IPCC_PERIPH_LPASS		0
+#define IPCC_PERIPH_APSS		1
+#define IPCC_PERIPH_PCIE0		2
+#define IPCC_PERIPH_PCIE1		3
+#define IPCC_PERIPH_PCIE2		6
+#define IPCC_PERIPH_PCIE3		7
+#define IPCC_PERIPH_PCIE4		8
+#define IPCC_PERIPH_PCIE5		9
+#define IPCC_PERIPH_PCIE6		10
+#define IPCC_PERIPH_PCIE7		11
+#define IPCC_PERIPH_SOCCP		13
+#define IPCC_PERIPH_WPSS		16
+
+#endif

-- 
2.25.1


