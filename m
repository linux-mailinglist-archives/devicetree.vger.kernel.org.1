Return-Path: <devicetree+bounces-130049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C35209EDC7D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:26:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F363528348C
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4D4D381B1;
	Thu, 12 Dec 2024 00:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vU5TD5Fc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830D9C2E0
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733963161; cv=none; b=HuJFaFbo+UgbGacXORhVYshTlMLOXceN80GvAVjfLSIG6Xunz3eN1As6aVBr513dUaby3xkPonyArXOdjfdzXXEIQPmW572ouOVpfWEoJXfKFe6tJURQXZdzXM/VqlqHL4QFVONDLr2nUVyoTq4o08RVagNHHZCOWXmFtg2Lvng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733963161; c=relaxed/simple;
	bh=BCWqtdpSRPKZqg/+5qU/9UNZ8keZYA/Nc68azCGENSs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cV09rxnWWGj9JNznP68pW44a3lwYkKO7gXk/A6FU105iYP7RneVQC1lYp9APovSWHMpGz6rSWsEIp8Slqr83OTw5UTz/lV7aQKzKuE6eHdKJHAHDTVPN8qgHDJhqjg7AYQ4X7H80n1s19ruCY9/zttamisN1v2YA8s2zcPCMCRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vU5TD5Fc; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4361ecebc4dso236505e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733963157; x=1734567957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZNhg0wjwDQ3moa4/XEe94g+pIUAUVTpcTLvOZGBczaU=;
        b=vU5TD5Fc6QNQRzjNa17es3qzVczVJS+6hJNCbhspD6Aapg171iQ1vUWOw2jIkSuIHs
         BMx1XGIHNWQ/Hhsc/19yY7gFA87prfN//S5oIkS26h9Vn1WXFWwF4IeOQFOL8p8v0+me
         w+iUtu2Vi5A4CxI/REdGNrJTKls2mYjGk1iLfAScL0qAIXDw7GenHzR2eJBem28N820H
         Zlf8Plh10u8dnSHqHFUplV0+Lushn7wWGWoHx/H7CaqgxjGac+D6085TE6+o1B3/EMDa
         8bBi0hFUNqHDq3GuJM5T6E7f3QNil5Aj8CF7d98Vpbrg0gPfJavAc0AiQRAc30NM7yF1
         ra/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733963157; x=1734567957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNhg0wjwDQ3moa4/XEe94g+pIUAUVTpcTLvOZGBczaU=;
        b=MkP1MYabXmF58xGaHXWB1J4lPfHFpBKQSGvOlWQghvxJ9rbaS+RI6tnqmEMwvAo61q
         vDTHPQYSWup1KH/GkWon7jhMGhR9KDAHdn+28xkM4vL3i/Nw2p5J+YVp8bUx+Q+z3R+2
         fBS+bkbQkTkeTt9FvyEMawXAoUxmR5qdCXUJp/3QWSmKJPZgNTmvMhwivW42mRQSwvrt
         GITEij+FUoeOvIBt7rX5OvNdbAw7K8xSCqLt0eXxWjAV9SFz0Cs0/HsFEGERQ1Wmj5UP
         Gj0ipz3sWtLo8KgeySfoA5dljoDgJSinUtOJuRqcga3NJ2qrl/MvM74MFXBQV3Iszxlr
         rkJw==
X-Forwarded-Encrypted: i=1; AJvYcCV6dqhzwPIMHzSWzh7cR/t3L5rd8F8+YjIy82tVfTrfPwhW5UgfaGZCJ5CWBGJAEPPd+jpbr3fEKqHj@vger.kernel.org
X-Gm-Message-State: AOJu0YyZx/cfVjGRxdTPpILIoeqVyuOaF6Yif7kNx3lnrpStAaKI1yT0
	SscRwmvsLlog6KIyuYh8k4GNUobeiXeEIRFM62KGFsoYNWUfnzzjE221GBFGuWk=
X-Gm-Gg: ASbGncsoEvRooSqLZ5mpNoPEiy19nFEwrTiDigPhy/pd05+TCo9L5w3swshOXGshMue
	E8yWukgkAHjmT+QHH8cVwTJPkasuWvLhih8dpVwNvuke0KFaHzxyQ9Ez4hiisMi2y5u/9XwV4VE
	wtbnYTokAK2Ii6eU44sPKqiQBZWJJM0up/qyHnWlc5LS0MDVp7pEXzcqxLnrgUzQQL8PeKYxWzL
	M6z5IxJYERMja0sTxCeqi4Mhgcg1pOYHWdnBa2vvGlBr5QAmM44UMpO4DOS7FFu8FhSUS1j
X-Google-Smtp-Source: AGHT+IF6gArV51Gl5zvl0OdXFBp3waZApJX9BM4vrVqE3yDOq2EYm3bXH9fTRVXdDO70aGYjFJj8Sg==
X-Received: by 2002:a05:600c:3d1b:b0:435:192:63ca with SMTP id 5b1f17b1804b1-4362285f740mr11326825e9.21.1733963156898;
        Wed, 11 Dec 2024 16:25:56 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43625553333sm46095e9.6.2024.12.11.16.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:25:56 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	krzk+dt@kernel.org
Cc: konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 RESEND 2/2] clk: qcom: Add SM6115 LPASSCC
Date: Thu, 12 Dec 2024 00:25:51 +0000
Message-ID: <20241212002551.2902954-3-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212002551.2902954-1-alexey.klimov@linaro.org>
References: <20241212002551.2902954-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Konrad Dybcio <konrad.dybcio@linaro.org>

SM6115 (and its derivatives or similar SoCs) has an LPASS clock
controller block which provides audio-related resets.

Add the required code to support them.

Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
[alexey.klimov] fixed compilation errors after rebase,
slightly changed the commit message
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 drivers/clk/qcom/Kconfig          |  9 ++++
 drivers/clk/qcom/Makefile         |  1 +
 drivers/clk/qcom/lpasscc-sm6115.c | 85 +++++++++++++++++++++++++++++++
 3 files changed, 95 insertions(+)
 create mode 100644 drivers/clk/qcom/lpasscc-sm6115.c

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index ef89d686cbc4..b2b53e09cc33 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -1230,6 +1230,15 @@ config SM_GPUCC_8650
 	  Say Y if you want to support graphics controller devices and
 	  functionality such as 3D graphics.
 
+config SM_LPASSCC_6115
+	tristate "SM6115 Low Power Audio Subsystem (LPASS) Clock Controller"
+	depends on ARM64 || COMPILE_TEST
+	select SM_GCC_6115
+	help
+	  Support for the LPASS clock controller on SM6115 devices.
+	  Say Y if you want to toggle LPASS-adjacent resets within
+	  this clock controller to reset the LPASS subsystem.
+
 config SM_TCSRCC_8550
 	tristate "SM8550 TCSR Clock Controller"
 	depends on ARM64 || COMPILE_TEST
diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
index b09dbdc210eb..cc435afcda37 100644
--- a/drivers/clk/qcom/Makefile
+++ b/drivers/clk/qcom/Makefile
@@ -154,6 +154,7 @@ obj-$(CONFIG_SM_GPUCC_8350) += gpucc-sm8350.o
 obj-$(CONFIG_SM_GPUCC_8450) += gpucc-sm8450.o
 obj-$(CONFIG_SM_GPUCC_8550) += gpucc-sm8550.o
 obj-$(CONFIG_SM_GPUCC_8650) += gpucc-sm8650.o
+obj-$(CONFIG_SM_LPASSCC_6115) += lpasscc-sm6115.o
 obj-$(CONFIG_SM_TCSRCC_8550) += tcsrcc-sm8550.o
 obj-$(CONFIG_SM_TCSRCC_8650) += tcsrcc-sm8650.o
 obj-$(CONFIG_SM_VIDEOCC_7150) += videocc-sm7150.o
diff --git a/drivers/clk/qcom/lpasscc-sm6115.c b/drivers/clk/qcom/lpasscc-sm6115.c
new file mode 100644
index 000000000000..8ffdab71b948
--- /dev/null
+++ b/drivers/clk/qcom/lpasscc-sm6115.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022, 2023 Linaro Limited
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/mod_devicetable.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/clock/qcom,sm6115-lpasscc.h>
+
+#include "common.h"
+#include "reset.h"
+
+static const struct qcom_reset_map lpass_audiocc_sm6115_resets[] = {
+	[LPASS_AUDIO_SWR_RX_CGCR] =  { .reg = 0x98, .bit = 1, .udelay = 500 },
+};
+
+static struct regmap_config lpass_audiocc_sm6115_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.name = "lpass-audio-csr",
+	.max_register = 0x1000,
+};
+
+static const struct qcom_cc_desc lpass_audiocc_sm6115_reset_desc = {
+	.config = &lpass_audiocc_sm6115_regmap_config,
+	.resets = lpass_audiocc_sm6115_resets,
+	.num_resets = ARRAY_SIZE(lpass_audiocc_sm6115_resets),
+};
+
+static const struct qcom_reset_map lpasscc_sm6115_resets[] = {
+	[LPASS_SWR_TX_CONFIG_CGCR] = { .reg = 0x100, .bit = 1, .udelay = 500 },
+};
+
+static struct regmap_config lpasscc_sm6115_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.name = "lpass-tcsr",
+	.max_register = 0x1000,
+};
+
+static const struct qcom_cc_desc lpasscc_sm6115_reset_desc = {
+	.config = &lpasscc_sm6115_regmap_config,
+	.resets = lpasscc_sm6115_resets,
+	.num_resets = ARRAY_SIZE(lpasscc_sm6115_resets),
+};
+
+static const struct of_device_id lpasscc_sm6115_match_table[] = {
+	{
+		.compatible = "qcom,sm6115-lpassaudiocc",
+		.data = &lpass_audiocc_sm6115_reset_desc,
+	}, {
+		.compatible = "qcom,sm6115-lpasscc",
+		.data = &lpasscc_sm6115_reset_desc,
+	},
+	{ },
+};
+MODULE_DEVICE_TABLE(of, lpasscc_sm6115_match_table);
+
+static int lpasscc_sm6115_probe(struct platform_device *pdev)
+{
+	const struct qcom_cc_desc *desc = of_device_get_match_data(&pdev->dev);
+
+	return qcom_cc_probe_by_index(pdev, 0, desc);
+}
+
+static struct platform_driver lpasscc_sm6115_driver = {
+	.probe = lpasscc_sm6115_probe,
+	.driver = {
+		.name = "lpasscc-sm6115",
+		.of_match_table = lpasscc_sm6115_match_table,
+	},
+};
+
+module_platform_driver(lpasscc_sm6115_driver);
+
+MODULE_DESCRIPTION("QTI LPASSCC SM6115 Driver");
+MODULE_LICENSE("GPL");
-- 
2.45.2


