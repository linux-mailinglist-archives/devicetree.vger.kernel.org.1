Return-Path: <devicetree+bounces-228170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D394ABE9290
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:21:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC5736E1327
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 14:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08D8632C955;
	Fri, 17 Oct 2025 14:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bXntRByV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A8F32E15A
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760710654; cv=none; b=pI0E1DAO55yUyv+PSY7BGY4YLJNS3Tx/M2eCIeC8A8K8gMz3+MDruEcql86gpNZn4cxjpADnEA+gXO5VdhgfMcA+A+XFkS0EB4SoGulBP85M9m7Hwe65UZtCMDyPshIbo1UKiPDzlsYUmqfWNvdYavoM8ySDRqWiTKoLw9jfE9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760710654; c=relaxed/simple;
	bh=pBrsDZpLfL2DuOuLyCbchUHfirFeA+d/Ce9BNWCP3jM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o3KYwujyoTv3BIWSyGmrZypdletHWgI066gYhOT64NxLDdzxwSfGPeTqHWXG564T0JEHKvI0fZNPJOU1fFVXPJgGr2QltZU/nfHLAw/uV6Sz8nuHlZv3yhFx3al/tn6MfJrBk35R/zLH4OMu9cTYiB2/ZqPWn/melcs1hWKR57k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bXntRByV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59H88kNO006738
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:17:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gq+CWg2ZAfiAxiT7FSp+YhSs1Q22gW+tEiLpgbOOJTk=; b=bXntRByV5Y602KlH
	xenneFlDl4ikbNiGGtSX0+Gc0GRUOVm7o83csk5RBOY41moOBJ0UCeZKZ8+S3EW/
	g5LLk/DDe2MdYS4LkitAoeRQTEoVAkkzjjBBFjXND9aO3wHmPiWHuhf7WDaKnkyw
	kyRfdA3K8nKeOcscse0WIqgK5CX/2M1Nf13MrQ0PZA923mb0FzqPxvnipuj1MuZc
	lGmoIwynFFGftksVnFgi2ztmmjTMb4Z6gwItqLfDm0mQSrNHpcjBhRZ0jQMQ8lLJ
	fEdEOTpkq2rO3cnhlMrKAaIMyne0WQdIwLBWpF+/vVDN0gPtVh+wJw3mF50BjfX6
	ls9w8w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff14evg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:17:32 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76e2ea9366aso1993561b3a.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 07:17:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760710652; x=1761315452;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gq+CWg2ZAfiAxiT7FSp+YhSs1Q22gW+tEiLpgbOOJTk=;
        b=icZCG2zx9sq8mBJkFYLs+zbxm7yaadIDTONpzFebbLr53/F8b9MaUbgtprpIYls/5J
         tPLMdnWQvJy2apwMgo324wL440JqoVWCkDYNtnJF0L1iT4aYoLyG8eK/fDBZ5x+Gta2M
         rCTn9bXcW6C9MCWQ/TEAxBCmIhT0/ONdpVJBfzYxMunaWqPw6J8XCzNzCbAKrzP+zc+3
         R0zO1xtZtVAcnTtSitXoPofqjcXgObJUoDfniVBIDC+cpqOYxKyNG2eriSYGmCmMpVq8
         AukasQBog9yxBEug8xIZEd+4kPXA3EAQOXWNngM/0jI8cD7V8EzGjgwLRIFYQRjcXjiv
         hNVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOzo341XXTbiIh6pUhC83N9zwnVaGWNl84NFSx7NM91mWG4Tr9iqNFujxA+8Sdx/+rayyBJy/hyeOq@vger.kernel.org
X-Gm-Message-State: AOJu0YxZIyzs3PtCLKXV0vAEYUgxQZwfxFwxHstj03iZfjbrEVxhPx71
	Y/SIYCBDSG/Oy2OHUfs0yr31T47iJ0RdOtUq0EIcF4EhHv+AN1SlyOEStB41SqNLSDqfhrnt2IJ
	erm+7dvaRXPM5G5/ao4iSHGNMB/P+iBcR81mlgEn/F3pfJnr5Z6QJHYvRb3a3UDkS
X-Gm-Gg: ASbGncvTjdUp9Jz3RAVGZZSym4chQAT/mnRcTq7CqK7ri9u2x+uMjCL9nmz3NnuEkVN
	kshFag/9VdCgKOVT1FC81jyeA1w9L2+1PBCZadhEX55A3uVl9q0rAoOHY96VjSwAX01em8yHp0j
	Hzn3nZuqdNhVlrZV5cg+GYj3VqVc3kxtZtqaFp6g90nDx8DSmlMzw/qVsoY4aNfxqdRALymF6o4
	t3ZXG37C8+uAkhdQ68UmCHBtaEqePhtC03zrws8KpUyYVfLySvPYbWKr3tQlrVUpbkXP7/20qgi
	CFqB/Mj2LDIn8IZjH2vOxdaWR+y8mDuJV9I8MU8q5AK10ANjgcbn+C0Q/LWd/y41/MMyFhuzX3l
	7Hv4oqbx8GpBecsN2rLd56Rh3xYOMW5mm7g==
X-Received: by 2002:a05:6a00:9501:b0:783:7de9:d3c5 with SMTP id d2e1a72fcca58-7a220d377d9mr4913425b3a.29.1760710651655;
        Fri, 17 Oct 2025 07:17:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEso39skOdGnHnIdhnxRSYveSiPHXARNShqQv5LqtIDC99FC4CfH49L1jFLwA6JO2/fdGHrg==
X-Received: by 2002:a05:6a00:9501:b0:783:7de9:d3c5 with SMTP id d2e1a72fcca58-7a220d377d9mr4913366b3a.29.1760710651146;
        Fri, 17 Oct 2025 07:17:31 -0700 (PDT)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0966d7sm25895826b3a.40.2025.10.17.07.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 07:17:30 -0700 (PDT)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 19:46:26 +0530
Subject: [PATCH v2 5/8] media: iris: Move vpu register defines to common
 header file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-knp_video-v2-5-f568ce1a4be3@oss.qualcomm.com>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
In-Reply-To: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760710621; l=7259;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=pBrsDZpLfL2DuOuLyCbchUHfirFeA+d/Ce9BNWCP3jM=;
 b=AzUJ1y/C5COJb4mjwvfT40x9nZGReqDaRJqKTGjuCniFToydUWcs+6EZao0os4P95RDydmIuh
 azgEGW4NUdQDg3GumwF/075X78wGlxwDJ8Ter1DdeQR7+8aI0A74px3
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXzeq9elpyfpcG
 1gNqrSdpl+ZA8ccFX9/E0E5WopFaliKQrtNbOI022vl/wXJaUxSQZF3M3Wmz+7i1Qx0KCSGHnnE
 Qmy35kRhzcmqFX+mM+7Hrs37P0MVF8BmAbyArnUSsiT98tlEdrDqmUU8+vzA2wBzjX2F8w78CAC
 yzMyRutn3/menlq8NdngSVpl6G0z+yX6/NKjmzXDreBPzAf/8I2Pj/MBOFV7tDs2El1xObVdzjG
 Vv1uKe4V2s1Ue1sdvYG5ceBO2HDyjPxNKlkLgKZ2D9No+2YXjZhL2LRGsyF4nzFlm3xc4RukG4r
 bEHs+CsyssWB52T6GnF1d5KLL6kTB7zJfKsQq/uZw==
X-Proofpoint-GUID: Er9HsXYht-JQTIerrXFPosB8RoN2B-As
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68f24ffc cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=jbzpjpOmXXXxM5nbaMUA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Er9HsXYht-JQTIerrXFPosB8RoN2B-As
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

Some of vpu4 register defines are common with vpu3x. Move those into the
common register defines header. This is done to reuse the defines for
vpu4 in subsequent patch which enables the power sequence for vpu4.

Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_vpu3x.c      | 36 ----------------------
 drivers/media/platform/qcom/iris/iris_vpu_common.c | 23 --------------
 .../platform/qcom/iris/iris_vpu_register_defines.h | 32 +++++++++++++++++++
 3 files changed, 32 insertions(+), 59 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_vpu3x.c b/drivers/media/platform/qcom/iris/iris_vpu3x.c
index 339776a0b4672e246848c3a6a260eb83c7da6a60..0ac6373c33b7ced75ac94ac86a1a8fc303f28b5d 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu3x.c
+++ b/drivers/media/platform/qcom/iris/iris_vpu3x.c
@@ -11,48 +11,12 @@
 #include "iris_vpu_common.h"
 #include "iris_vpu_register_defines.h"
 
-#define WRAPPER_TZ_BASE_OFFS			0x000C0000
-#define AON_BASE_OFFS				0x000E0000
-#define AON_MVP_NOC_RESET			0x0001F000
-
-#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
-#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
-#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
-#define REQ_POWER_DOWN_PREP			BIT(0)
-#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
-#define NOC_LPI_STATUS_DONE			BIT(0) /* Indicates the NOC handshake is complete */
-#define NOC_LPI_STATUS_DENY			BIT(1) /* Indicates the NOC handshake is denied */
-#define NOC_LPI_STATUS_ACTIVE		BIT(2) /* Indicates the NOC is active */
-#define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
 #define CORE_CLK_RUN				0x0
 /* VPU v3.5 */
 #define WRAPPER_IRIS_VCODEC_VPU_WRAPPER_SPARE_0	(WRAPPER_BASE_OFFS + 0x78)
 
-#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
-#define CTL_AXI_CLK_HALT			BIT(0)
-#define CTL_CLK_HALT				BIT(1)
-
-#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
-#define RESET_HIGH				BIT(0)
-
-#define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
-#define CORE_BRIDGE_SW_RESET			BIT(0)
-#define CORE_BRIDGE_HW_RESET_DISABLE		BIT(1)
-
-#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
-#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
-#define MSK_CORE_POWER_ON			BIT(1)
-
-#define AON_WRAPPER_MVP_NOC_RESET_REQ		(AON_MVP_NOC_RESET + 0x000)
 #define VIDEO_NOC_RESET_REQ			(BIT(0) | BIT(1))
 
-#define AON_WRAPPER_MVP_NOC_RESET_ACK		(AON_MVP_NOC_RESET + 0x004)
-
-#define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
-
-#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
-#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
-
 #define AON_WRAPPER_MVP_NOC_CORE_SW_RESET	(AON_BASE_OFFS + 0x18)
 #define SW_RESET				BIT(0)
 #define AON_WRAPPER_MVP_NOC_CORE_CLK_CONTROL	(AON_BASE_OFFS + 0x20)
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c b/drivers/media/platform/qcom/iris/iris_vpu_common.c
index bbd999a41236dca5cf5700e452a6fed69f4fc922..a7b1fb8173e02d22e6f2af4ea170738c6408f65b 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
+++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
@@ -11,9 +11,6 @@
 #include "iris_vpu_common.h"
 #include "iris_vpu_register_defines.h"
 
-#define WRAPPER_TZ_BASE_OFFS			0x000C0000
-#define AON_BASE_OFFS				0x000E0000
-
 #define CPU_IC_BASE_OFFS			(CPU_BASE_OFFS)
 
 #define CPU_CS_A2HSOFTINTCLR			(CPU_CS_BASE_OFFS + 0x1C)
@@ -38,10 +35,6 @@
 #define CPU_CS_H2XSOFTINTEN			(CPU_CS_BASE_OFFS + 0x148)
 #define HOST2XTENSA_INTR_ENABLE			BIT(0)
 
-#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
-#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
-#define MSK_CORE_POWER_ON			BIT(1)
-
 #define CPU_IC_SOFTINT				(CPU_IC_BASE_OFFS + 0x150)
 #define CPU_IC_SOFTINT_H2A_SHFT			0x0
 
@@ -53,23 +46,7 @@
 #define WRAPPER_INTR_MASK_A2HWD_BMSK		BIT(3)
 #define WRAPPER_INTR_MASK_A2HCPU_BMSK		BIT(2)
 
-#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
-#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
-#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
-#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
-
 #define WRAPPER_TZ_CPU_STATUS			(WRAPPER_TZ_BASE_OFFS + 0x10)
-#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
-#define CTL_AXI_CLK_HALT			BIT(0)
-#define CTL_CLK_HALT				BIT(1)
-
-#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
-#define RESET_HIGH				BIT(0)
-
-#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
-#define REQ_POWER_DOWN_PREP			BIT(0)
-
-#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
 
 static void iris_vpu_interrupt_init(struct iris_core *core)
 {
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
index fe8a39e5e5a3fc68dc3a706ffdba07a5558163cf..bfe7ecceda894f6464970f9db2578c92dcb6c1ad 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
+++ b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
@@ -9,9 +9,41 @@
 #define VCODEC_BASE_OFFS			0x00000000
 #define CPU_BASE_OFFS				0x000A0000
 #define WRAPPER_BASE_OFFS			0x000B0000
+#define AON_BASE_OFFS				0x000E0000
+#define AON_MVP_NOC_RESET			0x0001F000
+#define WRAPPER_TZ_BASE_OFFS			0x000C0000
+
+#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
+#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
+#define AON_WRAPPER_MVP_NOC_RESET_REQ		(AON_MVP_NOC_RESET + 0x000)
+#define AON_WRAPPER_MVP_NOC_RESET_ACK		(AON_MVP_NOC_RESET + 0x004)
 
 #define CPU_CS_BASE_OFFS			(CPU_BASE_OFFS)
+#define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
+#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
+
+#define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
 
+#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
+#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
+
+#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
+#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
+#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
+#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
 #define WRAPPER_CORE_POWER_STATUS		(WRAPPER_BASE_OFFS + 0x80)
+#define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
+
+#define CORE_BRIDGE_SW_RESET			BIT(0)
+#define CORE_BRIDGE_HW_RESET_DISABLE		BIT(1)
+#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
+#define MSK_CORE_POWER_ON			BIT(1)
+#define CTL_AXI_CLK_HALT			BIT(0)
+#define CTL_CLK_HALT				BIT(1)
+#define REQ_POWER_DOWN_PREP			BIT(0)
+#define RESET_HIGH				BIT(0)
+#define NOC_LPI_STATUS_DONE			BIT(0) /* Indicates the NOC handshake is complete */
+#define NOC_LPI_STATUS_DENY			BIT(1) /* Indicates the NOC handshake is denied */
+#define NOC_LPI_STATUS_ACTIVE			BIT(2) /* Indicates the NOC is active */
 
 #endif

-- 
2.34.1


