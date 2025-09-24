Return-Path: <devicetree+bounces-220857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A3FB9B84A
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 20:38:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6B1019C4C70
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B97831AF16;
	Wed, 24 Sep 2025 18:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cX5D/B7o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D843148C6
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758739086; cv=none; b=EjebwadS5Kaff70U8HO5jni1mG+HiqZHL3IhNiNhL63ztJq1mGn1KRxls2UcP1HTN8U7v3QXPX71F5Uzb0CvO7oUfBaj0JHtHA3phTIMXUk/r8SJiDJS4qidzdkfzrIQ9skI38hGSPeXbDAY5VV8FWziRMGenfqT2Hwon+oD+g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758739086; c=relaxed/simple;
	bh=x/yB3U0JOrNOZ2V9rL6+/azkb/Ffu+YJQwvpcwVJLj4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XTqdrohoft8m2CyvH7mbvBlk5D+MR8l9kBJOxXSXMikYIq/xGwd6hl/owpeoJntqzrV8sXhgDx+Mf0tpMo+S0CBoyv/dMCVWDNFDMifauqtg/nDfYLLLPqEORFMvG4loCF0ixtT9aGVTOBEzlbRj8KyUlBdDnPtwsEmFqhuQ5To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cX5D/B7o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCQmPF002802
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9RNW1M1uDCL
	xCSHh9UIK713brM5SN9OdS/M6VDwK+XM=; b=cX5D/B7o/uCfC4dHhPFpLHqpeEt
	ezYPkmdcqQBHHuuvo6JTlQotW9CQES8jhMUnzIarfPKGzt9RXmcDdtKXa3v+r8xw
	hATn3jqd2XHpcj6JJKwFy/J1aQ3Tlr0EXXsbJ9eckymWqbf6KubVhMWrQy47MLpZ
	fABS32iNjRoF1YECqTyZi1BxYcKB3BFeuwmPjRsDkoNGO+/E7dZeg1HmFOdUWZC4
	hT7K4fTZ59sT6ffiZIRuFwbq+sUHyikuvVD2mo2K6QdgV1rvUYqazYpjZm81Iaho
	0gSz5TOvX8sVgf3Rbuoro2uyxuPeqqr/GmdqVRLCzRK2JmglWt5HHxUwtzw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf006r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:02 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b521995d498so73739a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:38:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758739081; x=1759343881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9RNW1M1uDCLxCSHh9UIK713brM5SN9OdS/M6VDwK+XM=;
        b=qdAAzllWlKG7Ua6stZi63bFdtVYFMtleFyPCzEvuR3Z7YDqkMLnqSpB+qegoHRhpBI
         XFlJP88GOXkP9ciOVQ65dyOI0inJENS4dnMkdomHH1B1FjW4OBEQz06TqMTjcwbmPN61
         /hAcAOAC8WBkPfZHAIrefQtxsRQ65YRQ+wz3mu7pLS11dxQt3XzB7Lf7ItfQiyNarbwv
         nxaTl6RWnwk0mjEahsWCw2PtbTPkBHnTnkxqgp7nbkKaRCzPVw9k4weNeRIJRN8ysfqM
         dbHMw3WCef6VCTgmUYUYFYwbJWxxrxgQaRHkaAk1wVVG3H8QKXK0UxmlBtntvN+F2Vi3
         gUEw==
X-Forwarded-Encrypted: i=1; AJvYcCWifFtxEmXySGxELLL1RsmjzAwfGPWubYcMIJz0Dp4GZWqJXBY8zvbAvtV5+2EpnP37pMNJSkZtQG4c@vger.kernel.org
X-Gm-Message-State: AOJu0YzlatxlE4yLIGFCxv7q3teVeR/GG5+y30/JI33mE2hQ8EMsbszU
	FF8QTIiHh3OwyIFyvGG6X9qiUf3q4GZ9eHPEeP7vcCM8+hu6j5ZDjDc2x6Kk/HBI0VBdi9cOzsr
	dgqv8qqmCuODKH3M9p+MqsI30Wt/LjLZx9RkT3Prqx2f0U/67IIzlsnK2ttRyv3KC
X-Gm-Gg: ASbGncsUHK+x4jfFK+HrcyRpB3DFGNwyAqtLZbla0RD0zKfYrqcsZgq6axOSkUAwD1i
	gZL2eYMxoJ2XCZYwVu+LIMWPeo/u4PXs+UtvkMGpLcCmFBvuhs98JqhP0R1F94VKDKHlnx4Ifu1
	AXUkplryzRTV+GkrXIIQVwTf2YM+hKcwRrl7c6bOOCoNH94jkhCqBLzWZEECY46fl1VSrGn6qvh
	TkX7YX2eGTlTqkNunAq7M+lw/iWB4k4kJdwRCFYZVgVlbqzBkgdRinn8Wto7ZRxAC4WuegOQ3bM
	e+Hv/6PyA840BlgDk0o8MBRAMBy3pA9NY9BPpj6/RaLSsykROXDnopHI/SqCuatG7miMLQHcBSb
	tcDCCG4IuA5AZXW4utHMPdUR+QDXzJr0DPeTmz8RJGUbs9AsIL+fb9IQ=
X-Received: by 2002:a05:6a20:a127:b0:220:10e5:825d with SMTP id adf61e73a8af0-2e7bfc1d570mr754835637.8.1758739081486;
        Wed, 24 Sep 2025 11:38:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQozrNUM5/5vTV2ruPG6yCF0B0PeRf3UGyZidkCzWFRA+CJQBk6NhKsxQ/GiS8C6ISg1ZxLQ==
X-Received: by 2002:a05:6a20:a127:b0:220:10e5:825d with SMTP id adf61e73a8af0-2e7bfc1d570mr754806637.8.1758739081070;
        Wed, 24 Sep 2025 11:38:01 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b555adca754sm6523412a12.16.2025.09.24.11.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 11:38:00 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mani@kernel.org, andersson@kernel.org,
        mathieu.poirier@linaro.org, konradybcio@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: mailbox: qcom-ipcc: Document Glymur physical client IDs
Date: Thu, 25 Sep 2025 00:07:23 +0530
Message-Id: <20250924183726.509202-3-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
References: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: E6R4ZRHbgjzAPKdm4erINrKsaCZxdrUN
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d43a8a cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QlhcEh-tmJ1xmMBebrMA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX76ok4pLi3pfF
 8TH6Inqi8pNzcEB8JZoy7vSBbGohWFhPp2/m9RUuKBnyWOcyuJTMMvzyJHp1bA3NZ++3bhF4/rI
 iFeCfUK958w+fIXCnFjSaJU8iPnwuLy5Ybaci+zBLcWi1Y+uAabLn2HspR6QmAyk8jXgccxfO9g
 VMpNtpyNlXc7hbmABJsECcxZyRglmU90wFl/08lEMIQQnPTcvIWYr3DLmZv+vP7fVsvtLweabI6
 IdSn/qcaPsgss0U6vtSXJqvmh6ZJU5RldNKinkmTYVvZH/ERfVnrlXHmpkB2bEnA15EhwVA77lE
 Ob8tpAgmA2RjF6naqRpeLJf3FgslPEbacRzSI0+721X++9SgEdTqE2Do3Km5ZVt/I5ofeHFw/Gr
 TXLw3g1x
X-Proofpoint-ORIG-GUID: E6R4ZRHbgjzAPKdm4erINrKsaCZxdrUN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

Document the physical client IDs specific to Glymur SoCs. Physical client
IDs are used on newer Qualcomm platforms including Glymur, since the Inter
Process Communication Controller (IPCC) HW block no longer has the virtual
to physical mapping in place.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---

https://patchwork.kernel.org/project/linux-arm-msm/patch/20250922-ipcc-header-v1-1-f0b12715e118@oss.qualcomm.com/
^^ patch seems to assume physical IDs are common across SoCs but it doesn't
seem to hold true on Glymur.

 include/dt-bindings/mailbox/qcom-ipcc.h | 61 +++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/include/dt-bindings/mailbox/qcom-ipcc.h b/include/dt-bindings/mailbox/qcom-ipcc.h
index fd85a79381b3..61cef29e43f0 100644
--- a/include/dt-bindings/mailbox/qcom-ipcc.h
+++ b/include/dt-bindings/mailbox/qcom-ipcc.h
@@ -36,4 +36,65 @@
 #define IPCC_CLIENT_GPDSP0		31
 #define IPCC_CLIENT_GPDSP1		32
 
+/* Platform specific physical client IDs */
+
+/* Glymur physical client IDs */
+#define GLYMUR_MPROC_AOP		0
+#define GLYMUR_MPROC_TZ			1
+#define GLYMUR_MPROC_MPSS		2
+#define GLYMUR_MPROC_LPASS		3
+#define GLYMUR_MPROC_SLPI		4
+#define GLYMUR_MPROC_SDC		5
+#define GLYMUR_MPROC_CDSP		6
+#define GLYMUR_MPROC_NPU		7
+#define GLYMUR_MPROC_APSS		8
+#define GLYMUR_MPROC_GPU		9
+#define GLYMUR_MPROC_ICP		11
+#define GLYMUR_MPROC_VPU		12
+#define GLYMUR_MPROC_PCIE0		13
+#define GLYMUR_MPROC_PCIE1		14
+#define GLYMUR_MPROC_PCIE2		15
+#define GLYMUR_MPROC_SPSS		16
+#define GLYMUR_MPROC_PCIE3		19
+#define GLYMUR_MPROC_PCIE4		20
+#define GLYMUR_MPROC_PCIE5		21
+#define GLYMUR_MPROC_PCIE6		22
+#define GLYMUR_MPROC_TME		23
+#define GLYMUR_MPROC_WPSS		24
+#define GLYMUR_MPROC_PCIE7		44
+#define GLYMUR_MPROC_SOCCP		46
+
+#define GLYMUR_COMPUTE_L0_LPASS		0
+#define GLYMUR_COMPUTE_L0_CDSP		1
+#define GLYMUR_COMPUTE_L0_APSS		2
+#define GLYMUR_COMPUTE_L0_GPU		3
+#define GLYMUR_COMPUTE_L0_CVP		6
+#define GLYMUR_COMPUTE_L0_ICP		7
+#define GLYMUR_COMPUTE_L0_VPU		8
+#define GLYMUR_COMPUTE_L0_DPU		9
+#define GLYMUR_COMPUTE_L0_SOCCP		11
+
+#define GLYMUR_COMPUTE_L1_LPASS		0
+#define GLYMUR_COMPUTE_L1_CDSP		1
+#define GLYMUR_COMPUTE_L1_APSS		2
+#define GLYMUR_COMPUTE_L1_GPU		3
+#define GLYMUR_COMPUTE_L1_CVP		6
+#define GLYMUR_COMPUTE_L1_ICP		7
+#define GLYMUR_COMPUTE_L1_VPU		8
+#define GLYMUR_COMPUTE_L1_DPU		9
+#define GLYMUR_COMPUTE_L1_SOCCP		11
+
+#define GLYMUR_PERIPH_LPASS		0
+#define GLYMUR_PERIPH_APSS		1
+#define GLYMUR_PERIPH_PCIE0		2
+#define GLYMUR_PERIPH_PCIE1		3
+#define GLYMUR_PERIPH_PCIE2		6
+#define GLYMUR_PERIPH_PCIE3		7
+#define GLYMUR_PERIPH_PCIE4		8
+#define GLYMUR_PERIPH_PCIE5		9
+#define GLYMUR_PERIPH_PCIE6		10
+#define GLYMUR_PERIPH_PCIE7		11
+#define GLYMUR_PERIPH_SOCCP		13
+#define GLYMUR_PERIPH_WPSS		16
+
 #endif
-- 
2.34.1


