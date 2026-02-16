Return-Path: <devicetree+bounces-265934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sC9iHYeXk2lI6wEAu9opvQ
	(envelope-from <devicetree+bounces-265934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 23:17:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF57147E54
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 23:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25D80303D70B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 22:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899192DF12E;
	Mon, 16 Feb 2026 22:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="LvJ2UdIr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C662BEC2B
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 22:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771280209; cv=none; b=c2q+/DgU43cNLORwyCHqSr57AlVl6AfWCp++U1uJvMZb5O+rI2wcNVvsWhSYEp7F3fu4/qCDGfEllyajd8jCdlXg3lSJWg3IFwJWHH4RvvHkwJLA083DWhr6C5p+iFqAaehqytwGdq00WeHeiAE1nij9AHzrQOOlx8C6g6Tpwzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771280209; c=relaxed/simple;
	bh=BgY55UPaZvWk0gKVzmGD/1Tuzd8yij510nNGgAMAKGc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RuoahEi+VDQp5nBZlWjYKJxR4VHLKcj9vG6fdTRCUK/g8eMfDgSYiktwBYsFdaRFtXXALbZgxsJGbcZPEp+sSd/7AREAVn6tdyZRtsM7slTn6CtAWmM2I4TQ2DSWKSym+/7pF0n7JdymH7qb4mxJZFFl/z2FFqfFuGypW7I5esw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=LvJ2UdIr; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-797afd2e872so19254857b3.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1771280206; x=1771885006; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QU90MQWAl93DOAWC+lPTJbwL0gbIXlpAiKhxQBMuK6k=;
        b=LvJ2UdIrcUawAI7XDIHZPmp9j/j7uiOkMOOL7eCweRluDJtX29BID26gnhBtfK0i10
         zdjqBavITKz+5cz/eLALt1WTf9APwWowenomnYlEeU8WifoEtVPJjvusMcgXjdQoxd3X
         abkNyzso55dHNP5g3BuGzkA3yNYeilp9J4K+rCyDk+QGGsIwiKZdLGeKAEV0KBwpjOcU
         bhXR6CrVS16Uo2dMZpx1/Zk+VbbQWQU9/GYoCM0v9y+v2R51lYItt3ADWct5UIa9GIhd
         0qbXoEDwVrlkxTAg2ZizHmP7hq8HuflofWQEeQCU+V2AYA5bpLiPlQc225K4jQ6PY9Zv
         auPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771280206; x=1771885006;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QU90MQWAl93DOAWC+lPTJbwL0gbIXlpAiKhxQBMuK6k=;
        b=mOGCcqltYRy/xIlid1OKIZeuOzJDxjyGkPTtrL/2GGIIxcxq0JtAmKznXR5HjnGZkA
         SLLvKY9Zm7BO8HUtgprn9xSOLoV1iTo53OHRoe0RmoT8CB5dPF7ff6Cgh/deFeSRHVs4
         oJm8BmcjRdjKCHzCtWtI/wQm8woyMaB+dllr1jv/8DRwfistSTv5Ci523jcatmf/lw3b
         JPSWlO0V2uw7SL420LHNUfTiIWHCD6xQYNeflMxUmq5/fybPOb7iO8TDscZl2d1/dd2U
         V40LA01q2ed/oa78YfyEUYVwEAFANNm59fUEyZoTRqOWVCaucgTU859+/Jn44zf5Dyb3
         PVCA==
X-Forwarded-Encrypted: i=1; AJvYcCXwLbE/qrQjLIMfu9kWrarCfz0U/FMv+LhK1sZdBMjgdXChDacGTmshLVOxD7q2AWfgEs4hTELIVWKG@vger.kernel.org
X-Gm-Message-State: AOJu0YxpC+r7IvwqG8HmMIzSNAZe4nhlW0AEjzMOaSaxUseMzeBj33V3
	w9d4NRcbcdiduMqvCr4cv81ZLhL3/upzhrYGTojiRqRDaJMAG9xwpLK/E6cPAlB3DW0=
X-Gm-Gg: AZuq6aIhv2bwHXcmWeGn4EB/D3g0jCsDrPL4QWg7zWn9RKW0KV1vYn4M/QOsKa9fRwd
	Pr+sMjBNUEdpIWKsYcLhcwUNLQZ7PynGCsylsoeEx7emvqmAM790D7Nwiw7ZX+zLPriKiglCpZF
	tlW/ax/o+BIvWYcfSLae3jUCZ4BSeh6/tOjO8qtpbqLcPAbw/Tz4NToHZLMbUW3wbGixqEhTj8+
	+pqLnnoQVBgruq3bDMsPneg0PG8XnPk5XTkiyxgz0k71oEjupZHcuhwperLb+H0vEPWngFl3LZB
	lDSq1FQCNScnaRl8h32G8pmiIUepzVsWNRSTYhIwBzikGkstPzPoQ+6QNrrvqRebyDsmvVZeQ29
	QiGd9i2kShk0jTfw5qVhMm/4VDmPfy8gAMSIUwq2zGaOzPH5fh0IMfWIuHRkncd55F6nFLQwvae
	uRT9nJSaTrSouZW8U5u04fIE/gH2W3S9Ul2FZvrBL00SPGEzF708qKe+Cx+RDXeoAhC4SvMfXu+
	sCPuREnN0I=
X-Received: by 2002:a05:690c:6a0c:b0:796:3d5f:a2be with SMTP id 00721157ae682-797ac66c027mr80356017b3.64.1771280205751;
        Mon, 16 Feb 2026 14:16:45 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c1a8222sm106705757b3.23.2026.02.16.14.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 14:16:45 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Mon, 16 Feb 2026 16:16:33 -0600
Subject: [PATCH v6 2/3] reset: tenstorrent: Add reset controller for
 Atlantis
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-atlantis-clocks-v6-2-cb46d6a59c73@oss.tenstorrent.com>
References: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
In-Reply-To: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265934-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.tenstorrent.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tenstorrent.com:email,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: 1CF57147E54
X-Rspamd-Action: no action

Adds Atlantis Reset Controller driver, which shares the same regmap as
prcm ( clock controller).

This version of the reset controller driver covers resets from the RCPU
prcm.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 MAINTAINERS                                |   1 +
 drivers/reset/Kconfig                      |  11 ++
 drivers/reset/Makefile                     |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c | 173 +++++++++++++++++++++++++++++
 4 files changed, 186 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 24cd2bbe1c78..93f4e860e589 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22537,6 +22537,7 @@ T:	git https://github.com/tenstorrent/linux.git
 F:	Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm-rcpu.yaml
 F:	Documentation/devicetree/bindings/riscv/tenstorrent.yaml
 F:	arch/riscv/boot/dts/tenstorrent/
+F:	drivers/reset/reset-tenstorrent-atlantis.c
 F:	include/dt-bindings/clock/tenstorrent,atlantis-prcm-rcpu.h
 
 RISC-V THEAD SoC SUPPORT
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
index 000000000000..ab8be52fdd5e
--- /dev/null
+++ b/drivers/reset/reset-tenstorrent-atlantis.c
@@ -0,0 +1,173 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Tenstorrent Atlantis PRCM Reset Driver
+ *
+ * Copyright (c) 2026 Tenstorrent
+ */
+
+#include <dt-bindings/clock/tenstorrent,atlantis-prcm-rcpu.h>
+#include <linux/auxiliary_bus.h>
+#include <linux/reset-controller.h>
+#include <linux/regmap.h>
+
+/* RCPU Reset Register Offsets */
+#define RCPU_BLK_RST_REG 0x001c
+#define LSIO_BLK_RST_REG 0x0020
+#define HSIO_BLK_RST_REG 0x000c
+#define PCIE_SUBS_RST_REG 0x0000
+#define MM_RSTN_REG 0x0014
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
+static inline struct atlantis_reset_controller *
+to_atlantis_reset_controller(struct reset_controller_dev *rcdev)
+{
+	return container_of(rcdev, struct atlantis_reset_controller, rcdev);
+}
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
+	struct atlantis_reset_controller *controller;
+	struct device *dev = &adev->dev;
+	struct regmap *regmap;
+
+	regmap = dev_get_regmap(dev->parent, NULL);
+	if (!regmap)
+		return -ENODEV;
+
+	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
+	if (!controller)
+		return -ENOMEM;
+	controller->data =
+		(const struct atlantis_reset_controller_data *)id->driver_data;
+	controller->regmap = regmap;
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

-- 
2.43.0


