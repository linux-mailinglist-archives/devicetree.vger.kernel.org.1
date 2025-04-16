Return-Path: <devicetree+bounces-167761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E258A8B883
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 14:11:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 759FD18893BE
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 12:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9987324BC00;
	Wed, 16 Apr 2025 12:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LRaHKRjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9DF24A057
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 12:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744805360; cv=none; b=FaTUuE5nv2T/2Bo6JPhEBoAA4qjDd9V2+OtodkGuJIr2DNhUe1K23SyQMKlW7gQhJRAkQJMz9aY/juLOJqkL4sg0GXsdwze/DkQ/kjS0MlsWgxv8Ez7YshTYaxdrmBMZRgYPQf6XG4xe0OCjDhAA6h4onoeJimAxuh4DpuTCGRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744805360; c=relaxed/simple;
	bh=+rtwGwEhlHWlON+ChK0GyA8Y841fjoHwRuKQLtTs9tE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZmbW3bJkidMzujdqU/rDR6U8Z3LCsTa9hira3XxOwfSq9QpXWJRLHFarDAjbXbv99C9NHTmRptqwkl6oxGTgaQV9HgJsH+CFOO27kc7FA7X1btkpXRwLJzFpwcpLHNIRyEE8nmHGYwOA8T00sg9StuCzEr8APEfLBi+z7O8qFCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LRaHKRjQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mGJN026233
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 12:09:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=r9sjeCOaeJf
	D5r4FvyEP4TtxnrhhEaHs3OtwmGAyYq8=; b=LRaHKRjQeAIOCjonZQARkaKRyK9
	JtXI9pMAAmS+VqeCkTs483C/DOTJENi6hGMl7llVYXJSZ2ViKseVP7vCcltwf38S
	5n41sdsUy148Jm58oERtvmvq96OWPZ1yOIU0m80VuLIttXw2lqauhF+BP2Lln4ou
	ACDfL380HtsHl5ve9i8GS2u0NQTWl33wXYvMPR0YSGjuMkO/DiukFry6zwO9zsVU
	Bb6+FC+1Y+GdeXt2itnAkSfdSLQGMUTDF3smAUooABONv8D23ABH0DRqIZuI90Ws
	jbZz2UyZTlUSvr/UkWmqDoUhK1xC6ueu3K6KPOWpsawnprsGuOdtZLRrIZQ==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs1bd3q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 12:09:17 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3fa1ddd6bdfso1884798b6e.2
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 05:09:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744805356; x=1745410156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r9sjeCOaeJfD5r4FvyEP4TtxnrhhEaHs3OtwmGAyYq8=;
        b=RFVYxDwJGXazG+9+mOehfj1i+JNYNAnyUjUrVK0h54w80AMj/Uve7nKx/dLl1P3PpD
         PJu5ObO3w+siE+WnFESplLP56PKmh4k1feylbFMc8TjmpfiN1i6Kes9btt16wIgi+Gg6
         tfKxusj2CYaIGE0Wm7u0f0D0ZClCtKHB7MnVrkB1D9QIjDrzHk3xE+snz6dqWOsMbATS
         nF3qNeNJXM1T5KpDSF12gSm0i6GqjQSygq46/yV32ScnJzhN6jLig6wsgn5t9dNgRUmg
         EEhXC885xfhoOJDxlPzj8q2cVnqt/Ia3Dm26nXLAjxqANobwVE9+1v1CICQghePcvNOg
         9LMw==
X-Forwarded-Encrypted: i=1; AJvYcCXf4zzdtA4yzgPGk/kYV14owULtOUoRPt1j4Y3WR2fugPrQSKJdRZ3Bly0w1rKXZ4Bd9tqbJ6QG0n1f@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0kWyFVKfQz8zOUScDljO5rQiUGcAnpezsUAxXDrzZwHWvYmU3
	yAC1cwUmJqL+RGQZtxgcrN2JX8JLRKNHa2c0tesH6adcvC470SGsgbS9NBfMYJWGe1K+DzbWl1h
	MM5ZEwiXPCwqu6FD+beGBscIkhyd2MFkb88DvogQOWdWBldWIQ/MASqoCDven
X-Gm-Gg: ASbGncslXEB6JKIbfmrVckFuQ8RwownBE+ddSiW1dDFWmtvzmWJwepFqyA8k8BA3aN6
	cJVhyYIX3rz/F1LnEYf0Z4Tstshkeq0/tN6sQw6MrKCXwT0buz49c5lmxLmspbrgvXNJg0kaZEq
	uFTa8vOVoa395VQp9jCIDX8oLmMsSzA2I/ZJgvmpd4qjA92wQuBd+pXuimdcGPZc+z6+NnVUS7k
	ySG8+2tCIDEgpX3RNHsLOFKnp5RO2V8+Pj2oJSjSbWo5G/1UAhA2rdXhmhUAbZzzMhi6wlWlMdt
	kbF0wXoCm8EJzCTwu2rSuntsxiXJh3UnHai/np4+zKugZ0c=
X-Received: by 2002:a05:6808:3996:b0:3f6:a889:59c6 with SMTP id 5614622812f47-400b0217336mr1102417b6e.26.1744805356343;
        Wed, 16 Apr 2025 05:09:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO3QkKPnveFjGFjOOdaF6vvX+XJFgK3cgdY/vutS5QOKJM9QSG7S2Q0NI/A6UZUg1huhe3mQ==
X-Received: by 2002:a05:6808:3996:b0:3f6:a889:59c6 with SMTP id 5614622812f47-400b0217336mr1102381b6e.26.1744805355957;
        Wed, 16 Apr 2025 05:09:15 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:15e4:d866:eb53:4185])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36f068968sm8328669a12.35.2025.04.16.05.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 05:09:15 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 2/6] media: qcom: camss: Add CSID 340 support
Date: Wed, 16 Apr 2025 14:09:04 +0200
Message-Id: <20250416120908.206873-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67ff9ded cx=c_pps a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=L3ROWYctCJYvUZd4tikA:9 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-GUID: jXSjsDZQ7bTPM_do4xd6XyiU2lrNrhyd
X-Proofpoint-ORIG-GUID: jXSjsDZQ7bTPM_do4xd6XyiU2lrNrhyd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160099

Add support for CSID found in QCM2290, it's a simplified gen-2 version.
- There is no Test Pattern Generator (moved outside CSID)
- There is no subsampling (moved to CAMIF module)

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/Makefile    |   1 +
 .../platform/qcom/camss/camss-csid-340.c      | 190 ++++++++++++++++++
 .../media/platform/qcom/camss/camss-csid.h    |   1 +
 3 files changed, 192 insertions(+)
 create mode 100644 drivers/media/platform/qcom/camss/camss-csid-340.c

diff --git a/drivers/media/platform/qcom/camss/Makefile b/drivers/media/platform/qcom/camss/Makefile
index 719898f5d32b..3217bf40976d 100644
--- a/drivers/media/platform/qcom/camss/Makefile
+++ b/drivers/media/platform/qcom/camss/Makefile
@@ -6,6 +6,7 @@ qcom-camss-objs += \
 		camss-csid.o \
 		camss-csid-4-1.o \
 		camss-csid-4-7.o \
+		camss-csid-340.o \
 		camss-csid-680.o \
 		camss-csid-gen2.o \
 		camss-csid-780.o \
diff --git a/drivers/media/platform/qcom/camss/camss-csid-340.c b/drivers/media/platform/qcom/camss/camss-csid-340.c
new file mode 100644
index 000000000000..24f8f6fb6f4c
--- /dev/null
+++ b/drivers/media/platform/qcom/camss/camss-csid-340.c
@@ -0,0 +1,190 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Qualcomm MSM Camera Subsystem - CSID (CSI Decoder) Module 340
+ *
+ * Copyright (c) 2025 Qualcomm Technologies, Inc.
+ */
+
+#include <linux/completion.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+
+#include "camss.h"
+#include "camss-csid.h"
+#include "camss-csid-gen2.h"
+
+#define CSID_RST_STROBES					(0x010)
+#define		CSID_RST_SW_REGS			BIT(0)
+#define		CSID_RST_IRQ				BIT(1)
+#define CSID_RST_IFE_CLK				BIT(2)
+#define		CSID_RST_PHY_CLK			BIT(3)
+#define		CSID_RST_CSID_CLK			BIT(4)
+
+#define CSID_IRQ_STATUS						(0x070)
+#define CSID_IRQ_MASK						(0x074)
+#define		CSID_IRQ_MASK_RST_DONE			BIT(0)
+#define CSID_IRQ_CLEAR						(0x078)
+#define CSID_IRQ_CMD						(0x080)
+#define		CSID_IRQ_CMD_CLEAR			BIT(0)
+
+#define CSID_CSI2_RX_CFG0					(0x100)
+#define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
+#define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
+#define		CSI2_RX_CFG0_DL1_INPUT_SEL		8
+#define		CSI2_RX_CFG0_DL2_INPUT_SEL		12
+#define		CSI2_RX_CFG0_DL3_INPUT_SEL		16
+#define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
+#define		CSI2_RX_CFG0_PHY_TYPE_SEL		24
+
+#define CSID_CSI2_RX_CFG1					(0x104)
+#define		CSI2_RX_CFG1_PACKET_ECC_CORRECTION_EN	BIT(0)
+#define		CSI2_RX_CFG1_MISR_EN			BIT(6)
+#define		CSI2_RX_CFG1_CGC_MODE			BIT(7)
+
+#define CSID_RDI_CFG0(rdi)					(0x300 + 0x100 * (rdi))
+#define		CSID_RDI_CFG0_BYTE_CNTR_EN		BIT(0)
+#define		CSID_RDI_CFG0_TIMESTAMP_EN		BIT(1)
+#define		CSID_RDI_CFG0_DECODE_FORMAT_NOP		(0xf << 12)
+#define		CSID_RDI_CFG0_DT(dt)			((dt) << 16)
+#define		CSID_RDI_CFG0_VC(vc)			((vc) << 22)
+#define		CSID_RDI_CFG0_DTID(dtid)		((dtid) << 22)
+#define		CSID_RDI_CFG0_ENABLE			BIT(31)
+
+#define CSID_RDI_CTRL(rdi)					(0x308 + 0x100 * (rdi))
+#define CSID_RDI_CTRL_HALT_AT_FRAME_BOUNDARY		0
+#define CSID_RDI_CTRL_RESUME_AT_FRAME_BOUNDARY		1
+
+static void __csid_configure_rx(struct csid_device *csid,
+				struct csid_phy_config *phy, int vc)
+{
+	u32 val;
+
+	val = (phy->lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
+	val |= phy->lane_assign << CSI2_RX_CFG0_DL0_INPUT_SEL;
+	val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX) << CSI2_RX_CFG0_PHY_NUM_SEL;
+	writel_relaxed(val, csid->base + CSID_CSI2_RX_CFG0);
+
+	val = CSI2_RX_CFG1_PACKET_ECC_CORRECTION_EN;
+	writel_relaxed(val, csid->base + CSID_CSI2_RX_CFG1);
+}
+
+static void __csid_ctrl_rdi(struct csid_device *csid, int enable, u8 rdi)
+{
+	writel(!!enable, csid->base + CSID_RDI_CTRL(rdi));
+}
+
+static void __csid_configure_rdi_stream(struct csid_device *csid, u8 enable, u8 vc)
+{
+	struct v4l2_mbus_framefmt *input_format = &csid->fmt[MSM_CSID_PAD_FIRST_SRC + vc];
+	const struct csid_format_info *format = csid_get_fmt_entry(csid->res->formats->formats,
+								   csid->res->formats->nformats,
+								   input_format->code);
+	u8 lane_cnt = csid->phy.lane_cnt;
+	u8 dt_id;
+	u32 val;
+
+	if (!lane_cnt)
+		lane_cnt = 4;
+
+	/*
+	 * DT_ID is a two bit bitfield that is concatenated with
+	 * the four least significant bits of the five bit VC
+	 * bitfield to generate an internal CID value.
+	 *
+	 * CSID_RDI_CFG0(vc)
+	 * DT_ID : 28:27
+	 * VC    : 26:22
+	 * DT    : 21:16
+	 *
+	 * CID   : VC 3:0 << 2 | DT_ID 1:0
+	 */
+	dt_id = vc & 0x03;
+
+	val = CSID_RDI_CFG0_DECODE_FORMAT_NOP; /* only for RDI path */
+	val |= CSID_RDI_CFG0_DT(format->data_type);
+	val |= CSID_RDI_CFG0_VC(vc);
+	val |= CSID_RDI_CFG0_DTID(dt_id);
+
+	if (enable)
+		val |= CSID_RDI_CFG0_ENABLE;
+
+	dev_dbg(csid->camss->dev, "CSID%u: Stream %s (dt:0x%x vc=%u)\n",
+		csid->id, enable ? "enable" : "disable", format->data_type, vc);
+
+	writel_relaxed(val, csid->base + CSID_RDI_CFG0(vc));
+}
+
+static void csid_configure_stream(struct csid_device *csid, u8 enable)
+{
+	int i;
+
+	for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS; i++) {
+		if (csid->phy.en_vc & BIT(i)) {
+			__csid_configure_rdi_stream(csid, enable, i);
+			__csid_configure_rx(csid, &csid->phy, i);
+			__csid_ctrl_rdi(csid, enable, i);
+		}
+	}
+}
+
+static int csid_reset(struct csid_device *csid)
+{
+	unsigned long time;
+
+	writel_relaxed(CSID_IRQ_MASK_RST_DONE, csid->base + CSID_IRQ_MASK);
+	writel_relaxed(CSID_IRQ_MASK_RST_DONE, csid->base + CSID_IRQ_CLEAR);
+	writel_relaxed(CSID_IRQ_CMD_CLEAR, csid->base + CSID_IRQ_CMD);
+
+	reinit_completion(&csid->reset_complete);
+
+	/* Reset with registers preserved */
+	writel(CSID_RST_IRQ | CSID_RST_IFE_CLK | CSID_RST_PHY_CLK | CSID_RST_CSID_CLK,
+	       csid->base + CSID_RST_STROBES);
+
+	time = wait_for_completion_timeout(&csid->reset_complete,
+					   msecs_to_jiffies(CSID_RESET_TIMEOUT_MS));
+	if (!time) {
+		dev_err(csid->camss->dev, "CSID%u: reset timeout\n", csid->id);
+		return -EIO;
+	}
+
+	dev_dbg(csid->camss->dev, "CSID%u: reset done\n", csid->id);
+
+	return 0;
+}
+
+static irqreturn_t csid_isr(int irq, void *dev)
+{
+	struct csid_device *csid = dev;
+	u32 val;
+
+	val = readl_relaxed(csid->base + CSID_IRQ_STATUS);
+	writel_relaxed(val, csid->base + CSID_IRQ_CLEAR);
+	writel_relaxed(CSID_IRQ_CMD_CLEAR, csid->base + CSID_IRQ_CMD);
+
+	if (val & CSID_IRQ_MASK_RST_DONE)
+		complete(&csid->reset_complete);
+	else
+		dev_warn_ratelimited(csid->camss->dev, "Spurious CSID interrupt\n");
+
+	return IRQ_HANDLED;
+}
+
+static int csid_configure_testgen_pattern(struct csid_device *csid, s32 val)
+{
+	return -EOPNOTSUPP; /* Not part of CSID */
+}
+
+static void csid_subdev_init(struct csid_device *csid) {}
+
+const struct csid_hw_ops csid_ops_340 = {
+	.configure_testgen_pattern = csid_configure_testgen_pattern,
+	.configure_stream = csid_configure_stream,
+	.hw_version = csid_hw_version,
+	.isr = csid_isr,
+	.reset = csid_reset,
+	.src_pad_code = csid_src_pad_code,
+	.subdev_init = csid_subdev_init,
+};
diff --git a/drivers/media/platform/qcom/camss/camss-csid.h b/drivers/media/platform/qcom/camss/camss-csid.h
index 9dc826d8c8f6..3399e92658d8 100644
--- a/drivers/media/platform/qcom/camss/camss-csid.h
+++ b/drivers/media/platform/qcom/camss/camss-csid.h
@@ -213,6 +213,7 @@ extern const struct csid_formats csid_formats_gen2;
 
 extern const struct csid_hw_ops csid_ops_4_1;
 extern const struct csid_hw_ops csid_ops_4_7;
+extern const struct csid_hw_ops csid_ops_340;
 extern const struct csid_hw_ops csid_ops_680;
 extern const struct csid_hw_ops csid_ops_gen2;
 extern const struct csid_hw_ops csid_ops_780;
-- 
2.34.1


