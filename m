Return-Path: <devicetree+bounces-39304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB55F84C169
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 01:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 825AC2851C0
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 00:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE7F7647;
	Wed,  7 Feb 2024 00:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b="LIowJD15"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD485382;
	Wed,  7 Feb 2024 00:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.149.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707266222; cv=none; b=Hd3WPW+e0G0NGNxKXVjyZs1clHHIjoxH9K5aZsHoXqfEP3megavdlnv6soc5vHBv4RWXBv/XYnX5XeV5ImOhHDP8C1olXJoVEZPBlw/kaOWZaEedYTIMZVcKkZZtjBR0u3nGS/xZjSZP6/2D5x3Bf/lqdGtELjzHFGLTpN97AHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707266222; c=relaxed/simple;
	bh=+3XGplTgclxOyWy1gnP9oJnTdiPMdH0/Nkf0/AWQFvE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rdf4L+SEVCau4AxqIoxR2DWGasaZOJu4zM/Z1LpnORaD7ZeOpf50hbQyGQwzW8jfoWXZ+EpqN3+mki5/h5YIYeIeH+1g0o1G7B/XzsefDWkSOYseTaXQUpGJtDKTSwiNaNIEgaur+Nsq2SOo1cBAjr9rztEmr+Zj7WFlvstXdOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=opensource.cirrus.com; spf=pass smtp.mailfrom=opensource.cirrus.com; dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b=LIowJD15; arc=none smtp.client-ip=67.231.149.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=opensource.cirrus.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=opensource.cirrus.com
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4166x9ch021815;
	Tue, 6 Feb 2024 18:36:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	PODMain02222019; bh=wwSJeCQjME0gCDZnyBcLJ4o0I/8DT61PqlfA8TKK9H0=; b=
	LIowJD15LtgfNnlaF1Q2A2YdeWTtg4MiQ3AUs24PH+vfJlnxplKD9b8DU1xQkHTO
	zTAyPnOK76pk4+l5G9IRdrI6CqyHXpmPm1igPhP3TYYbnlxvfVmF4iWqk2cYW6TT
	G1X+KNuFhAbhTsHj8hdjrXHhBKwmO9m8+q/WQu25uEjTKpCfClBatKSDLMum2CT1
	gI6EPERLLT+zr6jCqQ1zckx2rrgyoXseWHRxnw04v9RuApnOzpoHPm2cXYnumjqW
	kxyqo0UJ236SpAsLuDKzpUclYS7SdRtH7Tn89/WGf9XW8FjMTZVOSjfcS7lzeuX0
	2RqMk6ASh1ZWLBmA3fhLtA==
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3w1ks2cbge-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 Feb 2024 18:36:52 -0600 (CST)
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 7 Feb
 2024 00:36:50 +0000
Received: from ediswmail9.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1118.40 via Frontend Transport; Wed, 7 Feb 2024 00:36:50 +0000
Received: from aus-sw-rshr002.ad.cirrus.com (aus-sw-rshr002.ad.cirrus.com [141.131.145.53])
	by ediswmail9.ad.cirrus.com (Postfix) with ESMTP id 4C26C820246;
	Wed,  7 Feb 2024 00:36:48 +0000 (UTC)
From: James Ogletree <jogletre@opensource.cirrus.com>
To: <dmitry.torokhov@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <lee@kernel.org>, <broonie@kernel.org>, <jeff@labundy.com>
CC: <patches@opensource.cirrus.com>, <linux-sound@vger.kernel.org>,
        <linux-input@vger.kernel.org>, <devicetree@vger.kernel.org>,
        James Ogletree
	<jogletre@opensource.cirrus.com>
Subject: [PATCH v6 3/5] mfd: cs40l50: Add support for CS40L50 core driver
Date: Wed, 7 Feb 2024 00:36:10 +0000
Message-ID: <20240207003612.4187370-4-jogletre@opensource.cirrus.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240207003612.4187370-1-jogletre@opensource.cirrus.com>
References: <20240207003612.4187370-1-jogletre@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: uBvNmOzx8Ne4hIX5YL78Ixo8e6eIQLNz
X-Proofpoint-ORIG-GUID: uBvNmOzx8Ne4hIX5YL78Ixo8e6eIQLNz
X-Proofpoint-Spam-Reason: safe

Introduce support for Cirrus Logic Device CS40L50: a
haptic driver with waveform memory, integrated DSP,
and closed-loop algorithms.

The MFD component registers and initializes the device.

Signed-off-by: James Ogletree <jogletre@opensource.cirrus.com>
---
 MAINTAINERS                 |   2 +
 drivers/mfd/Kconfig         |  30 ++
 drivers/mfd/Makefile        |   3 +
 drivers/mfd/cs40l50-core.c  | 537 ++++++++++++++++++++++++++++++++++++
 drivers/mfd/cs40l50-i2c.c   |  69 +++++
 drivers/mfd/cs40l50-spi.c   |  69 +++++
 include/linux/mfd/cs40l50.h | 134 +++++++++
 7 files changed, 844 insertions(+)
 create mode 100644 drivers/mfd/cs40l50-core.c
 create mode 100644 drivers/mfd/cs40l50-i2c.c
 create mode 100644 drivers/mfd/cs40l50-spi.c
 create mode 100644 include/linux/mfd/cs40l50.h

diff --git a/MAINTAINERS b/MAINTAINERS
index b71017a187f8..69a9e0a3b968 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4940,6 +4940,8 @@ M:	Ben Bright <ben.bright@cirrus.com>
 L:	patches@opensource.cirrus.com
 S:	Supported
 F:	Documentation/devicetree/bindings/input/cirrus,cs40l50.yaml
+F:	drivers/mfd/cs40l*
+F:	include/linux/mfd/cs40l*
 
 CIRRUS LOGIC DSP FIRMWARE DRIVER
 M:	Simon Trimmer <simont@opensource.cirrus.com>
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 90ce58fd629e..5efab06a9a50 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -237,6 +237,36 @@ config MFD_CROS_EC_DEV
 	  To compile this driver as a module, choose M here: the module will be
 	  called cros-ec-dev.
 
+config MFD_CS40L50_CORE
+	tristate
+	select MFD_CORE
+	select FW_CS_DSP
+	select REGMAP_IRQ
+
+config MFD_CS40L50_I2C
+	tristate "Cirrus Logic CS40L50 (I2C)"
+	select REGMAP_I2C
+	select MFD_CS40L50_CORE
+	depends on I2C
+	help
+	  Select this to support the Cirrus Logic CS40L50 Haptic
+	  Driver over I2C.
+
+	  This driver can be built as a module. If built as a module it will be
+	  called "cs40l50-i2c".
+
+config MFD_CS40L50_SPI
+	tristate "Cirrus Logic CS40L50 (SPI)"
+	select REGMAP_SPI
+	select MFD_CS40L50_CORE
+	depends on SPI
+	help
+	  Select this to support the Cirrus Logic CS40L50 Haptic
+	  Driver over SPI.
+
+	  This driver can be built as a module. If built as a module it will be
+	  called "cs40l50-spi".
+
 config MFD_CS42L43
 	tristate
 	select MFD_CORE
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index c66f07edcd0e..a7a0e50d83c3 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -13,6 +13,9 @@ obj-$(CONFIG_ARCH_BCM2835)	+= bcm2835-pm.o
 obj-$(CONFIG_MFD_BCM590XX)	+= bcm590xx.o
 obj-$(CONFIG_MFD_BD9571MWV)	+= bd9571mwv.o
 obj-$(CONFIG_MFD_CROS_EC_DEV)	+= cros_ec_dev.o
+obj-$(CONFIG_MFD_CS40L50_CORE)	+= cs40l50-core.o
+obj-$(CONFIG_MFD_CS40L50_I2C)	+= cs40l50-i2c.o
+obj-$(CONFIG_MFD_CS40L50_SPI)	+= cs40l50-spi.o
 obj-$(CONFIG_MFD_CS42L43)	+= cs42l43.o
 obj-$(CONFIG_MFD_CS42L43_I2C)	+= cs42l43-i2c.o
 obj-$(CONFIG_MFD_CS42L43_SDW)	+= cs42l43-sdw.o
diff --git a/drivers/mfd/cs40l50-core.c b/drivers/mfd/cs40l50-core.c
new file mode 100644
index 000000000000..22c16a273b7c
--- /dev/null
+++ b/drivers/mfd/cs40l50-core.c
@@ -0,0 +1,537 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * CS40L50 Advanced Haptic Driver with waveform memory,
+ * integrated DSP, and closed-loop algorithms
+ *
+ * Copyright 2024 Cirrus Logic, Inc.
+ *
+ * Author: James Ogletree <james.ogletree@cirrus.com>
+ */
+
+#include <linux/firmware/cirrus/cs_dsp.h>
+#include <linux/firmware/cirrus/wmfw.h>
+#include <linux/mfd/core.h>
+#include <linux/mfd/cs40l50.h>
+#include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
+
+static const struct mfd_cell cs40l50_devs[] = {
+	{ .name = "cs40l50-codec", },
+	{ .name = "cs40l50-vibra", },
+};
+
+const struct regmap_config cs40l50_regmap = {
+	.reg_bits =		32,
+	.reg_stride =		4,
+	.val_bits =		32,
+	.reg_format_endian =	REGMAP_ENDIAN_BIG,
+	.val_format_endian =	REGMAP_ENDIAN_BIG,
+};
+EXPORT_SYMBOL_GPL(cs40l50_regmap);
+
+static const char * const cs40l50_supplies[] = {
+	"vp", "vio",
+};
+
+static const struct regmap_irq cs40l50_reg_irqs[] = {
+	REGMAP_IRQ_REG(CS40L50_DSP_QUEUE_IRQ, CS40L50_IRQ1_INT_2_OFFSET,
+		       CS40L50_DSP_QUEUE_MASK),
+	REGMAP_IRQ_REG(CS40L50_AMP_SHORT_IRQ, CS40L50_IRQ1_INT_1_OFFSET,
+		       CS40L50_AMP_SHORT_MASK),
+	REGMAP_IRQ_REG(CS40L50_TEMP_ERR_IRQ, CS40L50_IRQ1_INT_8_OFFSET,
+		       CS40L50_TEMP_ERR_MASK),
+	REGMAP_IRQ_REG(CS40L50_BST_UVP_IRQ, CS40L50_IRQ1_INT_9_OFFSET,
+		       CS40L50_BST_UVP_MASK),
+	REGMAP_IRQ_REG(CS40L50_BST_SHORT_IRQ, CS40L50_IRQ1_INT_9_OFFSET,
+		       CS40L50_BST_SHORT_MASK),
+	REGMAP_IRQ_REG(CS40L50_BST_ILIMIT_IRQ, CS40L50_IRQ1_INT_9_OFFSET,
+		       CS40L50_BST_ILIMIT_MASK),
+	REGMAP_IRQ_REG(CS40L50_UVLO_VDDBATT_IRQ, CS40L50_IRQ1_INT_10_OFFSET,
+		       CS40L50_UVLO_VDDBATT_MASK),
+	REGMAP_IRQ_REG(CS40L50_GLOBAL_ERROR_IRQ, CS40L50_IRQ1_INT_18_OFFSET,
+		       CS40L50_GLOBAL_ERROR_MASK),
+};
+
+static struct regmap_irq_chip cs40l50_irq_chip = {
+	.name =		"CS40L50 IRQ Controller",
+
+	.status_base =	CS40L50_IRQ1_INT_1,
+	.mask_base =	CS40L50_IRQ1_MASK_1,
+	.ack_base =	CS40L50_IRQ1_INT_1,
+	.num_regs =	22,
+
+	.irqs =		cs40l50_reg_irqs,
+	.num_irqs =	ARRAY_SIZE(cs40l50_reg_irqs),
+
+	.runtime_pm =	true,
+};
+
+int cs40l50_dsp_write(struct device *dev, struct regmap *regmap, u32 val)
+{
+	int err, i;
+	u32 ack;
+
+	/* Device NAKs if exiting hibernation, so optionally retry here */
+	for (i = 0; i < CS40L50_DSP_TIMEOUT_COUNT; i++) {
+		err = regmap_write(regmap, CS40L50_DSP_QUEUE, val);
+		if (!err)
+			break;
+
+		usleep_range(CS40L50_DSP_POLL_US, CS40L50_DSP_POLL_US + 100);
+	}
+
+	/* If we never wrote, don't bother checking for ACK */
+	if (i == CS40L50_DSP_TIMEOUT_COUNT) {
+		dev_err(dev, "Timed out writing %#X to DSP: %d\n", val, err);
+		return err;
+	}
+
+	err = regmap_read_poll_timeout(regmap, CS40L50_DSP_QUEUE, ack, !ack,
+				       CS40L50_DSP_POLL_US,
+				       CS40L50_DSP_POLL_US * CS40L50_DSP_TIMEOUT_COUNT);
+	if (err)
+		dev_err(dev, "DSP did not ack %#X: %d\n", val, err);
+
+	return err;
+}
+EXPORT_SYMBOL_GPL(cs40l50_dsp_write);
+
+static const struct cs_dsp_region cs40l50_dsp_regions[] = {
+	{ .type = WMFW_HALO_PM_PACKED, .base = CS40L50_PMEM_0 },
+	{ .type = WMFW_HALO_XM_PACKED, .base = CS40L50_XMEM_PACKED_0 },
+	{ .type = WMFW_HALO_YM_PACKED, .base = CS40L50_YMEM_PACKED_0 },
+	{ .type = WMFW_ADSP2_XM, .base = CS40L50_XMEM_UNPACKED24_0 },
+	{ .type = WMFW_ADSP2_YM, .base = CS40L50_YMEM_UNPACKED24_0 },
+};
+
+static void cs40l50_dsp_remove(void *data)
+{
+	cs_dsp_remove((struct cs_dsp *)data);
+}
+
+static const struct cs_dsp_client_ops cs40l50_client_ops;
+
+static int cs40l50_dsp_init(struct cs40l50 *cs40l50)
+{
+	int err;
+
+	cs40l50->dsp.num = 1;
+	cs40l50->dsp.type = WMFW_HALO;
+	cs40l50->dsp.dev = cs40l50->dev;
+	cs40l50->dsp.regmap = cs40l50->regmap;
+	cs40l50->dsp.base = CS40L50_CORE_BASE;
+	cs40l50->dsp.base_sysinfo = CS40L50_SYS_INFO_ID;
+	cs40l50->dsp.mem = cs40l50_dsp_regions;
+	cs40l50->dsp.num_mems = ARRAY_SIZE(cs40l50_dsp_regions);
+	cs40l50->dsp.no_core_startstop = true;
+	cs40l50->dsp.client_ops = &cs40l50_client_ops;
+
+	err = cs_dsp_halo_init(&cs40l50->dsp);
+	if (err)
+		return err;
+
+	return devm_add_action_or_reset(cs40l50->dev, cs40l50_dsp_remove,
+					&cs40l50->dsp);
+}
+
+struct cs40l50_irq {
+	const char *name;
+	int virq;
+};
+
+static struct cs40l50_irq cs40l50_irqs[] = {
+	{ "DSP", },
+	{ "Global", },
+	{ "Boost UVLO", },
+	{ "Boost current limit", },
+	{ "Boost short", },
+	{ "Boost undervolt", },
+	{ "Overtemp", },
+	{ "Amp short", },
+};
+
+static const struct reg_sequence cs40l50_err_rls[] = {
+	{ CS40L50_ERR_RLS, CS40L50_GLOBAL_ERR_RLS_SET },
+	{ CS40L50_ERR_RLS, CS40L50_GLOBAL_ERR_RLS_CLEAR },
+};
+
+static irqreturn_t cs40l50_hw_err(int irq, void *data)
+{
+	struct cs40l50 *cs40l50 = data;
+	int err = 0, i;
+
+	mutex_lock(&cs40l50->lock);
+
+	/* Log hardware interrupt and execute error release sequence */
+	for (i = 1; i < ARRAY_SIZE(cs40l50_irqs); i++) {
+		if (cs40l50_irqs[i].virq == irq) {
+			dev_err(cs40l50->dev, "%s error\n", cs40l50_irqs[i].name);
+			err = regmap_multi_reg_write(cs40l50->regmap, cs40l50_err_rls,
+						     ARRAY_SIZE(cs40l50_err_rls));
+			goto exit;
+		}
+	}
+exit:
+	mutex_unlock(&cs40l50->lock);
+	return IRQ_RETVAL(!err);
+}
+
+static irqreturn_t cs40l50_dsp_queue(int irq, void *data)
+{
+	struct cs40l50 *cs40l50 = data;
+	u32 rd_ptr, val, wt_ptr;
+	int err = 0;
+
+	mutex_lock(&cs40l50->lock);
+
+	/* Read from DSP queue and update read pointer */
+	while (!err) {
+		err = regmap_read(cs40l50->regmap, CS40L50_DSP_QUEUE_WT, &wt_ptr);
+		if (err)
+			goto exit;
+
+		err = regmap_read(cs40l50->regmap, CS40L50_DSP_QUEUE_RD, &rd_ptr);
+		if (err)
+			goto exit;
+
+		/* Check if queue is empty */
+		if (wt_ptr == rd_ptr)
+			goto exit;
+
+		err = regmap_read(cs40l50->regmap, rd_ptr, &val);
+		if (err)
+			goto exit;
+
+		dev_dbg(cs40l50->dev, "DSP payload: %#X", val);
+
+		rd_ptr += sizeof(u32);
+
+		if (rd_ptr > CS40L50_DSP_QUEUE_END)
+			rd_ptr = CS40L50_DSP_QUEUE_BASE;
+
+		err =  regmap_write(cs40l50->regmap, CS40L50_DSP_QUEUE_RD, rd_ptr);
+		if (err)
+			goto exit;
+	}
+exit:
+	mutex_unlock(&cs40l50->lock);
+
+	return IRQ_RETVAL(!err);
+}
+
+static int cs40l50_irq_init(struct cs40l50 *cs40l50)
+{
+	struct device *dev = cs40l50->dev;
+	int err, i, virq;
+
+	err = devm_regmap_add_irq_chip(dev, cs40l50->regmap, cs40l50->irq,
+				       IRQF_ONESHOT | IRQF_SHARED, 0,
+				       &cs40l50_irq_chip, &cs40l50->irq_data);
+	if (err) {
+		dev_err(dev, "Failed adding IRQ chip\n");
+		return err;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(cs40l50_irqs); i++) {
+		virq = regmap_irq_get_virq(cs40l50->irq_data, i);
+		if (virq < 0) {
+			dev_err(dev, "Failed getting %s\n", cs40l50_irqs[i].name);
+			return virq;
+		}
+
+		cs40l50_irqs[i].virq = virq;
+
+		/* Handle DSP and non-DSP interrupts separately */
+		err = devm_request_threaded_irq(dev, virq, NULL,
+						i ? cs40l50_hw_err : cs40l50_dsp_queue,
+						IRQF_ONESHOT | IRQF_SHARED,
+						cs40l50_irqs[i].name, cs40l50);
+		if (err) {
+			dev_err(dev, "Failed requesting %s IRQ\n", cs40l50_irqs[i].name);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+static const struct reg_sequence cs40l50_stop_core[] = {
+	{ CS40L50_CCM_CORE_CONTROL,	CS40L50_CLOCK_DISABLE},
+	{ CS40L50_RAM_INIT,		CS40L50_RAM_INIT_FLAG},
+	{ CS40L50_PWRMGT_CTL,		CS40L50_MEM_RDY_HW},
+};
+
+static const struct reg_sequence cs40l50_internal_vamp_config[] = {
+	{ CS40L50_BST_LPMODE_SEL,	CS40L50_DCM_LOW_POWER },
+	{ CS40L50_BLOCK_ENABLES2,	CS40L50_OVERTEMP_WARN },
+};
+
+static const struct reg_sequence cs40l50_irq_mask_override[] = {
+	{ CS40L50_IRQ1_MASK_2,	CS40L50_IRQ_MASK_2_OVERRIDE },
+	{ CS40L50_IRQ1_MASK_20,	CS40L50_IRQ_MASK_20_OVERRIDE },
+};
+
+static void cs40l50_dsp_power_down(void *data)
+{
+	cs_dsp_power_down((struct cs_dsp *)data);
+}
+
+static int cs40l50_power_up_dsp(struct cs40l50 *cs40l50)
+{
+	int err;
+
+	mutex_lock(&cs40l50->lock);
+
+	/* Stop and resume core to load patch file */
+	err = regmap_multi_reg_write(cs40l50->regmap, cs40l50_stop_core,
+				     ARRAY_SIZE(cs40l50_stop_core));
+	if (err)
+		goto err_mutex;
+
+	err = cs_dsp_power_up(&cs40l50->dsp, cs40l50->patch, "cs40l50.wmfw",
+			      cs40l50->bin, "cs40l50.bin", "cs40l50");
+	if (err)
+		goto err_mutex;
+
+	err = devm_add_action_or_reset(cs40l50->dev, cs40l50_dsp_power_down,
+				       &cs40l50->dsp);
+	if (err)
+		goto err_mutex;
+
+	err = regmap_write(cs40l50->regmap, CS40L50_CCM_CORE_CONTROL,
+			   CS40L50_CLOCK_ENABLE);
+
+err_mutex:
+	mutex_unlock(&cs40l50->lock);
+
+	return err;
+}
+
+static struct cs_dsp_wseq cs40l50_wseqs[] = {
+	{ "PM_PWR_ON_SEQ" },
+};
+
+static int cs40l50_configure_dsp(struct cs40l50 *cs40l50)
+{
+	u32 nwaves;
+	int err, i;
+
+	if (cs40l50->bin) {
+		/* Log number of effects if wavetable was loaded */
+		err = regmap_read(cs40l50->regmap, CS40L50_NUM_WAVES, &nwaves);
+		if (err)
+			return err;
+
+		dev_info(cs40l50->dev, "Loaded with %u effects\n", nwaves);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(cs40l50_wseqs); i++) {
+		mutex_lock(&cs40l50->dsp.pwr_lock);
+		cs40l50_wseqs[i].ctl = cs_dsp_get_ctl(&cs40l50->dsp,
+						      cs40l50_wseqs[i].name,
+						      WMFW_ADSP2_XM,
+						      CS40L50_PM_ALGO_ID);
+		mutex_unlock(&cs40l50->dsp.pwr_lock);
+		if (!cs40l50_wseqs[i].ctl) {
+			dev_err(cs40l50->dev, "No control: %s\n", cs40l50_wseqs[i].name);
+			return -ENOENT;
+		}
+	}
+
+	err = cs_dsp_wseq_init(&cs40l50->dsp, cs40l50_wseqs,
+			       ARRAY_SIZE(cs40l50_wseqs));
+	if (err) {
+		dev_err(cs40l50->dev, "Failed to initialize write sequences\n");
+		return err;
+	}
+
+	/* Use internal V_AMP supply */
+	err = regmap_multi_reg_write(cs40l50->regmap, cs40l50_internal_vamp_config,
+				     ARRAY_SIZE(cs40l50_internal_vamp_config));
+	if (err)
+		return err;
+
+	err = cs_dsp_wseq_multi_write(&cs40l50->dsp, &cs40l50_wseqs[0],
+				      cs40l50_internal_vamp_config, CS_DSP_WSEQ_FULL,
+				      ARRAY_SIZE(cs40l50_internal_vamp_config), false);
+	if (err)
+		return err;
+
+	/* Override firmware defaults for IRQ masks */
+	err = regmap_multi_reg_write(cs40l50->regmap, cs40l50_irq_mask_override,
+				     ARRAY_SIZE(cs40l50_irq_mask_override));
+	if (err)
+		return err;
+
+	return cs_dsp_wseq_multi_write(&cs40l50->dsp, &cs40l50_wseqs[0],
+				       cs40l50_irq_mask_override, CS_DSP_WSEQ_FULL,
+				       ARRAY_SIZE(cs40l50_irq_mask_override), false);
+}
+
+static void cs40l50_start_dsp(const struct firmware *bin, void *context)
+{
+	struct cs40l50 *cs40l50 = context;
+	int err;
+
+	/* Wavetable is optional; power up DSP regardless */
+	cs40l50->bin = bin;
+
+	err = cs40l50_power_up_dsp(cs40l50);
+	if (err) {
+		dev_err(cs40l50->dev, "Failed to power up DSP: %d\n", err);
+		goto err_fw;
+	}
+
+	err = cs40l50_configure_dsp(cs40l50);
+	if (err)
+		dev_err(cs40l50->dev, "Failed to configure DSP: %d\n", err);
+
+	err = devm_mfd_add_devices(cs40l50->dev, PLATFORM_DEVID_NONE, cs40l50_devs,
+				   ARRAY_SIZE(cs40l50_devs), NULL, 0, NULL);
+	if (err)
+		dev_err(cs40l50->dev, "Failed to add sub devices: %d\n", err);
+
+err_fw:
+	release_firmware(cs40l50->bin);
+	release_firmware(cs40l50->patch);
+}
+
+static void cs40l50_request_patch(const struct firmware *patch, void *context)
+{
+	struct cs40l50 *cs40l50 = context;
+
+	if (!patch) {
+		dev_err(cs40l50->dev, "Failed to request patch file\n");
+		return;
+	}
+
+	cs40l50->patch = patch;
+
+	if (request_firmware_nowait(THIS_MODULE, FW_ACTION_UEVENT, CS40L50_WT,
+				    cs40l50->dev, GFP_KERNEL, cs40l50,
+				    cs40l50_start_dsp)) {
+		dev_err(cs40l50->dev, "Failed to request %s\n", CS40L50_WT);
+		release_firmware(cs40l50->patch);
+	}
+}
+
+static int cs40l50_get_model(struct cs40l50 *cs40l50)
+{
+	int err;
+
+	err = regmap_read(cs40l50->regmap, CS40L50_DEVID, &cs40l50->devid);
+	if (err)
+		return err;
+
+	if (cs40l50->devid != CS40L50_DEVID_A)
+		return -EINVAL;
+
+	err = regmap_read(cs40l50->regmap, CS40L50_REVID, &cs40l50->revid);
+	if (err)
+		return err;
+
+	if (cs40l50->revid < CS40L50_REVID_B0)
+		return -EINVAL;
+
+	dev_info(cs40l50->dev, "Cirrus Logic CS40L50 rev. %02X\n", cs40l50->revid);
+
+	return 0;
+}
+
+static int cs40l50_pm_runtime_setup(struct device *dev)
+{
+	int err;
+
+	pm_runtime_set_autosuspend_delay(dev, CS40L50_AUTOSUSPEND_MS);
+	pm_runtime_use_autosuspend(dev);
+	pm_runtime_get_noresume(dev);
+	err = pm_runtime_set_active(dev);
+	if (err)
+		return err;
+
+	return devm_pm_runtime_enable(dev);
+}
+
+int cs40l50_probe(struct cs40l50 *cs40l50)
+{
+	struct device *dev = cs40l50->dev;
+	int err;
+
+	mutex_init(&cs40l50->lock);
+
+	cs40l50->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(cs40l50->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(cs40l50->reset_gpio),
+				     "Failed getting reset GPIO\n");
+
+	err = devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(cs40l50_supplies),
+					     cs40l50_supplies);
+	if (err)
+		return dev_err_probe(dev, err, "Failed getting supplies\n");
+
+	/* Ensure minimum reset pulse width */
+	usleep_range(CS40L50_RESET_PULSE_US, CS40L50_RESET_PULSE_US + 100);
+
+	gpiod_set_value_cansleep(cs40l50->reset_gpio, 0);
+
+	/* Wait for control port to be ready */
+	usleep_range(CS40L50_CP_READY_US, CS40L50_CP_READY_US + 100);
+
+	err = cs40l50_dsp_init(cs40l50);
+	if (err)
+		return dev_err_probe(dev, err, "Failed to initialize DSP\n");
+
+	err = cs40l50_pm_runtime_setup(dev);
+	if (err)
+		return dev_err_probe(dev, err, "Failed to initialize runtime PM\n");
+
+	err = cs40l50_get_model(cs40l50);
+	if (err)
+		return dev_err_probe(dev, err, "Failed to get part number\n");
+
+	err = cs40l50_irq_init(cs40l50);
+	if (err)
+		return dev_err_probe(dev, err, "Failed to request IRQs\n");
+
+	err = request_firmware_nowait(THIS_MODULE, FW_ACTION_UEVENT, CS40L50_FW,
+				      dev, GFP_KERNEL, cs40l50, cs40l50_request_patch);
+	if (err)
+		return dev_err_probe(dev, err, "Failed to request %s\n", CS40L50_FW);
+
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_autosuspend(dev);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(cs40l50_probe);
+
+int cs40l50_remove(struct cs40l50 *cs40l50)
+{
+	gpiod_set_value_cansleep(cs40l50->reset_gpio, 1);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(cs40l50_remove);
+
+static int cs40l50_runtime_suspend(struct device *dev)
+{
+	struct cs40l50 *cs40l50 = dev_get_drvdata(dev);
+
+	return regmap_write(cs40l50->regmap, CS40L50_DSP_QUEUE, CS40L50_ALLOW_HIBER);
+}
+
+static int cs40l50_runtime_resume(struct device *dev)
+{
+	struct cs40l50 *cs40l50 = dev_get_drvdata(dev);
+
+	return cs40l50_dsp_write(dev, cs40l50->regmap, CS40L50_PREVENT_HIBER);
+}
+
+EXPORT_GPL_DEV_PM_OPS(cs40l50_pm_ops) = {
+	RUNTIME_PM_OPS(cs40l50_runtime_suspend, cs40l50_runtime_resume, NULL)
+};
+
+MODULE_DESCRIPTION("CS40L50 Advanced Haptic Driver");
+MODULE_AUTHOR("James Ogletree, Cirrus Logic Inc. <james.ogletree@cirrus.com>");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS(FW_CS_DSP);
diff --git a/drivers/mfd/cs40l50-i2c.c b/drivers/mfd/cs40l50-i2c.c
new file mode 100644
index 000000000000..e18938dbddaa
--- /dev/null
+++ b/drivers/mfd/cs40l50-i2c.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * CS40L50 Advanced Haptic Driver with waveform memory,
+ * integrated DSP, and closed-loop algorithms
+ *
+ * Copyright 2024 Cirrus Logic, Inc.
+ *
+ * Author: James Ogletree <james.ogletree@cirrus.com>
+ */
+
+#include <linux/i2c.h>
+#include <linux/mfd/cs40l50.h>
+
+static int cs40l50_i2c_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct cs40l50 *cs40l50;
+
+	cs40l50 = devm_kzalloc(dev, sizeof(*cs40l50), GFP_KERNEL);
+	if (!cs40l50)
+		return -ENOMEM;
+
+	i2c_set_clientdata(client, cs40l50);
+
+	cs40l50->regmap = devm_regmap_init_i2c(client, &cs40l50_regmap);
+	if (IS_ERR(cs40l50->regmap))
+		return dev_err_probe(cs40l50->dev, PTR_ERR(cs40l50->regmap),
+				     "Failed to initialize register map\n");
+
+	cs40l50->dev = dev;
+	cs40l50->irq = client->irq;
+
+	return cs40l50_probe(cs40l50);
+}
+
+static void cs40l50_i2c_remove(struct i2c_client *client)
+{
+	struct cs40l50 *cs40l50 = i2c_get_clientdata(client);
+
+	cs40l50_remove(cs40l50);
+}
+
+static const struct i2c_device_id cs40l50_id_i2c[] = {
+	{"cs40l50"},
+	{}
+};
+MODULE_DEVICE_TABLE(i2c, cs40l50_id_i2c);
+
+static const struct of_device_id cs40l50_of_match[] = {
+	{ .compatible = "cirrus,cs40l50" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, cs40l50_of_match);
+
+static struct i2c_driver cs40l50_i2c_driver = {
+	.driver = {
+		.name = "cs40l50",
+		.of_match_table = cs40l50_of_match,
+		.pm = pm_ptr(&cs40l50_pm_ops),
+	},
+	.id_table = cs40l50_id_i2c,
+	.probe = cs40l50_i2c_probe,
+	.remove = cs40l50_i2c_remove,
+};
+module_i2c_driver(cs40l50_i2c_driver);
+
+MODULE_DESCRIPTION("CS40L50 I2C Driver");
+MODULE_AUTHOR("James Ogletree, Cirrus Logic Inc. <james.ogletree@cirrus.com>");
+MODULE_LICENSE("GPL");
diff --git a/drivers/mfd/cs40l50-spi.c b/drivers/mfd/cs40l50-spi.c
new file mode 100644
index 000000000000..9e18bb74eae0
--- /dev/null
+++ b/drivers/mfd/cs40l50-spi.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * CS40L50 Advanced Haptic Driver with waveform memory,
+ * integrated DSP, and closed-loop algorithms
+ *
+ * Copyright 2024 Cirrus Logic, Inc.
+ *
+ * Author: James Ogletree <james.ogletree@cirrus.com>
+ */
+
+#include <linux/mfd/cs40l50.h>
+#include <linux/spi/spi.h>
+
+static int cs40l50_spi_probe(struct spi_device *spi)
+{
+	struct cs40l50 *cs40l50;
+	struct device *dev = &spi->dev;
+
+	cs40l50 = devm_kzalloc(dev, sizeof(*cs40l50), GFP_KERNEL);
+	if (!cs40l50)
+		return -ENOMEM;
+
+	spi_set_drvdata(spi, cs40l50);
+
+	cs40l50->regmap = devm_regmap_init_spi(spi, &cs40l50_regmap);
+	if (IS_ERR(cs40l50->regmap))
+		return dev_err_probe(cs40l50->dev, PTR_ERR(cs40l50->regmap),
+				     "Failed to initialize register map\n");
+
+	cs40l50->dev = dev;
+	cs40l50->irq = spi->irq;
+
+	return cs40l50_probe(cs40l50);
+}
+
+static void cs40l50_spi_remove(struct spi_device *spi)
+{
+	struct cs40l50 *cs40l50 = spi_get_drvdata(spi);
+
+	cs40l50_remove(cs40l50);
+}
+
+static const struct spi_device_id cs40l50_id_spi[] = {
+	{"cs40l50"},
+	{}
+};
+MODULE_DEVICE_TABLE(spi, cs40l50_id_spi);
+
+static const struct of_device_id cs40l50_of_match[] = {
+	{ .compatible = "cirrus,cs40l50" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, cs40l50_of_match);
+
+static struct spi_driver cs40l50_spi_driver = {
+	.driver = {
+		.name = "cs40l50",
+		.of_match_table = cs40l50_of_match,
+		.pm = pm_ptr(&cs40l50_pm_ops),
+	},
+	.id_table = cs40l50_id_spi,
+	.probe = cs40l50_spi_probe,
+	.remove = cs40l50_spi_remove,
+};
+module_spi_driver(cs40l50_spi_driver);
+
+MODULE_DESCRIPTION("CS40L50 SPI Driver");
+MODULE_AUTHOR("James Ogletree, Cirrus Logic Inc. <james.ogletree@cirrus.com>");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/mfd/cs40l50.h b/include/linux/mfd/cs40l50.h
new file mode 100644
index 000000000000..0e6240df6d1c
--- /dev/null
+++ b/include/linux/mfd/cs40l50.h
@@ -0,0 +1,134 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * CS40L50 Advanced Haptic Driver with waveform memory,
+ * integrated DSP, and closed-loop algorithms
+ *
+ * Copyright 2024 Cirrus Logic, Inc.
+ *
+ * Author: James Ogletree <james.ogletree@cirrus.com>
+ */
+
+#ifndef __CS40L50_H__
+#define __CS40L50_H__
+
+#include <linux/firmware/cirrus/cs_dsp.h>
+#include <linux/gpio/consumer.h>
+#include <linux/pm.h>
+#include <linux/regmap.h>
+
+/* Power Supply Configuration */
+#define CS40L50_BLOCK_ENABLES2		0x201C
+#define CS40L50_ERR_RLS			0x2034
+#define CS40L50_PWRMGT_CTL		0x2900
+#define CS40L50_BST_LPMODE_SEL		0x3810
+#define CS40L50_DCM_LOW_POWER		0x1
+#define CS40L50_OVERTEMP_WARN		0x4000010
+
+/* Interrupts */
+#define CS40L50_IRQ1_INT_1		0xE010
+#define CS40L50_IRQ1_BASE		CS40L50_IRQ1_INT_1
+#define CS40L50_IRQ1_INT_2		0xE014
+#define CS40L50_IRQ1_INT_8		0xE02C
+#define CS40L50_IRQ1_INT_9		0xE030
+#define CS40L50_IRQ1_INT_10		0xE034
+#define CS40L50_IRQ1_INT_18		0xE054
+#define CS40L50_IRQ1_MASK_1		0xE090
+#define CS40L50_IRQ1_MASK_2		0xE094
+#define CS40L50_IRQ1_MASK_20		0xE0DC
+#define CS40L50_IRQ1_INT_1_OFFSET	(CS40L50_IRQ1_INT_1 - CS40L50_IRQ1_BASE)
+#define CS40L50_IRQ1_INT_2_OFFSET	(CS40L50_IRQ1_INT_2 - CS40L50_IRQ1_BASE)
+#define CS40L50_IRQ1_INT_8_OFFSET	(CS40L50_IRQ1_INT_8 - CS40L50_IRQ1_BASE)
+#define CS40L50_IRQ1_INT_9_OFFSET	(CS40L50_IRQ1_INT_9 - CS40L50_IRQ1_BASE)
+#define CS40L50_IRQ1_INT_10_OFFSET	(CS40L50_IRQ1_INT_10 - CS40L50_IRQ1_BASE)
+#define CS40L50_IRQ1_INT_18_OFFSET	(CS40L50_IRQ1_INT_18 - CS40L50_IRQ1_BASE)
+#define CS40L50_IRQ_MASK_2_OVERRIDE	0xFFDF7FFF
+#define CS40L50_IRQ_MASK_20_OVERRIDE	0x15C01000
+#define CS40L50_AMP_SHORT_MASK		BIT(31)
+#define CS40L50_DSP_QUEUE_MASK		BIT(21)
+#define CS40L50_TEMP_ERR_MASK		BIT(31)
+#define CS40L50_BST_UVP_MASK		BIT(6)
+#define CS40L50_BST_SHORT_MASK		BIT(7)
+#define CS40L50_BST_ILIMIT_MASK		BIT(18)
+#define CS40L50_UVLO_VDDBATT_MASK	BIT(16)
+#define CS40L50_GLOBAL_ERROR_MASK	BIT(15)
+
+enum cs40l50_irq_list {
+	CS40L50_DSP_QUEUE_IRQ,
+	CS40L50_GLOBAL_ERROR_IRQ,
+	CS40L50_UVLO_VDDBATT_IRQ,
+	CS40L50_BST_ILIMIT_IRQ,
+	CS40L50_BST_SHORT_IRQ,
+	CS40L50_BST_UVP_IRQ,
+	CS40L50_TEMP_ERR_IRQ,
+	CS40L50_AMP_SHORT_IRQ,
+};
+
+/* DSP */
+#define CS40L50_XMEM_PACKED_0		0x2000000
+#define CS40L50_XMEM_UNPACKED24_0	0x2800000
+#define CS40L50_SYS_INFO_ID		0x25E0000
+#define CS40L50_RAM_INIT		0x28021DC
+#define CS40L50_DSP_QUEUE_WT		0x28042C8
+#define CS40L50_DSP_QUEUE_RD		0x28042CC
+#define CS40L50_NUM_WAVES		0x2805C18
+#define CS40L50_CORE_BASE		0x2B80000
+#define CS40L50_CCM_CORE_CONTROL	0x2BC1000
+#define CS40L50_YMEM_PACKED_0		0x2C00000
+#define CS40L50_YMEM_UNPACKED24_0	0x3400000
+#define CS40L50_PMEM_0			0x3800000
+#define CS40L50_MEM_RDY_HW		0x2
+#define CS40L50_RAM_INIT_FLAG		0x1
+#define CS40L50_CLOCK_DISABLE		0x80
+#define CS40L50_CLOCK_ENABLE		0x281
+#define CS40L50_DSP_POLL_US		1000
+#define CS40L50_DSP_TIMEOUT_COUNT	100
+#define CS40L50_RESET_PULSE_US		2200
+#define CS40L50_CP_READY_US		3100
+#define CS40L50_AUTOSUSPEND_MS		2000
+#define CS40L50_PM_ALGO_ID		0x9F206
+#define CS40L50_GLOBAL_ERR_RLS_SET	BIT(11)
+#define CS40L50_GLOBAL_ERR_RLS_CLEAR	0
+
+/* DSP Commands */
+#define CS40L50_DSP_QUEUE_BASE		0x11004
+#define CS40L50_DSP_QUEUE_END		0x1101C
+#define CS40L50_DSP_QUEUE		0x11020
+#define CS40L50_PREVENT_HIBER		0x2000003
+#define CS40L50_ALLOW_HIBER		0x2000004
+#define CS40L50_START_I2S		0x3000002
+#define CS40L50_OWT_PUSH		0x3000008
+#define CS40L50_STOP_PLAYBACK		0x5000000
+#define CS40L50_OWT_DELETE		0xD000000
+
+/* Firmware files */
+#define CS40L50_FW			"cs40l50.wmfw"
+#define CS40L50_WT			"cs40l50.bin"
+
+/* Device */
+#define CS40L50_DEVID			0x0
+#define CS40L50_REVID			0x4
+#define CS40L50_DEVID_A			0x40A50
+#define CS40L50_REVID_B0		0xB0
+
+struct cs40l50 {
+	struct device *dev;
+	struct regmap *regmap;
+	struct mutex lock;
+	struct cs_dsp dsp;
+	struct gpio_desc *reset_gpio;
+	struct regmap_irq_chip_data *irq_data;
+	const struct firmware *patch;
+	const struct firmware *bin;
+	int irq;
+	u32 devid;
+	u32 revid;
+};
+
+int cs40l50_dsp_write(struct device *dev, struct regmap *regmap, u32 val);
+int cs40l50_probe(struct cs40l50 *cs40l50);
+int cs40l50_remove(struct cs40l50 *cs40l50);
+
+extern const struct regmap_config cs40l50_regmap;
+extern const struct dev_pm_ops cs40l50_pm_ops;
+
+#endif /* __CS40L50_H__ */
-- 
2.25.1


