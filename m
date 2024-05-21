Return-Path: <devicetree+bounces-68054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8DA8CAAFB
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 11:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0423F281BCD
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 09:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21FF754777;
	Tue, 21 May 2024 09:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m5xFXcKb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17F161664
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 09:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716284730; cv=none; b=JvKUM99kg9AmD0O+aG/KtjATNTO1Iyy8/Hbut860tiee6VXPgD+k/x+6jBfCy7zZJ/gSvsV9KZkv0vmYulo3wziqH1Kwh++dz5g5LMDUJO7cG0d/zFD7JAj65TAUhyo/XnW1qyVxqplrKvbZx/rvoVvicMBEyX2vt6EToE0q24o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716284730; c=relaxed/simple;
	bh=8bSYJFZxOttwC6WGzJnbnsvxZHPinVGAHkl3/krhwFU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ug6fOSf99gMEZg4P+mfqiZBHJsn/wkuHU2SRY+1zIHf9GM6/Ogh1WQr+z3FIAhI78Q9zpRlNYqjU0bmOQp8ngr1NpdkV5EJohpwcM8EJFNRq1m8SI0Ck/JrOFk2jtSZjHIvuOzEmWdRiKoVo84uJHHGuzVKxOw+VTLzjsnS/WBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m5xFXcKb; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e6f33150bcso53296891fa.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 02:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716284726; x=1716889526; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s+iPb833VFVcxccVnaoN5omlaE6HTbUUtzkP4wXORTQ=;
        b=m5xFXcKbP3jJPDk8reuRHY+7n77jSX2QAZndqoPqK0TZjSOIA7QvcRwwZ3IveIEia1
         CVdAOf6Hm3L1wNoW+gbkswW/3qeNeYcNTUpoucE3JMRplzmaMdHWYe5st14AZEUHnVc4
         CsRIL5YnX+28fcZFkwH+YDAlM4cukzwXEAypWiezGTL+CT4eHHFzKQkLgsHLkGjhMqMo
         L5P9RWNKVMdXQAL71sExaDFK3cdtStiEpqF5hvfaENbrzHSnEDgA2/SJkHGOqgBpwFzS
         jQZg6oGFZPYQ+RwHp9mtQh7Ccuz5r7Npg1uBXZ1qiteTlbGZywL2SSLTYMH0hgLKoZ/n
         Amsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716284726; x=1716889526;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s+iPb833VFVcxccVnaoN5omlaE6HTbUUtzkP4wXORTQ=;
        b=h7Fl2odPUsiJz45seRpWpqMM4bZTWlBLLhFRBtOTo573/WvBHnUGtE0HWbipjt1UWc
         5qhdEBQvjR62hEb+W5+T+xViEUslYz3REn3yp5AP+rWaCEGnD54cieHbYbAd9hoT20h3
         3cQtQeapzh2m4DTWQ7m+BkmhuktzNwC/7zn7FxjivZcyC0N5xrMzefIlHMULM6rRE7g4
         ZzhAkSLLoTreMF0rVRn2bB/jUhLhj8M9nanRWsDBs+y5RSrLRbvTiEnLBt4fpweNaYDq
         Ske8hffDCX/qQZr2g503pRuNRoczfYBDBoEzI1sTKDQqQqHKapgJU/3So3bKqncP7qqH
         Xccw==
X-Forwarded-Encrypted: i=1; AJvYcCU5bhnj2/f+YwfYpIai83L75dCrgnxeTI/vwtNw85aoDzWY+ZpXCglsZapFssOX75K4g8Ur2+0BOs/Swf2zHD0+4yhS8ONotg/smA==
X-Gm-Message-State: AOJu0YyMRHjDpTwLp8u9AgAJOpKa4WjFsbjV7FXudsc1csLQj6BeO0XX
	XWDqLRi2JXTUj6VcMHl0pbsM6wM4WI9YEnCJFlnbV+hwm8hV0CJw2YxHmI1Ldec=
X-Google-Smtp-Source: AGHT+IGK2Mm/vNlP83fxNawhKETP5S72Iv/Fv7BCr1CruU63ZvCJ9JIg8mo2tnDHyPHB1+g5HBRVvQ==
X-Received: by 2002:a2e:74f:0:b0:2e6:bc64:dd50 with SMTP id 38308e7fff4ca-2e6bc64de97mr164048351fa.39.1716284726075;
        Tue, 21 May 2024 02:45:26 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e706ee0a65sm13906261fa.112.2024.05.21.02.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 02:45:25 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 May 2024 12:45:21 +0300
Subject: [PATCH 01/12] soc: qcom: add firmware name helper
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240521-qcom-firmware-name-v1-1-99a6d32b1e5e@linaro.org>
References: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
In-Reply-To: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Loic Poulain <loic.poulain@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 Arnd Bergmann <arnd@arndb.de>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4930;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=8bSYJFZxOttwC6WGzJnbnsvxZHPinVGAHkl3/krhwFU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmTG0y1XUQH+EkXc9kNuEjWYoYT5cJRxUMUftgv
 dfOM+jgTIKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZkxtMgAKCRCLPIo+Aiko
 1YlIB/9nvjT0T/s9Ip16YLNw25bZIyKJO+WvibNJUKE13nQDVALipPKFR8jyH1tkeaAqeI8rg21
 qoAK5hzh0LytrRgX8iRNtEpm7liRiM/Oxn8APVe+PPOjzAKo84EqvW67uCJHBQV5VaFR6CrCtb7
 EIe46Mjt/ZRc4FUlmGf9of6WIwut+LJf+KzqgSb7/X+hQCatGhtpxcLH8hhqcYQMViUTjqyMxj8
 xuL3FFPKz0K0VPUUI6DRbUeFg7z1uY1HeeVqOlRomg1q/HAHGMQ/ewg+bpMT/y/HoP047eCXXV9
 jrkGfY3YItyS3bp25iqY/JUUI6gf0vzQYiT+NEkuseYQsV+m
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Qualcomm platforms have different sets of the firmware files, which
differ from platform to platform (and from board to board, due to the
embedded signatures). Rather than listing all the firmware files,
including full paths, in the DT, provide a way to determine firmware
path based on the root DT node compatible.

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/soc/qcom/Kconfig           |  5 +++
 drivers/soc/qcom/Makefile          |  1 +
 drivers/soc/qcom/qcom_fw_helper.c  | 86 ++++++++++++++++++++++++++++++++++++++
 include/linux/soc/qcom/fw_helper.h | 10 +++++
 4 files changed, 102 insertions(+)

diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
index 5af33b0e3470..b663774d65f8 100644
--- a/drivers/soc/qcom/Kconfig
+++ b/drivers/soc/qcom/Kconfig
@@ -62,6 +62,11 @@ config QCOM_MDT_LOADER
 	tristate
 	select QCOM_SCM
 
+config QCOM_FW_HELPER
+	tristate "NONE FW HELPER"
+	help
+	  Helpers to return platform-specific location for the firmware files.
+
 config QCOM_OCMEM
 	tristate "Qualcomm On Chip Memory (OCMEM) driver"
 	depends on ARCH_QCOM
diff --git a/drivers/soc/qcom/Makefile b/drivers/soc/qcom/Makefile
index ca0bece0dfff..e612bee5b955 100644
--- a/drivers/soc/qcom/Makefile
+++ b/drivers/soc/qcom/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_QCOM_GENI_SE) +=	qcom-geni-se.o
 obj-$(CONFIG_QCOM_COMMAND_DB) += cmd-db.o
 obj-$(CONFIG_QCOM_GSBI)	+=	qcom_gsbi.o
 obj-$(CONFIG_QCOM_MDT_LOADER)	+= mdt_loader.o
+obj-$(CONFIG_QCOM_FW_HELPER)	+= qcom_fw_helper.o
 obj-$(CONFIG_QCOM_OCMEM)	+= ocmem.o
 obj-$(CONFIG_QCOM_PDR_HELPERS)	+= pdr_interface.o
 obj-$(CONFIG_QCOM_PMIC_GLINK)	+= pmic_glink.o
diff --git a/drivers/soc/qcom/qcom_fw_helper.c b/drivers/soc/qcom/qcom_fw_helper.c
new file mode 100644
index 000000000000..13123c2514b8
--- /dev/null
+++ b/drivers/soc/qcom/qcom_fw_helper.c
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Qualcomm Firmware loading data
+ *
+ * Copyright (C) 2024 Linaro Ltd
+ */
+
+#include <linux/cleanup.h>
+#include <linux/device.h>
+#include <linux/mutex.h>
+#include <linux/of.h>
+#include <linux/soc/qcom/fw_helper.h>
+
+static DEFINE_MUTEX(qcom_fw_mutex);
+static const char *fw_path;
+
+static const struct of_device_id qcom_fw_paths[] = {
+	/* device-specific entries */
+	{ .compatible = "thundercomm,db845c", .data = "qcom/sdm845/Thundercomm/db845c", },
+	{ .compatible = "qcom,qrb5165-rb5", .data = "qcom/sm8250/Thundercomm/RB5", },
+	/* SoC default entries */
+	{ .compatible = "qcom,apq8016", .data = "qcom/apq8016", },
+	{ .compatible = "qcom,apq8096", .data = "qcom/apq8096", },
+	{ .compatible = "qcom,sdm845", .data = "qcom/sdm845", },
+	{ .compatible = "qcom,sm8250", .data = "qcom/sm8250", },
+	{ .compatible = "qcom,sm8350", .data = "qcom/sm8350", },
+	{ .compatible = "qcom,sm8450", .data = "qcom/sm8450", },
+	{ .compatible = "qcom,sm8550", .data = "qcom/sm8550", },
+	{ .compatible = "qcom,sm8650", .data = "qcom/sm8650", },
+	{},
+};
+
+static int qcom_fw_ensure_init(void)
+{
+	const struct of_device_id *match;
+	struct device_node *root;
+
+	if (fw_path)
+		return 0;
+
+	root = of_find_node_by_path("/");
+	if (!root)
+		return -ENODEV;
+
+	match = of_match_node(qcom_fw_paths, root);
+	of_node_put(root);
+	if (!match || !match->data) {
+		pr_notice("Platform not supported by qcom_fw_helper\n");
+		return -ENODEV;
+	}
+
+	fw_path = match->data;
+
+	return 0;
+}
+
+const char *qcom_get_board_fw(const char *firmware)
+{
+	if (strchr(firmware, '/'))
+		return kstrdup(firmware, GFP_KERNEL);
+
+	scoped_guard(mutex, &qcom_fw_mutex) {
+		if (!qcom_fw_ensure_init())
+			return kasprintf(GFP_KERNEL, "%s/%s", fw_path, firmware);
+	}
+
+	return kstrdup(firmware, GFP_KERNEL);
+}
+EXPORT_SYMBOL_GPL(qcom_get_board_fw);
+
+const char *devm_qcom_get_board_fw(struct device *dev, const char *firmware)
+{
+	if (strchr(firmware, '/'))
+		return devm_kstrdup(dev, firmware, GFP_KERNEL);
+
+	scoped_guard(mutex, &qcom_fw_mutex) {
+		if (!qcom_fw_ensure_init())
+			return devm_kasprintf(dev, GFP_KERNEL, "%s/%s", fw_path, firmware);
+	}
+
+	return devm_kstrdup(dev, firmware, GFP_KERNEL);
+}
+EXPORT_SYMBOL_GPL(devm_qcom_get_board_fw);
+
+MODULE_DESCRIPTION("Firmware helpers for Qualcomm devices");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/soc/qcom/fw_helper.h b/include/linux/soc/qcom/fw_helper.h
new file mode 100644
index 000000000000..755645386bba
--- /dev/null
+++ b/include/linux/soc/qcom/fw_helper.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __QCOM_FW_HELPER_H__
+#define __QCOM_FW_HELPER_H__
+
+struct device;
+
+const char *qcom_get_board_fw(const char *firmware);
+const char *devm_qcom_get_board_fw(struct device *dev, const char *firmware);
+
+#endif

-- 
2.39.2


