Return-Path: <devicetree+bounces-196935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A1BB07982
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8200958098E
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 767E92F50B3;
	Wed, 16 Jul 2025 15:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bMAVJlvW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBB92F5080
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679244; cv=none; b=XpSmlFh0qwyBb2HzGF6k9aPWV1i3Ths5gjk7Trp4vs+FmVLTRH8MB9V0niZV5FyoYZPrORa0ZuW66BEQOwUbAfG21lfEjgu4eNdbQnUJaNrZ9SjsHy/tlaqG6oNOJSFCp1xibf3GM+oDsuezikI1xymX0DPTbAcSzf7r76wL8t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679244; c=relaxed/simple;
	bh=h4mVcnnC/+PqRNOCf2U2rD83YN7/FlSU0+4cAlA1d+8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NZvo7RZmi/cDqnkgoXV0dUpDkEhfWvDcwJo7FLE+1RshHu4VC5qGsGUK+kY1tKHNy4hqWu5UAcyQgQ3eE4S/IYt7HOPFP9xSYOoLAQz/C6KiuFdVr7MMuZY+qcA0g02lc3pYKQeyBnSKZFUpwDpCjsPE8rBTMmusx1cD5CLuEEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bMAVJlvW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GE3iIO017997
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=241Uxu/boDg
	Pn4Scavhp/R8zXpk13EMprfJK++uFtmY=; b=bMAVJlvWaXY/5L4B/a8h7tL3UCX
	IN8MtKDfanrVVLznNKDf5txJTDlxWKL6J5i+/Uwyl1BStrVWexLsRFitG+pF7qUk
	BuegnXZXtVlyuR04s1DchPyJcCXQaF7jAPNwOjHJXcV6vx7FQwAg8Pw+IyDSDs8E
	P2X/MYTg66SuwSmtHyyz/V4HzZjoBS2wr0tWT0AWemZqIr4CZ3rUJzkKYKVCeC02
	gqZCQPAd2KYN2B2jt+od0ogy5m8JHflacSUBwwaYuCiPE2HdUPzgFEgzurxhPWd5
	reppqwfmZFeQ0SAYAu+H1i7TGL7h+xesPfiTKZJ13e5Yjj5D8dUh0x6rT1Q==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug384kgd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:20:41 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b34abbcdcf3so4974336a12.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:20:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679240; x=1753284040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=241Uxu/boDgPn4Scavhp/R8zXpk13EMprfJK++uFtmY=;
        b=Kc5kTHDBrkW8W8NJuGfSmpSbiFAywlKBqvbhqxpSuSVh9YtD8ttLryxIGvu0w0tGL6
         CC0JCum93JowQAFvCyE8FKriHkbNM1yOt+7hssZjv7TppkCNxCIPRHfkY/tYMipEHkQs
         6m9Bcm+Rpgitmv7VuT4cURDstMuUotOVEZTkmC302dutOkLUd8SoDnjbjilGJNWDXbRL
         6CyHgPlJaQyGdKw6fP+pjaVyNgs3f6ZxDAwFBzMfpRdotyljfaq5tlp9CSh5enK2u803
         QOjtrxUnr0uCsXlB5+iHrBCa2QevfVafLY1xOvyldG42qpfpMc24AkDIRPQ0J2JXjUz2
         CPIA==
X-Forwarded-Encrypted: i=1; AJvYcCUkSw4EO9DCMvcZ2tBQQYieG93O2Z3iqLYgHpassHKPX1I8N+Us2O0brkJU8thoonO6N4ATnxrIJs/a@vger.kernel.org
X-Gm-Message-State: AOJu0YwvXlx2BGJXxcHaYNW5Wtrjd7ejskwnGLWy24uEd0PS38nCWaGH
	W97GN9EGozjotk45KdINTaS0j4oelTgaHQLy6sQtdpzF3IuP1XWCnA0bdqI5trppCPzpzzZ6g3B
	wCtcOrt2FrlH4UdvWP3hRAo85odgP74eCL5/PXL9JnZJt2InNoCFY0gFM8Q+4G1Qs
X-Gm-Gg: ASbGnctZ/iStPc9V2bxtuyIRIVybyEDyInOtPZRtLAgbX32wtugrSedSbgcv2440uXC
	JyF+JbTQbdrB9UvaeYQfkU6GUUPi90GISH3Rss0vAt01qfk2WASUqu6wwMlmzgMuQqPGMqnDU00
	3Mt2YyA8NzjTO3F3MCoE27o7O4M5jvxT0uvhoVbUwDp049+Uwy3k/fBJAlsRDXsfu7fiPceaUJo
	0wfBvzIaURJAE9Xx1KnUwA6EzBGA7P0nPLQmW2nFBX4BXNzuEq1C6qQ30q2zNApB1xX6E96rz/o
	X5+xHQbufbbDOxH/sOo8/7VERLS5UILrrmI2Qhb6ua6aUzZxXCN1JRY3vH6/2AE7fjqnBNLVq3b
	XdABdnsncFn2BjbuKrFcabm3Okc7C7gAXrYwydxPQkosNEGvmswjsariUGFpk
X-Received: by 2002:a05:6a20:3944:b0:231:620a:4509 with SMTP id adf61e73a8af0-237d753f9eemr6099963637.30.1752679239850;
        Wed, 16 Jul 2025 08:20:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxGl54paG6PWCVHkTt8cMYgI8d/ja4vfmT8FWzZ9z0rH+y1X1yn2oL18/ttlKBtVbVA9SH6w==
X-Received: by 2002:a05:6a20:3944:b0:231:620a:4509 with SMTP id adf61e73a8af0-237d753f9eemr6099898637.30.1752679239185;
        Wed, 16 Jul 2025 08:20:39 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe6bd8f8sm13912054a12.38.2025.07.16.08.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:20:38 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quic_rjendra@quicinc.com, taniya.das@oss.qualcomm.com
Cc: linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] clk: qcom: Add TCSR clock driver for Glymur
Date: Wed, 16 Jul 2025 20:50:13 +0530
Message-Id: <20250716152017.4070029-4-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOCBTYWx0ZWRfXy3ZdnyHMxn9K
 Eo2cPTcOrY96A1e9BV20a3jBc1psa7YrDf+sTqg2nsYUwrGTFzn85kvuw+Z+NtWrXAJMNM5/X7v
 e8kA3hFwp0r5UsCtLzhzL5GH7J0tDg/dvH2WpOGLwkzc9IGk9s87vSaUn9pGXgDe68ZzcfASiaQ
 pKGzOcT7m2y83PAOzlkCSF0uhwEWAw290b+hjwYMXkzeaVgdUFh1KKB3KcML3Uhxcd6jmOyjCW1
 l3oV3LBGsARXNskOt8X4cA9DZM+qhzKX01zsCOsN4pV7aRYzEsmCjOLt3tSeZjDtFHnX02/3ZFe
 ONnYGL0nnKTwfxZA82RR/lzLwKTAlC5u5iZBBZGVzUrQixwPc4indXCH3tKQTMOTScxttTzgy67
 REI7/dA0Uy1ZOtxfS/2g+FO2DP965rWDv+vVhUo+neu23EE/bqluXnSvvfKTJVZPdgOp1Fgf
X-Proofpoint-GUID: 2xGh91FCQme46j_cj5jh10SQHp0fvkrH
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=6877c349 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Faslhf6HPDYYN2OqSgcA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: 2xGh91FCQme46j_cj5jh10SQHp0fvkrH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160138

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add a clock driver for the TCSR clock controller found on Glymur, which
provides refclks for PCIE, USB, and UFS.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 drivers/clk/qcom/Kconfig         |   8 +
 drivers/clk/qcom/Makefile        |   1 +
 drivers/clk/qcom/tcsrcc-glymur.c | 263 +++++++++++++++++++++++++++++++
 3 files changed, 272 insertions(+)
 create mode 100644 drivers/clk/qcom/tcsrcc-glymur.c

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index 36d6e6e1e7f0..051301007aa6 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -1304,6 +1304,14 @@ config SM_LPASSCC_6115
 	  Say Y if you want to toggle LPASS-adjacent resets within
 	  this clock controller to reset the LPASS subsystem.
 
+config SC_TCSRCC_GLYMUR
+	tristate "GLYMUR TCSR Clock Controller"
+	depends on ARM64 || COMPILE_TEST
+	select QCOM_GDSC
+	help
+	  Support for the TCSR clock controller on GLYMUR devices.
+	  Say Y if you want to use peripheral devices such as USB/PCIe/EDP.
+
 config SM_TCSRCC_8550
 	tristate "SM8550 TCSR Clock Controller"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
index ab59434338bb..bf95729678f6 100644
--- a/drivers/clk/qcom/Makefile
+++ b/drivers/clk/qcom/Makefile
@@ -162,6 +162,7 @@ obj-$(CONFIG_SM_GPUCC_8450) += gpucc-sm8450.o
 obj-$(CONFIG_SM_GPUCC_8550) += gpucc-sm8550.o
 obj-$(CONFIG_SM_GPUCC_8650) += gpucc-sm8650.o
 obj-$(CONFIG_SM_LPASSCC_6115) += lpasscc-sm6115.o
+obj-$(CONFIG_SC_TCSRCC_GLYMUR) += tcsrcc-glymur.o
 obj-$(CONFIG_SM_TCSRCC_8550) += tcsrcc-sm8550.o
 obj-$(CONFIG_SM_TCSRCC_8650) += tcsrcc-sm8650.o
 obj-$(CONFIG_SM_TCSRCC_8750) += tcsrcc-sm8750.o
diff --git a/drivers/clk/qcom/tcsrcc-glymur.c b/drivers/clk/qcom/tcsrcc-glymur.c
new file mode 100644
index 000000000000..760d36339b10
--- /dev/null
+++ b/drivers/clk/qcom/tcsrcc-glymur.c
@@ -0,0 +1,263 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/clock/qcom,glymur-tcsrcc.h>
+
+#include "clk-alpha-pll.h"
+#include "clk-branch.h"
+#include "clk-pll.h"
+#include "clk-rcg.h"
+#include "clk-regmap.h"
+#include "clk-regmap-divider.h"
+#include "clk-regmap-mux.h"
+#include "common.h"
+#include "gdsc.h"
+#include "reset.h"
+
+static struct clk_branch tcsr_edp_clkref_en = {
+	.halt_reg = 0x1c,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x1c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_edp_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_pcie_1_clkref_en = {
+	.halt_reg = 0x4,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x4,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_pcie_1_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_pcie_2_clkref_en = {
+	.halt_reg = 0x8,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x8,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_pcie_2_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_pcie_3_clkref_en = {
+	.halt_reg = 0x10,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x10,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_pcie_3_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_pcie_4_clkref_en = {
+	.halt_reg = 0x14,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x14,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_pcie_4_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb2_1_clkref_en = {
+	.halt_reg = 0x28,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x28,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb2_1_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb2_2_clkref_en = {
+	.halt_reg = 0x2c,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x2c,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb2_2_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb2_3_clkref_en = {
+	.halt_reg = 0x30,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x30,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb2_3_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb2_4_clkref_en = {
+	.halt_reg = 0x44,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x44,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb2_4_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb3_0_clkref_en = {
+	.halt_reg = 0x20,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x20,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb3_0_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb3_1_clkref_en = {
+	.halt_reg = 0x24,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x24,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb3_1_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb4_1_clkref_en = {
+	.halt_reg = 0x0,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x0,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb4_1_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch tcsr_usb4_2_clkref_en = {
+	.halt_reg = 0x18,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x18,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "tcsr_usb4_2_clkref_en",
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_regmap *tcsr_cc_glymur_clocks[] = {
+	[TCSR_EDP_CLKREF_EN] = &tcsr_edp_clkref_en.clkr,
+	[TCSR_PCIE_1_CLKREF_EN] = &tcsr_pcie_1_clkref_en.clkr,
+	[TCSR_PCIE_2_CLKREF_EN] = &tcsr_pcie_2_clkref_en.clkr,
+	[TCSR_PCIE_3_CLKREF_EN] = &tcsr_pcie_3_clkref_en.clkr,
+	[TCSR_PCIE_4_CLKREF_EN] = &tcsr_pcie_4_clkref_en.clkr,
+	[TCSR_USB2_1_CLKREF_EN] = &tcsr_usb2_1_clkref_en.clkr,
+	[TCSR_USB2_2_CLKREF_EN] = &tcsr_usb2_2_clkref_en.clkr,
+	[TCSR_USB2_3_CLKREF_EN] = &tcsr_usb2_3_clkref_en.clkr,
+	[TCSR_USB2_4_CLKREF_EN] = &tcsr_usb2_4_clkref_en.clkr,
+	[TCSR_USB3_0_CLKREF_EN] = &tcsr_usb3_0_clkref_en.clkr,
+	[TCSR_USB3_1_CLKREF_EN] = &tcsr_usb3_1_clkref_en.clkr,
+	[TCSR_USB4_1_CLKREF_EN] = &tcsr_usb4_1_clkref_en.clkr,
+	[TCSR_USB4_2_CLKREF_EN] = &tcsr_usb4_2_clkref_en.clkr,
+};
+
+static const struct regmap_config tcsr_cc_glymur_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = 0x44,
+	.fast_io = true,
+};
+
+static const struct qcom_cc_desc tcsr_cc_glymur_desc = {
+	.config = &tcsr_cc_glymur_regmap_config,
+	.clks = tcsr_cc_glymur_clocks,
+	.num_clks = ARRAY_SIZE(tcsr_cc_glymur_clocks),
+};
+
+static const struct of_device_id tcsr_cc_glymur_match_table[] = {
+	{ .compatible = "qcom,glymur-tcsr" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, tcsr_cc_glymur_match_table);
+
+static int tcsr_cc_glymur_probe(struct platform_device *pdev)
+{
+	struct regmap *regmap;
+
+	regmap = qcom_cc_map(pdev, &tcsr_cc_glymur_desc);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	return qcom_cc_really_probe(&pdev->dev, &tcsr_cc_glymur_desc, regmap);
+}
+
+static struct platform_driver tcsr_cc_glymur_driver = {
+	.probe = tcsr_cc_glymur_probe,
+	.driver = {
+		.name = "tcsrcc-glymur",
+		.of_match_table = tcsr_cc_glymur_match_table,
+	},
+};
+
+static int __init tcsr_cc_glymur_init(void)
+{
+	return platform_driver_register(&tcsr_cc_glymur_driver);
+}
+subsys_initcall(tcsr_cc_glymur_init);
+
+static void __exit tcsr_cc_glymur_exit(void)
+{
+	platform_driver_unregister(&tcsr_cc_glymur_driver);
+}
+module_exit(tcsr_cc_glymur_exit);
+
+MODULE_DESCRIPTION("QTI TCSRCC GLYMUR Driver");
+MODULE_LICENSE("GPL");
-- 
2.34.1


