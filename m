Return-Path: <devicetree+bounces-74097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B549901F5A
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 12:25:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C37AE1F223C8
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 10:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B23317BB12;
	Mon, 10 Jun 2024 10:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="GQifeMFY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949217B3FA
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 10:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718015100; cv=none; b=JxnimKfU5s6BdsdgZEbFHebPvyty/mFK2zV1+ET7yTT0hg8ja4oIx5ubDnwOgybIHMFfUEuU1NLwk9cSYrqiuXmx3qf5AjfKUw1iqFfYNqIp2gqzedTyED6JGE1EXk0yaA17odFj0czT5LLpcXo2srQPoRCm32ufeesjb2ommHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718015100; c=relaxed/simple;
	bh=F7t41YxwbZ+JZhzKxPa6GixOWNEMrL9IazFhiBFPrTY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=E9NHf+Q2kxahn1GmkUd17kbqgJhGEEzzinavzJx3u67l8tqrLPv+m2vqxbTVydlLKtJM/QtVKit8RZ/Wl62MeU6Dqj0iojcCe8UdzQH+dg5AYGnbujD1yFHGElsn4eViydPXP7TwlGXC8+IK3jxMGvYMLV1yIXOdAZoThP52VSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=GQifeMFY; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a6ef8bf500dso217397366b.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 03:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718015096; x=1718619896; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=txTOXblNJzLxUZIn6OBj8f2EMGK7IiuwmDr4Fh0AF7A=;
        b=GQifeMFY/Nx+Yv5NEdXiFnV5/9kZ7csq7OemJeBq7AIuPit3vLCZ1+BHUq03wjqqXn
         c8CQjWX5IsEhlddYI1uMUYQNNEIQRZ2ssn0C/YcZdqfb4rJJeSOeHO7StEBz6Ut5L/OT
         09e8aYfSvzmEmAhzKJKG0GysLe4FTeF21pPEBJ7ZBmVfFYphhia3x2hjgCawiZWFH5oU
         jesYMnpFGi4jE1m6k7Ntrk4vv5oHAQ+bne5DWjTQ78LS0UR+ZwfEEfq7E/SG3F+5VaiH
         3jg1Dc2JEwvRhB6G7Y1o7hmXJSms6PCTOYAaV9MR0O/VnmP27cgw5Y5cQhGCde/8yMOT
         SIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718015096; x=1718619896;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=txTOXblNJzLxUZIn6OBj8f2EMGK7IiuwmDr4Fh0AF7A=;
        b=dVAN8kYkVQ5gEQ4uTES0BOlU5S2PjU77dhhkD4sR0cUdwtXSHEJmTMu2eS2JMMSeXc
         r7hTEntYLlHTxn3rtP7HB+tPax8AAs11WP9YBtl1fqxmTYqdj6nSypD8L7gkM3J4sETy
         LXN2QwmbM/CKnMfw1m5AUZ8wt3l1i03woo4paWydvK/dP+5JHDd+2OFWApirCCsi0Ry0
         IR26HpEzh6rz3WxCKSTsVvr68N+3dNeHvV93DjRNNmY0xfPGxLWHWRd7HrNS8kualy74
         l16SIyyYlQgm/YUURVw4YD9p/zewna6z5Nc1fMCRFwIXj2wp/cG6fd9jDQfszskGySED
         Z0CA==
X-Forwarded-Encrypted: i=1; AJvYcCU0BrR2UJGb0lx5POK1B0QzhqBCVQyHRN1JjFei+ZwC3lYmg3GQu5Angt6vfYQZoCLXgt+jFWrY5VN+vESFNk1sm1T8/25zcqhygQ==
X-Gm-Message-State: AOJu0YyqQ/9gWFqILa0OxOLC6DBEi5aEx0XmCi3tXaensO01hvPheGkp
	fMesw3meldHKtpUsos4zIDT8mAeLbuixS/i4My2bgWQPwmawnRGE4Z7ePYk6HUo=
X-Google-Smtp-Source: AGHT+IGth2c6jD3XWQwliIXoP7Ct/Jhe/UQvCZTzJidYvDnFOKh56tUSAaZqhpSgfWWtIGKcsjTwUw==
X-Received: by 2002:a17:906:7109:b0:a6f:266d:adc2 with SMTP id a640c23a62f3a-a6f266db1bdmr89055966b.14.1718015095549;
        Mon, 10 Jun 2024 03:24:55 -0700 (PDT)
Received: from localhost.localdomain ([91.216.213.152])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f1b3b2d7esm166216066b.24.2024.06.10.03.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 03:24:55 -0700 (PDT)
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
To: 
Cc: piotr.wojtaszczyk@timesys.com,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Russell King <linux@armlinux.org.uk>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ASoC: fsl: Add i2s and pcm drivers for LPC32xx CPUs
Date: Mon, 10 Jun 2024 12:24:07 +0200
Message-Id: <20240610102415.79740-1-piotr.wojtaszczyk@timesys.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This driver was ported from an old version in linux 2.6.27 and adjusted
for the new ASoC framework and DMA API.

Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
---
 .../bindings/sound/nxp,lpc3220-i2s.yaml       |  50 +++
 arch/arm/boot/dts/lpc32xx.dtsi                |   4 +
 arch/arm/mach-lpc32xx/phy3250.c               |  60 +++
 sound/soc/fsl/Kconfig                         |   7 +
 sound/soc/fsl/Makefile                        |   2 +
 sound/soc/fsl/lpc3xxx-i2s.c                   | 411 ++++++++++++++++++
 sound/soc/fsl/lpc3xxx-i2s.h                   |  94 ++++
 sound/soc/fsl/lpc3xxx-pcm.c                   |  75 ++++
 8 files changed, 703 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml
 create mode 100644 sound/soc/fsl/lpc3xxx-i2s.c
 create mode 100644 sound/soc/fsl/lpc3xxx-i2s.h
 create mode 100644 sound/soc/fsl/lpc3xxx-pcm.c

diff --git a/Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml b/Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml
new file mode 100644
index 000000000000..e41330b6775c
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nxp,lpc3220-i2s.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/nxp,lpc3220-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP LPC32XX I2S Controller
+
+description:
+  The block adds I2S and PCM drivers for LPC32XX
+
+properties:
+  compatible:
+    enum:
+      - nxp,lpc3220-i2s
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: input clock of the peripheral.
+
+  clock-names:
+    items:
+      - const: i2s_clk
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/lpc32xx-clock.h>
+
+    i2s0: i2s@20094000 {
+      compatible = "nxp,lpc3220-i2s";
+      reg = <0x20094000 0x1000>;
+      clocks = <&clk LPC32XX_CLK_I2S0>;
+      clock-names = "i2s_clk";
+    };
+
+...
diff --git a/arch/arm/boot/dts/lpc32xx.dtsi b/arch/arm/boot/dts/lpc32xx.dtsi
index c87066d6c995..dc5738f2b42d 100644
--- a/arch/arm/boot/dts/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/lpc32xx.dtsi
@@ -221,6 +221,8 @@ spi2: spi@20090000 {
 			i2s0: i2s@20094000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x20094000 0x1000>;
+				clocks = <&clk LPC32XX_CLK_I2S0>;
+				clock-names = "i2s_clk";
 				status = "disabled";
 			};
 
@@ -237,6 +239,8 @@ sd: sd@20098000 {
 			i2s1: i2s@2009c000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x2009c000 0x1000>;
+				clocks = <&clk LPC32XX_CLK_I2S1>;
+				clock-names = "i2s_clk";
 				status = "disabled";
 			};
 
diff --git a/arch/arm/mach-lpc32xx/phy3250.c b/arch/arm/mach-lpc32xx/phy3250.c
index 66701bf43248..b866b9a75558 100644
--- a/arch/arm/mach-lpc32xx/phy3250.c
+++ b/arch/arm/mach-lpc32xx/phy3250.c
@@ -9,6 +9,7 @@
  */
 
 #include <linux/amba/pl08x.h>
+#include <linux/amba/pl022.h>
 #include <linux/mtd/lpc32xx_mlc.h>
 #include <linux/mtd/lpc32xx_slc.h>
 #include <linux/of_platform.h>
@@ -29,6 +30,46 @@ static struct pl08x_channel_data pl08x_slave_channels[] = {
 		.max_signal = 12,
 		.periph_buses = PL08X_AHB1,
 	},
+	{
+		.bus_id = "i2s-tx",
+		.min_signal = 13,
+		.max_signal = 13,
+		.periph_buses = PL08X_AHB1,
+	},
+	{
+		.bus_id = "i2s-rx",
+		.min_signal = 0,
+		.max_signal = 0,
+		.periph_buses = PL08X_AHB1,
+	},
+	{
+		.bus_id = "ssp0-tx",
+		.min_signal = 15,
+		.max_signal = 15,
+		.muxval = 1,
+		.periph_buses = PL08X_AHB1,
+	},
+	{
+		.bus_id = "ssp0-rx",
+		.min_signal = 14,
+		.max_signal = 14,
+		.muxval = 1,
+		.periph_buses = PL08X_AHB1,
+	},
+	{
+		.bus_id = "ssp1-tx",
+		.min_signal = 11,
+		.max_signal = 11,
+		.muxval = 1,
+		.periph_buses = PL08X_AHB1,
+	},
+	{
+		.bus_id = "ssp1-rx",
+		.min_signal = 3,
+		.max_signal = 3,
+		.muxval = 1,
+		.periph_buses = PL08X_AHB1,
+	},
 };
 
 static int pl08x_get_signal(const struct pl08x_channel_data *cd)
@@ -60,12 +101,31 @@ static struct lpc32xx_mlc_platform_data lpc32xx_mlc_data = {
 	.dma_filter = pl08x_filter_id,
 };
 
+static struct pl022_ssp_controller lpc32xx_ssp_data[] = {
+	{
+		.bus_id = 0,
+		.enable_dma = 0,
+		.dma_filter = pl08x_filter_id,
+		.dma_tx_param = "ssp0-tx",
+		.dma_rx_param = "ssp0-rx",
+	},
+	{
+		.bus_id = 1,
+		.enable_dma = 0,
+		.dma_filter = pl08x_filter_id,
+		.dma_tx_param = "ssp1-tx",
+		.dma_rx_param = "ssp1-rx",
+	}
+};
+
 static const struct of_dev_auxdata lpc32xx_auxdata_lookup[] __initconst = {
 	OF_DEV_AUXDATA("arm,pl080", 0x31000000, "pl08xdmac", &pl08x_pd),
 	OF_DEV_AUXDATA("nxp,lpc3220-slc", 0x20020000, "20020000.flash",
 		       &lpc32xx_slc_data),
 	OF_DEV_AUXDATA("nxp,lpc3220-mlc", 0x200a8000, "200a8000.flash",
 		       &lpc32xx_mlc_data),
+	OF_DEV_AUXDATA("arm,pl022", 0x20084000, NULL, &lpc32xx_ssp_data[0]),
+	OF_DEV_AUXDATA("arm,pl022", 0x2008c000, NULL, &lpc32xx_ssp_data[1]),
 	{ }
 };
 
diff --git a/sound/soc/fsl/Kconfig b/sound/soc/fsl/Kconfig
index 258306d8ce51..5f25aa7d632c 100644
--- a/sound/soc/fsl/Kconfig
+++ b/sound/soc/fsl/Kconfig
@@ -132,6 +132,13 @@ config SND_SOC_FSL_RPMSG
 	  This option is only useful for out-of-tree drivers since
 	  in-tree drivers select it automatically.
 
+config SND_SOC_FSL_LPC3XXX
+	tristate "SoC Audio for NXP LPC32XX CPUs"
+	depends on ARCH_LPC32XX && SND_SOC
+	select SND_SOC_GENERIC_DMAENGINE_PCM
+	help
+	  Say Y or M if you want to add support for the LPC3XXX I2S interface.
+
 config SND_SOC_IMX_PCM_DMA
 	tristate
 	select SND_SOC_GENERIC_DMAENGINE_PCM
diff --git a/sound/soc/fsl/Makefile b/sound/soc/fsl/Makefile
index 9f743fcc0e02..988dc98cdfc6 100644
--- a/sound/soc/fsl/Makefile
+++ b/sound/soc/fsl/Makefile
@@ -29,6 +29,7 @@ snd-soc-fsl-easrc-objs := fsl_easrc.o
 snd-soc-fsl-xcvr-objs := fsl_xcvr.o
 snd-soc-fsl-aud2htx-objs := fsl_aud2htx.o
 snd-soc-fsl-rpmsg-objs := fsl_rpmsg.o
+snd-soc-fsl-lpc3xxx-objs := lpc3xxx-pcm.o lpc3xxx-i2s.o
 
 obj-$(CONFIG_SND_SOC_FSL_AUDMIX) += snd-soc-fsl-audmix.o
 obj-$(CONFIG_SND_SOC_FSL_ASOC_CARD) += snd-soc-fsl-asoc-card.o
@@ -45,6 +46,7 @@ obj-$(CONFIG_SND_SOC_POWERPC_DMA) += snd-soc-fsl-dma.o
 obj-$(CONFIG_SND_SOC_FSL_XCVR) += snd-soc-fsl-xcvr.o
 obj-$(CONFIG_SND_SOC_FSL_AUD2HTX) += snd-soc-fsl-aud2htx.o
 obj-$(CONFIG_SND_SOC_FSL_RPMSG) += snd-soc-fsl-rpmsg.o
+obj-$(CONFIG_SND_SOC_FSL_LPC3XXX) += snd-soc-fsl-lpc3xxx.o
 
 # MPC5200 Platform Support
 obj-$(CONFIG_SND_MPC52xx_DMA) += mpc5200_dma.o
diff --git a/sound/soc/fsl/lpc3xxx-i2s.c b/sound/soc/fsl/lpc3xxx-i2s.c
new file mode 100644
index 000000000000..853284eb14f1
--- /dev/null
+++ b/sound/soc/fsl/lpc3xxx-i2s.c
@@ -0,0 +1,411 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Author: Kevin Wells <kevin.wells@nxp.com>
+ *
+ * Copyright (C) 2008 NXP Semiconductors
+ * Copyright 2023 Timesys Corporation <piotr.wojtaszczyk@timesys.com>
+ */
+
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/interrupt.h>
+#include <linux/device.h>
+#include <linux/delay.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+
+#include <sound/core.h>
+#include <sound/pcm.h>
+#include <sound/pcm_params.h>
+#include <sound/dmaengine_pcm.h>
+#include <sound/initval.h>
+#include <sound/soc.h>
+
+#include "lpc3xxx-i2s.h"
+
+#define I2S_PLAYBACK_FLAG 0x1
+#define I2S_CAPTURE_FLAG 0x2
+
+#define LPC3XXX_I2S_RATES ( \
+	SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_22050 | \
+	SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_44100 | \
+	SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000)
+
+#define LPC3XXX_I2S_FORMATS ( \
+	SNDRV_PCM_FMTBIT_S8 | \
+	SNDRV_PCM_FMTBIT_S16_LE | \
+	SNDRV_PCM_FMTBIT_S32_LE)
+
+static u32 absd32(u32 v1, u32 v2)
+{
+	if (v1 > v2) {
+		return v1 - v2;
+	}
+	return v2 - v1;
+}
+
+static void __lpc3xxx_find_clkdiv(u32 *clkx, u32 *clky, int freq,
+				  int xbytes, u32 clkrate)
+{
+	u32 i2srate;
+	u32 idxx, idyy;
+	u32 savedbitclkrate, diff, trate, baseclk;
+
+	/* Adjust rate for sample size (bits) and 2 channels and offset for
+	 * divider in clock output
+	 */
+	i2srate = (freq / 100) * 2 * (8 * xbytes);
+	i2srate = i2srate << 1;
+	clkrate = clkrate / 100;
+	baseclk = clkrate;
+	*clkx = 1;
+	*clky = 1;
+
+	/* Find the best divider */
+	*clkx = *clky = 0;
+	savedbitclkrate = 0;
+	diff = ~0;
+	for (idxx = 1; idxx < 0xFF; idxx++) {
+		for (idyy = 1; idyy < 0xFF; idyy++) {
+			trate = (baseclk * idxx) / idyy;
+			if (absd32(trate, i2srate) < diff) {
+				diff = absd32(trate, i2srate);
+				savedbitclkrate = trate;
+				*clkx = idxx;
+				*clky = idyy;
+			}
+		}
+	}
+}
+
+static int lpc3xxx_i2s_startup(struct snd_pcm_substream *substream, struct snd_soc_dai *cpu_dai)
+{
+	struct lpc3xxx_i2s_info *i2s_info_p = snd_soc_dai_get_drvdata(cpu_dai);
+	struct device *dev = i2s_info_p->dev;
+	u32 flag;
+	int ret = 0;
+
+	mutex_lock(&i2s_info_p->lock);
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		flag = I2S_PLAYBACK_FLAG;
+	} else {
+		flag = I2S_CAPTURE_FLAG;
+	}
+
+	if (flag & i2s_info_p->streams_in_use) {
+		dev_warn(dev, "I2S channel is busy\n");
+		ret = -EBUSY;
+		goto lpc32xx_unlock;
+	}
+
+	if (i2s_info_p->streams_in_use == 0) {
+		ret = clk_prepare_enable(i2s_info_p->clk);
+		if (ret) {
+			dev_err(dev, "Can't enable clock, err=%d\n", ret);
+			goto lpc32xx_unlock;
+		}
+	}
+
+	i2s_info_p->streams_in_use |= flag;
+
+lpc32xx_unlock:
+	mutex_unlock(&i2s_info_p->lock);
+	return ret;
+}
+
+static void lpc3xxx_i2s_shutdown(struct snd_pcm_substream *substream, struct snd_soc_dai *cpu_dai)
+{
+	struct lpc3xxx_i2s_info *i2s_info_p = snd_soc_dai_get_drvdata(cpu_dai);
+	struct regmap *regs = i2s_info_p->regs;
+	const u32 stop_bits = (I2S_RESET | I2S_STOP);
+	u32 flag;
+
+	mutex_lock(&i2s_info_p->lock);
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		flag = I2S_PLAYBACK_FLAG;
+		regmap_write(regs, I2S_TX_RATE, 0);
+		regmap_update_bits(regs, I2S_DAO, stop_bits, stop_bits);
+	} else {
+		flag = I2S_CAPTURE_FLAG;
+		regmap_write(regs, I2S_RX_RATE, 0);
+		regmap_update_bits(regs, I2S_DAI, stop_bits, stop_bits);
+	}
+	i2s_info_p->streams_in_use &= ~flag;
+
+	if (i2s_info_p->streams_in_use == 0) {
+		clk_disable_unprepare(i2s_info_p->clk);
+	}
+
+	mutex_unlock(&i2s_info_p->lock);
+}
+
+static int lpc3xxx_i2s_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
+				      int clk_id, unsigned int freq, int dir)
+{
+	struct lpc3xxx_i2s_info *i2s_info_p = snd_soc_dai_get_drvdata(cpu_dai);
+
+	/* Will use in HW params later */
+	i2s_info_p->freq = freq;
+
+	return 0;
+}
+
+static int lpc3xxx_i2s_set_dai_fmt(struct snd_soc_dai *cpu_dai,
+				   unsigned int fmt)
+{
+	struct lpc3xxx_i2s_info *i2s_info_p = snd_soc_dai_get_drvdata(cpu_dai);
+	struct device *dev = i2s_info_p->dev;
+
+	if ((fmt & SND_SOC_DAIFMT_FORMAT_MASK) != SND_SOC_DAIFMT_I2S) {
+		dev_warn(dev, "unsupported bus format %d\n", fmt);
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static int lpc3xxx_i2s_hw_params(struct snd_pcm_substream *substream,
+			struct snd_pcm_hw_params *params, struct snd_soc_dai *cpu_dai)
+{
+	struct lpc3xxx_i2s_info *i2s_info_p = snd_soc_dai_get_drvdata(cpu_dai);
+	struct device *dev = i2s_info_p->dev;
+	struct regmap *regs = i2s_info_p->regs;
+	int xfersize;
+	u32 tmp, clkx, clky;
+
+	tmp = I2S_RESET | I2S_STOP;
+	switch (params_format(params)) {
+	case SNDRV_PCM_FORMAT_S8:
+		tmp |= I2S_WW8 | I2S_WS_HP(I2S_WW8_HP);
+		xfersize = 1;
+		break;
+
+	case SNDRV_PCM_FORMAT_S16_LE:
+		tmp |= I2S_WW16 | I2S_WS_HP(I2S_WW16_HP);
+		xfersize = 2;
+		break;
+
+	case SNDRV_PCM_FORMAT_S32_LE:
+		tmp |= I2S_WW32 | I2S_WS_HP(I2S_WW32_HP);
+		xfersize = 4;
+		break;
+
+	default:
+		dev_warn(dev, "Unsupported audio data format %d\n",
+				params_format(params));
+		return -EINVAL;
+	}
+
+	if (params_channels(params) == 1) {
+		tmp |= I2S_MONO;
+	}
+
+	__lpc3xxx_find_clkdiv(&clkx, &clky, i2s_info_p->freq, xfersize, i2s_info_p->clkrate);
+
+	dev_dbg(dev, "Stream                : %s\n",
+		substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? "playback" : "capture");
+	dev_dbg(dev, "Desired clock rate    : %d\n", i2s_info_p->freq);
+	dev_dbg(dev, "Base clock rate       : %d\n", i2s_info_p->clkrate);
+	dev_dbg(dev, "Transfer size (bytes) : %d\n", xfersize);
+	dev_dbg(dev, "Clock divider (x)     : %d\n", clkx);
+	dev_dbg(dev, "Clock divider (y)     : %d\n", clky);
+	dev_dbg(dev, "Channels              : %d\n", params_channels(params));
+	dev_dbg(dev, "Data format           : %s\n", "I2S");
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		regmap_write(regs, I2S_DMA1, I2S_DMA1_TX_EN | I2S_DMA0_TX_DEPTH(4));
+		regmap_write(regs, I2S_TX_RATE, (clkx << 8) | clky);
+		regmap_write(regs, I2S_DAO, tmp);
+	} else {
+		regmap_write(regs, I2S_DMA0, I2S_DMA0_RX_EN | I2S_DMA1_RX_DEPTH(4));
+		regmap_write(regs, I2S_RX_RATE, (clkx << 8) | clky);
+		regmap_write(regs, I2S_DAI, tmp);
+	}
+
+	return 0;
+}
+
+static int lpc3xxx_i2s_prepare(struct snd_pcm_substream *substream, struct snd_soc_dai *cpu_dai)
+{
+	return 0;
+}
+
+static int lpc3xxx_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
+								struct snd_soc_dai *cpu_dai)
+{
+	struct lpc3xxx_i2s_info *i2s_info_p = snd_soc_dai_get_drvdata(cpu_dai);
+	struct regmap *regs = i2s_info_p->regs;
+	int ret = 0;
+
+	switch (cmd) {
+	case SNDRV_PCM_TRIGGER_STOP:
+	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
+	case SNDRV_PCM_TRIGGER_SUSPEND:
+		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+			regmap_update_bits(regs, I2S_DAO, I2S_STOP, I2S_STOP);
+		} else {
+			regmap_update_bits(regs, I2S_DAI, I2S_STOP, I2S_STOP);
+		}
+		break;
+
+	case SNDRV_PCM_TRIGGER_START:
+	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
+	case SNDRV_PCM_TRIGGER_RESUME:
+		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+			regmap_update_bits(regs, I2S_DAO, (I2S_RESET | I2S_STOP), 0);
+		} else {
+			regmap_update_bits(regs, I2S_DAI, (I2S_RESET | I2S_STOP), 0);
+		}
+		break;
+	default:
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
+const struct snd_soc_dai_ops lpc3xxx_i2s_dai_ops = {
+	.startup = lpc3xxx_i2s_startup,
+	.shutdown = lpc3xxx_i2s_shutdown,
+	.prepare = lpc3xxx_i2s_prepare,
+	.trigger = lpc3xxx_i2s_trigger,
+	.hw_params = lpc3xxx_i2s_hw_params,
+	.set_sysclk = lpc3xxx_i2s_set_dai_sysclk,
+	.set_fmt = lpc3xxx_i2s_set_dai_fmt,
+};
+
+static int lpc3xxx_i2s_dai_probe(struct snd_soc_dai *dai)
+{
+	struct lpc3xxx_i2s_info *i2s_info_p = snd_soc_dai_get_drvdata(dai);
+
+	snd_soc_dai_init_dma_data(dai, &i2s_info_p->playback_dma_config,
+							&i2s_info_p->capture_dma_config);
+	return 0;
+}
+
+struct snd_soc_dai_driver lpc3xxx_i2s_dai_driver = {
+	 .probe	= lpc3xxx_i2s_dai_probe,
+	 .playback = {
+		      .channels_min = 1,
+		      .channels_max = 2,
+		      .rates = LPC3XXX_I2S_RATES,
+		      .formats = LPC3XXX_I2S_FORMATS,
+		      },
+	 .capture = {
+		     .channels_min = 1,
+		     .channels_max = 2,
+		     .rates = LPC3XXX_I2S_RATES,
+		     .formats = LPC3XXX_I2S_FORMATS,
+		     },
+	 .ops = &lpc3xxx_i2s_dai_ops,
+	 .symmetric_rate = 1,
+	 .symmetric_channels = 1,
+	 .symmetric_sample_bits = 1,
+};
+
+static const struct snd_soc_component_driver lpc32xx_i2s_component = {
+	.name = "lpc32xx-i2s",
+};
+
+static const struct regmap_config lpc32xx_i2s_regconfig = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = I2S_RX_RATE,
+};
+
+static int lpc32xx_i2s_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct lpc3xxx_i2s_info *i2s_info_p;
+	struct resource *res;
+	void __iomem *iomem;
+	int ret;
+
+	i2s_info_p = devm_kzalloc(dev, sizeof(*i2s_info_p), GFP_KERNEL);
+	if (!i2s_info_p)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, i2s_info_p);
+	i2s_info_p->dev = dev;
+
+	iomem = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
+	if (IS_ERR(iomem)) {
+		dev_err(dev, "Can't map registers\n");
+		return PTR_ERR(iomem);
+	}
+
+	i2s_info_p->regs = devm_regmap_init_mmio(dev, iomem, &lpc32xx_i2s_regconfig);
+	if (IS_ERR(i2s_info_p->regs)) {
+		ret = PTR_ERR(i2s_info_p->regs);
+		dev_err(dev, "failed to init register map: %d\n", ret);
+		return ret;
+	}
+
+	i2s_info_p->clk = devm_clk_get(dev, "i2s_clk");
+	if (IS_ERR(i2s_info_p->clk)) {
+		dev_err(dev, "Can't get clock\n");
+		return PTR_ERR(i2s_info_p->clk);
+	}
+
+	i2s_info_p->clkrate = clk_get_rate(i2s_info_p->clk);
+	if (i2s_info_p->clkrate == 0) {
+		dev_err(dev, "Invalid returned clock rate\n");
+		goto err_clk_disable;
+	}
+
+	mutex_init(&i2s_info_p->lock);
+
+	ret = devm_snd_soc_register_component(dev, &lpc32xx_i2s_component,
+					 &lpc3xxx_i2s_dai_driver, 1);
+	if (ret) {
+		dev_err(dev, "Can't register cpu_dai component\n");
+		goto err_clk_disable;
+	}
+
+	i2s_info_p->playback_dma_config.addr = (dma_addr_t)(res->start + I2S_TX_FIFO);
+	i2s_info_p->playback_dma_config.maxburst = 4;
+	i2s_info_p->playback_dma_config.filter_data = "i2s-tx";
+	i2s_info_p->capture_dma_config.addr = (dma_addr_t)(res->start + I2S_RX_FIFO);
+	i2s_info_p->capture_dma_config.maxburst = 4;
+	i2s_info_p->capture_dma_config.filter_data = "i2s-rx";
+
+	ret = lpc3xxx_pcm_register(pdev);
+	if (ret) {
+		dev_err(dev, "Can't register pcm component\n");
+		goto err_clk_disable;
+	}
+
+	return 0;
+
+err_clk_disable:
+	return ret;
+}
+
+static int lpc32xx_i2s_remove(struct platform_device *pdev)
+{
+	return 0;
+}
+
+static const struct of_device_id lpc32xx_i2s_match[] = {
+	{ .compatible = "nxp,lpc3220-i2s" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, lpc32xx_i2s_match);
+
+static struct platform_driver lpc32xx_i2s_driver = {
+	.probe = lpc32xx_i2s_probe,
+	.remove = lpc32xx_i2s_remove,
+	.driver		= {
+		.name	= "lpc3xxx-i2s",
+		.of_match_table = of_match_ptr(lpc32xx_i2s_match),
+	},
+};
+
+module_platform_driver(lpc32xx_i2s_driver);
+
+MODULE_AUTHOR("Kevin Wells <kevin.wells@nxp.com>");
+MODULE_AUTHOR("Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>");
+MODULE_DESCRIPTION("ASoC LPC3XXX I2S interface");
+MODULE_LICENSE("GPL");
diff --git a/sound/soc/fsl/lpc3xxx-i2s.h b/sound/soc/fsl/lpc3xxx-i2s.h
new file mode 100644
index 000000000000..f88ab74cfe41
--- /dev/null
+++ b/sound/soc/fsl/lpc3xxx-i2s.h
@@ -0,0 +1,94 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Author: Kevin Wells <kevin.wells@nxp.com>
+ *
+ * Copyright (C) 2008 NXP Semiconductors
+ * Copyright 2023 Timesys Corporation <piotr.wojtaszczyk@timesys.com>
+ */
+
+#ifndef __SOUND_SOC_LPC3XXX_I2S_H
+#define __SOUND_SOC_LPC3XXX_I2S_H
+
+#include <linux/types.h>
+#include <linux/regmap.h>
+
+struct lpc3xxx_i2s_info {
+	struct device *dev;
+	struct clk *clk;
+	struct mutex lock;
+	struct regmap *regs;
+	u32 streams_in_use;
+	u32 clkrate;
+	int freq;
+	struct snd_dmaengine_dai_dma_data playback_dma_config;
+	struct snd_dmaengine_dai_dma_data capture_dma_config;
+};
+
+int lpc3xxx_pcm_register(struct platform_device *pdev);
+
+#define _SBF(f, v) ((v) << (f))
+#define _BIT(n) _SBF(n, 1)
+
+/* I2S controller register offsets */
+#define I2S_DAO		0x00
+#define I2S_DAI		0x04
+#define I2S_TX_FIFO	0x08
+#define I2S_RX_FIFO	0x0C
+#define I2S_STAT	0x10
+#define I2S_DMA0	0x14
+#define I2S_DMA1	0x18
+#define I2S_IRQ		0x1C
+#define I2S_TX_RATE	0x20
+#define I2S_RX_RATE	0x24
+
+/* i2s_daO i2s_dai register definitions */
+#define I2S_WW8      _SBF(0, 0) /* Word width is 8bit*/
+#define I2S_WW16     _SBF(0, 1) /* Word width is 16bit*/
+#define I2S_WW32     _SBF(0, 3) /* Word width is 32bit*/
+#define I2S_MONO     _BIT(2)   /* Mono */
+#define I2S_STOP     _BIT(3)   /* Stop, diables the access to FIFO, mutes the channel */
+#define I2S_RESET    _BIT(4)   /* Reset the channel */
+#define I2S_WS_SEL   _BIT(5)   /* Channel Master(0) or slave(1) mode select*/
+#define I2S_WS_HP(s) _SBF(6, s) /* Word select half period - 1 */
+
+#define I2S_MUTE     _BIT(15)  /* Mute the channel, Transmit channel only */
+
+#define I2S_WW32_HP  0x1f /* Word select half period for 32bit word width */
+#define I2S_WW16_HP  0x0f /* Word select half period for 16bit word width */
+#define I2S_WW8_HP   0x7  /* Word select half period for 8bit word width */
+
+#define WSMASK_HP	  0X7FC /* Mask for WS half period bits */
+
+/* i2s_tx_fifo register definitions */
+#define I2S_FIFO_TX_WRITE(d)              (d)
+
+/* i2s_rx_fifo register definitions */
+#define I2S_FIFO_RX_WRITE(d)              (d)
+
+/* i2s_stat register definitions */
+#define I2S_IRQ_STAT     _BIT(0)
+#define I2S_DMA0_REQ     _BIT(1)
+#define I2S_DMA1_REQ     _BIT(2)
+
+#define I2S_RX_STATE_MASK	0x0000ff00
+#define I2S_TX_STATE_MASK	0x00ff0000
+
+/* i2s_dma0 Configuration register definitions */
+#define I2S_DMA0_RX_EN     _BIT(0)       /* Enable RX DMA1*/
+#define I2S_DMA0_TX_EN     _BIT(1)       /* Enable TX DMA1*/
+#define I2S_DMA0_RX_DEPTH(s)  _SBF(8, s)  /* Set the level for DMA1 RX Request */
+#define I2S_DMA0_TX_DEPTH(s)  _SBF(16, s) /* Set the level for DMA1 TX Request */
+
+/* i2s_dma1 Configuration register definitions */
+#define I2S_DMA1_RX_EN     _BIT(0)       /* Enable RX DMA1*/
+#define I2S_DMA1_TX_EN     _BIT(1)       /* Enable TX DMA1*/
+#define I2S_DMA1_RX_DEPTH(s)  _SBF(8, s) /* Set the level for DMA1 RX Request */
+#define I2S_DMA1_TX_DEPTH(s)  _SBF(16, s) /* Set the level for DMA1 TX Request */
+
+/* i2s_irq register definitions */
+#define I2S_RX_IRQ_EN     _BIT(0)       /* Enable RX IRQ*/
+#define I2S_TX_IRQ_EN     _BIT(1)       /* Enable TX IRQ*/
+#define I2S_IRQ_RX_DEPTH(s)  _SBF(8, s)  /* valid values ar 0 to 7 */
+#define I2S_IRQ_TX_DEPTH(s)  _SBF(16, s) /* valid values ar 0 to 7 */
+
+#endif
diff --git a/sound/soc/fsl/lpc3xxx-pcm.c b/sound/soc/fsl/lpc3xxx-pcm.c
new file mode 100644
index 000000000000..2dbc60d06452
--- /dev/null
+++ b/sound/soc/fsl/lpc3xxx-pcm.c
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Author: Kevin Wells <kevin.wells@nxp.com>
+ *
+ * Copyright (C) 2008 NXP Semiconductors
+ * Copyright 2023 Timesys Corporation <piotr.wojtaszczyk@timesys.com>
+ */
+
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/dma-mapping.h>
+#include <linux/amba/pl08x.h>
+
+#include <sound/core.h>
+#include <sound/pcm.h>
+#include <sound/pcm_params.h>
+#include <sound/dmaengine_pcm.h>
+#include <sound/soc.h>
+
+#include "lpc3xxx-i2s.h"
+
+#define STUB_FORMATS	(SNDRV_PCM_FMTBIT_S8 | \
+			SNDRV_PCM_FMTBIT_U8 | \
+			SNDRV_PCM_FMTBIT_S16_LE | \
+			SNDRV_PCM_FMTBIT_U16_LE | \
+			SNDRV_PCM_FMTBIT_S24_LE | \
+			SNDRV_PCM_FMTBIT_U24_LE | \
+			SNDRV_PCM_FMTBIT_S32_LE | \
+			SNDRV_PCM_FMTBIT_U32_LE | \
+			SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE)
+
+
+static const struct snd_pcm_hardware lpc3xxx_pcm_hardware = {
+	.info = (SNDRV_PCM_INFO_MMAP |
+		 SNDRV_PCM_INFO_MMAP_VALID |
+		 SNDRV_PCM_INFO_INTERLEAVED |
+		 SNDRV_PCM_INFO_BLOCK_TRANSFER |
+		 SNDRV_PCM_INFO_PAUSE |
+		 SNDRV_PCM_INFO_RESUME),
+	.formats = STUB_FORMATS,
+	.period_bytes_min = 128,
+	.period_bytes_max = 2048,
+	.periods_min = 2,
+	.periods_max = 1024,
+	.buffer_bytes_max = 128 * 1024
+};
+
+static const struct snd_dmaengine_pcm_config lpc3xxx_dmaengine_pcm_config = {
+	.pcm_hardware = &lpc3xxx_pcm_hardware,
+	.prepare_slave_config = snd_dmaengine_pcm_prepare_slave_config,
+	.compat_filter_fn = pl08x_filter_id,
+	.prealloc_buffer_size = 128 * 1024,
+};
+
+const struct snd_soc_component_driver lpc3xxx_soc_platform_driver = {
+	.name = "lpc32xx-pcm",
+};
+
+int lpc3xxx_pcm_register(struct platform_device *pdev)
+{
+	int ret;
+
+	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, &lpc3xxx_dmaengine_pcm_config,
+			SND_DMAENGINE_PCM_FLAG_NO_DT | SND_DMAENGINE_PCM_FLAG_COMPAT);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register dmaengine: %d\n", ret);
+		return ret;
+	}
+
+	return devm_snd_soc_register_component(&pdev->dev, &lpc3xxx_soc_platform_driver,
+					       NULL, 0);
+}
+EXPORT_SYMBOL(lpc3xxx_pcm_register);
-- 
2.25.1


