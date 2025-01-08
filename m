Return-Path: <devicetree+bounces-136396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 397A2A04FAE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 02:35:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 921133A2531
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 01:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4180819FA8D;
	Wed,  8 Jan 2025 01:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ROiRUwi7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6316419F42D
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 01:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736299736; cv=none; b=f55lsSIl0IO+W6xHkuf0ToT1TvLxwSRXHjIDAB/NnAUeMY0fSVIh9iypcbXQNnDVOZy9EbdUk6ZICtjYW9tM8pyw1C8hF382rw/BIuE6aygJcAnVjnk+KWcRadAyhl9VWbJci0W27CUotVhS/jkwUEto4n3ACvXwq58xuuYTJhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736299736; c=relaxed/simple;
	bh=U0IWbkSIOHLV0YE/NKEsZZohQ07wjFpip/mVKrtIjDU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=asYZ2XAbPhhkrdbmDkovQbJ6OLeR877KAKDyFNkJBW9SIDVbAT3TXrV7m89RiiH+1IRsKbMzG3hF8yhc5ucKPI9ZxQHXPYKNRg5IvqZlSbi4RZP53VigZygispxLWL2vAYel8nUELzg0JfRxS5ssCxogeae/ekZQWzXn15ERmVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ROiRUwi7; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2163dc5155fso236736615ad.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 17:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736299733; x=1736904533; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dtdkWnLr/kObxk9d1OZrWr4jX4hdZNVEJy/OpGU79kA=;
        b=ROiRUwi7G8ugpinRv+jIGeE5EeLbA3lIPkgsdPvFJrJHyJQkXBj9jbmjw5s1uBjYpZ
         wKQ4qbMW3hUXbo9laQSV4+pp0nAdX7KuoAcBbXqLKxC7jtxRW6Fra8IFt+SA3Pvh14gD
         lLNKmo8bXVMZHNEOY7HPBBAeBTbx/WM+wtDAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736299733; x=1736904533;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dtdkWnLr/kObxk9d1OZrWr4jX4hdZNVEJy/OpGU79kA=;
        b=Evp4WakA6CceRn0C7pzhagDfR521u8soq4pdoB3dSqaNP2MDawTKOIJcjCzFM+RY13
         IO85n57uhLR2jlxshN00UaJXdl1rXt5cDkaOukUoNM+fGjjBonmiiK0xXpYcKMzEhxQn
         Nt5Y7uspiN8w9L0mRTWUCh5diHP30euqid7PzZa57yx9pKNhvoCjN1uFPh4E8JQ/E6k2
         IvDWB6EVld6HysO4G0SCv/4BXOXtlrjDObTh9sO2NRLYU4BqxWpdHcEnMBsbKoELZ3fc
         u8oHmEpSCS8+FBx5t0OOrWGLF/RvHa1kScxg8hUfz7j/h3wuz5fcBI9HCKcByBJOctUs
         cfsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOlWIK60brMwXrJylpndVSnYtjUTMxzKQHMuBzrjm2zBdtGeIucenLPOExWHrMrHprGVAotV0JwzjM@vger.kernel.org
X-Gm-Message-State: AOJu0YzBvs5WAUWxUnsJEjwOyGNlZAHz0/1B7UOqLyjcmCVA2ITEf53m
	xEz+IgnS2yFe3V/1aq4GT/kUyDRC0DpdN8Jj5861qEw/QZUWz2MEEFy82PbP0Q==
X-Gm-Gg: ASbGnct5obiXNPnt2YjLgZcKLW6S8KVABUmWccD9qx/1PsY05/ivIxHAd5UEFJX7g0M
	OJGBiONOQT0eSHoi9tJ0Gk5Lp4RKhf7hwNFZqOOUAj9Hvn5COcBBx+d4frZKFH9we+sIPzIP51L
	WgD/W8/y7na8VGTx6JtmevEsiPiNWjvMSbjrPF3ykkyd54k/OJWHFdzpahKLGJGqVJnKivBLg+8
	THkSOo85ZVLs5vJ+qSHe9oDvp78HTdDVHvXCHur7hHKbyccrp+kJRcP89oQw2/FKUaaj0PgaXup
	JXpKq6ajJqpDcwoCY8R0
X-Google-Smtp-Source: AGHT+IHT5knJwT6WWg3ma5G8rT/UQQorba0QpRS5VpGWB4gpjmUniZb797RHNFR9BYNyRf9SZQjl8w==
X-Received: by 2002:a05:6a21:339b:b0:1e0:c432:32fe with SMTP id adf61e73a8af0-1e88cff3d1amr1835597637.26.1736299733617;
        Tue, 07 Jan 2025 17:28:53 -0800 (PST)
Received: from localhost (129.135.125.34.bc.googleusercontent.com. [34.125.135.129])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-72aad834cecsm33982127b3a.70.2025.01.07.17.28.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 17:28:53 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Subject: [RFC PATCH 3/6] bus: Add basic sc7180 bus driver
Date: Tue,  7 Jan 2025 17:28:40 -0800
Message-ID: <20250108012846.3275443-4-swboyd@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250108012846.3275443-1-swboyd@chromium.org>
References: <20250108012846.3275443-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a bus driver that does nothing besides populate devices as a child
of the soc device.

Cc: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/bus/Kconfig            |  3 ++
 drivers/bus/Makefile           |  3 ++
 drivers/bus/qcom/Kconfig       | 16 +++++++++++
 drivers/bus/qcom/Makefile      |  3 ++
 drivers/bus/qcom/qcom-sc7180.c | 51 ++++++++++++++++++++++++++++++++++
 5 files changed, 76 insertions(+)
 create mode 100644 drivers/bus/qcom/Kconfig
 create mode 100644 drivers/bus/qcom/Makefile
 create mode 100644 drivers/bus/qcom/qcom-sc7180.c

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 7c2aa1350578..69963f0f02f3 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -284,6 +284,9 @@ config OF_SIMPLE_BUS
 	  symbol if ALLOW_SIMPLE_BUS_OVERRIDE is set and there isn't another
 	  driver for the simple-bus compatible.
 
+# SoC specific drivers
+source "drivers/bus/qcom/Kconfig"
+
 source "drivers/bus/fsl-mc/Kconfig"
 source "drivers/bus/mhi/Kconfig"
 
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index f3968221d704..796dd0515578 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -40,6 +40,9 @@ obj-$(CONFIG_VEXPRESS_CONFIG)	+= vexpress-config.o
 
 obj-$(CONFIG_DA8XX_MSTPRI)	+= da8xx-mstpri.o
 
+# SoC specific drivers
+obj-y				+= qcom/
+
 # Must be last for driver registration ordering
 obj-$(CONFIG_OF_SIMPLE_BUS)	+= simple-bus.o
 
diff --git a/drivers/bus/qcom/Kconfig b/drivers/bus/qcom/Kconfig
new file mode 100644
index 000000000000..f4c5d05ec9ca
--- /dev/null
+++ b/drivers/bus/qcom/Kconfig
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0
+
+menuconfig QCOM_SOC_BUS
+	tristate "Qualcomm SoC Bus Drivers"
+	depends on ARCH_QCOM || COMPILE_TEST
+
+if QCOM_SOC_BUS
+
+config QCOM_SOC_BUS_SC7180
+	tristate "Qualcomm SC7180 SoC Bus"
+	depends on ALLOW_SIMPLE_BUS_OVERRIDE
+	depends on OF_SIMPLE_BUS || !OF_SIMPLE_BUS
+	help
+	  Support for the Qualcomm SC7180 SoC bus.
+
+endif
diff --git a/drivers/bus/qcom/Makefile b/drivers/bus/qcom/Makefile
new file mode 100644
index 000000000000..5d41ad61fead
--- /dev/null
+++ b/drivers/bus/qcom/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_QCOM_SOC_BUS_SC7180)		+= qcom-sc7180.o
diff --git a/drivers/bus/qcom/qcom-sc7180.c b/drivers/bus/qcom/qcom-sc7180.c
new file mode 100644
index 000000000000..a615cf5a2129
--- /dev/null
+++ b/drivers/bus/qcom/qcom-sc7180.c
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * SoC bus driver for Qualcomm SC7180 SoCs
+ */
+
+#include <linux/device.h>
+#include <linux/init.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+
+static int qcom_soc_sc7180_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+
+	return of_platform_populate(np, NULL, NULL, dev);
+}
+
+static const struct of_device_id qcom_soc_sc7180_match[] = {
+	{ .compatible = "qcom,soc-sc7180", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, qcom_soc_sc7180_match);
+
+static struct platform_driver qcom_soc_sc7180_driver = {
+	.probe = qcom_soc_sc7180_probe,
+	.driver = {
+		.name = "qcom-soc-sc7180",
+		.of_match_table = qcom_soc_sc7180_match,
+		.suppress_bind_attrs = true,
+	},
+};
+
+static int __init qcom_soc_sc7180_driver_init(void)
+{
+	return platform_driver_register(&qcom_soc_sc7180_driver);
+}
+/* Register before simple-bus driver. */
+arch_initcall(qcom_soc_sc7180_driver_init);
+
+static void __exit qcom_soc_sc7180_driver_exit(void)
+{
+	platform_driver_unregister(&qcom_soc_sc7180_driver);
+}
+module_exit(qcom_soc_sc7180_driver_exit);
+
+MODULE_DESCRIPTION("Qualcomm SC7180 SoC Driver");
+MODULE_LICENSE("GPL");
-- 
https://chromeos.dev


