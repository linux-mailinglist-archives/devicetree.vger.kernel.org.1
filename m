Return-Path: <devicetree+bounces-307195-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5l70NGNqImqKWwEAu9opvQ
	(envelope-from <devicetree+bounces-307195-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:19:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1C7645744
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 08:19:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307195-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307195-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB5143019F1A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 06:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41A543FE64A;
	Fri,  5 Jun 2026 06:14:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net [13.75.44.102])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD0F83C98B5;
	Fri,  5 Jun 2026 06:14:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780640074; cv=none; b=ZK6rLUKWosdfpg/Z4rVdiMLQ1xDrwZXt973M3E7F3cXTViqfo6bL1AfdENotjk+iBZz3IW4HUVFLSVtoK6NNJOlI6m9sZbIZ/HrJxEBVqS2yXqkJvHBli23x4xe/9VZIJemCIsDclzLdalQN3Ailsgvw3tCQC+lcrbrTX+AdOPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780640074; c=relaxed/simple;
	bh=pVIFPUPsa+614kNQs80vhYc8SYH0Y4ffPNN9CFe7yEw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lkoC+M3U9ejILENPqfFrKkdyh87MwoAeMAivtZaU7X4lOVqC4hzWUuKx1tSQU+M68DFHPHLYldxBspSLagqpRVA1dfNW6Rg/npord7RUNtGhRyt35HkTcX7xv3LsR6B+UkawSPuJ5vUFQp102C+QQAoSEvlor0Nzg/v+8CtgrCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=13.75.44.102
Received: from E0005152DT.eswin.cn (unknown [10.12.96.41])
	by app2 (Coremail) with SMTP id TQJkCgAnO549aSJqoT0iAA--.19819S2;
	Fri, 05 Jun 2026 14:14:22 +0800 (CST)
From: dongxuyang@eswincomputing.com
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	bmasney@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	p.zabel@pengutronix.de,
	huangyifeng@eswincomputing.com,
	dongxuyang@eswincomputing.com,
	benoit.monin@bootlin.com
Cc: ningyu@eswincomputing.com,
	linmin@eswincomputing.com,
	pinkesh.vaghela@einfochips.com
Subject: [PATCH v7 3/3] reset: eswin: Add eic7700 HSP reset driver
Date: Fri,  5 Jun 2026 14:14:17 +0800
Message-Id: <20260605061417.2364-1-dongxuyang@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
In-Reply-To: <20260605060730.1605-1-dongxuyang@eswincomputing.com>
References: <20260605060730.1605-1-dongxuyang@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:TQJkCgAnO549aSJqoT0iAA--.19819S2
X-Coremail-Antispam: 1UD129KBjvJXoWxuFy7Kw4UCrWDKF4DKFyrXrb_yoW7KrW3pF
	WrCF13Ar4UXrWfGFZ3GF1qyFy3Xan3tryYk3yxJ3WS9rsxWFyUJrWUta40yF9rJr9rGry5
	JF1agF1xuFnIyrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBm14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jw0_WrylYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lw4CEc2x0rVAKj4xxMxkF7I0En4kS14v26r1q6r43MxkIecxEwVCm-wCF04
	k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18
	MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr4
	1lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1U
	MIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I
	8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUOjjgDUUUU
X-CM-SenderInfo: pgrqw5xx1d0w46hv4xpqfrz1xxwl0woofrz/
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307195-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[dongxuyang@eswincomputing.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[eswincomputing.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:p.zabel@pengutronix.de,m:huangyifeng@eswincomputing.com,m:dongxuyang@eswincomputing.com,m:benoit.monin@bootlin.com,m:ningyu@eswincomputing.com,m:linmin@eswincomputing.com,m:pinkesh.vaghela@einfochips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dongxuyang@eswincomputing.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,eswincomputing.com:mid,eswincomputing.com:from_mime,eswincomputing.com:email,pengutronix.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E1C7645744

From: Xuyang Dong <dongxuyang@eswincomputing.com>

Add auxiliary driver to support ESWIN EIC7700 high-speed peripherals
system. The reset controller is created using the auxiliary device
framework and set up in the clock driver.

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Xuyang Dong <dongxuyang@eswincomputing.com>
---
 drivers/reset/Kconfig             |  11 +++
 drivers/reset/Makefile            |   1 +
 drivers/reset/reset-eic7700-hsp.c | 113 ++++++++++++++++++++++++++++++
 3 files changed, 125 insertions(+)
 create mode 100644 drivers/reset/reset-eic7700-hsp.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index d009eb0849a3..f63e89ed6a4e 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -83,6 +83,17 @@ config RESET_EIC7700
 	  The driver supports eic7700 series chips and provides functionality for
 	  asserting and deasserting resets on the chip.
 
+config RESET_EIC7700_HSP
+	tristate "EIC7700 HSP Reset controller"
+	depends on ARCH_ESWIN || COMPILE_TEST
+	select AUXILIARY_BUS
+	help
+	  This enables the HSP reset controller driver for ESWIN SoCs. This
+	  driver is specific to ESWIN SoCs and should only be enabled if using
+	  such hardware.
+	  The driver supports EIC7700 series chips and provides functionality
+	  for asserting and deasserting resets on the chip.
+
 config RESET_EYEQ
 	bool "Mobileye EyeQ reset controller"
 	depends on EYEQ || COMPILE_TEST
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 3e52569bd276..a75af831ef58 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
 obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
 obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
 obj-$(CONFIG_RESET_EIC7700) += reset-eic7700.o
+obj-$(CONFIG_RESET_EIC7700_HSP) += reset-eic7700-hsp.o
 obj-$(CONFIG_RESET_EYEQ) += reset-eyeq.o
 obj-$(CONFIG_RESET_GPIO) += reset-gpio.o
 obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
diff --git a/drivers/reset/reset-eic7700-hsp.c b/drivers/reset/reset-eic7700-hsp.c
new file mode 100644
index 000000000000..1575ee4a20d6
--- /dev/null
+++ b/drivers/reset/reset-eic7700-hsp.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2026, Beijing ESWIN Computing Technology Co., Ltd..
+ * All rights reserved.
+ *
+ * ESWIN EIC7700 HSP Reset Driver
+ *
+ * Authors: Xuyang Dong <dongxuyang@eswincomputing.com>
+ */
+
+#include <linux/auxiliary_bus.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <linux/reset-controller.h>
+
+#include <dt-bindings/reset/eswin,eic7700-hspcrg.h>
+
+/**
+ * struct eic7700_hsp_reset_data - reset controller information structure
+ * @rcdev: reset controller entity
+ * @regmap: regmap handle containing the memory-mapped reset registers
+ */
+struct eic7700_hsp_reset_data {
+	struct reset_controller_dev rcdev;
+	struct regmap *regmap;
+};
+
+struct eic7700_hsp_reg {
+	u32 reg;
+	u32 bit;
+	bool active_low;
+};
+
+static inline struct eic7700_hsp_reset_data *
+to_eic7700_hsp_reset(struct reset_controller_dev *rcdev)
+{
+	return container_of(rcdev, struct eic7700_hsp_reset_data, rcdev);
+}
+
+static const struct eic7700_hsp_reg eic7700_hsp_reset[] = {
+	[EIC7700_HSP_RST_SATA_P0]	= {0x340, BIT(0), false},
+	[EIC7700_HSP_RST_SATA_PHY]	= {0x340, BIT(1), false},
+	[EIC7700_HSP_RST_USB0]		= {0x800, BIT(24), true},
+	[EIC7700_HSP_RST_USB1]		= {0x900, BIT(24), true},
+	[EIC7700_HSP_RST_USB0_PHY]	= {0x800, BIT(25), false},
+	[EIC7700_HSP_RST_USB1_PHY]	= {0x900, BIT(25), false},
+};
+
+static int eic7700_hsp_reset_assert(struct reset_controller_dev *rcdev,
+				    unsigned long id)
+{
+	struct eic7700_hsp_reset_data *data = to_eic7700_hsp_reset(rcdev);
+
+	return regmap_assign_bits(data->regmap, eic7700_hsp_reset[id].reg,
+				  eic7700_hsp_reset[id].bit,
+				  !eic7700_hsp_reset[id].active_low);
+}
+
+static int eic7700_hsp_reset_deassert(struct reset_controller_dev *rcdev,
+				      unsigned long id)
+{
+	struct eic7700_hsp_reset_data *data = to_eic7700_hsp_reset(rcdev);
+
+	return regmap_assign_bits(data->regmap, eic7700_hsp_reset[id].reg,
+				  eic7700_hsp_reset[id].bit,
+				  eic7700_hsp_reset[id].active_low);
+}
+
+static const struct reset_control_ops eic7700_hsp_reset_ops = {
+	.assert = eic7700_hsp_reset_assert,
+	.deassert = eic7700_hsp_reset_deassert,
+};
+
+static int eic7700_hsp_reset_probe(struct auxiliary_device *adev,
+				   const struct auxiliary_device_id *id)
+{
+	struct eic7700_hsp_reset_data *data;
+	struct device *dev = &adev->dev;
+
+	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->regmap = dev_get_regmap(dev->parent, NULL);
+	if (!data->regmap)
+		return dev_err_probe(dev, -ENODEV, "failed to get regmap!\n");
+
+	data->rcdev.owner = THIS_MODULE;
+	data->rcdev.ops = &eic7700_hsp_reset_ops;
+	data->rcdev.of_node = dev->parent->of_node;
+	data->rcdev.dev = dev;
+	data->rcdev.nr_resets = ARRAY_SIZE(eic7700_hsp_reset);
+
+	return devm_reset_controller_register(dev, &data->rcdev);
+}
+
+static const struct auxiliary_device_id eic7700_hsp_reset_ids[] = {
+	{ .name = "clk_eic7700_hsp.hsp-reset", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(auxiliary, eic7700_hsp_reset_ids);
+
+static struct auxiliary_driver eic7700_hsp_reset_driver = {
+	.probe	= eic7700_hsp_reset_probe,
+	.id_table = eic7700_hsp_reset_ids,
+};
+
+module_auxiliary_driver(eic7700_hsp_reset_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Xuyang Dong <dongxuyang@eswincomputing.com>");
+MODULE_DESCRIPTION("ESWIN EIC7700 HSP Reset Controller Driver");
-- 
2.34.1


