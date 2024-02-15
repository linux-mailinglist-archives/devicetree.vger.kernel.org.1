Return-Path: <devicetree+bounces-42217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5EB856EC3
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 21:45:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23202B248A8
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 20:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E571313B29F;
	Thu, 15 Feb 2024 20:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="dDfUpygs"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0EB13AA50;
	Thu, 15 Feb 2024 20:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708029898; cv=none; b=pE59obxhDUwLp6KTDswa0NG4gCa6AqHOk1Sgqi1g2RW4JzAYiOusPYQTvuQ/iVBOhSMWBkngOdTuQlS8b/FEx8dqJ71NtuQ+uguZEux3+7yNFIGq4dKIZw2LE6tRb/VOATJ/ODH+9R5lJeRsHGD6+AsWIN0+/0ZLgfT5WXYP3+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708029898; c=relaxed/simple;
	bh=7CV6QRwLNTmFhkp6gonfuUkziq/XLWbZ+BEi3WEa6xY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VBinbcn4KLer3qef5KGeOLvVLcKpfp4T5mIZze/Cx6YdltGDD825KpHpf2Yay2oNop+JXEP/5EuCI9ZRY3nkD5+EmYX0UyMZX4tZJZOwsoFs1U24JbmqCw/eEIWzVsd4gp3FDcMRqqimQi7N4/nZ84EtqRL+CWZfcWBkYfaRwWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=dDfUpygs; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from umang.jain (unknown [103.86.18.214])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 50E4615B5;
	Thu, 15 Feb 2024 21:44:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708029890;
	bh=7CV6QRwLNTmFhkp6gonfuUkziq/XLWbZ+BEi3WEa6xY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dDfUpygsVVPcR7DQzhBrOTwv97Vju1ZqgXGFluVCZ6399GTZgVjwkaFeXsISXKQc9
	 l/WTgFwQypAmoTTZxiqmjoWAu5jUwBRIGytxg+J1hs4X7GSo5dg88Gz+6iEX5FXywn
	 wHyRdXoHcLURITXlYh/HhwbsI/Wc+pVZVaMLgUFo=
From: Umang Jain <umang.jain@ideasonboard.com>
To: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Fabio Estevam <festevam@gmail.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	willl will <will@willwhang.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Umang Jain <umang.jain@ideasonboard.com>
Subject: [PATCH 2/2] media: i2c: Add imx283 camera sensor driver
Date: Fri, 16 Feb 2024 02:14:35 +0530
Message-ID: <20240215204436.9194-3-umang.jain@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215204436.9194-1-umang.jain@ideasonboard.com>
References: <20240215204436.9194-1-umang.jain@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Kieran Bingham <kieran.bingham@ideasonboard.com>

Add a v4l2 subdevice driver for the Sony IMX283 image sensor.

The IMX283 is a 20MP Diagonal 15.86 mm (Type 1) CMOS Image Sensor with
Square Pixel for Color Cameras.

The following features are supported:
- Manual exposure an gain control support
- vblank/hblank/link freq control support
- Test pattern support control
- Arbitrary horizontal and vertical cropping
- Supported resolution:
  - 5472x3648 @ 20fps (SRGGB12)
  - 5472x3648 @ 25fps (SRGGB10)
  - 2736x1824 @ 50fps (SRGGB12)

Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
Signed-off-by: Umang Jain <umang.jain@ideasonboard.com>
---
 MAINTAINERS                |    1 +
 drivers/media/i2c/Kconfig  |   13 +
 drivers/media/i2c/Makefile |    1 +
 drivers/media/i2c/imx283.c | 1601 ++++++++++++++++++++++++++++++++++++
 4 files changed, 1616 insertions(+)
 create mode 100644 drivers/media/i2c/imx283.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 53df4b6e3260..3826e5c5d746 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20373,6 +20373,7 @@ L:	linux-media@vger.kernel.org
 S:	Maintained
 T:	git git://linuxtv.org/media_tree.git
 F:	Documentation/devicetree/bindings/media/i2c/sony,imx283.yaml
+F:	drivers/media/i2c/imx283.c
 
 SONY IMX290 SENSOR DRIVER
 M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
index 56f276b920ab..b798c55a2be5 100644
--- a/drivers/media/i2c/Kconfig
+++ b/drivers/media/i2c/Kconfig
@@ -153,6 +153,19 @@ config VIDEO_IMX274
 	  This is a V4L2 sensor driver for the Sony IMX274
 	  CMOS image sensor.
 
+config VIDEO_IMX283
+	tristate "Sony IMX283 sensor support"
+	depends on I2C && VIDEO_DEV
+	select MEDIA_CONTROLLER
+	select VIDEO_V4L2_SUBDEV_API
+	select V4L2_CCI_I2C
+	help
+	  This is a V4L2 sensor driver for the Sony IMX283
+	  CMOS image sensor.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called imx283.
+
 config VIDEO_IMX290
 	tristate "Sony IMX290 sensor support"
 	select REGMAP_I2C
diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
index dfbe6448b549..0fbd81f9f420 100644
--- a/drivers/media/i2c/Makefile
+++ b/drivers/media/i2c/Makefile
@@ -48,6 +48,7 @@ obj-$(CONFIG_VIDEO_IMX214) += imx214.o
 obj-$(CONFIG_VIDEO_IMX219) += imx219.o
 obj-$(CONFIG_VIDEO_IMX258) += imx258.o
 obj-$(CONFIG_VIDEO_IMX274) += imx274.o
+obj-$(CONFIG_VIDEO_IMX283) += imx283.o
 obj-$(CONFIG_VIDEO_IMX290) += imx290.o
 obj-$(CONFIG_VIDEO_IMX296) += imx296.o
 obj-$(CONFIG_VIDEO_IMX319) += imx319.o
diff --git a/drivers/media/i2c/imx283.c b/drivers/media/i2c/imx283.c
new file mode 100644
index 000000000000..52fafea18e7a
--- /dev/null
+++ b/drivers/media/i2c/imx283.c
@@ -0,0 +1,1601 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * V4L2 Support for the IMX283
+ *
+ * Diagonal 15.86 mm (Type 1) CMOS Image Sensor with Square Pixel for Color
+ * Cameras.
+ *
+ * Copyright (C) 2024 Ideas on Board Oy.
+ *
+ * Based on Sony IMX283 driver prepared by Will Whang
+ *
+ * Based on Sony imx477 camera driver
+ * Copyright (C) 2019-2020 Raspberry Pi (Trading) Ltd
+ */
+
+#include <asm/unaligned.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
+#include <media/v4l2-cci.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-event.h>
+#include <media/v4l2-fwnode.h>
+#include <media/v4l2-mediabus.h>
+
+/* Chip ID */
+#define IMX283_REG_CHIP_ID		CCI_REG8(0x3000)
+#define IMX283_CHIP_ID			0x0b	// Default power on state
+
+#define IMX283_REG_STANDBY		CCI_REG8(0x3000)
+#define   IMX283_ACTIVE			0
+#define   IMX283_STANDBY		BIT(0)
+#define   IMX283_STBLOGIC		BIT(1)
+#define   IMX283_STBMIPI		BIT(2)
+#define   IMX283_STBDV			BIT(3)
+#define   IMX283_SLEEP			BIT(4)
+
+#define IMX283_REG_CLAMP		CCI_REG8(0x3001)
+#define   IMX283_CLPSQRST		BIT(4)
+
+#define IMX283_REG_PLSTMG08		CCI_REG8(0x3003)
+#define   IMX283_PLSTMG08_VAL		0x77
+
+#define IMX283_REG_MDSEL1		CCI_REG8(0x3004)
+#define IMX283_REG_MDSEL2		CCI_REG8(0x3005)
+#define IMX283_REG_MDSEL3		CCI_REG8(0x3006)
+#define   IMX283_MDSEL3_VCROP_EN	BIT(5)
+#define IMX283_REG_MDSEL4		CCI_REG8(0x3007)
+#define   IMX283_MDSEL4_VCROP_EN	(BIT(4) | BIT(6))
+
+#define IMX283_REG_SVR			CCI_REG16_LE(0x3009)
+
+#define IMX283_REG_HTRIMMING		CCI_REG8(0x300b)
+#define   IMX283_MDVREV			BIT(0) /* VFLIP */
+#define   IMX283_HTRIMMING_EN		BIT(4)
+
+#define IMX283_REG_VWINPOS		CCI_REG16_LE(0x300f)
+#define IMX283_REG_VWIDCUT		CCI_REG16_LE(0x3011)
+
+#define IMX283_REG_MDSEL7		CCI_REG16_LE(0x3013)
+
+/* CSI Clock Configuration */
+#define IMX283_REG_TCLKPOST		CCI_REG8(0x3018)
+#define IMX283_REG_THSPREPARE		CCI_REG8(0x301a)
+#define IMX283_REG_THSZERO		CCI_REG8(0x301c)
+#define IMX283_REG_THSTRAIL		CCI_REG8(0x3020)
+#define IMX283_REG_TCLKPREPARE		CCI_REG8(0x3022)
+#define IMX283_REG_TCLKZERO		CCI_REG16_LE(0x3024)
+#define IMX283_REG_TLPX			CCI_REG8(0x3026)
+#define IMX283_REG_THSEXIT		CCI_REG8(0x3028)
+#define IMX283_REG_TCLKPRE		CCI_REG8(0x302a)
+
+#define IMX283_REG_Y_OUT_SIZE		CCI_REG16_LE(0x302f)
+#define IMX283_REG_WRITE_VSIZE		CCI_REG16_LE(0x3031)
+#define IMX283_REG_OB_SIZE_V		CCI_REG8(0x3033)
+
+/* HMAX internal HBLANK */
+#define IMX283_REG_HMAX			CCI_REG16_LE(0x3036)
+#define IMX283_HMAX_MAX			0xffff
+
+/* VMAX internal VBLANK */
+#define IMX283_REG_VMAX			CCI_REG24_LE(0x3038)
+#define   IMX283_VMAX_MAX		0xfffff
+
+/* SHR internal */
+#define IMX283_REG_SHR			CCI_REG16_LE(0x303b)
+#define   IMX283_SHR_MIN		11
+
+/*
+ * Analog gain control
+ *  Gain [dB] = -20log{(2048 - value [10:0]) /2048}
+ *  Range: 0dB to approximately +27dB
+ */
+#define IMX283_REG_ANALOG_GAIN		CCI_REG16_LE(0x3042)
+#define   IMX283_ANA_GAIN_MIN		0
+#define   IMX283_ANA_GAIN_MAX		1957
+#define   IMX283_ANA_GAIN_STEP		1
+#define   IMX283_ANA_GAIN_DEFAULT	0x0
+
+/*
+ * Digital gain control
+ *  Gain [dB] = value * 6
+ *  Range: 0dB to +18db
+ */
+#define IMX283_REG_DIGITAL_GAIN		CCI_REG8(0x3044)
+#define IMX283_DGTL_GAIN_MIN		0
+#define IMX283_DGTL_GAIN_MAX		3
+#define IMX283_DGTL_GAIN_DEFAULT	0
+#define IMX283_DGTL_GAIN_STEP		1
+
+#define IMX283_REG_HTRIMMING_START	CCI_REG16_LE(0x3058)
+#define IMX283_REG_HTRIMMING_END	CCI_REG16_LE(0x305a)
+
+#define IMX283_REG_MDSEL18		CCI_REG16_LE(0x30f6)
+
+/* Master Mode Operation Control */
+#define IMX283_REG_XMSTA		CCI_REG8(0x3105)
+#define   IMX283_XMSTA			BIT(0)
+
+#define IMX283_REG_SYNCDRV		CCI_REG8(0x3107)
+#define   IMX283_SYNCDRV_XHS_XVS	(0xa0 | 0x02)
+#define   IMX283_SYNCDRV_HIZ		(0xa0 | 0x03)
+
+/* PLL Standby */
+#define IMX283_REG_STBPL		CCI_REG8(0x320b)
+#define  IMX283_STBPL_NORMAL		0x00
+#define  IMX283_STBPL_STANDBY		0x03
+
+/* Input Frequency Setting */
+#define IMX283_REG_PLRD1		CCI_REG8(0x36c1)
+#define IMX283_REG_PLRD2		CCI_REG16_LE(0x36c2)
+#define IMX283_REG_PLRD3		CCI_REG8(0x36f7)
+#define IMX283_REG_PLRD4		CCI_REG8(0x36f8)
+
+#define IMX283_REG_PLSTMG02		CCI_REG8(0x36aa)
+#define   IMX283_PLSTMG02_VAL		0x00
+
+#define IMX283_REG_EBD_X_OUT_SIZE	CCI_REG16_LE(0x3a54)
+
+/* Test pattern generator */
+#define IMX283_REG_TPG_CTRL		CCI_REG8(0x3156)
+#define   IMX283_TPG_CTRL_CLKEN		BIT(0)
+#define   IMX283_TPG_CTRL_PATEN		BIT(4)
+
+#define IMX283_REG_TPG_PAT		CCI_REG8(0x3157)
+#define   IMX283_TPG_PAT_ALL_000	0x00
+#define   IMX283_TPG_PAT_ALL_FFF	0x01
+#define   IMX283_TPG_PAT_ALL_555	0x02
+#define   IMX283_TPG_PAT_ALL_AAA	0x03
+#define   IMX283_TPG_PAT_H_COLOR_BARS	0x0a
+#define   IMX283_TPG_PAT_V_COLOR_BARS	0x0b
+
+/* Exposure control */
+#define IMX283_EXPOSURE_MIN		52
+#define IMX283_EXPOSURE_STEP		1
+#define IMX283_EXPOSURE_DEFAULT		1000
+#define IMX283_EXPOSURE_MAX		49865
+
+/* Embedded metadata stream structure */
+#define IMX283_EMBEDDED_LINE_WIDTH 16384
+#define IMX283_NUM_EMBEDDED_LINES 1
+
+#define MHZ(x)				((x) * 1000 * 1000)
+#define IMAGE_PAD			0
+
+#define imx283_XCLR_MIN_DELAY_US	1000
+#define imx283_XCLR_DELAY_RANGE_US	1000
+
+/* IMX283 native and active pixel array size. */
+static const struct v4l2_rect imx283_native_area = {
+	.top = 0,
+	.left = 0,
+	.width = 5592,
+	.height = 3710,
+};
+
+static const struct v4l2_rect imx283_active_area = {
+	.top = 40,
+	.left = 108,
+	.width = 5472,
+	.height = 3648,
+};
+
+struct IMX283_reg_list {
+	unsigned int num_of_regs;
+	const struct cci_reg_sequence *regs;
+};
+
+/* Mode : resolution and related config values */
+struct imx283_mode {
+	unsigned int mode;
+
+	/* Bits per pixel */
+	unsigned int bpp;
+
+	/* Frame width */
+	unsigned int width;
+
+	/* Frame height */
+	unsigned int height;
+
+	/*
+	 * Minimum horizontal timing in pixel-units
+	 *
+	 * Note that HMAX is written in 72MHz units, and the datasheet assumes a
+	 * 720MHz link frequency. Convert datasheet values with the following:
+	 *
+	 * For 12 bpp modes (480Mbps) convert with:
+	 *   hmax = [hmax in 72MHz units] * 480 / 72
+	 *
+	 * For 10 bpp modes (576Mbps) convert with:
+	 *   hmax = [hmax in 72MHz units] * 576 / 72
+	 */
+	u64 min_hmax;
+
+	/* minimum V-timing in lines */
+	u64 min_vmax;
+
+	/* default H-timing */
+	u64 default_hmax;
+
+	/* default V-timing */
+	u64 default_vmax;
+
+	/* minimum SHR */
+	u64 min_shr;
+
+	/* Abritrary vertical cropping */
+	u32 veff;
+	u32 vst;
+	u32 vct;
+
+	/* Horizontal and vertical binning ratio */
+	u8 hbin_ratio;
+	u8 vbin_ratio;
+
+	/* Optical Blanking */
+	u32 horizontal_ob;
+	u32 vertical_ob;
+
+	/* Analog crop rectangle. */
+	struct v4l2_rect crop;
+};
+
+struct imx283_input_frequency {
+	unsigned int mhz;
+	unsigned int reg_count;
+	struct cci_reg_sequence regs[4];
+};
+
+static const struct imx283_input_frequency imx283_frequencies[] = {
+	{
+		.mhz = MHZ(6),
+		.reg_count = 4,
+		.regs = {
+			{ IMX283_REG_PLRD1, 0x00 },
+			{ IMX283_REG_PLRD2, 0x00f0 },
+			{ IMX283_REG_PLRD3, 0x00 },
+			{ IMX283_REG_PLRD4, 0xc0 },
+		},
+	},
+	{
+		.mhz = MHZ(12),
+		.reg_count = 4,
+		.regs = {
+			{ IMX283_REG_PLRD1, 0x01 },
+			{ IMX283_REG_PLRD2, 0x00f0 },
+			{ IMX283_REG_PLRD3, 0x01 },
+			{ IMX283_REG_PLRD4, 0xc0 },
+		},
+	},
+	{
+		.mhz = MHZ(18),
+		.reg_count = 4,
+		.regs = {
+			{ IMX283_REG_PLRD1, 0x01 },
+			{ IMX283_REG_PLRD2, 0x00a0 },
+			{ IMX283_REG_PLRD3, 0x01 },
+			{ IMX283_REG_PLRD4, 0x80 },
+		},
+	},
+	{
+		.mhz = MHZ(24),
+		.reg_count = 4,
+		.regs = {
+			{ IMX283_REG_PLRD1, 0x02 },
+			{ IMX283_REG_PLRD2, 0x00f0 },
+			{ IMX283_REG_PLRD3, 0x02 },
+			{ IMX283_REG_PLRD4, 0xc0 },
+		},
+	},
+};
+
+enum imx283_modes {
+	IMX283_MODE_0,
+	IMX283_MODE_1,
+	IMX283_MODE_1A,
+	IMX283_MODE_1S,
+	IMX283_MODE_2,
+	IMX283_MODE_2A,
+	IMX283_MODE_3,
+	IMX283_MODE_4,
+	IMX283_MODE_5,
+	IMX283_MODE_6,
+};
+
+struct imx283_readout_mode {
+	u64 mdsel1;
+	u64 mdsel2;
+	u64 mdsel3;
+	u64 mdsel4;
+};
+
+static const struct imx283_readout_mode imx283_readout_modes[] = {
+	/* All pixel scan modes */
+	[IMX283_MODE_0] = { 0x04, 0x03, 0x10, 0x00 }, /* 12 bit */
+	[IMX283_MODE_1] = { 0x04, 0x01, 0x00, 0x00 }, /* 10 bit */
+	[IMX283_MODE_1A] = { 0x04, 0x01, 0x20, 0x50 }, /* 10 bit */
+	[IMX283_MODE_1S] = { 0x04, 0x41, 0x20, 0x50 }, /* 10 bit */
+
+	/* Horizontal / Vertical 2/2-line binning */
+	[IMX283_MODE_2] = { 0x0d, 0x11, 0x50, 0x00 }, /* 12 bit */
+	[IMX283_MODE_2A] = { 0x0d, 0x11, 0x70, 0x50 }, /* 12 bit */
+
+	/* Horizontal / Vertical 3/3-line binning */
+	[IMX283_MODE_3] = { 0x1e, 0x18, 0x10, 0x00 }, /* 12 bit */
+
+	/* Veritcal 2/9 subsampling, horizontal 3 binning cropping */
+	[IMX283_MODE_4] = { 0x29, 0x18, 0x30, 0x50 }, /* 12 bit */
+
+	/* Vertical 2/19 subsampling binning, horizontal 3 binning */
+	[IMX283_MODE_5] = { 0x2d, 0x18, 0x10, 0x00 }, /* 12 bit */
+
+	/* Vertical 2 binning horizontal 2/4, subsampling 16:9 cropping */
+	[IMX283_MODE_6] = { 0x18, 0x21, 0x00, 0x09 }, /* 10 bit */
+};
+
+static const struct cci_reg_sequence mipi_data_rate_1440Mbps[] = {
+	/* The default register settings provide the 1440Mbps rate */
+	{ CCI_REG8(0x36c5), 0x00 }, /* Undocumented */
+	{ CCI_REG8(0x3ac4), 0x00 }, /* Undocumented */
+
+	{ CCI_REG8(0x320B), 0x00 }, /* STBPL */
+	{ CCI_REG8(0x3018), 0xa7 }, /* TCLKPOST */
+	{ CCI_REG8(0x301A), 0x6f }, /* THSPREPARE */
+	{ CCI_REG8(0x301C), 0x9f }, /* THSZERO */
+	{ CCI_REG8(0x301E), 0x5f }, /* THSTRAIL */
+	{ CCI_REG8(0x3020), 0x5f }, /* TCLKTRAIL */
+	{ CCI_REG8(0x3022), 0x6f }, /* TCLKPREPARE */
+	{ CCI_REG8(0x3024), 0x7f }, /* TCLKZERO[7:0] */
+	{ CCI_REG8(0x3025), 0x01 }, /* TCLKZERO[8] */
+	{ CCI_REG8(0x3026), 0x4f }, /* TLPX*/
+	{ CCI_REG8(0x3028), 0x47 }, /* THSEXIT */
+	{ CCI_REG8(0x302A), 0x07 }, /* TCKLPRE */
+	{ CCI_REG8(0x3104), 0x02 }, /* SYSMODE */
+};
+
+static const struct cci_reg_sequence mipi_data_rate_720Mbps[] = {
+	/* Undocumented Additions "For 720MBps" Setting */
+	{ CCI_REG8(0x36c5), 0x01 }, /* Undocumented */
+	{ CCI_REG8(0x3ac4), 0x01 }, /* Undocumented */
+
+	{ CCI_REG8(0x320B), 0x00 }, /* STBPL */
+	{ CCI_REG8(0x3018), 0x77 }, /* TCLKPOST */
+	{ CCI_REG8(0x301A), 0x37 }, /* THSPREPARE */
+	{ CCI_REG8(0x301C), 0x67 }, /* THSZERO */
+	{ CCI_REG8(0x301E), 0x37 }, /* THSTRAIL */
+	{ CCI_REG8(0x3020), 0x37 }, /* TCLKTRAIL */
+	{ CCI_REG8(0x3022), 0x37 }, /* TCLKPREPARE */
+	{ CCI_REG8(0x3024), 0xDF }, /* TCLKZERO[7:0] */
+	{ CCI_REG8(0x3025), 0x00 }, /* TCLKZERO[8] */
+	{ CCI_REG8(0x3026), 0x2F }, /* TLPX*/
+	{ CCI_REG8(0x3028), 0x47 }, /* THSEXIT */
+	{ CCI_REG8(0x302A), 0x0F }, /* TCKLPRE */
+	{ CCI_REG8(0x3104), 0x02 }, /* SYSMODE */
+};
+
+static const s64 link_frequencies[] = {
+	MHZ(720), /* 1440 Mbps lane data rate */
+	MHZ(360), /* 720 Mbps data lane rate */
+};
+
+static const struct IMX283_reg_list link_freq_reglist[] = {
+	{ /* MHZ(720)*/
+		.num_of_regs = ARRAY_SIZE(mipi_data_rate_1440Mbps),
+		.regs = mipi_data_rate_1440Mbps,
+	},
+	{ /* MHZ(360) */
+		.num_of_regs = ARRAY_SIZE(mipi_data_rate_720Mbps),
+		.regs = mipi_data_rate_720Mbps,
+	},
+};
+
+#define CENTERED_RECTANGLE(rect, _width, _height) \
+	{ \
+		.left = rect.left + ((rect.width - (_width)) / 2), \
+		.top = rect.top + ((rect.height - (_height)) / 2), \
+		.width = (_width), \
+		.height = (_height), \
+	}
+
+/* Mode configs */
+static const struct imx283_mode supported_modes_12bit[] = {
+	{
+		/* 20MPix 21.40 fps readout mode 0 */
+		.mode = IMX283_MODE_0,
+		.bpp = 12,
+		.width = 5472,
+		.height = 3648,
+		.min_hmax = 5914, /* 887 @ 480MHz/72MHz */
+		.min_vmax = 3793, /* Lines */
+
+		.veff = 3694,
+		.vst = 0,
+		.vct = 0,
+
+		.hbin_ratio = 1,
+		.vbin_ratio = 1,
+
+		/* 20.00 FPS */
+		.default_hmax = 6000, /* 900 @ 480MHz/72MHz */
+		.default_vmax = 4000,
+
+		.min_shr = 11,
+		.horizontal_ob = 96,
+		.vertical_ob = 16,
+		.crop = CENTERED_RECTANGLE(imx283_active_area, 5472, 3648),
+	},
+	{
+		/*
+		 * Readout mode 2 : 2/2 binned mode (2736x1824)
+		 */
+		.mode = IMX283_MODE_2,
+		.bpp = 12,
+		.width = 2736,
+		.height = 1824,
+		.min_hmax = 1870, /* Pixels (362 * 360/72 + padding) */
+		.min_vmax = 3840, /* Lines */
+
+		/* 50.00 FPS */
+		.default_hmax = 1870, /* 362 @ 360MHz/72MHz */
+		.default_vmax = 3960,
+
+		.veff = 1824,
+		.vst = 0,
+		.vct = 0,
+
+		.hbin_ratio = 2,
+		.vbin_ratio = 2,
+
+		.min_shr = 12,
+		.horizontal_ob = 48,
+		.vertical_ob = 4,
+
+		.crop = CENTERED_RECTANGLE(imx283_active_area, 5472, 3648),
+	},
+};
+
+static const struct imx283_mode supported_modes_10bit[] = {
+	{
+		/* 20MPix 25.48 fps readout mode 1 */
+		.mode = IMX283_MODE_1,
+		.bpp = 10,
+		.width = 5472,
+		.height = 3648,
+		.min_hmax = 5960, /* 745 @ 576MHz / 72MHz */
+		.min_vmax = 3793,
+
+		/* 25.00 FPS */
+		.default_hmax = 1500, /* 750 @ 576MHz / 72MHz */
+		.default_vmax = 3840,
+
+		.min_shr = 10,
+		.horizontal_ob = 96,
+		.vertical_ob = 16,
+		.crop = CENTERED_RECTANGLE(imx283_active_area, 5472, 3648),
+	},
+};
+
+/*
+ * The supported mbus formats.
+ */
+static const u32 codes[] = {
+	/* 12-bit modes. */
+	MEDIA_BUS_FMT_SRGGB12_1X12,
+
+	/* 10-bit modes. */
+	MEDIA_BUS_FMT_SRGGB10_1X10,
+};
+
+/* regulator supplies */
+static const char *const imx283_supply_name[] = {
+	"vana", /* Analog (2.9V) supply */
+	"vdig", /* Supply Voltage 2 (1.8V) supply */
+	"vddl", /* Supply Voltage 3 (1.2V) supply */
+};
+
+
+struct imx283 {
+	struct device *dev;
+	struct regmap *cci;
+
+	const struct imx283_input_frequency *freq;
+
+	struct v4l2_subdev sd;
+	struct media_pad pad;
+
+	unsigned int fmt_code;
+
+	struct clk *xclk;
+
+	struct gpio_desc *reset_gpio;
+	struct regulator_bulk_data supplies[ARRAY_SIZE(imx283_supply_name)];
+
+	/* V4L2 Controls */
+	struct v4l2_ctrl_handler ctrl_handler;
+	struct v4l2_ctrl *pixel_rate;
+	struct v4l2_ctrl *link_freq;
+	struct v4l2_ctrl *exposure;
+	struct v4l2_ctrl *vblank;
+	struct v4l2_ctrl *hblank;
+	struct v4l2_ctrl *vflip;
+
+	struct mutex mutex;
+
+	/* Current mode */
+	const struct imx283_mode *mode;
+
+	unsigned long link_freq_bitmap;
+
+	u16 hmax;
+	u32 vmax;
+};
+
+static inline struct imx283 *to_imx283(struct v4l2_subdev *_sd)
+{
+	return container_of(_sd, struct imx283, sd);
+}
+
+static inline void get_mode_table(unsigned int code,
+				  const struct imx283_mode **mode_list,
+				  unsigned int *num_modes)
+{
+	switch (code) {
+	/* 12-bit */
+	case MEDIA_BUS_FMT_SRGGB12_1X12:
+	case MEDIA_BUS_FMT_SGRBG12_1X12:
+	case MEDIA_BUS_FMT_SGBRG12_1X12:
+	case MEDIA_BUS_FMT_SBGGR12_1X12:
+		*mode_list = supported_modes_12bit;
+		*num_modes = ARRAY_SIZE(supported_modes_12bit);
+		break;
+	/* 10-bit */
+	case MEDIA_BUS_FMT_SRGGB10_1X10:
+	case MEDIA_BUS_FMT_SGRBG10_1X10:
+	case MEDIA_BUS_FMT_SGBRG10_1X10:
+	case MEDIA_BUS_FMT_SBGGR10_1X10:
+		*mode_list = supported_modes_10bit;
+		*num_modes = ARRAY_SIZE(supported_modes_10bit);
+		break;
+	default:
+		*mode_list = NULL;
+		*num_modes = 0;
+	}
+}
+
+/* Calculate the Pixel Rate based on the current mode */
+static u64 imx283_pixel_rate(struct imx283 *imx283)
+{
+	const struct imx283_mode *mode = imx283->mode;
+	unsigned int bpp = mode->bpp;
+
+	const unsigned int ddr = 2; /* Double Data Rate */
+	const unsigned int lanes = 4; /* Only 4 lane support */
+
+	u64 link_frequency = link_frequencies[__ffs(imx283->link_freq_bitmap)];
+	u64 pixel_rate = link_frequency * ddr * lanes / bpp;
+
+	return pixel_rate;
+}
+
+/* Convert from a variable pixel_rate to 72 MHz clock cycles */
+static u64 imx283_internal_clock(unsigned int pixel_rate, unsigned int pixels)
+{
+	/*
+	 * Determine the following operation without overflow:
+	 *    pixels * MHZ(72) / pixel_rate
+	 *
+	 * The internal clock at 72MHz and Pixel Rate (between 240 and 576MHz)
+	 * can easily overflow this calculation, so pre-divide to simplify.
+	 */
+	const u32 iclk_pre = MHZ(72) / 1000000;
+	const u32 pclk_pre = pixel_rate / 1000000;
+
+	return pixels * iclk_pre / pclk_pre;
+}
+
+/* Internal clock (72MHz) to Pixel Rate clock (Variable) */
+static u64 imx283_iclk_to_pix(unsigned int pixel_rate, unsigned int cycles)
+{
+	/*
+	 * Determine the following operation without overflow:
+	 *    cycles * pixel_rate / MHZ(72)
+	 *
+	 * The internal clock at 72MHz and Pixel Rate (between 240 and 576MHz)
+	 * can easily overflow this calculation, so pre-divide to simplify.
+	 */
+	const u32 iclk_pre = MHZ(72) / 1000000;
+	const u32 pclk_pre = pixel_rate / 1000000;
+
+	return cycles * pclk_pre / iclk_pre;
+}
+
+/* Determine the exposure based on current hmax, vmax and a given SHR */
+static u64 imx283_exposure(struct imx283 *imx283, u64 shr)
+{
+	u32 svr = 0; /* SVR feature is not currently supported */
+	u32 hmax = imx283->hmax;
+	u64 vmax = imx283->vmax;
+	u32 offset;
+	u64 numerator;
+
+	/* Number of clocks per internal offset period */
+	offset = imx283->mode->mode == IMX283_MODE_0 ? 209 : 157;
+	numerator = (vmax * (svr + 1) - shr) * hmax + offset;
+
+	do_div(numerator, hmax);
+	numerator = clamp_t(u32, numerator, 0, 0xFFFFFFFF);
+	return numerator;
+}
+
+static void imx283_exposure_limits(struct imx283 *imx283,
+				   u64 *min_exposure, u64 *max_exposure)
+{
+	u64 vmax = imx283->vmax;
+	u32 svr = 0; /* SVR feature is not currently supported */
+	u64 min_shr = imx283->mode->min_shr;
+	u64 max_shr = (svr + 1) * vmax - 4; /* Global Shutter is not supported */
+
+	max_shr = min_t(u64, max_shr, 0xFFFF);
+
+	*min_exposure = imx283_exposure(imx283, max_shr);
+	*max_exposure = imx283_exposure(imx283, min_shr);
+}
+
+/*
+ * Integration Time [s] = [{VMAX x (SVR + 1) – (SHR)} x HMAX + offset]
+ *                      / (72 x 10^6)
+ */
+static u32 imx283_shr(struct imx283 *imx283, u32 exposure)
+{
+	u32 svr = 0; /* SVR feature is not currently supported */
+	u32 hmax = imx283->hmax;
+	u64 vmax = imx283->vmax;
+	u32 shr;
+	u64 temp;
+
+	/* Number of clocks per internal offset period */
+	u32 offset = imx283->mode->mode == IMX283_MODE_0 ? 209 : 157;
+
+	temp = ((u64)exposure * hmax - offset);
+	do_div(temp, hmax);
+	shr = (u32)(vmax * (svr + 1) - temp);
+
+	return shr;
+}
+
+static const char * const imx283_tpg_menu[] = {
+	"Disabled",
+	"All 000h",
+	"All FFFh",
+	"All 555h",
+	"All AAAh",
+	"Horizontal color bars",
+	"Vertical color bars",
+};
+
+static const int imx283_tpg_val[] = {
+	IMX283_TPG_PAT_ALL_000,
+	IMX283_TPG_PAT_ALL_000,
+	IMX283_TPG_PAT_ALL_FFF,
+	IMX283_TPG_PAT_ALL_555,
+	IMX283_TPG_PAT_ALL_AAA,
+	IMX283_TPG_PAT_H_COLOR_BARS,
+	IMX283_TPG_PAT_V_COLOR_BARS,
+};
+
+static int imx283_update_test_pattern(struct imx283 *imx283, u32 pattern_index)
+{
+	int ret;
+
+	if (pattern_index >= ARRAY_SIZE(imx283_tpg_val))
+		return -EINVAL;
+
+	if (pattern_index) {
+		ret = cci_write(imx283->cci, IMX283_REG_TPG_PAT,
+				imx283_tpg_val[pattern_index], NULL);
+		if (ret)
+			return ret;
+
+		ret = cci_write(imx283->cci, IMX283_REG_TPG_CTRL,
+				IMX283_TPG_CTRL_CLKEN | IMX283_TPG_CTRL_PATEN, NULL);
+	} else {
+		ret = cci_write(imx283->cci, IMX283_REG_TPG_CTRL, 0x00, NULL);
+	}
+
+	return ret;
+}
+
+static int imx283_set_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct imx283 *imx283 = container_of(ctrl->handler, struct imx283,
+					     ctrl_handler);
+	const struct imx283_mode *mode = imx283->mode;
+	u64 shr, pixel_rate;
+	int ret = 0;
+
+	/*
+	 * The VBLANK control may change the limits of usable exposure, so check
+	 * and adjust if necessary.
+	 */
+	if (ctrl->id == V4L2_CID_VBLANK) {
+		/* Honour the VBLANK limits when setting exposure. */
+		u64 current_exposure, max_exposure, min_exposure;
+
+		imx283->vmax = mode->height + ctrl->val;
+
+		imx283_exposure_limits(imx283, &min_exposure, &max_exposure);
+
+		current_exposure = imx283->exposure->val;
+		current_exposure = clamp_t(u32, current_exposure, min_exposure,
+					   max_exposure);
+
+		__v4l2_ctrl_modify_range(imx283->exposure, min_exposure,
+					 max_exposure, 1, current_exposure);
+	}
+
+	/*
+	 * Applying V4L2 control value only happens
+	 * when power is up for streaming
+	 */
+	if (pm_runtime_get_if_in_use(imx283->dev) == 0)
+		return 0;
+
+	switch (ctrl->id) {
+	case V4L2_CID_EXPOSURE:
+		shr = imx283_shr(imx283, ctrl->val);
+		dev_dbg(imx283->dev, "V4L2_CID_EXPOSURE : %d - SHR: %lld\n",
+			ctrl->val, shr);
+		ret = cci_write(imx283->cci, IMX283_REG_SHR, shr, NULL);
+		break;
+
+	case V4L2_CID_HBLANK:
+		pixel_rate = imx283_pixel_rate(imx283);
+		imx283->hmax = imx283_internal_clock(pixel_rate, mode->width + ctrl->val);
+		dev_dbg(imx283->dev, "V4L2_CID_HBLANK : %d  HMAX : %d\n",
+			ctrl->val, imx283->hmax);
+		ret = cci_write(imx283->cci, IMX283_REG_HMAX, imx283->hmax, NULL);
+		break;
+
+	case V4L2_CID_VBLANK:
+		imx283->vmax = mode->height + ctrl->val;
+		dev_dbg(imx283->dev, "V4L2_CID_VBLANK : %d  VMAX : %d\n",
+			ctrl->val, imx283->vmax);
+		ret = cci_write(imx283->cci, IMX283_REG_VMAX, imx283->vmax, NULL);
+		break;
+
+	case V4L2_CID_ANALOGUE_GAIN:
+		ret = cci_write(imx283->cci, IMX283_REG_ANALOG_GAIN, ctrl->val, NULL);
+		break;
+
+	case V4L2_CID_DIGITAL_GAIN:
+		ret = cci_write(imx283->cci, IMX283_REG_DIGITAL_GAIN, ctrl->val, NULL);
+		break;
+
+	case V4L2_CID_VFLIP:
+		/*
+		 * VFLIP is managed by BIT(0) of IMX283_REG_HTRIMMING address, hence
+		 * both needed to be set simulatenously.
+		 */
+		if (ctrl->val) {
+			cci_write(imx283->cci, IMX283_REG_HTRIMMING,
+				  IMX283_HTRIMMING_EN | IMX283_MDVREV, &ret);
+		} else {
+			cci_write(imx283->cci, IMX283_REG_HTRIMMING,
+				  IMX283_HTRIMMING_EN, &ret);
+		}
+		break;
+
+	case V4L2_CID_TEST_PATTERN:
+		ret = imx283_update_test_pattern(imx283, ctrl->val);
+		break;
+
+	default:
+		dev_err(imx283->dev, "ctrl(id:0x%x, val:0x%x) is not handled\n",
+			ctrl->id, ctrl->val);
+		break;
+	}
+
+	pm_runtime_put(imx283->dev);
+
+	return ret;
+}
+
+static const struct v4l2_ctrl_ops imx283_ctrl_ops = {
+	.s_ctrl = imx283_set_ctrl,
+};
+
+static int imx283_enum_mbus_code(struct v4l2_subdev *sd,
+				 struct v4l2_subdev_state *sd_state,
+				 struct v4l2_subdev_mbus_code_enum *code)
+{
+	if (code->index >= (ARRAY_SIZE(codes)))
+		return -EINVAL;
+
+	code->code = codes[code->index];
+
+	return 0;
+}
+
+static int imx283_enum_frame_size(struct v4l2_subdev *sd,
+				  struct v4l2_subdev_state *sd_state,
+				  struct v4l2_subdev_frame_size_enum *fse)
+{
+	const struct imx283_mode *mode_list;
+	unsigned int num_modes;
+
+	get_mode_table(fse->code, &mode_list, &num_modes);
+
+	if (fse->index >= num_modes)
+		return -EINVAL;
+
+	fse->min_width = mode_list[fse->index].width;
+	fse->max_width = fse->min_width;
+	fse->min_height = mode_list[fse->index].height;
+	fse->max_height = fse->min_height;
+
+	return 0;
+}
+
+static void imx283_reset_colorspace(struct v4l2_mbus_framefmt *fmt)
+{
+	fmt->colorspace = V4L2_COLORSPACE_RAW;
+	fmt->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(fmt->colorspace);
+	fmt->quantization = V4L2_MAP_QUANTIZATION_DEFAULT(true, fmt->colorspace,
+							  fmt->ycbcr_enc);
+	fmt->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(fmt->colorspace);
+}
+
+static void imx283_update_image_pad_format(struct imx283 *imx283,
+					   const struct imx283_mode *mode,
+					   struct v4l2_mbus_framefmt *format)
+{
+	format->width = mode->width;
+	format->height = mode->height;
+	format->field = V4L2_FIELD_NONE;
+	imx283_reset_colorspace(format);
+}
+
+static int imx283_init_state(struct v4l2_subdev *sd,
+			     struct v4l2_subdev_state *state)
+{
+	struct imx283 *imx283 = to_imx283(sd);
+	struct v4l2_mbus_framefmt *format;
+	const struct imx283_mode *mode;
+	struct v4l2_rect *crop;
+
+	/* Initialize try_fmt */
+	format = v4l2_subdev_state_get_format(state, IMAGE_PAD);
+
+	mode = &supported_modes_12bit[0];
+	imx283->mode = mode;
+	format->code = MEDIA_BUS_FMT_SRGGB12_1X12;
+	imx283_update_image_pad_format(imx283, mode, format);
+
+	/* Initialize crop rectangle to mode default */
+	crop = v4l2_subdev_state_get_crop(state, IMAGE_PAD);
+	*crop = mode->crop;
+
+	return 0;
+}
+
+static void imx283_set_framing_limits(struct imx283 *imx283)
+{
+	const struct imx283_mode *mode = imx283->mode;
+	u64 pixel_rate = imx283_pixel_rate(imx283);
+	u64 min_hblank, max_hblank, def_hblank;
+
+	/*
+	 * Initialise hmax and vmax for exposure calculations
+	 */
+	imx283->hmax = imx283_internal_clock(pixel_rate, mode->default_hmax);
+	imx283->vmax = mode->default_vmax;
+
+	/*
+	 * Horizontal Blanking
+	 * Convert the HMAX_MAX (72MHz) to Pixel rate values for HBLANK_MAX
+	 */
+	min_hblank = mode->min_hmax - mode->width;
+	max_hblank = imx283_iclk_to_pix(pixel_rate, IMX283_HMAX_MAX) - mode->width;
+	def_hblank = mode->default_hmax - mode->width;
+	__v4l2_ctrl_modify_range(imx283->hblank, min_hblank, max_hblank, 1,
+				 def_hblank);
+	__v4l2_ctrl_s_ctrl(imx283->hblank, def_hblank);
+
+	/* Vertical Blanking */
+	__v4l2_ctrl_modify_range(imx283->vblank, mode->min_vmax - mode->height,
+				 IMX283_VMAX_MAX - mode->height, 1,
+				 mode->default_vmax - mode->height);
+	__v4l2_ctrl_s_ctrl(imx283->vblank, mode->default_vmax - mode->height);
+}
+
+static int imx283_set_pad_format(struct v4l2_subdev *sd,
+				 struct v4l2_subdev_state *sd_state,
+				 struct v4l2_subdev_format *fmt)
+{
+	struct v4l2_mbus_framefmt *format;
+	const struct imx283_mode *mode;
+	struct imx283 *imx283 = to_imx283(sd);
+	const struct imx283_mode *mode_list;
+	unsigned int num_modes;
+
+	get_mode_table(fmt->format.code, &mode_list, &num_modes);
+
+	mode = v4l2_find_nearest_size(mode_list, num_modes, width, height,
+				      fmt->format.width, fmt->format.height);
+
+	imx283_update_image_pad_format(imx283, mode, &fmt->format);
+
+	format = v4l2_subdev_state_get_format(sd_state, 0);
+
+	if (imx283->mode == mode && format->code == fmt->format.code)
+		return 0;
+
+	if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
+		imx283->mode = mode;
+		imx283->fmt_code = fmt->format.code;
+		imx283_set_framing_limits(imx283);
+	}
+
+	*format = fmt->format;
+
+	return 0;
+}
+
+static int imx283_standby_cancel(struct imx283 *imx283)
+{
+	int ret = 0;
+	unsigned int link_freq_idx;
+
+	cci_write(imx283->cci, IMX283_REG_STANDBY,
+		  IMX283_STBLOGIC | IMX283_STBDV, &ret);
+
+	/* Configure PLL clocks based on the xclk */
+	cci_multi_reg_write(imx283->cci, imx283->freq->regs,
+			    imx283->freq->reg_count, &ret);
+
+	dev_dbg(imx283->dev, "Using clk freq %d MHz", imx283->freq->mhz / MHZ(1));
+
+	/* Initialise communication */
+	cci_write(imx283->cci, IMX283_REG_PLSTMG08, IMX283_PLSTMG08_VAL, &ret);
+	cci_write(imx283->cci, IMX283_REG_PLSTMG02, IMX283_PLSTMG02_VAL, &ret);
+
+	/* Enable PLL */
+	cci_write(imx283->cci, IMX283_REG_STBPL, IMX283_STBPL_NORMAL, &ret);
+
+	/* Configure the MIPI link speed */
+	link_freq_idx = __ffs(imx283->link_freq_bitmap);
+	cci_multi_reg_write(imx283->cci,
+			    link_freq_reglist[link_freq_idx].regs,
+			    link_freq_reglist[link_freq_idx].num_of_regs,
+			    &ret);
+
+	usleep_range(1000, 2000); /* 1st Stabilisation period of 1 ms or more */
+
+	/* Activate */
+	cci_write(imx283->cci, IMX283_REG_STANDBY, IMX283_ACTIVE, &ret);
+	usleep_range(19000, 20000); /* 2nd Stabilisation period of 19ms or more */
+
+	cci_write(imx283->cci, IMX283_REG_CLAMP, IMX283_CLPSQRST, &ret);
+	cci_write(imx283->cci, IMX283_REG_XMSTA, 0, &ret);
+	cci_write(imx283->cci, IMX283_REG_SYNCDRV, IMX283_SYNCDRV_XHS_XVS, &ret);
+
+	return ret;
+}
+
+/* Start streaming */
+static int imx283_start_streaming(struct imx283 *imx283,
+				  struct v4l2_subdev_state *state)
+{
+	const struct imx283_readout_mode *readout;
+	const struct imx283_mode *mode = imx283->mode;
+	u32 v_widcut;
+	s32 v_pos;
+	u32 write_v_size;
+	u32 y_out_size;
+	int ret;
+
+	ret = imx283_standby_cancel(imx283);
+	if (ret) {
+		dev_err(imx283->dev, "failed to cancel standby\n");
+		return ret;
+	}
+
+	/*
+	 * Set the readout mode registers.
+	 * MDSEL3 and MDSEL4 are updated to enable Arbitrary Vertical Cropping.
+	 */
+	readout = &imx283_readout_modes[imx283->mode->mode];
+	cci_write(imx283->cci, IMX283_REG_MDSEL1, readout->mdsel1, &ret);
+	cci_write(imx283->cci, IMX283_REG_MDSEL2, readout->mdsel2, &ret);
+	cci_write(imx283->cci, IMX283_REG_MDSEL3,
+		  readout->mdsel3 | IMX283_MDSEL3_VCROP_EN, &ret);
+	cci_write(imx283->cci, IMX283_REG_MDSEL4,
+		  readout->mdsel4 | IMX283_MDSEL4_VCROP_EN, &ret);
+
+	/* Mode 1S specific entries from the Readout Drive Mode Tables */
+	if (mode->mode == IMX283_MODE_1S) {
+		cci_write(imx283->cci, IMX283_REG_MDSEL7, 0x01, &ret);
+		cci_write(imx283->cci, IMX283_REG_MDSEL18, 0x1098, &ret);
+	}
+
+	if (ret) {
+		dev_err(imx283->dev, "%s failed to set readout\n", __func__);
+		return ret;
+	}
+
+	/* Initialise SVR. Unsupported for now - Always 0 */
+	cci_write(imx283->cci, IMX283_REG_SVR, 0x00, &ret);
+
+	dev_dbg(imx283->dev, "Mode: Size %d x %d\n", mode->width, mode->height);
+	dev_dbg(imx283->dev, "Analogue Crop (in the mode) %d,%d %dx%d\n",
+		mode->crop.left,
+		mode->crop.top,
+		mode->crop.width,
+		mode->crop.height);
+
+	y_out_size = mode->crop.height / mode->vbin_ratio;
+	write_v_size = y_out_size + mode->vertical_ob;
+	/*
+	 * cropping start position = (VWINPOS – Vst) × 2
+	 * cropping width = Veff – (VWIDCUT – Vct) × 2
+	 */
+	v_pos = imx283->vflip->val ?
+		((-mode->crop.top / mode->vbin_ratio) / 2) + mode->vst :
+		((mode->crop.top / mode->vbin_ratio) / 2)  + mode->vst;
+	v_widcut = ((mode->veff - y_out_size) / 2) + mode->vct;
+
+	cci_write(imx283->cci, IMX283_REG_Y_OUT_SIZE, y_out_size, &ret);
+	cci_write(imx283->cci, IMX283_REG_WRITE_VSIZE, write_v_size, &ret);
+	cci_write(imx283->cci, IMX283_REG_VWIDCUT, v_widcut, &ret);
+	cci_write(imx283->cci, IMX283_REG_VWINPOS, v_pos, &ret);
+
+	cci_write(imx283->cci, IMX283_REG_OB_SIZE_V, mode->vertical_ob, &ret);
+
+	/* TODO: Validate mode->crop is fully contained within imx283_native_area */
+	cci_write(imx283->cci, IMX283_REG_HTRIMMING_START, mode->crop.left, &ret);
+	cci_write(imx283->cci, IMX283_REG_HTRIMMING_END,
+		  mode->crop.left + mode->crop.width, &ret);
+
+	/* Disable embedded data */
+	cci_write(imx283->cci, IMX283_REG_EBD_X_OUT_SIZE, 0, &ret);
+
+	/* Apply customized values from controls (HMAX/VMAX/SHR) */
+	ret =  __v4l2_ctrl_handler_setup(imx283->sd.ctrl_handler);
+
+	return ret;
+}
+
+/* Stop streaming */
+static void imx283_stop_streaming(struct imx283 *imx283)
+{
+	int ret;
+
+	ret = cci_write(imx283->cci, IMX283_REG_STANDBY, IMX283_STBLOGIC, NULL);
+	if (ret)
+		dev_err(imx283->dev, "%s failed to set stream\n", __func__);
+
+	pm_runtime_put(imx283->dev);
+}
+
+static int imx283_set_stream(struct v4l2_subdev *sd, int enable)
+{
+	struct imx283 *imx283 = to_imx283(sd);
+	struct v4l2_subdev_state *state;
+	int ret = 0;
+
+	state = v4l2_subdev_lock_and_get_active_state(sd);
+
+	if (enable) {
+		ret = pm_runtime_get_sync(imx283->dev);
+		if (ret < 0) {
+			pm_runtime_put_noidle(imx283->dev);
+			goto unlock;
+		}
+
+		/*
+		 * Apply default & customized values
+		 * and then start streaming.
+		 */
+		ret = imx283_start_streaming(imx283, state);
+		if (ret)
+			goto err_rpm_put;
+	} else {
+		imx283_stop_streaming(imx283);
+	}
+
+	v4l2_subdev_unlock_state(state);
+
+	return ret;
+
+err_rpm_put:
+	pm_runtime_put(imx283->dev);
+unlock:
+	v4l2_subdev_unlock_state(state);
+
+	return ret;
+}
+
+/* Power/clock management functions */
+static int imx283_power_on(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct imx283 *imx283 = to_imx283(sd);
+	int ret;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(imx283_supply_name),
+				    imx283->supplies);
+	if (ret) {
+		dev_err(imx283->dev, "%s: failed to enable regulators\n",
+			__func__);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(imx283->xclk);
+	if (ret) {
+		dev_err(imx283->dev, "%s: failed to enable clock\n",
+			__func__);
+		goto reg_off;
+	}
+
+	gpiod_set_value_cansleep(imx283->reset_gpio, 1);
+
+	usleep_range(imx283_XCLR_MIN_DELAY_US,
+		     imx283_XCLR_MIN_DELAY_US + imx283_XCLR_DELAY_RANGE_US);
+
+	return 0;
+
+reg_off:
+	regulator_bulk_disable(ARRAY_SIZE(imx283_supply_name), imx283->supplies);
+	return ret;
+}
+
+static int imx283_power_off(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct imx283 *imx283 = to_imx283(sd);
+
+	gpiod_set_value_cansleep(imx283->reset_gpio, 0);
+	regulator_bulk_disable(ARRAY_SIZE(imx283_supply_name), imx283->supplies);
+	clk_disable_unprepare(imx283->xclk);
+
+	return 0;
+}
+
+static int imx283_get_regulators(struct imx283 *imx283)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(imx283_supply_name); i++)
+		imx283->supplies[i].supply = imx283_supply_name[i];
+
+	return devm_regulator_bulk_get(imx283->dev,
+				       ARRAY_SIZE(imx283_supply_name),
+				       imx283->supplies);
+}
+
+/* Verify chip ID */
+static int imx283_identify_module(struct imx283 *imx283)
+{
+	int ret;
+	u64 val;
+
+	ret = cci_read(imx283->cci, IMX283_REG_CHIP_ID, &val, NULL);
+	if (ret) {
+		dev_err(imx283->dev, "failed to read chip id %x, with error %d\n",
+			IMX283_CHIP_ID, ret);
+		return ret;
+	}
+
+	if (val != IMX283_CHIP_ID) {
+		dev_err(imx283->dev, "chip id mismatch: %x!=%llx\n",
+			IMX283_CHIP_ID, val);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int imx283_get_selection(struct v4l2_subdev *sd,
+				struct v4l2_subdev_state *sd_state,
+				struct v4l2_subdev_selection *sel)
+{
+	switch (sel->target) {
+	case V4L2_SEL_TGT_CROP: {
+		sel->r = *v4l2_subdev_state_get_crop(sd_state, 0);
+		return 0;
+	}
+
+	case V4L2_SEL_TGT_NATIVE_SIZE:
+		sel->r = imx283_native_area;
+		return 0;
+
+	case V4L2_SEL_TGT_CROP_DEFAULT:
+	case V4L2_SEL_TGT_CROP_BOUNDS:
+		sel->r = imx283_active_area;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static const struct v4l2_subdev_core_ops imx283_core_ops = {
+	.subscribe_event = v4l2_ctrl_subdev_subscribe_event,
+	.unsubscribe_event = v4l2_event_subdev_unsubscribe,
+};
+
+static const struct v4l2_subdev_video_ops imx283_video_ops = {
+	.s_stream = imx283_set_stream,
+};
+
+static const struct v4l2_subdev_pad_ops imx283_pad_ops = {
+	.enum_mbus_code = imx283_enum_mbus_code,
+	.get_fmt = v4l2_subdev_get_fmt,
+	.set_fmt = imx283_set_pad_format,
+	.get_selection = imx283_get_selection,
+	.enum_frame_size = imx283_enum_frame_size,
+};
+
+static const struct v4l2_subdev_internal_ops imx283_internal_ops = {
+	.init_state = imx283_init_state,
+};
+
+static const struct v4l2_subdev_ops imx283_subdev_ops = {
+	.core = &imx283_core_ops,
+	.video = &imx283_video_ops,
+	.pad = &imx283_pad_ops,
+};
+
+/* Initialize control handlers */
+static int imx283_init_controls(struct imx283 *imx283)
+{
+	struct v4l2_ctrl_handler *ctrl_hdlr;
+	struct v4l2_fwnode_device_properties props;
+	const struct imx283_mode *mode = imx283->mode;
+	u64 min_hblank, max_hblank, def_hblank;
+	u64 pixel_rate;
+	int ret;
+
+	ctrl_hdlr = &imx283->ctrl_handler;
+	ret = v4l2_ctrl_handler_init(ctrl_hdlr, 16);
+	if (ret)
+		return ret;
+
+	/* Serialize controls with sensor device */
+	ctrl_hdlr->lock = &imx283->mutex;
+
+	/*
+	 * Create the controls here, but mode specific limits are setup
+	 * in the imx283_set_framing_limits() call below.
+	 */
+
+	/* By default, PIXEL_RATE is read only */
+	pixel_rate = imx283_pixel_rate(imx283);
+	imx283->pixel_rate = v4l2_ctrl_new_std(ctrl_hdlr, &imx283_ctrl_ops,
+					       V4L2_CID_PIXEL_RATE, pixel_rate,
+					       pixel_rate, 1, pixel_rate);
+
+	imx283->link_freq = v4l2_ctrl_new_int_menu(ctrl_hdlr, &imx283_ctrl_ops,
+						   V4L2_CID_LINK_FREQ,
+						   __fls(imx283->link_freq_bitmap),
+						   __ffs(imx283->link_freq_bitmap),
+						   link_frequencies);
+	if (imx283->link_freq)
+		imx283->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;
+
+	/* Initialise vblank/hblank/exposure based on the current mode. */
+	imx283->vblank = v4l2_ctrl_new_std(ctrl_hdlr, &imx283_ctrl_ops,
+					   V4L2_CID_VBLANK,
+					   mode->min_vmax - mode->height,
+					   IMX283_VMAX_MAX, 1,
+					   mode->default_vmax - mode->height);
+
+	min_hblank = mode->min_hmax - mode->width;
+	max_hblank = imx283_iclk_to_pix(pixel_rate, IMX283_HMAX_MAX) - mode->width;
+	def_hblank = mode->default_hmax - mode->width;
+	imx283->hblank = v4l2_ctrl_new_std(ctrl_hdlr, &imx283_ctrl_ops,
+					   V4L2_CID_HBLANK, min_hblank, max_hblank,
+					   1, def_hblank);
+
+	imx283->exposure = v4l2_ctrl_new_std(ctrl_hdlr, &imx283_ctrl_ops,
+					     V4L2_CID_EXPOSURE,
+					     IMX283_EXPOSURE_MIN,
+					     IMX283_EXPOSURE_MAX,
+					     IMX283_EXPOSURE_STEP,
+					     IMX283_EXPOSURE_DEFAULT);
+
+	v4l2_ctrl_new_std(ctrl_hdlr, &imx283_ctrl_ops, V4L2_CID_ANALOGUE_GAIN,
+			  IMX283_ANA_GAIN_MIN, IMX283_ANA_GAIN_MAX,
+			  IMX283_ANA_GAIN_STEP, IMX283_ANA_GAIN_DEFAULT);
+
+	v4l2_ctrl_new_std(ctrl_hdlr, &imx283_ctrl_ops, V4L2_CID_DIGITAL_GAIN,
+			  IMX283_DGTL_GAIN_MIN, IMX283_DGTL_GAIN_MAX,
+			  IMX283_DGTL_GAIN_STEP, IMX283_DGTL_GAIN_DEFAULT);
+
+	imx283->vflip = v4l2_ctrl_new_std(ctrl_hdlr, &imx283_ctrl_ops, V4L2_CID_VFLIP,
+					  0, 1, 1, 0);
+	if (imx283->vflip)
+		imx283->vflip->flags |= V4L2_CTRL_FLAG_MODIFY_LAYOUT;
+
+	v4l2_ctrl_new_std_menu_items(ctrl_hdlr, &imx283_ctrl_ops,
+				     V4L2_CID_TEST_PATTERN,
+				     ARRAY_SIZE(imx283_tpg_menu) - 1,
+				     0, 0, imx283_tpg_menu);
+
+	if (ctrl_hdlr->error) {
+		ret = ctrl_hdlr->error;
+		dev_err(imx283->dev, "%s control init failed (%d)\n",
+			__func__, ret);
+		goto error;
+	}
+
+	ret = v4l2_fwnode_device_parse(imx283->dev, &props);
+	if (ret)
+		goto error;
+
+	ret = v4l2_ctrl_new_fwnode_properties(ctrl_hdlr, &imx283_ctrl_ops,
+					      &props);
+	if (ret)
+		goto error;
+
+	imx283->sd.ctrl_handler = ctrl_hdlr;
+
+	mutex_lock(&imx283->mutex);
+
+	ret = __v4l2_ctrl_s_ctrl(imx283->link_freq,
+				 __ffs(imx283->link_freq_bitmap));
+	if (ret)
+		goto error;
+
+	/* Setup exposure and frame/line length limits. */
+	imx283_set_framing_limits(imx283);
+
+	mutex_unlock(&imx283->mutex);
+
+	return 0;
+
+error:
+	v4l2_ctrl_handler_free(ctrl_hdlr);
+
+	return ret;
+}
+
+static void imx283_free_controls(struct imx283 *imx283)
+{
+	v4l2_ctrl_handler_free(imx283->sd.ctrl_handler);
+}
+
+static const struct of_device_id imx283_dt_ids[] = {
+	{ .compatible = "sony,imx283", },
+	{ /* sentinel */ }
+};
+
+static int imx283_parse_endpoint(struct imx283 *imx283)
+{
+	struct fwnode_handle *fwnode = dev_fwnode(imx283->dev);
+	struct v4l2_fwnode_endpoint bus_cfg = {
+		.bus_type = V4L2_MBUS_CSI2_DPHY
+	};
+	struct fwnode_handle *ep;
+	int ret;
+
+	if (!fwnode)
+		return -ENXIO;
+
+	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
+	if (!ep) {
+		dev_err(imx283->dev, "Failed to get next endpoint\n");
+		return -ENXIO;
+	}
+
+	ret = v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
+	fwnode_handle_put(ep);
+	if (ret)
+		return ret;
+
+	if (bus_cfg.bus.mipi_csi2.num_data_lanes != 4) {
+		dev_err(imx283->dev,
+			"number of CSI2 data lanes %d is not supported\n",
+			bus_cfg.bus.mipi_csi2.num_data_lanes);
+		ret = -EINVAL;
+		goto done_endpoint_free;
+	}
+
+	ret = v4l2_link_freq_to_bitmap(imx283->dev, bus_cfg.link_frequencies,
+				       bus_cfg.nr_of_link_frequencies,
+				       link_frequencies, ARRAY_SIZE(link_frequencies),
+				       &imx283->link_freq_bitmap);
+
+done_endpoint_free:
+	v4l2_fwnode_endpoint_free(&bus_cfg);
+
+	return ret;
+};
+
+static int imx283_probe(struct i2c_client *client)
+{
+	struct imx283 *imx283;
+	int ret;
+	unsigned int i;
+	unsigned int xclk_freq;
+
+	imx283 = devm_kzalloc(&client->dev, sizeof(*imx283), GFP_KERNEL);
+	if (!imx283)
+		return -ENOMEM;
+
+	imx283->dev = &client->dev;
+
+	v4l2_i2c_subdev_init(&imx283->sd, client, &imx283_subdev_ops);
+
+	imx283->cci = devm_cci_regmap_init_i2c(client, 16);
+	if (IS_ERR(imx283->cci)) {
+		ret = PTR_ERR(imx283->cci);
+		dev_err(imx283->dev, "failed to initialize CCI: %d\n", ret);
+		return ret;
+	}
+
+	/* Get system clock (xclk) */
+	imx283->xclk = devm_clk_get(imx283->dev, NULL);
+	if (IS_ERR(imx283->xclk)) {
+		dev_err(imx283->dev, "failed to get xclk\n");
+		return PTR_ERR(imx283->xclk);
+	}
+
+	xclk_freq = clk_get_rate(imx283->xclk);
+	for (i = 0; i < ARRAY_SIZE(imx283_frequencies); i++) {
+		if (xclk_freq == imx283_frequencies[i].mhz) {
+			imx283->freq = &imx283_frequencies[i];
+			break;
+		}
+	}
+	if (!imx283->freq) {
+		dev_err(imx283->dev, "xclk frequency unsupported: %d Hz\n", xclk_freq);
+		return -EINVAL;
+	}
+
+	ret = imx283_get_regulators(imx283);
+	if (ret) {
+		dev_err(imx283->dev, "failed to get regulators\n");
+		return ret;
+	}
+
+	ret = imx283_parse_endpoint(imx283);
+	if (ret) {
+		dev_err(imx283->dev, "failed to parse endpoint configuration\n");
+		return ret;
+	}
+
+	/* Request optional enable pin */
+	imx283->reset_gpio = devm_gpiod_get_optional(imx283->dev, "reset",
+						     GPIOD_OUT_HIGH);
+
+	mutex_init(&imx283->mutex);
+
+	/*
+	 * The sensor must be powered for imx283_identify_module()
+	 * to be able to read the CHIP_ID register
+	 */
+	ret = imx283_power_on(imx283->dev);
+	if (ret)
+		return ret;
+
+	ret = imx283_identify_module(imx283);
+	if (ret)
+		goto error_power_off;
+
+	/* Initialize default format and mode to max resolution */
+	imx283->mode = &supported_modes_12bit[0];
+	imx283->fmt_code = MEDIA_BUS_FMT_SRGGB12_1X12;
+
+	/*
+	 * Enable runtime PM with autosuspend. As the device has been powered
+	 * manually, mark it as active, and increase the usage count without
+	 * resuming the device.
+	 */
+	pm_runtime_set_active(imx283->dev);
+	pm_runtime_get_noresume(imx283->dev);
+	pm_runtime_enable(imx283->dev);
+	pm_runtime_set_autosuspend_delay(imx283->dev, 1000);
+	pm_runtime_use_autosuspend(imx283->dev);
+
+	/* This needs the pm runtime to be registered. */
+	ret = imx283_init_controls(imx283);
+	if (ret)
+		goto error_pm;
+
+	/* Initialize subdev */
+	imx283->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
+			    V4L2_SUBDEV_FL_HAS_EVENTS;
+	imx283->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
+	imx283->sd.internal_ops = &imx283_internal_ops;
+
+	/* Initialize source pads */
+	imx283->pad.flags = MEDIA_PAD_FL_SOURCE;
+
+	ret = media_entity_pads_init(&imx283->sd.entity, 1, &imx283->pad);
+	if (ret) {
+		dev_err(imx283->dev, "failed to init entity pads: %d\n", ret);
+		goto error_handler_free;
+	}
+
+	imx283->sd.state_lock = imx283->ctrl_handler.lock;
+	ret = v4l2_subdev_init_finalize(&imx283->sd);
+	if (ret < 0) {
+		dev_err(imx283->dev, "subdev init error: %d\n", ret);
+		goto error_media_entity;
+	}
+
+	ret = v4l2_async_register_subdev_sensor(&imx283->sd);
+	if (ret < 0) {
+		dev_err(imx283->dev, "failed to register sensor sub-device: %d\n", ret);
+		goto error_subdev_cleanup;
+	}
+
+	return 0;
+
+error_subdev_cleanup:
+	v4l2_subdev_cleanup(&imx283->sd);
+
+error_media_entity:
+	media_entity_cleanup(&imx283->sd.entity);
+
+error_handler_free:
+	imx283_free_controls(imx283);
+
+error_pm:
+	pm_runtime_disable(imx283->dev);
+	pm_runtime_set_suspended(imx283->dev);
+error_power_off:
+	imx283_power_off(imx283->dev);
+
+	return ret;
+}
+
+static void imx283_remove(struct i2c_client *client)
+{
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct imx283 *imx283 = to_imx283(sd);
+
+	v4l2_async_unregister_subdev(sd);
+	v4l2_subdev_cleanup(&imx283->sd);
+	media_entity_cleanup(&sd->entity);
+	imx283_free_controls(imx283);
+
+	pm_runtime_disable(imx283->dev);
+	if (!pm_runtime_status_suspended(imx283->dev))
+		imx283_power_off(imx283->dev);
+	pm_runtime_set_suspended(imx283->dev);
+}
+
+MODULE_DEVICE_TABLE(of, imx283_dt_ids);
+
+static const struct dev_pm_ops imx283_pm_ops = {
+	SET_RUNTIME_PM_OPS(imx283_power_off, imx283_power_on, NULL)
+};
+
+static struct i2c_driver imx283_i2c_driver = {
+	.driver = {
+		.name = "imx283",
+		.of_match_table	= imx283_dt_ids,
+		.pm = &imx283_pm_ops,
+	},
+	.probe = imx283_probe,
+	.remove = imx283_remove,
+};
+
+module_i2c_driver(imx283_i2c_driver);
+
+MODULE_AUTHOR("Will Whang <will@willwhang.com>");
+MODULE_AUTHOR("Kieran Bingham <kieran.bingham@ideasonboard.com>");
+MODULE_AUTHOR("Umang Jain <umang.jain@ideasonboard.com>");
+MODULE_DESCRIPTION("Sony IMX283 Sensor Driver");
+MODULE_LICENSE("GPL");
-- 
2.43.0


