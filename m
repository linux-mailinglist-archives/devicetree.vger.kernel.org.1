Return-Path: <devicetree+bounces-259656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id nlaAMZXXd2k5mAEAu9opvQ
	(envelope-from <devicetree+bounces-259656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:07:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A7F8D832
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 22:07:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6C90530054E9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4511A2DECC5;
	Mon, 26 Jan 2026 21:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="HtoD1R4y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365D02DE6EF
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 21:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769461646; cv=none; b=XzbSuQeV+CNk7ewdds60y4EwFJXpRMjIgWm6w7UuQK2e4mXcaOpHgDfq7AiUG7lKtZc7A4zygzaSIFAW6yWeZtczhTqXfmEm3gvespjFbAfF1QW33s08MuB4C85HMYEE+UtPOWgs49hNVDru1zmz7sdRJ4D+XtMIxZJfxP3fkeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769461646; c=relaxed/simple;
	bh=MAiv0fduuWkme5u2DYpSYMKrpbzI/a1tGOAyMy7f51E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qkyHywT/HToGSUYfqnONZ6M/zSSeECO86nc3j+ijfhKFncs/vw675vKJjjBvWk7n55Waw4wGxmFL9UdwV26pW9dPgCNCFNvei63hw2dX3Jhx/3agenOraJ19IvuKx+hCmbr7rtHmLaHnsrw+1+M8nxk3LnkUeCJ2Kp/Whrbks/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=HtoD1R4y; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-6494a3d92f5so5303813d50.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769461643; x=1770066443; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZMMTz+zEnEaVc0tT9uLbJMYSdAwAyWPF8xhmiLxTpo=;
        b=HtoD1R4yvfiCWRSYPFP8jUrgjzgyNUALHESJJdiR0jhRgjCQNnM0U6bUwLrKn+qLZ1
         LhDnkVxkBgxzrscZM+XUsO3tGdWVhiUUP5tAVBE5GsnzfLDEloQfrXeFSLw7KXKfxswl
         8tFpkFn3Jair4PYwybl4H/Y79lAnxXrDpb/vKTRgCf8Db1MVZbQnWpvuDTalEBsKI2vs
         yrC1+AEQH52zqUbleR9XxPPp4zMHehVVZ1trkiRAifbck2hM3mK7799pTi2X4HGvOekk
         bSNu0FRgb/JYe2KzQZcwmlYNdZm/Zsov3ldIucWWWb6F6AnmYT97gT7tFy3ZZqrs25lg
         i+Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769461643; x=1770066443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UZMMTz+zEnEaVc0tT9uLbJMYSdAwAyWPF8xhmiLxTpo=;
        b=TPfx3IHi5a54sA7otr2EoACceuctsqA8TerGdpxy/xzrP64eMN+IFtyBtB6Qp2FcmE
         F1ZQG3kAvslOiWm71XAruurQ5LZxgCyzjh1iDhJ/c4dXtOGKRzrNTP6rob9zJA9Sq6h1
         vslAPVVKMT0BdPdRGjG0kmgL8mRDf4zufGHbCYASCMmNt2ifn+eYR4XrIR8GsVi6glNe
         6x3dE8FMILcrpOcCYKKEmFtqKWN13uz0dtZBwbEvVECbKlwAGy77/MOnT12zVem4YGpV
         aGZeM+GxTmUCUWTu8hVCN6Evuljtvm70nC7V5sS4hnmE22s2BUTNqZof4rFrtYi3FFWM
         yDDw==
X-Forwarded-Encrypted: i=1; AJvYcCUbhXcCp3B7z6k0vFN/fs9+nqVHKehlbU514v25jEiTL7Fv/u9NxhWfc1k0jUehErbXlbZuIzfDRF95@vger.kernel.org
X-Gm-Message-State: AOJu0YyjJfTmDMGrMOIJ2ZsHnoCJThyDlx3K3+vWbpi+pa7v+8AiwQra
	NVQc+e13fA0PHEk9eDnjb9VKGgdvCssiPKvBFPMl6Gyb2y+fXYSKBuMd4IGEUPwyXyo=
X-Gm-Gg: AZuq6aJGW1RMTG+FbawOKu2ggaE2mdbq8Z5ujZr709YWA5Utg0tBStYkF5y/d8JK9Mr
	jY6vW+uOFbiT9vQgqGSjkLM6OjTjT8gVU7C9xOOc8udEV1yngohExu9N226itmIuNktx/kwORjl
	EAY9RGAWQJ9kQge5ef1ku2ydNWBRyTdDqPk9Xh+yQb4s6SbezLfq/DvMeSHik4AgFxy2bAXRD6w
	IO/V0B6/462ZH5cxk0J6IWw/kBuJtLXOmIbL80lgb2WK49hy4rigoyuFPBk+Kod7bf//pWnCZqy
	b2u6CjKv34KBjY3oOhJG74FRXMQgjjhpT0GYI56wCTH99QKfMut96Zws70ujCKU+EJWJ9px8vu7
	mz5SlK3ui1YQbZW/v0jx3QjIe8yz7Yi54Dis9F3jiS0q0zE5lHSut2U5Kj/Z2VPMCV6YWIdFaJH
	8prFFcB4OBNCUNIIcgaj2jn9keWGgaGkDe2/H2KVNlHucowrfhttUg4Fz22yBdC9svRZQVSDk=
X-Received: by 2002:a05:690c:89:b0:78f:bcc1:88e0 with SMTP id 00721157ae682-7945a820e9amr44786607b3.1.1769461643213;
        Mon, 26 Jan 2026 13:07:23 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7944bed27casm37948757b3.7.2026.01.26.13.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 13:07:22 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Mon, 26 Jan 2026 15:07:15 -0600
Subject: [PATCH v3 2/3] reset: tenstorrent: Add reset controller for
 Atlantis
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-atlantis-clocks-v3-2-b016135551b7@oss.tenstorrent.com>
References: <20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com>
In-Reply-To: <20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com>
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com, 
 bmasney@redhat.com
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	TAGGED_FROM(0.00)[bounces-259656-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DMARC_DNSFAIL(0.00)[tenstorrent.com : query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,tenstorrent.com:email,tenstorrent.com:dkim,oss.tenstorrent.com:mid]
X-Rspamd-Queue-Id: A7A7F8D832
X-Rspamd-Action: no action

Adds Atlantis Reset Controller and auxiliary device definitions for
reset to share same regmap interface as prcm (clock controller).

This version of the reset controller driver covers resets from the RCPU
prcm.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 MAINTAINERS                                |   2 +
 drivers/reset/Kconfig                      |  11 ++
 drivers/reset/Makefile                     |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c | 160 +++++++++++++++++++++++++++++
 include/soc/tenstorrent/atlantis-prcm.h    |  31 ++++++
 5 files changed, 205 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 0fc7bc6d0458..0cde1774567d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22537,7 +22537,9 @@ T:	git https://github.com/tenstorrent/linux.git
 F:	Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm.yaml
 F:	Documentation/devicetree/bindings/riscv/tenstorrent.yaml
 F:	arch/riscv/boot/dts/tenstorrent/
+F:	drivers/reset/reset-tenstorrent-atlantis.c
 F:	include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
+F:	include/soc/tenstorrent/
 
 RISC-V THEAD SoC SUPPORT
 M:	Drew Fustini <fustini@kernel.org>
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 6e5d6deffa7d..cade77717492 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -324,6 +324,17 @@ config RESET_SUNXI
 	help
 	  This enables the reset driver for Allwinner SoCs.
 
+config RESET_TENSTORRENT_ATLANTIS
+	tristate "Tenstorrent atlantis reset driver"
+	depends on ARCH_TENSTORRENT || COMPILE_TEST
+	select AUXILIARY_BUS
+	default ARCH_TENSTORRENT
+	help
+	  This enables the driver for the reset controller
+	  present in the Tenstorrent Atlantis SoC.
+	  Enable this option to be able to use hardware
+	  resets on Atalantis based systems.
+
 config RESET_TH1520
 	tristate "T-HEAD TH1520 reset controller"
 	depends on ARCH_THEAD || COMPILE_TEST
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 9c3e484dfd81..a31959da0a88 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -41,6 +41,7 @@ obj-$(CONFIG_RESET_SOCFPGA) += reset-socfpga.o
 obj-$(CONFIG_RESET_SPACEMIT) += reset-spacemit.o
 obj-$(CONFIG_RESET_SUNPLUS) += reset-sunplus.o
 obj-$(CONFIG_RESET_SUNXI) += reset-sunxi.o
+obj-$(CONFIG_RESET_TENSTORRENT_ATLANTIS) += reset-tenstorrent-atlantis.o
 obj-$(CONFIG_RESET_TH1520) += reset-th1520.o
 obj-$(CONFIG_RESET_TI_SCI) += reset-ti-sci.o
 obj-$(CONFIG_RESET_TI_SYSCON) += reset-ti-syscon.o
diff --git a/drivers/reset/reset-tenstorrent-atlantis.c b/drivers/reset/reset-tenstorrent-atlantis.c
new file mode 100644
index 000000000000..6fe9143ad76c
--- /dev/null
+++ b/drivers/reset/reset-tenstorrent-atlantis.c
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Tenstorrent Atlantis PRCM Reset Driver
+ *
+ * Copyright (c) 2026 Tenstorrent
+ */
+
+#include <dt-bindings/clock/tenstorrent,atlantis-prcm.h>
+#include <linux/auxiliary_bus.h>
+#include <linux/reset-controller.h>
+#include <linux/regmap.h>
+#include <soc/tenstorrent/atlantis-prcm.h>
+
+struct atlantis_reset_data {
+	u8 bit;
+	u16 reg;
+	bool active_low;
+};
+
+struct atlantis_reset_controller_data {
+	const struct atlantis_reset_data *reset_data;
+	size_t count;
+};
+
+struct atlantis_reset_controller {
+	struct reset_controller_dev rcdev;
+	const struct atlantis_reset_controller_data *data;
+	struct regmap *regmap;
+};
+
+#define to_atlantis_reset_controller(_rcdev) \
+	container_of((_rcdev), struct atlantis_reset_controller, rcdev)
+
+#define RESET_DATA(_reg, _bit, _active_low)                          \
+	{                                                            \
+		.bit = _bit, .reg = _reg, .active_low = _active_low, \
+	}
+
+static const struct atlantis_reset_data atlantis_rcpu_resets[] = {
+	[RST_SMNDMA0]	= RESET_DATA(RCPU_BLK_RST_REG, 0, true),
+	[RST_SMNDMA1]	= RESET_DATA(RCPU_BLK_RST_REG, 1, true),
+	[RST_WDT0]	= RESET_DATA(RCPU_BLK_RST_REG, 2, true),
+	[RST_WDT1]	= RESET_DATA(RCPU_BLK_RST_REG, 3, true),
+	[RST_TMR]	= RESET_DATA(RCPU_BLK_RST_REG, 4, true),
+	[RST_PVTC]	= RESET_DATA(RCPU_BLK_RST_REG, 12, true),
+	[RST_PMU]	= RESET_DATA(RCPU_BLK_RST_REG, 13, true),
+	[RST_MAILBOX]	= RESET_DATA(RCPU_BLK_RST_REG, 14, true),
+	[RST_SPACC]	= RESET_DATA(RCPU_BLK_RST_REG, 26, true),
+	[RST_OTP]	= RESET_DATA(RCPU_BLK_RST_REG, 28, true),
+	[RST_TRNG]	= RESET_DATA(RCPU_BLK_RST_REG, 29, true),
+	[RST_CRC]	= RESET_DATA(RCPU_BLK_RST_REG, 30, true),
+	[RST_QSPI]	= RESET_DATA(LSIO_BLK_RST_REG, 0, true),
+	[RST_I2C0]	= RESET_DATA(LSIO_BLK_RST_REG, 1, true),
+	[RST_I2C1]	= RESET_DATA(LSIO_BLK_RST_REG, 2, true),
+	[RST_I2C2]	= RESET_DATA(LSIO_BLK_RST_REG, 3, true),
+	[RST_I2C3]	= RESET_DATA(LSIO_BLK_RST_REG, 4, true),
+	[RST_I2C4]	= RESET_DATA(LSIO_BLK_RST_REG, 5, true),
+	[RST_UART0]	= RESET_DATA(LSIO_BLK_RST_REG, 6, true),
+	[RST_UART1]	= RESET_DATA(LSIO_BLK_RST_REG, 7, true),
+	[RST_UART2]	= RESET_DATA(LSIO_BLK_RST_REG, 8, true),
+	[RST_UART3]	= RESET_DATA(LSIO_BLK_RST_REG, 9, true),
+	[RST_UART4]	= RESET_DATA(LSIO_BLK_RST_REG, 10, true),
+	[RST_SPI0]	= RESET_DATA(LSIO_BLK_RST_REG, 11, true),
+	[RST_SPI1]	= RESET_DATA(LSIO_BLK_RST_REG, 12, true),
+	[RST_SPI2]	= RESET_DATA(LSIO_BLK_RST_REG, 13, true),
+	[RST_SPI3]	= RESET_DATA(LSIO_BLK_RST_REG, 14, true),
+	[RST_GPIO]	= RESET_DATA(LSIO_BLK_RST_REG, 15, true),
+	[RST_CAN0]	= RESET_DATA(LSIO_BLK_RST_REG, 17, true),
+	[RST_CAN1]	= RESET_DATA(LSIO_BLK_RST_REG, 18, true),
+	[RST_I2S0]	= RESET_DATA(LSIO_BLK_RST_REG, 19, true),
+	[RST_I2S1]	= RESET_DATA(LSIO_BLK_RST_REG, 20, true),
+
+};
+
+static const struct atlantis_reset_controller_data atlantis_rcpu_reset_data = {
+	.reset_data = atlantis_rcpu_resets,
+	.count = ARRAY_SIZE(atlantis_rcpu_resets),
+};
+
+static int atlantis_reset_update(struct reset_controller_dev *rcdev,
+				 unsigned long id, bool assert)
+{
+	unsigned int val;
+	struct atlantis_reset_controller *rst =
+		to_atlantis_reset_controller(rcdev);
+	const struct atlantis_reset_data *data = &rst->data->reset_data[id];
+	unsigned int mask = BIT(data->bit);
+	struct regmap *regmap = rst->regmap;
+
+	if (data->active_low ^ assert)
+		val = mask;
+	else
+		val = 0;
+
+	return regmap_update_bits(regmap, data->reg, mask, val);
+}
+
+static int atlantis_reset_assert(struct reset_controller_dev *rcdev,
+				 unsigned long id)
+{
+	return atlantis_reset_update(rcdev, id, true);
+}
+
+static int atlantis_reset_deassert(struct reset_controller_dev *rcdev,
+				   unsigned long id)
+{
+	return atlantis_reset_update(rcdev, id, false);
+}
+
+static const struct reset_control_ops atlantis_reset_control_ops = {
+	.assert = atlantis_reset_assert,
+	.deassert = atlantis_reset_deassert,
+};
+
+static int
+atlantis_reset_controller_register(struct device *dev,
+				   struct atlantis_reset_controller *controller)
+{
+	struct reset_controller_dev *rcdev = &controller->rcdev;
+
+	rcdev->ops = &atlantis_reset_control_ops;
+	rcdev->owner = THIS_MODULE;
+	rcdev->of_node = dev->of_node;
+	rcdev->nr_resets = controller->data->count;
+
+	return devm_reset_controller_register(dev, &controller->rcdev);
+}
+static int atlantis_reset_probe(struct auxiliary_device *adev,
+				const struct auxiliary_device_id *id)
+{
+	struct atlantis_prcm_adev *rdev = to_atlantis_prcm_adev(adev);
+	struct atlantis_reset_controller *controller;
+	struct device *dev = &adev->dev;
+
+	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
+	if (!controller)
+		return -ENOMEM;
+	controller->data =
+		(const struct atlantis_reset_controller_data *)id->driver_data;
+	controller->regmap = rdev->regmap;
+
+	return atlantis_reset_controller_register(dev, controller);
+}
+
+static const struct auxiliary_device_id atlantis_reset_ids[] = {
+	{ .name = "atlantis_prcm.rcpu-reset",
+	  .driver_data = (kernel_ulong_t)&atlantis_rcpu_reset_data },
+	{},
+};
+MODULE_DEVICE_TABLE(auxiliary, atlantis_reset_ids);
+
+static struct auxiliary_driver atlantis_reset_driver = {
+	.probe = atlantis_reset_probe,
+	.id_table = atlantis_reset_ids,
+};
+module_auxiliary_driver(atlantis_reset_driver);
+
+MODULE_AUTHOR("Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>");
+MODULE_DESCRIPTION("Atlantis PRCM reset controller driver");
+MODULE_LICENSE("GPL");
diff --git a/include/soc/tenstorrent/atlantis-prcm.h b/include/soc/tenstorrent/atlantis-prcm.h
new file mode 100644
index 000000000000..841516cbefd9
--- /dev/null
+++ b/include/soc/tenstorrent/atlantis-prcm.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Shared definitions for Atlantis PRCM Clock and Reset Drivers
+ *
+ * Copyright (c) 2026 Tenstorrent
+ */
+#ifndef __SOC_ATLANTIS_PRCM_H__
+#define __SOC_ATLANTIS_PRCM_H__
+
+#include <linux/bits.h>
+#include <linux/types.h>
+
+struct atlantis_prcm_adev {
+	struct auxiliary_device adev;
+	struct regmap *regmap;
+};
+
+static inline struct atlantis_prcm_adev *
+to_atlantis_prcm_adev(struct auxiliary_device *adev)
+{
+	return container_of(adev, struct atlantis_prcm_adev, adev);
+}
+
+/* RCPU Reset Register Offsets */
+#define RCPU_BLK_RST_REG 0x001c
+#define LSIO_BLK_RST_REG 0x0020
+#define HSIO_BLK_RST_REG 0x000c
+#define PCIE_SUBS_RST_REG 0x0000
+#define MM_RSTN_REG 0x0014
+
+#endif

-- 
2.43.0


