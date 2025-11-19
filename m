Return-Path: <devicetree+bounces-240397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CE916C70B16
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 19:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3F297354388
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 305533009CB;
	Wed, 19 Nov 2025 18:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GI02/0BH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C1D22DA76D
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 18:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763578072; cv=none; b=TXAIACKV9NtMFsyD24Ef+bKTtbRLDzpqAySFnjgRyeAGbb4TDEqM5eMFIzNuhTTTdjKANqJbGw2vw9e67xmii4SnPVl+7579DufiyIsQGQxjULuY7pBQIJG4mKIbnL4wFY9c7oUS5evO4irkLmnPyicmTNB/vaixyfRHZCgdIVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763578072; c=relaxed/simple;
	bh=Tv1eAdhQHSWAlUW6LScmbNGfJzz1gmQ/O/XZmm+eLxs=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dVRfs4edrGYLCkAj9jrFJzhq1Y0s9VdyUjwR7OhdNvOuo/QemhA+vIqlIQxGNCMkDWSpaVrQ3bAK2GZqHSEyQh2E31zMByUFdpI3fkL85iIuRmid/vZuMSovdJ5Q1OQyjusRvDfqkuSfajSsIjCFRQhV1mHss6XHVp+enNwSDUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GI02/0BH; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4775ae77516so977615e9.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 10:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763578060; x=1764182860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ITAPmWjWHfAxOOhIuXDANdTyH6b8fLP88ZKP703/IUU=;
        b=GI02/0BHw4nTTQ4dyJjH2n9aFJpB4PozmMIpZPvnWYPeTqsW5QLMty49NBA2+eB2kq
         j2PIazTlM4lQYdgf+3sKQeAUbYO7A8FF/BSDqlxAr/5ts6JxqB23ySVwMP6jkV3HDW96
         q8p0uhr65ua69fCS2VG13l+NkYSTDg2J9ATNloBfoPvnHvv/Uc0jdQ7pmLRiAk7oGQ1X
         srVs1oRfnkEERP9VMdB9JEdpF31JYapdaYTvYxV5cxDWjVnb8dNIKUToQrG6FTs76WTz
         BwEFxcT+Vci7BhCqER5uCpN6FXXEi+S79vaeMfys/QsdIQwRh950fmxKj0QntGv/S3yS
         pO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763578060; x=1764182860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ITAPmWjWHfAxOOhIuXDANdTyH6b8fLP88ZKP703/IUU=;
        b=Rx90zfsYOAnxyIWyZfp/WnFCh7g4IOfdIjeH4ytIL9C25T1nudGUcDgxxFjk2trnBp
         AYXY1ZUxCXSbQPBmqG0lPk8k2sAV8H2l93nlf6r0K0cbaMuswuNsF1hyPie2RVmLeYZZ
         xKdsHOr0WqRzLXPtUYxznJzklUpg5bXvOD/375oDWKtgMkngTW+a/uIl4v+EJ3MmB+yQ
         phBSgd7w446Vt7XZIHlrikq8IUNPhZTXsSNgq4UB7T7vOPToafIltPj9VnZz2zAILDvh
         qENSqf3tmg46UaciaIJewx60UuYqDON+3PxD7QGBcbihjJMUBQXlv0DiylRdWVBrZbxC
         5+RQ==
X-Forwarded-Encrypted: i=1; AJvYcCV7rD85+t08P6ueYvpHxs9d2aSerJWhjtW4aHDdpHlF3xQsng40UGnnO0VOhD3YHgVTayrzmxBLl4bw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywke/STL6qg6onPPFqg/RANXjfCJab9vLB98oJlWH+1MwsEHnR4
	a4tmstfR+zRbhP/lGTDLJwVT5490mfAp/WF2i+2QTOktxGYqMU76mZE7
X-Gm-Gg: ASbGnct142iCk2evsuINEEl0KoSsf78rdkRt5GrutWH4aUVqAiTHisk8MXajmrqG2Zv
	mvtuUKoEK0ZFx3zFu4KtalJj1uTyREUl7rtJw3XMMuiW6QR0FMh7PofXJ08oduBdwSxtZGMaRHK
	m4R6nK33+ahq+OHyQ1vVhX+osuvWiRBtDnzY1TnnpR+p7EPPskBFEMIWPBq9VvcRcnoJd2J4eME
	+ERAL3PcDl5DviN95yKvFYeLopatUItUqDZpNEDbkg0XiVagkOJxrUEM80EMU89LLTgje45qfG4
	TW6VoExKccNulHwH+lyohh2ejKsnnBa50j+b9di5HZsJHTY8Rt99blhnAxE3/mgucpTs07t26vU
	GMfKlzB7PorHCJflWZSXedTB9d3kxbR5tOY1f2GmE2UhGqmksz4OSB06CLVno5S+9FlKZldO8Fx
	+1H4sqzogrv8NRMwD/V3PqGCtSb353jMDTNV+NCRTJZfPvximGZO9+T96vu75JS94OrKQDS7nSx
	7GIUvb3T1M5AdvcRR5LDViP
X-Google-Smtp-Source: AGHT+IErCv+sOQgcO5mi8NftvWwZqQ/+UAV7XQ9k7EDWfASMBaFhDi8VaGpvOa0KVUbzTOD3bneiTA==
X-Received: by 2002:a05:600c:3b07:b0:46e:37fe:f0e6 with SMTP id 5b1f17b1804b1-477b8a9c8b8mr3035295e9.30.1763578060201;
        Wed, 19 Nov 2025 10:47:40 -0800 (PST)
Received: from iris-Ian.fritz.box (p200300eb5f27c400b58af32dfc3cbd97.dip0.t-ipconnect.de. [2003:eb:5f27:c400:b58a:f32d:fc3c:bd97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82e8ea6sm4909795e9.8.2025.11.19.10.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 10:47:39 -0800 (PST)
From: iansdannapel@gmail.com
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	mdf@kernel.org,
	yilun.xu@intel.com,
	trix@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	kever.yang@rock-chips.com,
	dev@kael-k.io,
	iansdannapel@gmail.com
Subject: [PATCH v5 3/3] fpga-mgr: Add Efinix SPI programming driver
Date: Wed, 19 Nov 2025 19:47:06 +0100
Message-ID: <20251119184708.566461-4-iansdannapel@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119184708.566461-1-iansdannapel@gmail.com>
References: <20251119184708.566461-1-iansdannapel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Ian Dannapel <iansdannapel@gmail.com>

Add a new driver for loading binary firmware to configuration
RAM using "SPI passive mode" on Efinix FPGAs.

Signed-off-by: Ian Dannapel <iansdannapel@gmail.com>
---
 drivers/fpga/Kconfig      |   7 ++
 drivers/fpga/Makefile     |   1 +
 drivers/fpga/efinix-spi.c | 256 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 264 insertions(+)
 create mode 100644 drivers/fpga/efinix-spi.c

diff --git a/drivers/fpga/Kconfig b/drivers/fpga/Kconfig
index 37b35f58f0df..b5d60ba62900 100644
--- a/drivers/fpga/Kconfig
+++ b/drivers/fpga/Kconfig
@@ -83,6 +83,13 @@ config FPGA_MGR_XILINX_SPI
 	  FPGA manager driver support for Xilinx FPGA configuration
 	  over slave serial interface.
 
+config FPGA_MGR_EFINIX_SPI
+	tristate "Efinix FPGA configuration over SPI"
+	depends on SPI
+	help
+	  FPGA manager driver support for Efinix FPGAs configuration over SPI
+	  (passive mode only).
+
 config FPGA_MGR_ICE40_SPI
 	tristate "Lattice iCE40 SPI"
 	depends on OF && SPI
diff --git a/drivers/fpga/Makefile b/drivers/fpga/Makefile
index aeb89bb13517..adbd51d2cd1e 100644
--- a/drivers/fpga/Makefile
+++ b/drivers/fpga/Makefile
@@ -18,6 +18,7 @@ obj-$(CONFIG_FPGA_MGR_TS73XX)		+= ts73xx-fpga.o
 obj-$(CONFIG_FPGA_MGR_XILINX_CORE)	+= xilinx-core.o
 obj-$(CONFIG_FPGA_MGR_XILINX_SELECTMAP)	+= xilinx-selectmap.o
 obj-$(CONFIG_FPGA_MGR_XILINX_SPI)	+= xilinx-spi.o
+obj-$(CONFIG_FPGA_MGR_EFINIX_SPI)	+= efinix-spi.o
 obj-$(CONFIG_FPGA_MGR_ZYNQ_FPGA)	+= zynq-fpga.o
 obj-$(CONFIG_FPGA_MGR_ZYNQMP_FPGA)	+= zynqmp-fpga.o
 obj-$(CONFIG_FPGA_MGR_VERSAL_FPGA)	+= versal-fpga.o
diff --git a/drivers/fpga/efinix-spi.c b/drivers/fpga/efinix-spi.c
new file mode 100644
index 000000000000..953cf94f1f03
--- /dev/null
+++ b/drivers/fpga/efinix-spi.c
@@ -0,0 +1,256 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * FPGA Manager Driver for Efinix
+ *
+ * Copyright (C) 2025 iris-GmbH infrared & intelligent sensors
+ *
+ * Ian Dannapel <iansdannapel@gmail.com>
+ *
+ * Load Efinix FPGA firmware over SPI using the serial configuration interface.
+ *
+ * Note: Only passive mode (host initiates transfer) is currently supported.
+ */
+
+#include <linux/delay.h>
+#include <linux/fpga/fpga-mgr.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/spi/spi.h>
+
+/* 13 dummy bytes → 104 SPI clock cycles (8 bits each)
+ * Used to meet the requirement for >100 clock cycles idle sequence.
+ */
+#define EFINIX_SPI_IDLE_CYCLES_BYTES 13
+
+/* tDMIN: Minimum time between deassertion of CRESET_N to first
+ * valid configuration data. (32 µs)
+ */
+#define EFINIX_TDMIN_US_MIN    35
+#define EFINIX_TDMIN_US_MAX    40
+
+/* tCRESET_N: Minimum CRESET_N low pulse width required to
+ * trigger re-configuration. (320 ns)
+ */
+#define EFINIX_TCRESETN_DELAY_MIN_US  1
+#define EFINIX_TCRESETN_DELAY_MAX_US  2
+
+/* tUSER: Minimum configuration duration after CDONE goes high
+ * before entering user mode. (25 µs)
+ */
+#define EFINIX_TUSER_US_MIN    30
+#define EFINIX_TUSER_US_MAX    35
+
+struct efinix_spi_conf {
+	struct spi_device *spi;
+	struct gpio_desc *cdone;
+	struct gpio_desc *reset;
+	bool bus_locked;
+};
+
+static void efinix_spi_reset(struct efinix_spi_conf *conf)
+{
+	gpiod_set_value(conf->reset, 1);
+	usleep_range(EFINIX_TCRESETN_DELAY_MIN_US, EFINIX_TCRESETN_DELAY_MAX_US);
+	gpiod_set_value(conf->reset, 0);
+	usleep_range(EFINIX_TDMIN_US_MIN, EFINIX_TDMIN_US_MAX);
+}
+
+static enum fpga_mgr_states efinix_spi_state(struct fpga_manager *mgr)
+{
+	struct efinix_spi_conf *conf = mgr->priv;
+
+	if (conf->cdone && gpiod_get_value(conf->cdone) == 1)
+		return FPGA_MGR_STATE_OPERATING;
+
+	return FPGA_MGR_STATE_UNKNOWN;
+}
+
+static int efinix_spi_write_init(struct fpga_manager *mgr,
+				 struct fpga_image_info *info,
+				 const char *buf, size_t count)
+{
+	struct efinix_spi_conf *conf = mgr->priv;
+	struct spi_transfer assert_cs = {
+		.cs_change = 1,
+	};
+	struct spi_message message;
+	int ret;
+
+	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
+		dev_err(&mgr->dev, "Partial reconfiguration not supported\n");
+		return -EOPNOTSUPP;
+	}
+
+	spi_bus_lock(conf->spi->controller);
+	conf->bus_locked = true;
+	spi_message_init_with_transfers(&message, &assert_cs, 1);
+	ret = spi_sync_locked(conf->spi, &message);
+	if (ret) {
+		spi_bus_unlock(conf->spi->controller);
+		conf->bus_locked = false;
+		return ret;
+	}
+
+	/* Reset with CS asserted */
+	efinix_spi_reset(conf);
+
+	return 0;
+}
+
+static int efinix_spi_write(struct fpga_manager *mgr, const char *buf,
+			    size_t count)
+{
+	struct spi_transfer write_xfer = {
+		.tx_buf = buf,
+		.len = count,
+		.cs_change = 1, /* Keep CS asserted */
+	};
+	struct efinix_spi_conf *conf = mgr->priv;
+	struct spi_message message;
+	int ret;
+
+	spi_message_init_with_transfers(&message, &write_xfer, 1);
+	ret = spi_sync_locked(conf->spi, &message);
+	if (ret) {
+		dev_err(&mgr->dev, "SPI error in firmware write: %d\n", ret);
+		if (conf->bus_locked) {
+			spi_bus_unlock(conf->spi->controller);
+			conf->bus_locked = false;
+		}
+	}
+	return ret;
+}
+
+static int efinix_spi_write_complete(struct fpga_manager *mgr,
+				     struct fpga_image_info *info)
+{
+	unsigned long timeout =
+		jiffies + usecs_to_jiffies(info->config_complete_timeout_us);
+	struct spi_transfer clk_cycles = {
+		.len = EFINIX_SPI_IDLE_CYCLES_BYTES,
+	};
+	struct efinix_spi_conf *conf = mgr->priv;
+	struct spi_message message;
+	int ret = -1, done = 0;
+	bool expired = false;
+	u8 *dummy_buf;
+
+	dummy_buf = kzalloc(EFINIX_SPI_IDLE_CYCLES_BYTES, GFP_KERNEL);
+	if (!dummy_buf) {
+		ret = -ENOMEM;
+		goto unlock_spi;
+	}
+
+	clk_cycles.tx_buf = dummy_buf;
+	spi_message_init_with_transfers(&message, &clk_cycles, 1);
+	ret = spi_sync_locked(conf->spi, &message);
+	if (ret) {
+		dev_err(&mgr->dev, "SPI error in write complete: %d\n", ret);
+		goto free_buf;
+	}
+
+	if (conf->cdone) {
+		while (!expired) {
+			done = gpiod_get_value(conf->cdone);
+			if (done < 0) {
+				ret = done;
+				goto free_buf;
+			}
+			if (done)
+				break;
+
+			usleep_range(10, 20);
+			expired = time_after(jiffies, timeout);
+		}
+
+		if (expired) {
+			dev_err(&mgr->dev, "Timeout waiting for CDONE\n");
+			ret = -ETIMEDOUT;
+			goto free_buf;
+		}
+	}
+
+	usleep_range(EFINIX_TUSER_US_MIN, EFINIX_TUSER_US_MAX);
+
+free_buf:
+	kfree(dummy_buf);
+unlock_spi:
+	if (conf->bus_locked) {
+		spi_bus_unlock(conf->spi->controller);
+		conf->bus_locked = false;
+	}
+	return ret;
+}
+
+static const struct fpga_manager_ops efinix_spi_ops = {
+	.state = efinix_spi_state,
+	.write_init = efinix_spi_write_init,
+	.write = efinix_spi_write,
+	.write_complete = efinix_spi_write_complete,
+};
+
+static int efinix_spi_probe(struct spi_device *spi)
+{
+	struct efinix_spi_conf *conf;
+	struct fpga_manager *mgr;
+
+	conf = devm_kzalloc(&spi->dev, sizeof(*conf), GFP_KERNEL);
+	if (!conf)
+		return -ENOMEM;
+
+	conf->spi = spi;
+
+	conf->reset = devm_gpiod_get(&spi->dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(conf->reset))
+		return dev_err_probe(&spi->dev, PTR_ERR(conf->reset),
+				     "Failed to get RESET gpio\n");
+
+	if (!(spi->mode & SPI_CPHA) || !(spi->mode & SPI_CPOL))
+		return dev_err_probe(&spi->dev, -EINVAL,
+				     "Unsupported SPI mode, set CPHA and CPOL\n");
+
+	conf->cdone = devm_gpiod_get_optional(&spi->dev, "cdone", GPIOD_IN);
+	if (IS_ERR(conf->cdone))
+		return dev_err_probe(&spi->dev, PTR_ERR(conf->cdone),
+				     "Failed to get CDONE gpio\n");
+
+	mgr = devm_fpga_mgr_register(&spi->dev,
+				     "Efinix FPGA Manager",
+				     &efinix_spi_ops, conf);
+
+	conf->bus_locked = false;
+
+	return PTR_ERR_OR_ZERO(mgr);
+}
+
+static const struct of_device_id efinix_spi_of_match[] = {
+	{ .compatible = "efinix,trion-spi", },
+	{ .compatible = "efinix,titanium-spi", },
+	{ .compatible = "efinix,topaz-spi", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, efinix_spi_of_match);
+
+static const struct spi_device_id efinix_ids[] = {
+	{ "trion-spi", 0 },
+	{ "titanium-spi", 0 },
+	{ "topaz-spi", 0 },
+	{},
+};
+MODULE_DEVICE_TABLE(spi, efinix_ids);
+
+static struct spi_driver efinix_spi_driver = {
+	.driver = {
+		.name = "efinix-spi",
+		.of_match_table = efinix_spi_of_match,
+	},
+	.probe = efinix_spi_probe,
+	.id_table = efinix_ids,
+};
+
+module_spi_driver(efinix_spi_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Ian Dannapel <iansdannapel@gmail.com>");
+MODULE_DESCRIPTION("Efinix FPGA SPI Programming Driver");
-- 
2.43.0


