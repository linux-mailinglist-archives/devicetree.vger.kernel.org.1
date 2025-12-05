Return-Path: <devicetree+bounces-244700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 340DCCA8158
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 16:06:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5245A30F435B
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 14:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3181632C945;
	Fri,  5 Dec 2025 14:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MJ7uSf33";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IQtnGmKk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44D9326933
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 14:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764944635; cv=none; b=ewz7nu0JLlN/b61tKdVoaX3J+qvdwQwVYTqoWj1/lDr4D9rg6CzmhRDVKISWskCt4ZdwcgkLV86+jZNnh140duA5pZV9XtsRfRUmSPRTDms5pupw08Hk+g6nRk5310T64caTo0w2HyM87m2JtMQgYftYhp0oYWRJpZxTjHgdGLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764944635; c=relaxed/simple;
	bh=3+qYdEAvlOoBPmUdDBUu8x1Z3ZPwKgxBA6j/ziQo0Ro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gunG4CNSA1mzzH/Ke1f8SYsqTpJKQKna7wreLRABBWa5+8wotAvR5rijJ8PVw0apSYJhpbtRNAN+w7tQzkP+mW7gHgLxqv87jHbBdGAKrSjOrCFNGlA4W0NNOYMwX/s/CLQ6Sv/VVY8RkpHv2i8CUG02wGZ8DEpA8BkJEjoin0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MJ7uSf33; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IQtnGmKk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58JX5a2517691
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 14:23:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=; b=MJ7uSf33hL7nxZi7
	rliHoC5Uluhxr+cm+K4gF5NDCenWVdDjOMLWv9VJsfaagTjMwmok8hWQ/BYylSfM
	Q2YrAJtIHWz7BrN+2J3ADCDRWW+3R+JDhdBOUmV+SHLT3DdcQ15q0HEl9BapQ0um
	GfSl2khryUiY/pAE7FHrdq37dD+tK9Nft2EouQnsRKLuPhCEiXlbWLTuQod1v6UR
	04gewxmoNH5Lde1ydeGI54YInDl5ilQKRGBx4ryujYAPTJRqoYN6RCb3k0qak+3f
	YVm5bqslmTd1C5ojYxRkj0sjDgkU8gCiCMl+HZfOlntRJ0Rw6GapC8bx6ksswBcd
	5Pl9Ug==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auj7n2e7f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 14:23:45 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b22d590227so273881485a.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 06:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764944625; x=1765549425; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=IQtnGmKkEAJG3E0K6Lm6qolGRRLKwVwGRvFmomla9PH/GYpScoB9/Re90v11cEN2W+
         6CSNlv3xSuElw1cUcwfpL6Qa9ND8EqECbYyVr/HyE7n5eo2355MqGGHzVtUIJSxV8307
         PgiBJpszqj+J3RM7qxkUaCK4oAXOrvbGj/+rAa/+NBW9rqw1DU6klPxqV6LMs8QCz+VG
         1FAlru/bQJTZYZfNMIdv79zVguJ6k/SIDP0/sTBA8k6o2Or2vlTt85AVhe5LTMF5TCEx
         ukiYTg6TYQ1Qm0M/TRPHBwRtqN4/nNbZcwsfF9knFzhS3MB89pc0X82iz03TzyYXWcrT
         sc9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764944625; x=1765549425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=lotXcqoFVwXD61eFXz5U8CmOtJMFX7PH8355QkgEfocYyWD/viKQkW4BGdP9AAZHaD
         EN+JU60xgtIEQvc6yb+l5WnTzhXxdvpOnv+SOuigIkeu+cvXKRn8FegVZGNy+T1gnTFg
         tv416ghGN8/m9isv9847P62uDqKLB6m6nRNZaaeSRCTrHoex7daCT5dpfuZvhISX3Nrq
         H4ZMX5ysEPP7pzD3vMTy5IDZBjVLumOZeSQ1o6TRBqAwbKqdKkekq/RTQKdimwY59iB3
         mcHqXm0Q6qZCbGVSmk+epzQIccqgdeoi/8bP+VR2RE5WkYg7Mmg4xXp9073t7Whjhnbf
         J5Rg==
X-Forwarded-Encrypted: i=1; AJvYcCUwCIYLVaf9edJUlyxyy6I0Nduv2eeGp5+cNkOkr6xV9z+0fSFYF9QpwA1rb+c2WdYKjll3OCpLmUt4@vger.kernel.org
X-Gm-Message-State: AOJu0YzOJWYD9VBHFpdHmYjVy/0UCQGAIg2AEk+NmY1g1m1l6Kq4WXcH
	riQo9R+hD3EILEydhz49mOaUSzRes53BK7bUUBv7pTi2GpF7lM2K9TSLNZn6bB7lkfBM+Bx5c70
	Lz9lqQGM7J61ioFwF6JUHu6zaIfiqjg09+GIMElGJCCUOwwpVBXS2iYPtNOJDX8cZ
X-Gm-Gg: ASbGncsviTleCGgLfgjnR43F9VhMxY8UH31/FY3mfVR3052BL0hKLDJgxq35geK5ECL
	CliWH0GwsovImtR2BBMIDpQtfby7raQ65+Cbbl0ZhsvoeKXYSV+3XHYjCuJvIoQmB4T4GOXaNrh
	Tak9bci8npMzqMGeXt63NVrGrLOaZwMKdxfK9oyNg+zUomjgKQmTJ+0vEM9JL9yTyHAN4nqpOWg
	8b9DqMVsNDfed79w3V7JTLSC+CAhC3Fq9aJPz/CjCEmuf7q7DV5qIchJhyxKPsBWJczByndn++t
	HNO0FTjV9qkUcw3XzksOLTJde7GcdMFM10/KBx92+V2xwlzvEydmPAFH+PcurN9GKAQl6TaWE2J
	jzLN79suA9+KpY7g=
X-Received: by 2002:a05:620a:46a7:b0:8b2:a0cd:90f1 with SMTP id af79cd13be357-8b618213bfdmr975853485a.61.1764944625070;
        Fri, 05 Dec 2025 06:23:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwTFJ75f6zPp3Hwtuc0DU5SbaR7konyK28vR9/S2wLiY6rAjsKcr6nVShjImGvHgxyZDi7QQ==
X-Received: by 2002:a05:620a:46a7:b0:8b2:a0cd:90f1 with SMTP id af79cd13be357-8b618213bfdmr975847785a.61.1764944624532;
        Fri, 05 Dec 2025 06:23:44 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331df0sm9414161f8f.36.2025.12.05.06.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 06:23:43 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 05 Dec 2025 16:23:22 +0200
Subject: [PATCH v5 3/4] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251205-phy-qcom-edp-add-glymur-support-v5-3-201773966f1f@oss.qualcomm.com>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=3129;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UObXtePHY5dMQlAbJZdKc4jLD0I2BhVpyz2GDbDUvrM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpMurmc0yydXBW+eGjbZfyhFjEA9fTYkU45sq5N
 HC4NNcZxrCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTLq5gAKCRAbX0TJAJUV
 VqkfD/0U7/8zLXdH8qxx667poKA4euZHsOq/CxNqQqJFqL525c5YYcZ6lWQqMB3MvgU7KxRzkC+
 Uh+JMvFhYxyQ1q8q9u5auSUFk/mSqe6/CzINIiLPQYrsUaul8f6WSt/602Umqavo/6siIDUXRCw
 SlMrnIR9n9jQBV6W7GXxc1QlDEd1u1GMM9vWyyLtc+lQ6R2zC84NDRLpUQE8uXLMr/+8eLFCt22
 NTLPtzdoRWTX1aQbinSrYMX+3iFrLU8ZhL3kynOMxag6J/D4h/6p9So/DbFAV+rgBUWZeeX5RHV
 AEnkETxzJZph0bVDwqr8Y8ofAG+gEt1MMy56xGgS55LPz2oCyoTLhKCrUBb6hiYvAJljBq6MzMK
 TIR2hD1UYL6Pav4L7IfJlsKHANTI6scyu+er39E5wq1hnPDblgsI1RkQc8SqLHxJXhewl14WKDY
 LV4fzqVibuOnfIinMV7APOnKlLoGVpFAR9pZh0F6X32pXNv2lPO6r9bUi2oi2T7aVHy2xa0N6pN
 aq4ZLTT80L74adYyfosLfx9Q5qGghGVolxKVeNtClk/YnZ6Bj2r5fgeMQetKuYpHKVd8PfEl1Li
 jIHH4zURqMXBBcRg3UYoyXZ95ftng1ibcCjSpOaFVTumcU8QIEO7fauT1BKoxzoAyWCjLMm59NE
 ezrHpACILuEdfZw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=DOSCIiNb c=1 sm=1 tr=0 ts=6932eaf1 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ibtu9XGAwxROLk4EXI8A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: WjNg_l4iDGXSU-y6dlNEtQInU4Raa8Is
X-Proofpoint-GUID: WjNg_l4iDGXSU-y6dlNEtQInU4Raa8Is
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMyBTYWx0ZWRfX1EPoyo5u514j
 a/Lb64S5Y4Hv8Ito0IgCcA9e5Pi2pjkCaBVDFsDKkP6WXH7aCoou1HT9PiowziPhB03X9ZIkjYa
 nn6tTtV5WeEwXcpQeb3BUT9WwuJ5SKKFY2eOPa4dL7vAU3MbH9yV6Zt83ZLTorZO/5EKyT+c9MR
 E25KNyS2CEZCOWnvxGoXCBy/LFF5/gy+s8zi8Opcjo8NdKJ3CKsp707hlKJeDNTjE7uvUcjnPmD
 h/k6/CRnNJURMYWjw8V/t7Xe4dvgpOkXQBvVHpKegMIJwJ+ZN7V9XVWd/Ub9wSqWU7N0fd/+Tpl
 WBzq6RtnrlQ/rUShW4PWpDRbIzzxG1RbWrlhxfLUKORxhTRAjFTrGOmJEgyt4Qn6ejilyT4rLfp
 Uic6lvO5Yga+vCnHbeBX0PhxvDAVTw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050103

From: Abel Vesa <abel.vesa@linaro.org>

Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
for the same version number. So in order to be able to differentiate
between them, add these ones with DP prefix.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
new file mode 100644
index 000000000000..93edabb830af
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2025 Linaro Ltd.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_DP_COM_V8_H_
+#define QCOM_PHY_QMP_QSERDES_DP_COM_V8_H_
+
+/* Only for DP QMP V8 PHY - QSERDES COM registers */
+#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
+#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
+#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
+#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
+#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
+#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
+#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
+#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
+#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
+#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
+#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
+#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
+#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
+#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
+#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
+#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
+#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
+#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
+#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
+#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
+#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
+#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
+#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
+#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
+#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
+#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
+#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
+#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
+#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
+#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
+#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
+
+#endif

-- 
2.48.1


