Return-Path: <devicetree+bounces-245604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 88041CB2EBB
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 13:39:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FC71304A2D8
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 12:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2122325709;
	Wed, 10 Dec 2025 12:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LregkCjj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G9tryoI4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DB532470E
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 12:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370201; cv=none; b=mN2VzBLrE8Bvt2eGEIwYk1NP3S4aGC3CSPlVaqzpTkr1dyO/xrmCKLwvSeWUrd0zh6VaZ/aB5oY2kwrlb+mq1ZmL9Nrud1KeOxTbtMg78WMN9kD04p0C5BGToliLKMNHMMiNcClpZ4LMfqYjB8xtRqsXtrnj3EmHL9IqPnRFua0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370201; c=relaxed/simple;
	bh=5KjQNGH1FIUMW9BIdNH0GHLcY0nQuWFLI2Gji6/0cd0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bCvwxy89iwe0wZetdpONMSgnuVfBm8GY313gaW/TL4Pbqc8HVmLu+ZWLMj3W1JtpF8IGcqzfxT8EAm6wXco2rHFIQJpVceOcW8CQp/QqI+sFiOIMt7HAKWDDpuCbn9zL7hvmioHJx+lM2tQNAQmS3oPEjH2CrG0NITEmwUUwKfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LregkCjj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G9tryoI4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAB6Ftf2752650
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 12:36:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jS9Dz/jRZnqwwdJk1J7Vvfj+kDTRGL/8Hrd1W/eMhFI=; b=LregkCjjUy+jlPiP
	JdEh5t/qlFkMjg8zoOk9JrwHG06b/sIYa3FYd5/o4Bc6CYJb+wTigqU6g8W0nwka
	DRl3h4U4p8c/dtXERFZspnsZwKZmQoo//BLB9s2HAC3zDkhbNZTRX9UHugLW1esB
	9hlCZBlWGXT2+AoaEvBUtMTJ3RBkTpw2eCS4wfpji+RlhYyv1uwVN9bD0XTBmsQD
	SCTMmckssNcN1JEApO1AvJY8dWIeKPJk4UWWY6IEWCzm+bXNBGpWapu5q5z7RQgb
	Ehk99r0yp66UC3hl9N30pjQkwGxVwUcAIVef7Yaw+gLVhEP9PoRWtyz1NFKA98Mp
	GIgZzg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay7pm86v8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 12:36:37 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295952a4dd6so7780755ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 04:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765370196; x=1765974996; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jS9Dz/jRZnqwwdJk1J7Vvfj+kDTRGL/8Hrd1W/eMhFI=;
        b=G9tryoI4lmepdMC8pA0lQfTMBgr2O4x0WzHmucuSLjBd1SSw7WaLeVsAi9cQlNQLqD
         sCWK5sVsfc7TG5l1WoEnNmbSdysrzHHLEZIBawT6vjAjraKNc+QTr0ZAJXNp9KxeE8P3
         mEV/E70SQZO0WfJ2cBdIH3SSirgv95XFxcLRFWIoJttbTKkFjGUI4G5HZe1U6TBtysTQ
         BUSBagk1KGpPWnKsT/6jmHLKtbVyZDQk29/dMmnGQeAwVAH9lZ3w245SZ/KHxDRNZ856
         Lge4EpMmGftiVYBEReOC41ezGQbmxZIK+GwWHy51IK9Bb0b+H9cVboTXCih8Z6XmCWTC
         v1Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765370196; x=1765974996;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jS9Dz/jRZnqwwdJk1J7Vvfj+kDTRGL/8Hrd1W/eMhFI=;
        b=SPcNLP0fS1zdfvm+EEAbG6RIbSOsJfOUPDeuxfhuo3R5aq5of9EkK8tsdqLWGrIMrm
         Fvc6b3Ns9wKJb/qoi6TKhlqGKPxJi7ABNLcvxJW3+SN9BFt52tJ+ctoYNSo22jWqR2DU
         Brinr8Z2XZXeuS+t+MBFgrByoilbSZkUpZGi7org1D+/gIgeoDxU5ScDoWL3wS03UiFp
         PyrBRCw0/dFH5IixWx+enom+qDxKYmm6N94zqx5aimpfhy+/B4aEhvxWpYjhFahQpjlj
         OHs3N0yTYLPb791CLU0OLz1pScwgMYzjR0SAQ6sSWImQBSGgaQ4uc4ldkNlO46uAaaSv
         yQVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlOyUHozKf7VaT8ga8HkBSIjhaflDWb6oTAznIP6+ZfbF+NQKuLzTMj7mREVv1QoX9U9L8MlkJYU5T@vger.kernel.org
X-Gm-Message-State: AOJu0YydYdlrG524lS6WtxJuYiV0hkuo7lYbvx6c0jNiG2B8jWwysQsI
	sFcylM7GgAwfZcjsOSffgEYa6LKGwfqPdbmTDxD7ar2er1PmnZ91d1XbUps24G1G6yshV1PLwXF
	vnCqRmLve57ysSDt9IV0AbVWmhs820ZTWccCpM0EagpWLAQ3vFqcOsCHL5fk9gWNw
X-Gm-Gg: AY/fxX6rdIjlsZ/Eb1Gtr8+dgOpN3cPX3UJr1nBi379sDTKVbfTRF/+7KHgRco5C5Fy
	uKY1mgjxDSlQX/lsoZPYASGhrrV6n23WpwWzVSuEg9P4LHI+MSr9SdXD7OwuHiDB2kds/FZGN10
	ZfgIo9aLLfCgxOurxdEVXdSSWrVg1TfKdGPu34YVeQbdbhQb+VnB95gXLhh6WVfioDJNPmLUZuw
	QQ3AjxVmEdcjm+rbcV9gDDF17IH/nGRGHw9h7FJBicHGOaXv9x14v8yj9xu0Vbl51g1dbpzE0ak
	CrVtl4tgi/hHylYnFFYF2OSoKvmS2f6cE6KNnUckpmpAAkPUUUln1yCSJZAraEGMKtVCiI6R3m0
	owYD6b2yu98A3FAVh0bbtmmu1OFuYxyGllvS3rPZ+wp5K
X-Received: by 2002:a17:903:2311:b0:297:df84:bd18 with SMTP id d9443c01a7336-29ec2e1dd1emr24825025ad.30.1765370196007;
        Wed, 10 Dec 2025 04:36:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqK/6jVK0EEueJfUCNXSNs3T/14MlK5kU2/kzwFLWdtaSPYMHqqxEXbeu30pIEZFJnRt6Krw==
X-Received: by 2002:a17:903:2311:b0:297:df84:bd18 with SMTP id d9443c01a7336-29ec2e1dd1emr24824745ad.30.1765370195509;
        Wed, 10 Dec 2025 04:36:35 -0800 (PST)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29daeaab9c0sm185434615ad.68.2025.12.10.04.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 04:36:35 -0800 (PST)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 18:06:02 +0530
Subject: [PATCH v4 4/6] media: iris: Move vpu register defines to common
 header file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-knp_video-v4-4-8d11d840358a@oss.qualcomm.com>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
In-Reply-To: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
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
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765370172; l=8747;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=5KjQNGH1FIUMW9BIdNH0GHLcY0nQuWFLI2Gji6/0cd0=;
 b=LaqltDRM5Ev/IPI2PEZEzHJIROjknF3Vj6/gw9MlVDPoi4adUl0beBZGoKyV4bg1CIiA6HdSr
 xMzyV8jCJq9D8x7FV+vvfjRg92SUoZZ9ETTFxzdplgBxeL7/Z5fw8f6
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Authority-Analysis: v=2.4 cv=A7Jh/qWG c=1 sm=1 tr=0 ts=69396955 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=qUPVcWiRufo_Kb4lI7EA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 0gi-aVicIMWvu3E-QpRMBExF2_QXjTZV
X-Proofpoint-ORIG-GUID: 0gi-aVicIMWvu3E-QpRMBExF2_QXjTZV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEwMCBTYWx0ZWRfX6jOY3KbV7Unu
 UK6k/CXKk8S48EDTns09BNiISr7DozskTpiAxXZ7c5oYz+5zv9Bv+nq0TABbqN+CAxRcTif1VWE
 jqRwLxlrK4MXBxwcy9rq9cDZlpqS0KEuv3u4aVNyZv5dB4s802h4+Oh7ZwNJf49NEhHxe+TDcla
 6E0DMbCjRZyyYtxIIWphGy8JnnYz1kgYSpu+88QSudRk8LSQWMAc1m6utX2myzS36gxBoaQyFdM
 UKJ/57a1Nu6AGm62qWkLjCf90jjixFqzcsosBXEAhVFIkXlH4rlv6R9QqG3hDHrlZ1N7i+Q62My
 jU2/XktH0kPBQEdZe8xqld3pABxNVKjh/mj5AMdsc4X7CTyBmqPWlyk9/TP2AYTzuCgp1NHlidK
 mwMPXDkVMYqAdEQ1IEDg0cepDsMggA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 suspectscore=0 clxscore=1015 bulkscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100100

Some of vpu4 register defines are common with vpu3x. Move those into the
common register defines header. This is done to reuse the defines for
vpu4 in subsequent patch which enables the power sequence for vpu4.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_vpu3x.c      | 42 ---------------
 drivers/media/platform/qcom/iris/iris_vpu_common.c | 43 ---------------
 .../platform/qcom/iris/iris_vpu_register_defines.h | 61 ++++++++++++++++++++++
 3 files changed, 61 insertions(+), 85 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_vpu3x.c b/drivers/media/platform/qcom/iris/iris_vpu3x.c
index 339776a0b4672e246848c3a6a260eb83c7da6a60..cd53bcda3b3e1d6f234486df49a51150a7ec9799 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu3x.c
+++ b/drivers/media/platform/qcom/iris/iris_vpu3x.c
@@ -11,48 +11,6 @@
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
-#define CORE_CLK_RUN				0x0
-/* VPU v3.5 */
-#define WRAPPER_IRIS_VCODEC_VPU_WRAPPER_SPARE_0	(WRAPPER_BASE_OFFS + 0x78)
-
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
-#define VIDEO_NOC_RESET_REQ			(BIT(0) | BIT(1))
-
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
index fef192a2de48fa47af421632829184c5896326cd..50242fc6b4653a7d74ff64500f40eb8a859a6548 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
+++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
@@ -11,13 +11,6 @@
 #include "iris_vpu_common.h"
 #include "iris_vpu_register_defines.h"
 
-#define WRAPPER_TZ_BASE_OFFS			0x000C0000
-#define AON_BASE_OFFS				0x000E0000
-
-#define CPU_IC_BASE_OFFS			(CPU_BASE_OFFS)
-
-#define CPU_CS_A2HSOFTINTCLR			(CPU_CS_BASE_OFFS + 0x1C)
-#define CLEAR_XTENSA2HOST_INTR			BIT(0)
 
 #define CTRL_INIT				(CPU_CS_BASE_OFFS + 0x48)
 #define CTRL_STATUS				(CPU_CS_BASE_OFFS + 0x4C)
@@ -35,42 +28,6 @@
 #define UC_REGION_ADDR				(CPU_CS_BASE_OFFS + 0x64)
 #define UC_REGION_SIZE				(CPU_CS_BASE_OFFS + 0x68)
 
-#define CPU_CS_H2XSOFTINTEN			(CPU_CS_BASE_OFFS + 0x148)
-#define HOST2XTENSA_INTR_ENABLE			BIT(0)
-
-#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
-#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
-#define MSK_CORE_POWER_ON			BIT(1)
-
-#define CPU_IC_SOFTINT				(CPU_IC_BASE_OFFS + 0x150)
-#define CPU_IC_SOFTINT_H2A_SHFT			0x0
-
-#define WRAPPER_INTR_STATUS			(WRAPPER_BASE_OFFS + 0x0C)
-#define WRAPPER_INTR_STATUS_A2HWD_BMSK		BIT(3)
-#define WRAPPER_INTR_STATUS_A2H_BMSK		BIT(2)
-
-#define WRAPPER_INTR_MASK			(WRAPPER_BASE_OFFS + 0x10)
-#define WRAPPER_INTR_MASK_A2HWD_BMSK		BIT(3)
-#define WRAPPER_INTR_MASK_A2HCPU_BMSK		BIT(2)
-
-#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
-#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
-#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
-#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
-
-#define WRAPPER_TZ_CPU_STATUS			(WRAPPER_TZ_BASE_OFFS + 0x10)
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
-
 static void iris_vpu_interrupt_init(struct iris_core *core)
 {
 	u32 mask_val;
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
index fe8a39e5e5a3fc68dc3a706ffdba07a5558163cf..72168b9ffa7385d53d7190265d1c0922ee04a656 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
+++ b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
@@ -7,11 +7,72 @@
 #define __IRIS_VPU_REGISTER_DEFINES_H__
 
 #define VCODEC_BASE_OFFS			0x00000000
+#define AON_MVP_NOC_RESET			0x0001F000
 #define CPU_BASE_OFFS				0x000A0000
 #define WRAPPER_BASE_OFFS			0x000B0000
+#define WRAPPER_TZ_BASE_OFFS			0x000C0000
+#define AON_BASE_OFFS				0x000E0000
+
+#define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
+
+#define AON_WRAPPER_MVP_NOC_RESET_REQ		(AON_MVP_NOC_RESET + 0x000)
+#define VIDEO_NOC_RESET_REQ			(BIT(0) | BIT(1))
+
+#define AON_WRAPPER_MVP_NOC_RESET_ACK		(AON_MVP_NOC_RESET + 0x004)
 
 #define CPU_CS_BASE_OFFS			(CPU_BASE_OFFS)
+#define CPU_IC_BASE_OFFS			(CPU_BASE_OFFS)
+
+#define CPU_CS_A2HSOFTINTCLR			(CPU_CS_BASE_OFFS + 0x1C)
+#define CLEAR_XTENSA2HOST_INTR			BIT(0)
+
+#define CPU_CS_H2XSOFTINTEN			(CPU_CS_BASE_OFFS + 0x148)
+#define HOST2XTENSA_INTR_ENABLE			BIT(0)
+
+#define CPU_IC_SOFTINT				(CPU_IC_BASE_OFFS + 0x150)
+#define CPU_IC_SOFTINT_H2A_SHFT			0x0
+
+#define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
+#define CORE_BRIDGE_SW_RESET			BIT(0)
+#define CORE_BRIDGE_HW_RESET_DISABLE		BIT(1)
+
+#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
+#define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
+#define MSK_CORE_POWER_ON			BIT(1)
 
+#define WRAPPER_INTR_STATUS			(WRAPPER_BASE_OFFS + 0x0C)
+#define WRAPPER_INTR_STATUS_A2HWD_BMSK		BIT(3)
+#define WRAPPER_INTR_STATUS_A2H_BMSK		BIT(2)
+
+#define WRAPPER_INTR_MASK			(WRAPPER_BASE_OFFS + 0x10)
+#define WRAPPER_INTR_MASK_A2HWD_BMSK		BIT(3)
+#define WRAPPER_INTR_MASK_A2HCPU_BMSK		BIT(2)
+
+#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
+#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
+#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
+#define REQ_POWER_DOWN_PREP			BIT(0)
+
+#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
+#define NOC_LPI_STATUS_DONE			BIT(0) /* Indicates the NOC handshake is complete */
+#define NOC_LPI_STATUS_DENY			BIT(1) /* Indicates the NOC handshake is denied */
+#define NOC_LPI_STATUS_ACTIVE			BIT(2) /* Indicates the NOC is active */
+
+#define WRAPPER_IRIS_VCODEC_VPU_WRAPPER_SPARE_0	(WRAPPER_BASE_OFFS + 0x78)
 #define WRAPPER_CORE_POWER_STATUS		(WRAPPER_BASE_OFFS + 0x80)
+#define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
+#define CORE_CLK_RUN				0x0
+
+#define WRAPPER_TZ_CPU_STATUS			(WRAPPER_TZ_BASE_OFFS + 0x10)
+
+#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
+#define CTL_AXI_CLK_HALT			BIT(0)
+#define CTL_CLK_HALT				BIT(1)
+
+#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
+#define RESET_HIGH				BIT(0)
+
+#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
+#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
 
 #endif

-- 
2.34.1


