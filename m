Return-Path: <devicetree+bounces-37649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A76C1845CA8
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 17:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE3E7B2CBDA
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 15:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5776161B7D;
	Thu,  1 Feb 2024 15:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="284xutwa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92627160887
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 15:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706802954; cv=none; b=JEFz4R5gcWWi9h4lBSliYbDxavrLERoXxcVTrpe1v+u13fBpn9qPKJl1e+pUgmo8b81cBd4q8A6pMAbj8WS03j5PRYEVrdpgFT6JC2weRkK2RYfyHbf2kc0xopKVBmeJnzzgsqH6qccadttMASu9iI3l0fzsRTxROr/UYXudXjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706802954; c=relaxed/simple;
	bh=6CfrADyu67UaYLnMGZ1vPs6YHh+/jGRDLThYEw8vB3I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SJyzb9VIYf8S5Onl+ZlybkQeff3H5opOS6iS3f4TUdTkKw5MfNpMQRj1WLJ23QdFJbFBrakpfhhYW/fG0NKPjvMPDenWSdH/UdE8Qg1FHmLeAQoG0XH5s6J/395hmVnOiNwo2emMsRz1N2S6hgph2IgfqNnZIqFkOifpQbEKhG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=284xutwa; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40fafae5532so9886435e9.1
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 07:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706802951; x=1707407751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8IzmSf/t1QVNuYYHKYmcvPAe31k7NMvQo+Ff3QIq4Ok=;
        b=284xutwa6G3xc9sfAzirukWuYNhbPklunsN1chvDjuSd+Hj5OdPrvb6DDvfyvARJi2
         4levEepS6Qu/xJLBtv3qDlcv3/P1I3z08EKdd2fnMHoNObL46ToTDmAh9xcPgk76+k70
         oZKW0xtqDtFzaXejR7RS3jg6Hmz15QSjgN8n+AVGw/c3lkYu+QKYgXYZftZABtIsBtha
         0e+vvDhUcvPiibMm/zMyp/X7TTvm07ZBd/uWzF87FXIWc8p1lAByLD62fTA9SmPVa3FJ
         EAiPomcKbQfIRpasdpsof7z7JRRzCXRBPkFqW2C7B3RSxm/0G8svXYcVSQoqO1YkcjHw
         /5Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706802951; x=1707407751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8IzmSf/t1QVNuYYHKYmcvPAe31k7NMvQo+Ff3QIq4Ok=;
        b=qbjUlWdnpnTzbFWmxSVQEOhI3hzpIQK/FuW1+GHrJQhCFZ6p6T2aBGacVa61No9J3O
         1m2q4osZFo3WS/haM9ApRll/7TYuC6YGgpgYhAoHn2nYyxAETlkeHiQGd8dtwEmmHDNk
         3x/r3g5Z3A0EOmk3mWs3hPIznHdcSCiq37JP2xVfx8bd1XtGSqzBzHZ+UhJL8xoE2N/d
         CZZQgSE01OOko5UPlKQmqqHU66hM1pYz0mvwrxN1FtGqa9Kb+CB+bbxmD9njtU0hToAh
         uQ3e+ItQx3+932fAYPYvWjB0BK/QRJMVRLalJST76an0DGd+gTGMnL3ejdQIqiwr88Jq
         dojQ==
X-Gm-Message-State: AOJu0YyBNuUBOK+28uEaw8rma3jkS2iSqqVP9iTcKBmT0E2t3bGRzorq
	bvlHJhxDBaCvnwo0csuVW76PP3+kELKKo14dhvhjXFkAXe4QtipO1hMS6VMn6Rs=
X-Google-Smtp-Source: AGHT+IG5xfsDFKAlSe6ZTadvtWJiWFhJhJYHF4QiHFV+QgOCcfqoz2weFsMbhCvnjE3k4J3gIXuzSA==
X-Received: by 2002:a5d:4709:0:b0:33b:8b6:173e with SMTP id y9-20020a5d4709000000b0033b08b6173emr2595493wrq.37.1706802950857;
        Thu, 01 Feb 2024 07:55:50 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX7wq2iQOPxA/0P2lRuLVuPIqupKNZLis94hkWGqN/8JnRxW30PBYof5ozaErX18k/aTEjn8tdlAzmhvhr0AZbm+hmY0vRxPsDY3SMxVjPZPO10ra2x0NMTOz/6C4WMLp5dJxQ0Wmf2dcD5fH+yqkmKYu2evgWHr9z5oSQPmPe0S8e+61ktVPGJ5620KB00MRFqrPV3IaoI/0csX4bZMZCVfVjNTgj6JmVrbwnuxlHZN+hW55iaxl3WMRGZjptzdu/nyEdOZN6aX5c3Dt7ndDc3s9RhuU2zeBGdJpHecMwkfLW0K82ERyCqljIROudzVLTANhbBw7ago1WKDH/xOLxBeawj8eJ+SlgaokMq/HHFGdF2JjETtKHVtT39xhwWDjjUgo9dn9Uo9psa9OtpLPd05E9TQzAemHEZlISavurknm19cKiknJpA1dMQOfYmUFB7JF305/pv7Lv6o2BRMTubPuQRFPLDEshrevpz7JqMrt5yRu+iEyGX9330S1vECw4lUGPK1Xp035a1TJk6ic972MHlueASaJ+xQeqHzfkUTA1AT/9WXtrOIkorCZ4nrroZpo6PLsKXz6s76Lx+hL0nTwiFsmddf2I7LUZoV/2Cmye/EoZ4Zx4vRpuuf68YdFZAx96sNKYnPPlduoEmPiejrX7pY0lzjsPjOb3wgDEjyViELz5Su+r8DvrwrBoVMDviLkZ+++CK
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:dd01:5dec:43e3:b607])
        by smtp.gmail.com with ESMTPSA id ce2-20020a5d5e02000000b0033af4848124sm9650318wrb.109.2024.02.01.07.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 07:55:50 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Abel Vesa <abel.vesa@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lukas Wunner <lukas@wunner.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-bluetooth@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [RFC 9/9] PCI/pwrctl: add a PCI power control driver for power sequenced devices
Date: Thu,  1 Feb 2024 16:55:32 +0100
Message-Id: <20240201155532.49707-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240201155532.49707-1-brgl@bgdev.pl>
References: <20240201155532.49707-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add a PCI power control driver that's capable of correctly powering up
devices using the power sequencing subsystem. For now we support the
ath11k module on QCA6390.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/pci/pwrctl/Kconfig             |  9 +++
 drivers/pci/pwrctl/Makefile            |  1 +
 drivers/pci/pwrctl/pci-pwrctl-pwrseq.c | 83 ++++++++++++++++++++++++++
 3 files changed, 93 insertions(+)
 create mode 100644 drivers/pci/pwrctl/pci-pwrctl-pwrseq.c

diff --git a/drivers/pci/pwrctl/Kconfig b/drivers/pci/pwrctl/Kconfig
index e2dc5e5d2af1..bca72dc08e79 100644
--- a/drivers/pci/pwrctl/Kconfig
+++ b/drivers/pci/pwrctl/Kconfig
@@ -5,4 +5,13 @@ menu "PCI Power control drivers"
 config PCI_PWRCTL
 	bool
 
+config PCI_PWRCTL_PWRSEQ
+	tristate "PCI Power Control driver using the Power Sequencing subsystem"
+	select POWER_SEQUENCING
+	select PCI_PWRCTL
+	default m if (ATH11K_PCI && ARCH_QCOM)
+	help
+	  Enable support for the PCI power control driver for device
+	  drivers using the Power Sequencing subsystem.
+
 endmenu
diff --git a/drivers/pci/pwrctl/Makefile b/drivers/pci/pwrctl/Makefile
index 4381cfbf3f21..919c0f704ee9 100644
--- a/drivers/pci/pwrctl/Makefile
+++ b/drivers/pci/pwrctl/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_PCI_PWRCTL)		+= core.o
+obj-$(CONFIG_PCI_PWRCTL_PWRSEQ)		+= pci-pwrctl-pwrseq.o
diff --git a/drivers/pci/pwrctl/pci-pwrctl-pwrseq.c b/drivers/pci/pwrctl/pci-pwrctl-pwrseq.c
new file mode 100644
index 000000000000..510598c4edc4
--- /dev/null
+++ b/drivers/pci/pwrctl/pci-pwrctl-pwrseq.c
@@ -0,0 +1,83 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2023-2024 Linaro Ltd.
+ */
+
+#include <linux/device.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/pci-pwrctl.h>
+#include <linux/platform_device.h>
+#include <linux/pwrseq/consumer.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+
+struct pci_pwrctl_pwrseq_data {
+	struct pci_pwrctl ctx;
+	struct pwrseq_desc *pwrseq;
+};
+
+static void devm_pci_pwrctl_pwrseq_power_off(void *data)
+{
+	struct pwrseq_desc *pwrseq = data;
+
+	pwrseq_power_off(pwrseq);
+}
+
+static int pci_pwrctl_pwrseq_probe(struct platform_device *pdev)
+{
+	struct pci_pwrctl_pwrseq_data *data;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->pwrseq = devm_pwrseq_get(dev);
+	if (IS_ERR(data->pwrseq))
+		return dev_err_probe(dev, PTR_ERR(data->pwrseq),
+				     "Failed to get the power sequencer\n");
+
+	ret = pwrseq_power_on(data->pwrseq);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Failed to power-on the device\n");
+
+	ret = devm_add_action_or_reset(dev, devm_pci_pwrctl_pwrseq_power_off,
+				       data->pwrseq);
+	if (ret)
+		return ret;
+
+	data->ctx.dev = dev;
+
+	ret = devm_pci_pwrctl_device_enable(dev, &data->ctx);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Failed to register the pwrctl wrapper\n");
+
+	return 0;
+}
+
+static const struct of_device_id pci_pwrctl_pwrseq_of_match[] = {
+	{
+		/* ATH11K in QCA6390 package. */
+		.compatible = "pci17cb,1101",
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, pci_pwrctl_pwrseq_of_match);
+
+static struct platform_driver pci_pwrctl_pwrseq_driver = {
+	.driver = {
+		.name = "pci-pwrctl-pwrseq",
+		.of_match_table = pci_pwrctl_pwrseq_of_match,
+	},
+	.probe = pci_pwrctl_pwrseq_probe,
+};
+module_platform_driver(pci_pwrctl_pwrseq_driver);
+
+MODULE_AUTHOR("Bartosz Golaszewski <bartosz.golaszewski@linaro.org>");
+MODULE_DESCRIPTION("Generic PCI Power Control module for power sequenced devices");
+MODULE_LICENSE("GPL");
-- 
2.40.1


