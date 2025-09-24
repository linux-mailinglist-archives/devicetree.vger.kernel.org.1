Return-Path: <devicetree+bounces-220922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 26789B9C7BF
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:18:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23DBA1BC3ABC
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B262D593F;
	Wed, 24 Sep 2025 23:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pKVSJrz8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6902D481F
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755783; cv=none; b=t+bkxY9ei6G4RrwJFb8bbS+pSjAUEhcJuXG5qgN1kx/3GqREbji8dtnjr83FB615zQmeQz8wOff7YMuLEzqY8wky9WNg+HGyIT5okMWbtmM4/hlR98MSzNZ1lwL9YZqDQt6EhuX8k97Y4zAtRQ094D0p5x4vMBVuozs5IB4f8kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755783; c=relaxed/simple;
	bh=GJyV6ZN3Gm+2y4yM4GyAAJ1xmf5U8usHqzJs/GBirU0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Koi8nwCNpZsz2nGPYEMQJh9rbG37U+eeCN3Ny0Kaov53fM/tLY+VEryfwwz3zQdGeSmJwGFgUEB56gqXPl4hxGsH534b3n302HOC3REcyIFxKBCcEVw1E3MRGPp2cciOABwJoZiv5mMiej5MQcn8cz7VSpxPylCVOegoWsR7mzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pKVSJrz8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCqxEx025092
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:16:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yXS7d477ZN57UElaZanclycWMqJ7XYwRcXIo+NnpZhM=; b=pKVSJrz8rGxH2bfi
	W6jLpwRl44G/yfjRg6JikpZfZt7aMWDMc+7u0LGQtI6+IFlWZwWcdSxdpnJt1/g9
	a4DQfP7mLmUBPDultl+PiLVcmdmkNlRNqs/McgM/O66/x9JPUJttbyUg+zjj41wv
	B/Pdg4yD+61Ni/8jkZeE3ragkRAm6S8WdOU+DIAwdh39Aw/C1dswO38pKidO/Nwo
	uF5Ujn8Qq3QC1gX/ltuQZGr4xRYp+VyJ0J+dS8p6hRVP/wvZYMxtzZKnak2oEoxi
	gDh1SmG0Moi8ZQAfs2Cl2PejP13TTWSlyF5gqoqWg3nXJf6pKJXYkEKfjC32o23k
	/2lVtw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexasn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:16:20 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b54d0ffd16eso205429a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:16:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755780; x=1759360580;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yXS7d477ZN57UElaZanclycWMqJ7XYwRcXIo+NnpZhM=;
        b=Nz+wpzbwNUk0TFkeG/ImNL/NeuW9F6/H3wT2fEG33IMmqMwaM+JuyPkQzIlChB2hKw
         v7S3b2KEMbI60kDXPCmoar/rotXdml6MTB7g9oFzhMK2EYMWrvd+YXhVuSEAs9nEVPBa
         twOnZu6o+DTLmUxHK2J3DT5V+/vlROvPeEH6SsHyrujoCnhllz8EgIRW2Js7gZIKYljo
         4/U2jJ9LuohP50vOuneoEUAtx72/Xkk5r8LY9RNwP85fXWhFlga/RpANj93B/DZuJVyE
         EwHGDeIyxtGJkkUc2NfZoHYSNfoB9sgo4JW5vAi2d79iWqLhh3OeGDOIMo2gZjRqM3px
         MlhA==
X-Forwarded-Encrypted: i=1; AJvYcCV5RQVLCH0zNlH0uEyJTZnW1GMb2Sj0HEKZh9oxII7OJjzQXOUxWnkfCuZI5OX1jstqwZ1X39WXPZur@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+RVDNqSZgOiBn1JqZTfiZk68W/Ff9Q/ZFrwgxf75dBt7pXR7w
	fH/Z9OuIjz7tu18QixCJ2kGOb8NJ3sEqWeMbCZKHevhdzjNlTVZ86jBy1zbAcI8t38pfhp6ggF8
	ZgaCAEtUjvK4dVdFUU8rLYiL1ldTHI5jgDB5OfjNrJkL+A0wZIsRkR6O1fcoBEBpn
X-Gm-Gg: ASbGnct+Wl5x/JVGpeM8qdulya1p9shOAyhRYHTHiOttaEv6PGGGSsvGrGc1Jsso/gg
	XojPuF3sbV7sh09O6bmLSiYY8/XfVqprRR6zaDlEpCL77eX3BN4YeHq/R8AFfOR36T/OIktdkrn
	hCURSgsefHFLp+R6XpA0SqcDadKxgenb93cHKb4jhr8BPij8aYvcYFQd/Iu24OjVmNeuyGqXFSH
	di+dzs+fj/lpq143HG/41b8S+HkrFVW0UWprci2C31UmvucOws3HZk/Icqi2ZahENKKOhseR8d/
	ghqvuJfWvjH99T7MXlJgTxcvAl8x/m+vQGd/WhIecafZEw6zLESKgY8y9gN/3JtvRVJW2e1U3dM
	=
X-Received: by 2002:a17:903:fb0:b0:248:79d4:93bb with SMTP id d9443c01a7336-27ed4a315aamr15462585ad.31.1758755779456;
        Wed, 24 Sep 2025 16:16:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF40TVYJksRQ4FrvD706NLyeAme35UAOfegEcyPx85JnmrRPMTXY6qkkGrP5Ywap87OPmm9jA==
X-Received: by 2002:a17:903:fb0:b0:248:79d4:93bb with SMTP id d9443c01a7336-27ed4a315aamr15462325ad.31.1758755778872;
        Wed, 24 Sep 2025 16:16:18 -0700 (PDT)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671c156sm3964175ad.50.2025.09.24.16.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:16:18 -0700 (PDT)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 04:44:45 +0530
Subject: [PATCH 7/8] media: iris: Introduce vpu ops for vpu4 with necessary
 hooks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-knp_video-v1-7-e323c0b3c0cd@oss.qualcomm.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
In-Reply-To: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755747; l=14960;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=GJyV6ZN3Gm+2y4yM4GyAAJ1xmf5U8usHqzJs/GBirU0=;
 b=6QbS4hCxKe2/f0y4rrmAwr1i1t+iFuG0rAKZhdKqIxr2G0A02h2DqaUMMBlsmdEgOf+1R9MK6
 QrIjG6Eb9saAkYJwxEk9bNAy1fPAfW5WPIQ8cVrOXB8G95iJiIsyAfU
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-GUID: QHRnJWqL0MD6teyfXVS_rQWOXnRZy5K2
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d47bc4 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=fRD2SM0RS-lxgAn4z9kA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX185rnZVhfVRp
 ZjsPkG+7JiahrbUcVEm3EnVZsmUsKAAhxk8FM/VU/ZGdQPGgOIOlDpPloxC2RgqoW1dTmOFAOkw
 CQUu8eUEc8DQLocRLtF0YWDHiA1jwwQKLkRvOalIOcsj3A/7D08Sa8R5kVEc7K0j7Pj7eZxv8+2
 u/JwIP7gtdKnMwY6OOznOdpjWsJ7Ior2h/FQXR9ZnKHzxOziaYVihASqBQEUvt7RdSUMMCJHGXt
 ES57t/NHSSqZE2eS+mEF2zbcdGnkrRcYX8N/vy4SdR3UrWuAsw6bi1xm+20xndb4ubtCF7mewgS
 ZMPi0KsMgW7eOfEjX1gdPUPs+WVq9cLabZWf0rn8TIdfYZApaZjg5YfrQNZlhkHhNlZg5g+pk1/
 xYEqPIuW
X-Proofpoint-ORIG-GUID: QHRnJWqL0MD6teyfXVS_rQWOXnRZy5K2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

Add power sequence for vpu4 by reusing from previous generation wherever
possible. Hook up vpu4 op with vpu4 specific implemtation or resue from
earlier generation wherever feasible, like clock calculation in this
case.

Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/Makefile          |   1 +
 .../platform/qcom/iris/iris_platform_common.h      |   7 +
 drivers/media/platform/qcom/iris/iris_vpu4x.c      | 367 +++++++++++++++++++++
 drivers/media/platform/qcom/iris/iris_vpu_common.h |   1 +
 4 files changed, 376 insertions(+)

diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
index 13270cd6d899852dded675b33d37f5919b81ccba..1446f5732ab51db85ea4f52636d29e36d82b7a8f 100644
--- a/drivers/media/platform/qcom/iris/Makefile
+++ b/drivers/media/platform/qcom/iris/Makefile
@@ -22,6 +22,7 @@ qcom-iris-objs += iris_buffer.o \
              iris_venc.o \
              iris_vpu2.o \
              iris_vpu3x.o \
+             iris_vpu4x.o \
              iris_vpu_buffer.o \
              iris_vpu_common.o \
 
diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index ae49e95ba2252fc1442f7c81d8010dbfd86da0da..d6d4a9fdfc189797f903dfeb56d931741b405ee2 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -54,6 +54,10 @@ enum platform_clk_type {
 	IRIS_AXI1_CLK,
 	IRIS_CTRL_FREERUN_CLK,
 	IRIS_HW_FREERUN_CLK,
+	IRIS_BSE_HW_CLK,
+	IRIS_VPP0_HW_CLK,
+	IRIS_VPP1_HW_CLK,
+	IRIS_APV_HW_CLK,
 };
 
 struct platform_clk_data {
@@ -188,6 +192,9 @@ struct icc_vote_data {
 enum platform_pm_domain_type {
 	IRIS_CTRL_POWER_DOMAIN,
 	IRIS_HW_POWER_DOMAIN,
+	IRIS_VPP0_HW_POWER_DOMAIN,
+	IRIS_VPP1_HW_POWER_DOMAIN,
+	IRIS_APV_HW_POWER_DOMAIN,
 };
 
 struct iris_platform_data {
diff --git a/drivers/media/platform/qcom/iris/iris_vpu4x.c b/drivers/media/platform/qcom/iris/iris_vpu4x.c
new file mode 100644
index 0000000000000000000000000000000000000000..5585ed84d498be057c20927725b02a5409d18867
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_vpu4x.c
@@ -0,0 +1,367 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/iopoll.h>
+#include <linux/reset.h>
+#include "iris_instance.h"
+#include "iris_vpu_common.h"
+#include "iris_vpu_register_defines.h"
+
+#define WRAPPER_EFUSE_MONITOR			(WRAPPER_BASE_OFFS + 0x08)
+#define AON_WRAPPER_MVP_NOC_RESET_SYNCRST	(AON_MVP_NOC_RESET + 0x08)
+#define CPU_CS_APV_BRIDGE_SYNC_RESET		(CPU_BASE_OFFS + 0x174)
+#define DISABLE_VIDEO_APV_BIT			BIT(27)
+#define DISABLE_VIDEO_VPP1_BIT			BIT(28)
+#define DISABLE_VIDEO_VPP0_BIT			BIT(29)
+#define CORE_CLK_HALT				BIT(0)
+#define APV_CLK_HALT				BIT(1)
+#define CORE_PWR_ON				BIT(1)
+
+static int iris_vpu4x_genpd_set_hwmode(struct iris_core *core, bool hw_mode)
+{
+	u32 value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
+	int ret;
+
+	ret = dev_pm_genpd_set_hwmode(core->pmdomain_tbl->pd_devs[IRIS_HW_POWER_DOMAIN], hw_mode);
+	if (ret)
+		return ret;
+
+	if (!(value & DISABLE_VIDEO_VPP0_BIT)) {
+		ret = dev_pm_genpd_set_hwmode(core->pmdomain_tbl->pd_devs
+					      [IRIS_VPP0_HW_POWER_DOMAIN], hw_mode);
+		if (ret)
+			goto restore_hw_domain_mode;
+	}
+
+	if (!(value & DISABLE_VIDEO_VPP1_BIT)) {
+		ret = dev_pm_genpd_set_hwmode(core->pmdomain_tbl->pd_devs
+					      [IRIS_VPP1_HW_POWER_DOMAIN], hw_mode);
+		if (ret)
+			goto restore_vpp0_domain_mode;
+	}
+
+	if (!(value & DISABLE_VIDEO_APV_BIT)) {
+		ret = dev_pm_genpd_set_hwmode(core->pmdomain_tbl->pd_devs
+					      [IRIS_APV_HW_POWER_DOMAIN], hw_mode);
+		if (ret)
+			goto restore_vpp1_domain_mode;
+	}
+
+	return 0;
+
+restore_vpp1_domain_mode:
+	if (!(value & DISABLE_VIDEO_VPP1_BIT))
+		dev_pm_genpd_set_hwmode(core->pmdomain_tbl->pd_devs[IRIS_VPP1_HW_POWER_DOMAIN],
+					!hw_mode);
+restore_vpp0_domain_mode:
+	if (!(value & DISABLE_VIDEO_VPP0_BIT))
+		dev_pm_genpd_set_hwmode(core->pmdomain_tbl->pd_devs[IRIS_VPP0_HW_POWER_DOMAIN],
+					!hw_mode);
+restore_hw_domain_mode:
+	dev_pm_genpd_set_hwmode(core->pmdomain_tbl->pd_devs[IRIS_HW_POWER_DOMAIN], !hw_mode);
+
+	return ret;
+}
+
+static int iris_vpu4x_power_on_apv(struct iris_core *core)
+{
+	u32 value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
+	int ret;
+
+	if (value & DISABLE_VIDEO_APV_BIT)
+		return 0;
+
+	ret = iris_enable_power_domains(core,
+					core->pmdomain_tbl->pd_devs[IRIS_APV_HW_POWER_DOMAIN]);
+	if (ret)
+		return ret;
+
+	ret = iris_prepare_enable_clock(core, IRIS_APV_HW_CLK);
+	if (ret)
+		goto disable_apv_hw_power_domain;
+
+	return 0;
+
+disable_apv_hw_power_domain:
+	iris_disable_power_domains(core, core->pmdomain_tbl->pd_devs[IRIS_APV_HW_POWER_DOMAIN]);
+
+	return ret;
+}
+
+static void iris_vpu4x_power_off_apv(struct iris_core *core)
+{
+	bool handshake_done, handshake_busy;
+	u32 value, count = 0;
+
+	value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
+
+	if (value & DISABLE_VIDEO_APV_BIT)
+		return;
+
+	value = readl(core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
+
+	if (value & APV_CLK_HALT)
+		writel(0x0, core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
+
+	do {
+		writel(REQ_POWER_DOWN_PREP, core->reg_base + AON_WRAPPER_MVP_NOC_LPI_CONTROL);
+		usleep_range(10, 20);
+		value = readl(core->reg_base + AON_WRAPPER_MVP_NOC_LPI_STATUS);
+
+		handshake_done = value & NOC_LPI_STATUS_DONE;
+		handshake_busy = value & (NOC_LPI_STATUS_DENY | NOC_LPI_STATUS_ACTIVE);
+
+		if (handshake_done || !handshake_busy)
+			break;
+
+		writel(0x0, core->reg_base + AON_WRAPPER_MVP_NOC_LPI_CONTROL);
+		usleep_range(10, 20);
+
+	} while (++count < 1000);
+
+	if (!handshake_done && handshake_busy)
+		dev_err(core->dev, "LPI handshake timeout\n");
+
+	writel(0x080200, core->reg_base + AON_WRAPPER_MVP_NOC_RESET_REQ);
+	readl_poll_timeout(core->reg_base + AON_WRAPPER_MVP_NOC_RESET_ACK,
+			   value, value & 0x080200, 200, 2000);
+
+	writel(0x0, core->reg_base + AON_WRAPPER_MVP_NOC_RESET_SYNCRST);
+	writel(0x0, core->reg_base + AON_WRAPPER_MVP_NOC_RESET_REQ);
+	readl_poll_timeout(core->reg_base + AON_WRAPPER_MVP_NOC_RESET_ACK,
+			   value, value == 0x0, 200, 2000);
+
+	writel(CORE_BRIDGE_SW_RESET | CORE_BRIDGE_HW_RESET_DISABLE, core->reg_base +
+	       CPU_CS_APV_BRIDGE_SYNC_RESET);
+	writel(CORE_BRIDGE_HW_RESET_DISABLE, core->reg_base + CPU_CS_APV_BRIDGE_SYNC_RESET);
+	writel(0x0, core->reg_base + CPU_CS_APV_BRIDGE_SYNC_RESET);
+
+	iris_disable_unprepare_clock(core, IRIS_APV_HW_CLK);
+	iris_disable_power_domains(core, core->pmdomain_tbl->pd_devs[IRIS_APV_HW_POWER_DOMAIN]);
+}
+
+static void iris_vpu4x_ahb_sync_reset_apv(struct iris_core *core)
+{
+	u32 value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
+
+	if (value & DISABLE_VIDEO_APV_BIT)
+		return;
+
+	writel(CORE_BRIDGE_SW_RESET | CORE_BRIDGE_HW_RESET_DISABLE, core->reg_base +
+	       CPU_CS_APV_BRIDGE_SYNC_RESET);
+	writel(CORE_BRIDGE_HW_RESET_DISABLE, core->reg_base + CPU_CS_APV_BRIDGE_SYNC_RESET);
+	writel(0x0, core->reg_base + CPU_CS_APV_BRIDGE_SYNC_RESET);
+}
+
+static void iris_vpu4x_ahb_sync_reset_hardware(struct iris_core *core)
+{
+	writel(CORE_BRIDGE_SW_RESET | CORE_BRIDGE_HW_RESET_DISABLE, core->reg_base +
+	       CPU_CS_AHB_BRIDGE_SYNC_RESET);
+	writel(CORE_BRIDGE_HW_RESET_DISABLE, core->reg_base + CPU_CS_AHB_BRIDGE_SYNC_RESET);
+	writel(0x0, core->reg_base + CPU_CS_AHB_BRIDGE_SYNC_RESET);
+}
+
+static int iris_vpu4x_enable_hardware_clocks(struct iris_core *core)
+{
+	u32 value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
+	int ret;
+
+	ret = iris_prepare_enable_clock(core, IRIS_AXI_CLK);
+	if (ret)
+		return ret;
+
+	ret = iris_prepare_enable_clock(core, IRIS_HW_FREERUN_CLK);
+	if (ret)
+		goto disable_axi_clock;
+
+	ret = iris_prepare_enable_clock(core, IRIS_HW_CLK);
+	if (ret)
+		goto disable_hw_free_run_clock;
+
+	ret = iris_prepare_enable_clock(core, IRIS_BSE_HW_CLK);
+	if (ret)
+		goto disable_hw_clock;
+
+	if (!(value & DISABLE_VIDEO_VPP0_BIT)) {
+		ret = iris_prepare_enable_clock(core, IRIS_VPP0_HW_CLK);
+		if (ret)
+			goto disable_bse_hw_clock;
+	}
+
+	if (!(value & DISABLE_VIDEO_VPP1_BIT)) {
+		ret = iris_prepare_enable_clock(core, IRIS_VPP1_HW_CLK);
+		if (ret)
+			goto disable_vpp0_hw_clock;
+	}
+
+	return 0;
+
+disable_vpp0_hw_clock:
+	iris_disable_unprepare_clock(core, IRIS_VPP0_HW_CLK);
+disable_bse_hw_clock:
+	iris_disable_unprepare_clock(core, IRIS_BSE_HW_CLK);
+disable_hw_clock:
+	iris_disable_unprepare_clock(core, IRIS_HW_CLK);
+disable_hw_free_run_clock:
+	iris_disable_unprepare_clock(core, IRIS_HW_FREERUN_CLK);
+disable_axi_clock:
+	iris_disable_unprepare_clock(core, IRIS_AXI_CLK);
+
+	return ret;
+}
+
+static void iris_vpu4x_disable_hardware_clocks(struct iris_core *core)
+{
+	u32 value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
+
+	if (!(value & DISABLE_VIDEO_VPP1_BIT))
+		iris_disable_unprepare_clock(core, IRIS_VPP1_HW_CLK);
+
+	if (!(value & DISABLE_VIDEO_VPP0_BIT))
+		iris_disable_unprepare_clock(core, IRIS_VPP0_HW_CLK);
+
+	iris_disable_unprepare_clock(core, IRIS_BSE_HW_CLK);
+	iris_disable_unprepare_clock(core, IRIS_HW_CLK);
+	iris_disable_unprepare_clock(core, IRIS_HW_FREERUN_CLK);
+	iris_disable_unprepare_clock(core, IRIS_AXI_CLK);
+}
+
+static int iris_vpu4x_power_on_hardware(struct iris_core *core)
+{
+	u32 value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
+	int ret;
+
+	ret = iris_enable_power_domains(core, core->pmdomain_tbl->pd_devs[IRIS_HW_POWER_DOMAIN]);
+	if (ret)
+		return ret;
+
+	if (!(value & DISABLE_VIDEO_VPP0_BIT)) {
+		ret = iris_enable_power_domains(core, core->pmdomain_tbl->pd_devs
+						[IRIS_VPP0_HW_POWER_DOMAIN]);
+		if (ret)
+			goto disable_hw_power_domain;
+	}
+
+	if (!(value & DISABLE_VIDEO_VPP1_BIT)) {
+		ret = iris_enable_power_domains(core, core->pmdomain_tbl->pd_devs
+						[IRIS_VPP1_HW_POWER_DOMAIN]);
+		if (ret)
+			goto disable_vpp0_power_domain;
+	}
+
+	ret = iris_vpu4x_enable_hardware_clocks(core);
+	if (ret)
+		goto disable_vpp1_power_domain;
+
+	ret = iris_vpu4x_power_on_apv(core);
+	if (ret)
+		goto disable_hw_clocks;
+
+	iris_vpu4x_ahb_sync_reset_apv(core);
+	iris_vpu4x_ahb_sync_reset_hardware(core);
+
+	ret = iris_vpu4x_genpd_set_hwmode(core, true);
+	if (ret)
+		goto disable_apv_power_domain;
+
+	return 0;
+
+disable_apv_power_domain:
+	iris_vpu4x_power_off_apv(core);
+disable_hw_clocks:
+	iris_vpu4x_disable_hardware_clocks(core);
+disable_vpp1_power_domain:
+	if (!(value & DISABLE_VIDEO_VPP1_BIT))
+		iris_disable_power_domains(core, core->pmdomain_tbl->pd_devs
+						[IRIS_VPP1_HW_POWER_DOMAIN]);
+disable_vpp0_power_domain:
+	if (!(value & DISABLE_VIDEO_VPP0_BIT))
+		iris_disable_power_domains(core, core->pmdomain_tbl->pd_devs
+						[IRIS_VPP0_HW_POWER_DOMAIN]);
+disable_hw_power_domain:
+	iris_disable_power_domains(core, core->pmdomain_tbl->pd_devs[IRIS_HW_POWER_DOMAIN]);
+
+	return ret;
+}
+
+static void iris_vpu4x_power_off_hardware(struct iris_core *core)
+{
+	bool handshake_done, handshake_busy;
+	u32 value, count = 0;
+
+	iris_vpu4x_genpd_set_hwmode(core, false);
+
+	iris_vpu4x_power_off_apv(core);
+
+	value = readl(core->reg_base + WRAPPER_CORE_POWER_STATUS);
+
+	if (!(value & CORE_PWR_ON))
+		goto disable_clocks_and_power;
+
+	value = readl(core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
+
+	if (value & CORE_CLK_HALT)
+		writel(0x0, core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
+
+	readl_poll_timeout(core->reg_base + VCODEC_SS_IDLE_STATUSN, value,
+			   value & 0x7103, 2000, 20000);
+
+	do {
+		writel(REQ_POWER_DOWN_PREP, core->reg_base + AON_WRAPPER_MVP_NOC_LPI_CONTROL);
+		usleep_range(10, 20);
+		value = readl(core->reg_base + AON_WRAPPER_MVP_NOC_LPI_STATUS);
+
+		handshake_done = value & NOC_LPI_STATUS_DONE;
+		handshake_busy = value & (NOC_LPI_STATUS_DENY | NOC_LPI_STATUS_ACTIVE);
+
+		if (handshake_done || !handshake_busy)
+			break;
+
+		writel(0x0, core->reg_base + AON_WRAPPER_MVP_NOC_LPI_CONTROL);
+		usleep_range(10, 20);
+
+	} while (++count < 1000);
+
+	if (!handshake_done && handshake_busy)
+		dev_err(core->dev, "LPI handshake timeout\n");
+
+	writel(0x070103, core->reg_base + AON_WRAPPER_MVP_NOC_RESET_REQ);
+	readl_poll_timeout(core->reg_base + AON_WRAPPER_MVP_NOC_RESET_ACK,
+			   value, value == 0x070103, 200, 2000);
+
+	writel(0x0, core->reg_base + AON_WRAPPER_MVP_NOC_RESET_SYNCRST);
+	writel(0x0, core->reg_base + AON_WRAPPER_MVP_NOC_RESET_REQ);
+	readl_poll_timeout(core->reg_base + AON_WRAPPER_MVP_NOC_RESET_ACK,
+			   value, value == 0x0, 200, 2000);
+
+	writel(CORE_BRIDGE_SW_RESET | CORE_BRIDGE_HW_RESET_DISABLE, core->reg_base +
+	       CPU_CS_AHB_BRIDGE_SYNC_RESET);
+	writel(CORE_BRIDGE_HW_RESET_DISABLE, core->reg_base + CPU_CS_AHB_BRIDGE_SYNC_RESET);
+	writel(0x0, core->reg_base + CPU_CS_AHB_BRIDGE_SYNC_RESET);
+
+disable_clocks_and_power:
+	iris_vpu4x_disable_hardware_clocks(core);
+
+	value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
+
+	if (!(value & DISABLE_VIDEO_VPP1_BIT))
+		iris_disable_power_domains(core, core->pmdomain_tbl->pd_devs
+					   [IRIS_VPP1_HW_POWER_DOMAIN]);
+
+	if (!(value & DISABLE_VIDEO_VPP0_BIT))
+		iris_disable_power_domains(core, core->pmdomain_tbl->pd_devs
+					   [IRIS_VPP0_HW_POWER_DOMAIN]);
+
+	iris_disable_power_domains(core, core->pmdomain_tbl->pd_devs[IRIS_HW_POWER_DOMAIN]);
+}
+
+const struct vpu_ops iris_vpu4x_ops = {
+	.power_off_hw = iris_vpu4x_power_off_hardware,
+	.power_on_hw = iris_vpu4x_power_on_hardware,
+	.power_off_controller = iris_vpu35_vpu4x_power_off_controller,
+	.power_on_controller = iris_vpu35_vpu4x_power_on_controller,
+	.program_bootup_registers = iris_vpu35_vpu4x_program_bootup_registers,
+	.calc_freq = iris_vpu3x_vpu4x_calculate_frequency,
+};
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.h b/drivers/media/platform/qcom/iris/iris_vpu_common.h
index 7cf4304604cca590544a938c7e811c202cea3d93..f6dffc613b822341fb21e12de6b1395202f62cde 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_common.h
+++ b/drivers/media/platform/qcom/iris/iris_vpu_common.h
@@ -12,6 +12,7 @@ extern const struct vpu_ops iris_vpu2_ops;
 extern const struct vpu_ops iris_vpu3_ops;
 extern const struct vpu_ops iris_vpu33_ops;
 extern const struct vpu_ops iris_vpu35_ops;
+extern const struct vpu_ops iris_vpu4x_ops;
 
 struct vpu_ops {
 	void (*power_off_hw)(struct iris_core *core);

-- 
2.34.1


