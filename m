Return-Path: <devicetree+bounces-296016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMK6Oka5Amo5wAEAu9opvQ
	(envelope-from <devicetree+bounces-296016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:23:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 583E3519E37
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:23:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2CE4303AB43
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8339B33F598;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBbLoxkF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E61033A6E2;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778563300; cv=none; b=aA8eFHD/uC2XPkDhsJMslxXn6VRZ7WSaYyHgkWLfS/efKAX3jcgpCGlkZTVzR1kTHLYlc2CCUZ5oIMtObQR3VItvmr+YnnfodWBbAKnvrE6V66jqP89dZyIiX8PpyaKeqz+0O8VfS7OHk5KzroYe4ZJa4CCnjyRHlUjQZL312vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778563300; c=relaxed/simple;
	bh=8k3Ry7tv0dQbgo90fMf9Q0Yy4yOBcyjqMV8YWMZPeGM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BPFCtO6DZfafn09tGd98Ul/JmtKQYRYBPE9kTt6dK09iQgnLsvFO1mfcPnhL0wg67TUMqNkH7TXxUgZTczcfZuw+bKzQVdpqTfxqC3kcJYhCaxps5Zme9CznvUwCA9t5DYzAsHyHxHyHgVmEu7ZPXH8X4lnQYUyzFp1mAcdldKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBbLoxkF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11AA7C2BCC7;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778563300;
	bh=8k3Ry7tv0dQbgo90fMf9Q0Yy4yOBcyjqMV8YWMZPeGM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MBbLoxkF4b9m63D0nPRXcI8KIyApEVZqLK168kVHeLTX0WhT8WmvDJSHQ/gNwdKlM
	 OLRg491TYRb673tEOhrTCn9uUoA7uZszvHjSbiD5jePASwsE6RnX9VPitsndE/ePdI
	 DmdIYi2V2SefOQI0wjyqy0xhF1Hxke59F+t8K4W9CgUY8ocigs+uO274iFoJNIr9Qu
	 jLqy6NN4vCxeOUo7kSPpEAfRx9dE8Rut9rEGQglWeTPvEWOnf8+b8UIhFGJvDYzwx9
	 eOf02vjNt6jvZrDB9ikVn8GBmhVoUcq57amm/wEiXHo41Af34LhoOPyW7uqbGz+If7
	 Ux8LRL3MVUbIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07EACCD4F23;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
From: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>
Date: Tue, 12 May 2026 08:18:20 +0300
Subject: [PATCH v2 06/16] nvmem: add mt6323 PMIC EFUSE driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260512-mt6323-v2-6-3efcba579e88@protonmail.com>
References: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com>
In-Reply-To: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
 Roman Vivchar <rva333@protonmail.com>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
 Ben Grisdale <bengris32@protonmail.ch>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778563297; l=4414;
 i=rva333@protonmail.com; s=20260510; h=from:subject:message-id;
 bh=vvT2pOB1ZGhmW+qcNnHLmWiasppjohd7DkMPQD+D54k=;
 b=6zp8lOnE5vSeBKSiFPMWfYFxRC6c1Yd0n9Py1YTHo1tE+IQ7guQBNjYOD+P9E68yetu0Al/xR
 zCamuetNLs1DaccUTpFQdHeDd4rFHxwUEOxREvyR7Sog53CiDlxJDT4
X-Developer-Key: i=rva333@protonmail.com; a=ed25519;
 pk=zww/nWjBGoQ4POXCG0BV6fx2iuXK6jx77rsKPA5YK5Y=
X-Endpoint-Received: by B4 Relay for rva333@protonmail.com/20260510 with
 auth_id=777
X-Original-From: Roman Vivchar <rva333@protonmail.com>
Reply-To: rva333@protonmail.com
X-Rspamd-Queue-Id: 583E3519E37
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296016-lists,devicetree=lfdr.de,rva333.protonmail.com];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,mediatek.com,protonmail.com,intel.com,arm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_REPLYTO(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[rva333@protonmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.ch:email,config.dev:url,protonmail.com:email,protonmail.com:mid,protonmail.com:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

From: Roman Vivchar <rva333@protonmail.com>

Add support for the EFUSE controller found in the Mediatek MT6323 PMIC.
The MT6323 EFUSE stores 24 bytes of hardware-related data, such as
thermal sensor calibration values.

Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd Generation)
Signed-off-by: Roman Vivchar <rva333@protonmail.com>
---
 drivers/nvmem/Kconfig        | 11 ++++++
 drivers/nvmem/Makefile       |  2 ++
 drivers/nvmem/mt6323-efuse.c | 86 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 99 insertions(+)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 74ddbd0f79b0..db248a3c4e87 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -227,6 +227,17 @@ config NVMEM_MTK_EFUSE
 	  This driver can also be built as a module. If so, the module
 	  will be called efuse-mtk.
 
+config NVMEM_MT6323_EFUSE
+	tristate "Mediatek MT6323 PMIC EFUSE support"
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	depends on MFD_MT6397
+	help
+	  This is a driver to access hardware related data like sensor
+	  calibration, etc.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called efuse-mt6323.
+
 config NVMEM_MXS_OCOTP
 	tristate "Freescale MXS On-Chip OTP Memory Support"
 	depends on ARCH_MXS || COMPILE_TEST
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 7252b8ec88d4..0e2b73f42b25 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -48,6 +48,8 @@ obj-$(CONFIG_NVMEM_MICROCHIP_OTPC)	+= nvmem-microchip-otpc.o
 nvmem-microchip-otpc-y			:= microchip-otpc.o
 obj-$(CONFIG_NVMEM_MTK_EFUSE)		+= nvmem_mtk-efuse.o
 nvmem_mtk-efuse-y			:= mtk-efuse.o
+obj-$(CONFIG_NVMEM_MT6323_EFUSE)		+= nvmem_mt6323-efuse.o
+nvmem_mt6323-efuse-y			:= mt6323-efuse.o
 obj-$(CONFIG_NVMEM_MXS_OCOTP)		+= nvmem-mxs-ocotp.o
 nvmem-mxs-ocotp-y			:= mxs-ocotp.o
 obj-$(CONFIG_NVMEM_NINTENDO_OTP)	+= nvmem-nintendo-otp.o
diff --git a/drivers/nvmem/mt6323-efuse.c b/drivers/nvmem/mt6323-efuse.c
new file mode 100644
index 000000000000..52db62784add
--- /dev/null
+++ b/drivers/nvmem/mt6323-efuse.c
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2026 Roman Vivchar <rva333@protonmail.com>
+ */
+
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/nvmem-provider.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/types.h>
+
+#include <linux/mfd/mt6323/registers.h>
+
+#define MT6323_EFUSE_DOUT_BASE	MT6323_EFUSE_DOUT_0_15
+#define MT6323_EFUSE_SIZE	24
+
+static int mt6323_efuse_read(void *context, unsigned int offset, void *val,
+			     size_t bytes)
+{
+	struct regmap *map = context;
+	u32 tmp;
+	u16 *buf = val;
+	int ret;
+
+	/*
+	 * Manual regmap_read with loop is needed, because PWRAP is not
+	 * a continuous MMIO space, but rather FSM which doesn't implement
+	 * necessary read callback for the regmap_read_raw and regmap_read_bulk
+	 * functions.
+	 */
+	for (size_t i = 0; i < bytes; i += sizeof(*buf)) {
+		ret = regmap_read(map, MT6323_EFUSE_DOUT_BASE + offset + i, &tmp);
+		if (ret)
+			return ret;
+
+		*buf++ = (u16)tmp;
+	}
+
+	return 0;
+}
+
+static int mt6323_efuse_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct nvmem_config config = {
+		.name = "mt6323-efuse",
+		.stride = 2,
+		.word_size = 2,
+		.size = MT6323_EFUSE_SIZE,
+		.reg_read = mt6323_efuse_read,
+	};
+	struct nvmem_device *nvmem;
+	struct regmap *regmap;
+
+	/* efuse -> mfd -> pwrap */
+	regmap = dev_get_regmap(dev->parent->parent, NULL);
+	if (!regmap)
+		return dev_err_probe(dev, -ENODEV, "failed to get regmap\n");
+
+	config.dev = dev;
+	config.priv = regmap;
+
+	nvmem = devm_nvmem_register(dev, &config);
+	return PTR_ERR_OR_ZERO(nvmem);
+}
+
+static const struct of_device_id mt6323_efuse_of_match[] = {
+	{ .compatible = "mediatek,mt6323-efuse" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, mt6323_efuse_of_match);
+
+static struct platform_driver mt6323_efuse_driver = {
+	.probe = mt6323_efuse_probe,
+	.driver = {
+		.name = "mt6323-efuse",
+		.of_match_table = mt6323_efuse_of_match,
+	},
+};
+module_platform_driver(mt6323_efuse_driver);
+
+MODULE_DESCRIPTION("Mediatek MT6323 PMIC EFUSE driver");
+MODULE_LICENSE("GPL");

-- 
2.54.0



