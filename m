Return-Path: <devicetree+bounces-228453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FC9BEE03A
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 10:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCC9C401DAE
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 08:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A110123506A;
	Sun, 19 Oct 2025 08:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jNbM4sh7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3976230BCB
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 08:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760860941; cv=none; b=fNXb2wq2yJ5ud813+y+lAhKIQi7lbmkSd9yBc/dZlZcr+YmIoGS4VHaP6uC9La0A8vkcfxqFPntBgd35vwp3Ua9yUiQAiGFfJZaAEHnv72JMY2tvx7drtLFi7tJbMI7p11c46k6EOKu2WQUDYEhbjrX6ChkGZzkHJLEce+euZ+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760860941; c=relaxed/simple;
	bh=GaGviXQd1BmdQPJXtm3IcR1CGQVbHCroCtuSPzMiyZM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hwjWunNvEmiKkCfeZrQbA/J37k0s6S14JsAHhflXhflDBhOy2X1sdOysX9E9otvxhPBH4DS9cnEZJX8damwxqxecTFLdextyfw6o4tTKebx6SOGPx24LfvATh5SFq1evEMLRA4dA1cfIhyakjnkG6xX8o+Awt12rmEwS80YbSG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jNbM4sh7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59J6gN2s002342
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 08:02:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=BwC8FmuoUnU
	oxcHFn7z7n4laBB5CxBLWjXPUGBg9F7s=; b=jNbM4sh7ncRMuYWt7JhkzzLwrqZ
	n7EdPrOBV6R5IrgLpRoMWbLStWIjD0jSzoZYbv3eUXScE4/g69PIcjBQADuukvBt
	SCL3uF90CBPhOHrO10FnXYieiVTV+qFUaoMmepcl93VYClHyo8mTbYPmqND5Xy3y
	AoP0UB5JLyTJXmA2rr2sN0E3abZYjP7gltFxZ/EOSr6xp8F/OBjnEqPv7QFQQ6vv
	sP+esU9H4vVYZutjuzEq0Y/4f9M6y0nGLGDsfyJ88T9C2T0OYIjknA1KQn/E2zhn
	gpwc2/QsbDh82bQgyQ5zp9XNdtvmjpcTjLwuNLy5UtWlIB76Vdnaod3WTuw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42k1w49-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 08:02:19 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78e30eaca8eso159163486d6.2
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 01:02:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760860938; x=1761465738;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BwC8FmuoUnUoxcHFn7z7n4laBB5CxBLWjXPUGBg9F7s=;
        b=RtYkNQ3WPYSGFUNZGCz6SyBCW31NobnGGdr+Ok56ux8tmAuyPebFIHxNiGmkjQYN39
         05OlzIKWfZ+zGJQR/0wBC/6R6yODlOSQiWJhB1f62AZo0KyAtLsoByO5D6XXz+oDT7dH
         P6y5h0SNJgFPoDfuO5S7ob1ZL8f3wF7nKL3Js/QGbKirh/Y2kAE2yIsIfcOCOOoionmI
         nTWFfLx9AkimZ2s7ibDUBQy0jFAVtyoDDO9JQrEZsx5Y1et0JQf3Fhcx68e9LnyiW5Ud
         fBMPlM3d3sZpzC+7YFooPCjvl/X0SSsAKI9lMomFQccvorCD/2qrg+Fnj0g1NBR7eq/b
         trGw==
X-Forwarded-Encrypted: i=1; AJvYcCXgOD64LKHwOzEpFndWb/SEE0fg81CBmngaw1Hv56CmSR7afo8GawmMeXXgZk3To9+QVcpDldkmgmdC@vger.kernel.org
X-Gm-Message-State: AOJu0YylGY3CaH34uSaylyWvTGxgf10E+hRrQQ2PvHSgtjF0zGQ1JbID
	8ysR0AHI+Ia6vkcoGZiMeNsAQn5H9/iPWEt3FRnOOkf5bEeMMct2ynSMy4/YVw1AHnA4Ksf+zAq
	O+XiiTHKGl/doVq2M0gg9wz0YTL34i9GpVpgQouuvQ7IMgOOFKAsaDlwLd/m6JxsP
X-Gm-Gg: ASbGncswdFpUv2PDLCvbP0u2jpHBuipMO+M6wJTL7po2MQXnozH4Lu3la9WJiAxhL+H
	SHNs+uNscYNFYW76Tn+mIw8q8bZnbbSOaxMCHQpmkmsyno3hWfjuCXfULnk8w6TG2otdvoGV4v+
	89fNQPxhqgVlFa3/aWvd//9J3pNTAdw/mwB6roXY6pMDAD25M7TT5uhif7YZtRBgSWpDo236Rd5
	d2/X7KPg4L+xepqq5hN1RqXdMdDbdAVxAqZCQDKViTanmXUC0ks5IVPNKQf9uvE4txY/vaEU5BQ
	KWyoonKLWxuKXkgEnEV+RzdZC4jiFNx9aJuksVUUx7WB5MMifr9jyCXWC2Z6qUDONyjP037v6Gy
	MmGHi9TZBNN6PHHbWsDgEv0R8k49GQuQ0F4Wpl+BSy1xYOW63K3waasJv1bXGIzNYsROllWqS/3
	vks0wgAGDPcwg=
X-Received: by 2002:a05:622a:1105:b0:4e8:bb14:d974 with SMTP id d75a77b69052e-4e8bb14db56mr14028321cf.79.1760860937747;
        Sun, 19 Oct 2025 01:02:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFgROKJadVhIUNVMF01hU3nVkXc/7jxLb8qkxJ3NF/RnkVk/qap4lUw3OWoXvUlCtfMQ2i+Q==
X-Received: by 2002:a05:622a:1105:b0:4e8:bb14:d974 with SMTP id d75a77b69052e-4e8bb14db56mr14027871cf.79.1760860937290;
        Sun, 19 Oct 2025 01:02:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591def1695fsm1353170e87.61.2025.10.19.01.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 01:02:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Subject: [PATCH 2/2] media: iris: move more common register definitions to the header
Date: Sun, 19 Oct 2025 10:59:02 +0300
Message-ID: <20251019080212.142623-4-dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251019080212.142623-3-dmitry.baryshkov@oss.qualcomm.com>
References: <0251017-knp_video-v2-5-f568ce1a4be3@oss.qualcomm.com>
 <20251019080212.142623-3-dmitry.baryshkov@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: sTvMssP97XqMbyyW9v2zzzq1nacovOi2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfXzwWuag8hfx44
 +tTLPMdn10mHYOHukSo20fYrZN/IVtH5G77OxARoSvZ0Qi/0dnbvWdaB/71sce/ogv6J2LhW6vE
 ef8ERKmBrGBOwhT9P6gmPaGpB2Qh7F5VRiukOaATZ4YbgDpvGLYxrAG+k0eLUsR2yVc3F+T6fTW
 cAENtHoKdzTy6DnsuQuv4gPNb2DwlrfQNk6tPWjawy6v/sJ8s1NnRPvS2pGIWuUjo4IOxXhtGjX
 hY+Rm1FjolE6uWZ3Vtblu6g9dh7lQgn06RdQ98vNym52+wdeY7QKNc8EO7AU85HfXJ5rER+4rtx
 pdqV1jsvGB9yYH2zjybYqQ4V0aU3yfZVzOBUSDlZjL7ZN+F6dKjWkLBJQ5EdeXGi8YiKJORqsT9
 WHpLuF+DnZFgRccHNvivFxI2pTKG4A==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f49b0b cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=q6RJ1b41Wj0UoLORaoAA:9
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: sTvMssP97XqMbyyW9v2zzzq1nacovOi2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

Simplify adding new platforms by moving common registers definitions
from VPU 3.x and "common" file to the header with other register
defines.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/media/platform/qcom/iris/iris_vpu3x.c |  6 -----
 .../platform/qcom/iris/iris_vpu_common.c      | 20 ----------------
 .../qcom/iris/iris_vpu_register_defines.h     | 23 +++++++++++++++++++
 3 files changed, 23 insertions(+), 26 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_vpu3x.c b/drivers/media/platform/qcom/iris/iris_vpu3x.c
index 0ac6373c33b7..cd53bcda3b3e 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu3x.c
+++ b/drivers/media/platform/qcom/iris/iris_vpu3x.c
@@ -11,12 +11,6 @@
 #include "iris_vpu_common.h"
 #include "iris_vpu_register_defines.h"
 
-#define CORE_CLK_RUN				0x0
-/* VPU v3.5 */
-#define WRAPPER_IRIS_VCODEC_VPU_WRAPPER_SPARE_0	(WRAPPER_BASE_OFFS + 0x78)
-
-#define VIDEO_NOC_RESET_REQ			(BIT(0) | BIT(1))
-
 #define AON_WRAPPER_MVP_NOC_CORE_SW_RESET	(AON_BASE_OFFS + 0x18)
 #define SW_RESET				BIT(0)
 #define AON_WRAPPER_MVP_NOC_CORE_CLK_CONTROL	(AON_BASE_OFFS + 0x20)
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_common.c b/drivers/media/platform/qcom/iris/iris_vpu_common.c
index 4dc7aac78553..2d6548e47d47 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_common.c
+++ b/drivers/media/platform/qcom/iris/iris_vpu_common.c
@@ -11,10 +11,6 @@
 #include "iris_vpu_common.h"
 #include "iris_vpu_register_defines.h"
 
-#define CPU_IC_BASE_OFFS			(CPU_BASE_OFFS)
-
-#define CPU_CS_A2HSOFTINTCLR			(CPU_CS_BASE_OFFS + 0x1C)
-#define CLEAR_XTENSA2HOST_INTR			BIT(0)
 
 #define CTRL_INIT				(CPU_CS_BASE_OFFS + 0x48)
 #define CTRL_STATUS				(CPU_CS_BASE_OFFS + 0x4C)
@@ -32,22 +28,6 @@
 #define UC_REGION_ADDR				(CPU_CS_BASE_OFFS + 0x64)
 #define UC_REGION_SIZE				(CPU_CS_BASE_OFFS + 0x68)
 
-#define CPU_CS_H2XSOFTINTEN			(CPU_CS_BASE_OFFS + 0x148)
-#define HOST2XTENSA_INTR_ENABLE			BIT(0)
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
-#define WRAPPER_TZ_CPU_STATUS			(WRAPPER_TZ_BASE_OFFS + 0x10)
-
 static void iris_vpu_interrupt_init(struct iris_core *core)
 {
 	u32 mask_val;
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
index 1c3ff6cab343..72168b9ffa73 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
+++ b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
@@ -16,10 +16,21 @@
 #define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
 
 #define AON_WRAPPER_MVP_NOC_RESET_REQ		(AON_MVP_NOC_RESET + 0x000)
+#define VIDEO_NOC_RESET_REQ			(BIT(0) | BIT(1))
 
 #define AON_WRAPPER_MVP_NOC_RESET_ACK		(AON_MVP_NOC_RESET + 0x004)
 
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
 
 #define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
 #define CORE_BRIDGE_SW_RESET			BIT(0)
@@ -29,6 +40,14 @@
 #define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
 #define MSK_CORE_POWER_ON			BIT(1)
 
+#define WRAPPER_INTR_STATUS			(WRAPPER_BASE_OFFS + 0x0C)
+#define WRAPPER_INTR_STATUS_A2HWD_BMSK		BIT(3)
+#define WRAPPER_INTR_STATUS_A2H_BMSK		BIT(2)
+
+#define WRAPPER_INTR_MASK			(WRAPPER_BASE_OFFS + 0x10)
+#define WRAPPER_INTR_MASK_A2HWD_BMSK		BIT(3)
+#define WRAPPER_INTR_MASK_A2HCPU_BMSK		BIT(2)
+
 #define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
 #define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
 #define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
@@ -39,8 +58,12 @@
 #define NOC_LPI_STATUS_DENY			BIT(1) /* Indicates the NOC handshake is denied */
 #define NOC_LPI_STATUS_ACTIVE			BIT(2) /* Indicates the NOC is active */
 
+#define WRAPPER_IRIS_VCODEC_VPU_WRAPPER_SPARE_0	(WRAPPER_BASE_OFFS + 0x78)
 #define WRAPPER_CORE_POWER_STATUS		(WRAPPER_BASE_OFFS + 0x80)
 #define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
+#define CORE_CLK_RUN				0x0
+
+#define WRAPPER_TZ_CPU_STATUS			(WRAPPER_TZ_BASE_OFFS + 0x10)
 
 #define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
 #define CTL_AXI_CLK_HALT			BIT(0)
-- 
2.47.3


