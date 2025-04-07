Return-Path: <devicetree+bounces-163618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D74EA7D932
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 11:14:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 459473B6B2D
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E60922FAD4;
	Mon,  7 Apr 2025 09:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dpJA7dw5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD632309A8
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 09:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744017200; cv=none; b=biN88DUuvIH9VZbgx8u2ufMxxLMD87RpJZaoO4XXy9gekU0yeZGhngyPC2xYPXc/WGzVr6S5MWeO6ADVhyYDwbBL9THkWjAijXkL/qbvjsBC6fzDSEnMapa8dx4Dq9FL+TcWRbcE5b975zPU4SkmpDV4FuGjSCsRsZ5P5nIYPlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744017200; c=relaxed/simple;
	bh=XDnUjrEv5ifSITgQxjOIw+H6/s6rEMb/2YOQcq807cs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pL+KfrX8tONhyksk9CCsi2DgELOSJRMBNUQQeno76n5nOnXtvhjtf2tSpCV/8sfKoYUG7l6VREzSFxW0u0fjNg52TrbbBVTCnIdwCLk4FOovrLwDCYYN3h4K5hI8xo8K3Ggaavd+CZNa8aATjgb5IJGQM2e3CLGd78DUun6+ru4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dpJA7dw5; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3996af42857so3275030f8f.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 02:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744017193; x=1744621993; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qymuqpuz2OMVCZj4zqAfFdFhCG3/KdezQK6Q6/agvFo=;
        b=dpJA7dw54LPLjLlR+8kR4W69m6R3Jg6dGmN5uNngKFzDOzH9hEfjXVnSrtfcOPfEbD
         JC2DaMZrTWPVEZlOmKB5ktBzQcod3iovEG22FBdgkfootCycsI/aF41+06aGTVn45sKD
         FHnZ/PI6IC4z7meZNBCRP+DOBgsPGX/8SVbBvWXda9sM1y/b9tUYLhF+g3BcOrUMlVDC
         JMAutaEZ6sv4/3h0jHNM8aY4KqPG00aB0fYRMWhOb34HaxaSHNLdY2aDmrL/OYv5UJF7
         EJbxhKDv31ly+9m8HHM4OGjBZuQMW+Tt6OFPoHzhvX/dZCfeyA+qoriJmv09TXvUzM5K
         LhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744017193; x=1744621993;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qymuqpuz2OMVCZj4zqAfFdFhCG3/KdezQK6Q6/agvFo=;
        b=UOPj29lBv6NFlACI230l2EjA5DyNQAUqmavDHlQ5rGDfOWyqMm7rHty1H2NxMeeEFB
         jvXiR/4fDbI2X6ZqY6DvRcWvj6Raqb+AuxgNUwq7dkHKPo/QOydRGqSPHAzw8c1jMANG
         iHx0BEIGptgMsA/JFdfFYEFfj+c1IHT4xt7oeN3CPjycbSgFyI3hpVaCWDB2fF7CE4uC
         KQuQw80mHeXmIsAeFVGFS2XGT0orpqGJ5s+eTxRyfXvvE6uhqUJUpoTAyXFfeyZlq9ag
         2y5Lzkxmm+vLt3yEH2b4+3M2pgmqJ55snifnxiptnhN6ZO3N6Bx0FV1GWFJyd7hSVNkC
         u/LQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhES2G9hlMdQFKQB0b/DHlyXjNvfiLXM/ZWXLYjPlx5S/HVDXPuZQMlLZxwZPy3q9tSBz1Yk34a4zi@vger.kernel.org
X-Gm-Message-State: AOJu0YzsJoK6TkQsYNzEJJn0PbRj+Ze7z92sWksCgcNZxQqY9OnJkcEe
	9yp+2XJD4TxJ/xfdQqGrBvcVxag4jLjkhvne/vhMzsvtY8E74n7vueMOBApOFMbM+kyBsR3/qN5
	Xo7Q=
X-Gm-Gg: ASbGncv5zv5C6UKijMh6REzWfhLDF9W8WE3o/MwIAqBkY8AsayGg5q2W9fymB2/on3g
	at5sNjWqra7MtsYf3cBSRfLmUKvXIw4ZQJiaiDo3Iqy/l08TXTl6tdKz6TPewbn0UL+rxFebdRr
	KQR5v97qIxR6vb39pDrXT7CEFw8zYh4yMczmERrLIabNDS+Jn8XwqnrM+6BYdOUQ6n7UbDLHdor
	/QmNveBQjaVefLtGslWxK0PUzxV13tOy9r9vq9UN1dqpF+qDdeT0XYhXilocIC5UxDLz39byKKC
	s9mI5rAdcjQvi3IPUHuQJQqY7ANjF226h2oKl5Sgws7T1pGKK+FZMjbSxoEA3b9HxrMDtW3mRTo
	LTvDEvZOaoA==
X-Google-Smtp-Source: AGHT+IHHEJoZr+Hf0qCqZOz1NiTrKn6U9E66qic9vJqrPLSGVxFKNVHJsph6c36UMpxATjrpy5Y72A==
X-Received: by 2002:a5d:6d87:0:b0:38f:4ffd:c757 with SMTP id ffacd0b85a97d-39cb35a12acmr10852670f8f.2.1744017192591;
        Mon, 07 Apr 2025 02:13:12 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301a9bcfsm11673977f8f.33.2025.04.07.02.13.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 02:13:12 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 07 Apr 2025 10:13:08 +0100
Subject: [PATCH v4 2/2] media: i2c: ov02e10: add OV02E10 image sensor
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250407-b4-media-comitters-next-25-03-13-ov02e10-v4-2-211e3e6fae90@linaro.org>
References: <20250407-b4-media-comitters-next-25-03-13-ov02e10-v4-0-211e3e6fae90@linaro.org>
In-Reply-To: <20250407-b4-media-comitters-next-25-03-13-ov02e10-v4-0-211e3e6fae90@linaro.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, 
 Hans de Goede <hansg@kernel.org>
Cc: Jingjing Xiong <jingjing.xiong@intel.com>, Hao Yao <hao.yao@intel.com>, 
 Jim Lai <jim.lai@intel.com>, You-Sheng Yang <vicamo.yang@canonical.com>, 
 Alan Stern <stern@rowland.harvard.edu>, Hans de Goede <hdegoede@redhat.com>, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2

From: Jingjing Xiong <jingjing.xiong@intel.com>

Add in the ov02e10 driver from the Intel IPU6 repository.

Changelog to IPU6 incoming driver:

- handhake GPIO
  The IPU6 handshake GPIO signals to the FPGA on IPU6/IPU7 laptops and as
  such is not a sensor signal.

  Hans has a proposal for handling those GPIOs below. Dropf from the
  incoming sensor driver.

  Link: https://lore.kernel.org/linux-media/4b87a956-a767-48dc-b98b-f80d9a44adc8@redhat.com

- Regulators
  Change to regulator_bulk API to capture the full range of rails to the
  o02e10 sensor.

  This will work for ACPI systems which only have the avdd rail available
  as missing rails won't fail the regulator_bulk_* function calls.

  Convert the existing avdd single rail to regulator_bulk API.

- Clocks

  Move the MCLK validation logic to check_hwcfg() and move check_hwcfg()
  to after devm_kzalloc() so that we can pass a struct ov02e pointer to
  check_hwcfg() to begin to enumerate that structure.

  Reworks MCLK clock get logic to facilitate OF

- Power on/off

  Implement specification on and off delays on power-up

  The ov02e10 specification says for power-on:

  t3 = the time between dvdd stable and XSHUTDOWN deassert
  t5 = the time between XSHUTDOWN deassert and SCCB ready

  The power-off path in the spec shows no required delays between XSHUTDOWN
  and power-rail shut off but, if the reset GPIO is not defined no action is
  taken to change its logical state.

- Remove dev_dbg() and extra dev_err()

  Several instances of dev_dbg() and dev_err() were removed.
  dev_xxx() calls common in development can be stripped away for upstream.

  We have multiple on-list tests for this code on X86 and Arm so most of
  the verbose dev_xxx() calls are redundant now.

- Add OF probe support

  Simple addition of ovti,0v02e10 compat string and associated resource
  structure entry.

- Extend MODULE_AUTHOR list
  Adds Hans, Alan and myself

- Conversion to v4l2 subdevice-state

- Added HFLIP and VFLIP support

Signed-off-by: Jingjing Xiong <jingjing.xiong@intel.com>
Co-developed-by: Hao Yao <hao.yao@intel.com>
Signed-off-by: Hao Yao <hao.yao@intel.com>
Co-developed-by: Jim Lai <jim.lai@intel.com>
Signed-off-by: Jim Lai <jim.lai@intel.com>
Co-developed-by: You-Sheng Yang <vicamo.yang@canonical.com>
Signed-off-by: You-Sheng Yang <vicamo.yang@canonical.com>
Co-developed-by: Alan Stern <stern@rowland.harvard.edu>
Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
Co-developed-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 MAINTAINERS                 |   9 +
 drivers/media/i2c/Kconfig   |  10 +
 drivers/media/i2c/Makefile  |   1 +
 drivers/media/i2c/ov02e10.c | 969 ++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 989 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 29b4471574982bf3f8d03158cd5edcb94bc9fab9..a090a8c75b7c5d3088ddc802a9192d51b1dc0c25 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17382,6 +17382,15 @@ T:	git git://linuxtv.org/media.git
 F:	Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
 F:	drivers/media/i2c/ov02a10.c
 
+OMNIVISION OV02E10 SENSOR DRIVER
+M:	Bryan O'Donoghue <bod@kernel.org>
+M:	Hans de Goede <hansg@kernel.org>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+T:	git git://linuxtv.org/media.git
+F:	Documentation/devicetree/bindings/media/i2c/ovti,ov02e10.yaml
+F:	drivers/media/i2c/ov02e10.c
+
 OMNIVISION OV08D10 SENSOR DRIVER
 M:	Jimmy Su <jimmy.su@intel.com>
 L:	linux-media@vger.kernel.org
diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
index e576b213084d232e90b7e556a7a855a3bb95544c..7b8af1c87a0e40c19ef8ddb9a8603a1962877163 100644
--- a/drivers/media/i2c/Kconfig
+++ b/drivers/media/i2c/Kconfig
@@ -356,6 +356,16 @@ config VIDEO_OV02A10
 	  To compile this driver as a module, choose M here: the
 	  module will be called ov02a10.
 
+config VIDEO_OV02E10
+	tristate "OmniVision OV02E10 sensor support"
+	select V4L2_CCI_I2C
+	help
+	  This is a Video4Linux2 sensor driver for the OmniVision
+	  OV02E10 camera.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called ov02e10.
+
 config VIDEO_OV08D10
         tristate "OmniVision OV08D10 sensor support"
         help
diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
index 6c23a4463527cf762032df663bbfe26be29018c8..ed5e62fd6199d8c0ab0d3104fd353243021a11be 100644
--- a/drivers/media/i2c/Makefile
+++ b/drivers/media/i2c/Makefile
@@ -83,6 +83,7 @@ obj-$(CONFIG_VIDEO_MT9V111) += mt9v111.o
 obj-$(CONFIG_VIDEO_OG01A1B) += og01a1b.o
 obj-$(CONFIG_VIDEO_OV01A10) += ov01a10.o
 obj-$(CONFIG_VIDEO_OV02A10) += ov02a10.o
+obj-$(CONFIG_VIDEO_OV02E10) += ov02e10.o
 obj-$(CONFIG_VIDEO_OV08D10) += ov08d10.o
 obj-$(CONFIG_VIDEO_OV08X40) += ov08x40.o
 obj-$(CONFIG_VIDEO_OV13858) += ov13858.o
diff --git a/drivers/media/i2c/ov02e10.c b/drivers/media/i2c/ov02e10.c
new file mode 100644
index 0000000000000000000000000000000000000000..d74dc62e189db851cc81e8656d49a077ea340182
--- /dev/null
+++ b/drivers/media/i2c/ov02e10.c
@@ -0,0 +1,969 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2023 Intel Corporation.
+
+#include <linux/acpi.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <media/v4l2-cci.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-fwnode.h>
+
+#define OV02E10_LINK_FREQ_360MHZ	360000000ULL
+#define OV02E10_SCLK			36000000LL
+#define OV02E10_MCLK			19200000
+#define OV02E10_DATA_LANES		2
+#define OV02E10_RGB_DEPTH		10
+
+#define OV02E10_REG_PAGE_FLAG		CCI_REG8(0xfd)
+#define OV02E10_PAGE_0			0x0
+#define OV02E10_PAGE_1			0x1
+#define OV02E10_PAGE_2			0x2
+#define OV02E10_PAGE_3			0x3
+#define OV02E10_PAGE_5			0x4
+#define OV02E10_PAGE_7			0x5
+#define OV02E10_PAGE_8			0x6
+#define OV02E10_PAGE_9			0xF
+#define OV02E10_PAGE_D			0x8
+#define OV02E10_PAGE_E			0x9
+#define OV02E10_PAGE_F			0xA
+
+#define OV02E10_REG_CHIP_ID		CCI_REG32(0x00)
+#define OV02E10_CHIP_ID			0x45025610
+
+/* Horizontal and vertical flip */
+#define OV02E10_REG_ORIENTATION		CCI_REG8(0x32)
+
+/* vertical-timings from sensor */
+#define OV02E10_REG_VTS			CCI_REG16(0x35)
+#define OV02E10_VTS_DEF			2244
+#define OV02E10_VTS_MIN			2244
+#define OV02E10_VTS_MAX			0x7fff
+
+/* horizontal-timings from sensor */
+#define OV02E10_REG_HTS			CCI_REG16(0x37)
+
+/* Exposure controls from sensor */
+#define OV02E10_REG_EXPOSURE		CCI_REG16(0x03)
+#define OV02E10_EXPOSURE_MIN		1
+#define OV02E10_EXPOSURE_MAX_MARGIN	2
+#define OV02E10_EXPOSURE_STEP		1
+
+/* Analog gain controls from sensor */
+#define OV02E10_REG_ANALOG_GAIN		CCI_REG8(0x24)
+#define OV02E10_ANAL_GAIN_MIN		0x10
+#define OV02E10_ANAL_GAIN_MAX		0xf8
+#define OV02E10_ANAL_GAIN_STEP		1
+
+/* Digital gain controls from sensor */
+#define OV02E10_REG_DIGITAL_GAIN	CCI_REG16(0x21)
+#define OV02E10_DGTL_GAIN_MIN		256
+#define OV02E10_DGTL_GAIN_MAX		1020
+#define OV02E10_DGTL_GAIN_STEP		1
+#define OV02E10_DGTL_GAIN_DEFAULT	256
+
+/* Register update control */
+#define OV02E10_REG_COMMAND_UPDATE	CCI_REG8(0xE7)
+#define OV02E10_COMMAND_UPDATE		0x00
+#define OV02E10_COMMAND_HOLD		0x01
+
+/* Test Pattern Control */
+#define OV02E10_REG_TEST_PATTERN	CCI_REG8(0x12)
+#define OV02E10_TEST_PATTERN_ENABLE	BIT(0)
+#define OV02E10_TEST_PATTERN_BAR_SHIFT	1
+
+struct reg_sequence_list {
+	u32 num_regs;
+	const struct reg_sequence *regs;
+};
+
+struct ov02e10_mode {
+	/* Frame width in pixels */
+	u32 width;
+
+	/* Frame height in pixels */
+	u32 height;
+
+	/* Horizontal timining size */
+	u32 hts;
+
+	/* Default vertical timing */
+	u32 vts_def;
+
+	/* Min vertical timining size */
+	u32 vts_min;
+
+	/* Sensor register settings for this resolution */
+	const struct reg_sequence_list reg_list;
+};
+
+static const struct reg_sequence mode_1928x1088_30fps_2lane[] = {
+	{ 0xfd, 0x00 },
+	{ 0x20, 0x00 },
+	{ 0x20, 0x0b },
+	{ 0x21, 0x02 },
+	{ 0x10, 0x23 },
+	{ 0xc5, 0x04 },
+	{ 0x21, 0x00 },
+	{ 0x14, 0x96 },
+	{ 0x17, 0x01 },
+	{ 0xfd, 0x01 },
+	{ 0x03, 0x00 },
+	{ 0x04, 0x04 },
+	{ 0x05, 0x04 },
+	{ 0x06, 0x62 },
+	{ 0x07, 0x01 },
+	{ 0x22, 0x80 },
+	{ 0x24, 0xff },
+	{ 0x40, 0xc6 },
+	{ 0x41, 0x18 },
+	{ 0x45, 0x3f },
+	{ 0x48, 0x0c },
+	{ 0x4c, 0x08 },
+	{ 0x51, 0x12 },
+	{ 0x52, 0x10 },
+	{ 0x57, 0x98 },
+	{ 0x59, 0x06 },
+	{ 0x5a, 0x04 },
+	{ 0x5c, 0x38 },
+	{ 0x5e, 0x10 },
+	{ 0x67, 0x11 },
+	{ 0x7b, 0x04 },
+	{ 0x81, 0x12 },
+	{ 0x90, 0x51 },
+	{ 0x91, 0x09 },
+	{ 0x92, 0x21 },
+	{ 0x93, 0x28 },
+	{ 0x95, 0x54 },
+	{ 0x9d, 0x20 },
+	{ 0x9e, 0x04 },
+	{ 0xb1, 0x9a },
+	{ 0xb2, 0x86 },
+	{ 0xb6, 0x3f },
+	{ 0xb9, 0x30 },
+	{ 0xc1, 0x01 },
+	{ 0xc5, 0xa0 },
+	{ 0xc6, 0x73 },
+	{ 0xc7, 0x04 },
+	{ 0xc8, 0x25 },
+	{ 0xc9, 0x05 },
+	{ 0xca, 0x28 },
+	{ 0xcb, 0x00 },
+	{ 0xcf, 0x16 },
+	{ 0xd2, 0xd0 },
+	{ 0xd7, 0x3f },
+	{ 0xd8, 0x40 },
+	{ 0xd9, 0x40 },
+	{ 0xda, 0x44 },
+	{ 0xdb, 0x3d },
+	{ 0xdc, 0x3d },
+	{ 0xdd, 0x3d },
+	{ 0xde, 0x3d },
+	{ 0xdf, 0xf0 },
+	{ 0xea, 0x0f },
+	{ 0xeb, 0x04 },
+	{ 0xec, 0x29 },
+	{ 0xee, 0x47 },
+	{ 0xfd, 0x01 },
+	{ 0x31, 0x01 },
+	{ 0x27, 0x00 },
+	{ 0x2f, 0x41 },
+	{ 0xfd, 0x02 },
+	{ 0xa1, 0x01 },
+	{ 0xfd, 0x02 },
+	{ 0x9a, 0x03 },
+	{ 0xfd, 0x03 },
+	{ 0x9d, 0x0f },
+	{ 0xfd, 0x07 },
+	{ 0x42, 0x00 },
+	{ 0x43, 0xad },
+	{ 0x44, 0x00 },
+	{ 0x45, 0xa8 },
+	{ 0x46, 0x00 },
+	{ 0x47, 0xa8 },
+	{ 0x48, 0x00 },
+	{ 0x49, 0xad },
+	{ 0xfd, 0x00 },
+	{ 0xc4, 0x01 },
+	{ 0xfd, 0x01 },
+	{ 0x33, 0x03 },
+	{ 0xfd, 0x00 },
+	{ 0x20, 0x1f },
+};
+
+static const char *const ov02e10_test_pattern_menu[] = {
+	"Disabled",
+	"Color Bar",
+};
+
+static const s64 link_freq_menu_items[] = {
+	OV02E10_LINK_FREQ_360MHZ,
+};
+
+static const struct ov02e10_mode supported_modes[] = {
+	{
+		.width = 1928,
+		.height = 1088,
+		.hts = 534,
+		.vts_def = 2244,
+		.vts_min = 2244,
+		.reg_list = {
+			.num_regs = ARRAY_SIZE(mode_1928x1088_30fps_2lane),
+			.regs = mode_1928x1088_30fps_2lane,
+		},
+	},
+};
+
+static const char * const ov02e10_supply_names[] = {
+	"dovdd",	/* Digital I/O power */
+	"avdd",		/* Analog power */
+	"dvdd",		/* Digital core power */
+};
+
+struct ov02e10 {
+	struct regmap *regmap;
+	struct v4l2_subdev sd;
+	struct media_pad pad;
+	struct v4l2_ctrl_handler ctrl_handler;
+
+	/* V4L2 Controls */
+	struct v4l2_ctrl *link_freq;
+	struct v4l2_ctrl *pixel_rate;
+	struct v4l2_ctrl *vblank;
+	struct v4l2_ctrl *hblank;
+	struct v4l2_ctrl *exposure;
+	struct v4l2_ctrl *vflip;
+	struct v4l2_ctrl *hflip;
+
+	struct clk *img_clk;
+	struct regulator_bulk_data supplies[ARRAY_SIZE(ov02e10_supply_names)];
+	struct gpio_desc *reset;
+
+	/* Current mode */
+	const struct ov02e10_mode *cur_mode;
+
+	/* MIPI lanes info */
+	u32 link_freq_index;
+	u8 mipi_lanes;
+};
+
+static inline struct ov02e10 *to_ov02e10(struct v4l2_subdev *subdev)
+{
+	return container_of(subdev, struct ov02e10, sd);
+}
+
+static u64 to_pixel_rate(u32 f_index)
+{
+	u64 pixel_rate = link_freq_menu_items[f_index] * 2 * OV02E10_DATA_LANES;
+
+	do_div(pixel_rate, OV02E10_RGB_DEPTH);
+
+	return pixel_rate;
+}
+
+static u64 to_pixels_per_line(u32 hts, u32 f_index)
+{
+	u64 ppl = hts * to_pixel_rate(f_index);
+
+	do_div(ppl, OV02E10_SCLK);
+
+	return ppl;
+}
+
+static void ov02e10_test_pattern(struct ov02e10 *ov02e10, u32 pattern, int *pret)
+{
+	if (pattern)
+		pattern = pattern << OV02E10_TEST_PATTERN_BAR_SHIFT |
+			  OV02E10_TEST_PATTERN_ENABLE;
+
+	cci_write(ov02e10->regmap, OV02E10_REG_TEST_PATTERN, pattern, pret);
+}
+
+static int ov02e10_set_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct ov02e10 *ov02e10 = container_of(ctrl->handler,
+					       struct ov02e10, ctrl_handler);
+	struct i2c_client *client = v4l2_get_subdevdata(&ov02e10->sd);
+	s64 exposure_max;
+	int ret;
+
+	/* Propagate change of current control to all related controls */
+	if (ctrl->id == V4L2_CID_VBLANK) {
+		/* Update max exposure while meeting expected vblanking */
+		exposure_max = ov02e10->cur_mode->height + ctrl->val -
+			       OV02E10_EXPOSURE_MAX_MARGIN;
+		ret = __v4l2_ctrl_modify_range(ov02e10->exposure,
+					       ov02e10->exposure->minimum,
+					       exposure_max,
+					       ov02e10->exposure->step,
+					       exposure_max);
+		if (ret)
+			return ret;
+	}
+
+	/* V4L2 controls values will be applied only when power is already up */
+	if (!pm_runtime_get_if_in_use(&client->dev))
+		return 0;
+
+	ret = cci_write(ov02e10->regmap, OV02E10_REG_COMMAND_UPDATE,
+			OV02E10_COMMAND_HOLD, NULL);
+
+	switch (ctrl->id) {
+	case V4L2_CID_ANALOGUE_GAIN:
+		cci_write(ov02e10->regmap, OV02E10_REG_PAGE_FLAG,
+			  OV02E10_PAGE_1, &ret);
+		cci_write(ov02e10->regmap, OV02E10_REG_ANALOG_GAIN,
+			  ctrl->val, &ret);
+		break;
+
+	case V4L2_CID_DIGITAL_GAIN:
+		cci_write(ov02e10->regmap, OV02E10_REG_PAGE_FLAG,
+			  OV02E10_PAGE_1, &ret);
+		cci_write(ov02e10->regmap, OV02E10_REG_DIGITAL_GAIN,
+			  ctrl->val, &ret);
+		break;
+
+	case V4L2_CID_EXPOSURE:
+		cci_write(ov02e10->regmap, OV02E10_REG_PAGE_FLAG,
+			  OV02E10_PAGE_1, &ret);
+		cci_write(ov02e10->regmap, OV02E10_REG_EXPOSURE,
+			  ctrl->val, &ret);
+		break;
+
+	case V4L2_CID_HFLIP:
+	case V4L2_CID_VFLIP:
+		cci_write(ov02e10->regmap, OV02E10_REG_PAGE_FLAG,
+			  OV02E10_PAGE_1, &ret);
+		cci_write(ov02e10->regmap, OV02E10_REG_ORIENTATION,
+			  ov02e10->hflip->val | ov02e10->vflip->val << 1, &ret);
+		break;
+	case V4L2_CID_VBLANK:
+		cci_write(ov02e10->regmap, OV02E10_REG_PAGE_FLAG,
+			  OV02E10_PAGE_1, &ret);
+		cci_write(ov02e10->regmap, OV02E10_REG_VTS,
+			  ov02e10->cur_mode->height + ctrl->val, &ret);
+		break;
+
+	case V4L2_CID_TEST_PATTERN:
+		cci_write(ov02e10->regmap, OV02E10_REG_PAGE_FLAG,
+			  OV02E10_PAGE_1, &ret);
+		ov02e10_test_pattern(ov02e10, ctrl->val, &ret);
+		break;
+
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	cci_write(ov02e10->regmap, OV02E10_REG_COMMAND_UPDATE,
+		  OV02E10_COMMAND_UPDATE, &ret);
+
+	pm_runtime_put(&client->dev);
+
+	return ret;
+}
+
+static const struct v4l2_ctrl_ops ov02e10_ctrl_ops = {
+	.s_ctrl = ov02e10_set_ctrl,
+};
+
+static int ov02e10_init_controls(struct ov02e10 *ov02e10)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&ov02e10->sd);
+	struct v4l2_ctrl_handler *ctrl_hdlr = &ov02e10->ctrl_handler;
+	const struct ov02e10_mode *mode = ov02e10->cur_mode;
+	u32 vblank_min, vblank_max, vblank_def;
+	struct v4l2_fwnode_device_properties props;
+	s64 exposure_max, h_blank, pixel_rate;
+	int ret;
+
+	v4l2_ctrl_handler_init(ctrl_hdlr, 12);
+
+	ov02e10->link_freq = v4l2_ctrl_new_int_menu(ctrl_hdlr,
+						    &ov02e10_ctrl_ops,
+						    V4L2_CID_LINK_FREQ,
+						    ov02e10->link_freq_index,
+						    0, link_freq_menu_items);
+	if (ov02e10->link_freq)
+		ov02e10->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;
+
+	pixel_rate = to_pixel_rate(ov02e10->link_freq_index);
+	ov02e10->pixel_rate = v4l2_ctrl_new_std(ctrl_hdlr, &ov02e10_ctrl_ops,
+						V4L2_CID_PIXEL_RATE, 0,
+						pixel_rate, 1, pixel_rate);
+
+	vblank_min = mode->vts_min - mode->height;
+	vblank_max = OV02E10_VTS_MAX - mode->height;
+	vblank_def = mode->vts_def - mode->height;
+	ov02e10->vblank = v4l2_ctrl_new_std(ctrl_hdlr, &ov02e10_ctrl_ops,
+					    V4L2_CID_VBLANK, vblank_min,
+					    vblank_max, 1, vblank_def);
+
+	h_blank = mode->hts - mode->width;
+	ov02e10->hblank = v4l2_ctrl_new_std(ctrl_hdlr, &ov02e10_ctrl_ops,
+					    V4L2_CID_HBLANK, h_blank, h_blank,
+					    1, h_blank);
+	if (ov02e10->hblank)
+		ov02e10->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;
+
+	v4l2_ctrl_new_std(ctrl_hdlr, &ov02e10_ctrl_ops, V4L2_CID_ANALOGUE_GAIN,
+			  OV02E10_ANAL_GAIN_MIN, OV02E10_ANAL_GAIN_MAX,
+			  OV02E10_ANAL_GAIN_STEP, OV02E10_ANAL_GAIN_MIN);
+
+	v4l2_ctrl_new_std(ctrl_hdlr, &ov02e10_ctrl_ops, V4L2_CID_DIGITAL_GAIN,
+			  OV02E10_DGTL_GAIN_MIN, OV02E10_DGTL_GAIN_MAX,
+			  OV02E10_DGTL_GAIN_STEP, OV02E10_DGTL_GAIN_DEFAULT);
+
+	exposure_max = mode->vts_def - OV02E10_EXPOSURE_MAX_MARGIN;
+	ov02e10->exposure = v4l2_ctrl_new_std(ctrl_hdlr, &ov02e10_ctrl_ops,
+					      V4L2_CID_EXPOSURE,
+					      OV02E10_EXPOSURE_MIN,
+					      exposure_max,
+					      OV02E10_EXPOSURE_STEP,
+					      exposure_max);
+
+	ov02e10->hflip = v4l2_ctrl_new_std(ctrl_hdlr, &ov02e10_ctrl_ops,
+					   V4L2_CID_HFLIP, 0, 1, 1, 0);
+	if (ov02e10->hflip)
+		ov02e10->hflip->flags |= V4L2_CTRL_FLAG_MODIFY_LAYOUT;
+
+	ov02e10->vflip = v4l2_ctrl_new_std(ctrl_hdlr, &ov02e10_ctrl_ops,
+					   V4L2_CID_VFLIP, 0, 1, 1, 0);
+	if (ov02e10->vflip)
+		ov02e10->vflip->flags |= V4L2_CTRL_FLAG_MODIFY_LAYOUT;
+
+	v4l2_ctrl_new_std_menu_items(ctrl_hdlr, &ov02e10_ctrl_ops,
+				     V4L2_CID_TEST_PATTERN,
+				     ARRAY_SIZE(ov02e10_test_pattern_menu) - 1,
+				     0, 0, ov02e10_test_pattern_menu);
+
+	ret = v4l2_fwnode_device_parse(&client->dev, &props);
+	if (ret)
+		return ret;
+
+	v4l2_ctrl_new_fwnode_properties(ctrl_hdlr, &ov02e10_ctrl_ops, &props);
+
+	if (ctrl_hdlr->error)
+		return ctrl_hdlr->error;
+
+	ov02e10->sd.ctrl_handler = ctrl_hdlr;
+
+	return 0;
+}
+
+static void ov02e10_update_pad_format(const struct ov02e10_mode *mode,
+				      struct v4l2_mbus_framefmt *fmt)
+{
+	fmt->width = mode->width;
+	fmt->height = mode->height;
+	fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
+	fmt->field = V4L2_FIELD_NONE;
+}
+
+static int ov02e10_set_stream_mode(struct ov02e10 *ov02e10, u8 val)
+{
+	int ret = 0;
+
+	cci_write(ov02e10->regmap, OV02E10_REG_PAGE_FLAG, OV02E10_PAGE_0, &ret);
+	cci_write(ov02e10->regmap, CCI_REG8(0xa0), val, &ret);
+	cci_write(ov02e10->regmap, OV02E10_REG_PAGE_FLAG, OV02E10_PAGE_1, &ret);
+	cci_write(ov02e10->regmap, CCI_REG8(0x01), 0x02, &ret);
+
+	return ret;
+}
+
+static int ov02e10_enable_streams(struct v4l2_subdev *sd,
+				  struct v4l2_subdev_state *state,
+				  u32 pad, u64 streams_mask)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(sd);
+	struct ov02e10 *ov02e10 = to_ov02e10(sd);
+	const struct reg_sequence_list *reg_list;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(&client->dev);
+	if (ret)
+		return ret;
+
+	reg_list = &ov02e10->cur_mode->reg_list;
+	ret = regmap_multi_reg_write(ov02e10->regmap, reg_list->regs,
+				     reg_list->num_regs);
+	if (ret) {
+		dev_err(&client->dev, "failed to set mode\n");
+		goto out;
+	}
+
+	ret = __v4l2_ctrl_handler_setup(ov02e10->sd.ctrl_handler);
+	if (ret)
+		goto out;
+
+	ret = ov02e10_set_stream_mode(ov02e10, 1);
+
+out:
+	if (ret)
+		pm_runtime_put(&client->dev);
+
+	return ret;
+}
+
+static int ov02e10_disable_streams(struct v4l2_subdev *sd,
+				   struct v4l2_subdev_state *state,
+				   u32 pad, u64 streams_mask)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(sd);
+	struct ov02e10 *ov02e10 = to_ov02e10(sd);
+
+	ov02e10_set_stream_mode(ov02e10, 0);
+	pm_runtime_put(&client->dev);
+
+	return 0;
+}
+
+static int ov02e10_get_pm_resources(struct device *dev)
+{
+	struct v4l2_subdev *sd = dev_get_drvdata(dev);
+	struct ov02e10 *ov02e10 = to_ov02e10(sd);
+	int i;
+
+	ov02e10->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(ov02e10->reset))
+		return dev_err_probe(dev, PTR_ERR(ov02e10->reset),
+				     "failed to get reset gpio\n");
+
+	for (i = 0; i < ARRAY_SIZE(ov02e10_supply_names); i++)
+		ov02e10->supplies[i].supply = ov02e10_supply_names[i];
+
+	return devm_regulator_bulk_get(dev, ARRAY_SIZE(ov02e10_supply_names),
+				       ov02e10->supplies);
+}
+
+static int ov02e10_power_off(struct device *dev)
+{
+	struct v4l2_subdev *sd = dev_get_drvdata(dev);
+	struct ov02e10 *ov02e10 = to_ov02e10(sd);
+
+	if (ov02e10->reset)
+		gpiod_set_value_cansleep(ov02e10->reset, 1);
+
+	regulator_bulk_disable(ARRAY_SIZE(ov02e10_supply_names),
+			       ov02e10->supplies);
+
+	clk_disable_unprepare(ov02e10->img_clk);
+
+	return 0;
+}
+
+static int ov02e10_power_on(struct device *dev)
+{
+	struct v4l2_subdev *sd = dev_get_drvdata(dev);
+	struct ov02e10 *ov02e10 = to_ov02e10(sd);
+	int ret;
+
+	ret = clk_prepare_enable(ov02e10->img_clk);
+	if (ret < 0) {
+		dev_err(dev, "failed to enable imaging clock: %d\n", ret);
+		return ret;
+	}
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(ov02e10_supply_names),
+				    ov02e10->supplies);
+	if (ret < 0) {
+		dev_err(dev, "failed to enable regulators\n");
+		goto disable_clk;
+	}
+
+	if (ov02e10->reset) {
+		usleep_range(5000, 5100);
+		gpiod_set_value_cansleep(ov02e10->reset, 0);
+		usleep_range(8000, 8100);
+	}
+
+	return 0;
+
+disable_clk:
+	clk_disable_unprepare(ov02e10->img_clk);
+
+	return ret;
+}
+
+static int ov02e10_set_format(struct v4l2_subdev *sd,
+			      struct v4l2_subdev_state *sd_state,
+			      struct v4l2_subdev_format *fmt)
+{
+	struct ov02e10 *ov02e10 = to_ov02e10(sd);
+	const struct ov02e10_mode *mode;
+	s32 vblank_def, h_blank;
+	int ret = 0;
+
+	mode = v4l2_find_nearest_size(supported_modes,
+				      ARRAY_SIZE(supported_modes),
+				      width, height, fmt->format.width,
+				      fmt->format.height);
+
+	ov02e10_update_pad_format(mode, &fmt->format);
+
+	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
+		*v4l2_subdev_state_get_format(sd_state, fmt->pad) = fmt->format;
+	} else {
+		ov02e10->cur_mode = mode;
+		ret = __v4l2_ctrl_s_ctrl(ov02e10->link_freq,
+					 ov02e10->link_freq_index);
+		if (ret)
+			return ret;
+
+		ret = __v4l2_ctrl_s_ctrl_int64(ov02e10->pixel_rate,
+					       to_pixel_rate(ov02e10->link_freq_index));
+		if (ret)
+			return ret;
+
+		/* Update limits and set FPS to default */
+		vblank_def = mode->vts_def - mode->height;
+		ret = __v4l2_ctrl_modify_range(ov02e10->vblank,
+					       mode->vts_min - mode->height,
+					       OV02E10_VTS_MAX - mode->height,
+					       1, vblank_def);
+		if (ret)
+			return ret;
+
+		ret = __v4l2_ctrl_s_ctrl(ov02e10->vblank, vblank_def);
+		if (ret)
+			return ret;
+
+		h_blank = to_pixels_per_line(mode->hts, ov02e10->link_freq_index);
+		h_blank -= mode->width;
+		ret = __v4l2_ctrl_modify_range(ov02e10->hblank, h_blank,
+					       h_blank, 1, h_blank);
+	}
+
+	return ret;
+}
+
+static int ov02e10_get_format(struct v4l2_subdev *sd,
+			      struct v4l2_subdev_state *sd_state,
+			      struct v4l2_subdev_format *fmt)
+{
+	struct ov02e10 *ov02e10 = to_ov02e10(sd);
+
+	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
+		fmt->format = *v4l2_subdev_state_get_format(sd_state, fmt->pad);
+	else
+		ov02e10_update_pad_format(ov02e10->cur_mode, &fmt->format);
+
+	return 0;
+}
+
+static int ov02e10_enum_mbus_code(struct v4l2_subdev *sd,
+				  struct v4l2_subdev_state *sd_state,
+				  struct v4l2_subdev_mbus_code_enum *code)
+{
+	if (code->index > 0)
+		return -EINVAL;
+
+	code->code = MEDIA_BUS_FMT_SGRBG10_1X10;
+
+	return 0;
+}
+
+static int ov02e10_enum_frame_size(struct v4l2_subdev *sd,
+				   struct v4l2_subdev_state *sd_state,
+				   struct v4l2_subdev_frame_size_enum *fse)
+{
+	if (fse->index >= ARRAY_SIZE(supported_modes))
+		return -EINVAL;
+
+	if (fse->code != MEDIA_BUS_FMT_SGRBG10_1X10)
+		return -EINVAL;
+
+	fse->min_width = supported_modes[fse->index].width;
+	fse->max_width = fse->min_width;
+	fse->min_height = supported_modes[fse->index].height;
+	fse->max_height = fse->min_height;
+
+	return 0;
+}
+
+static int ov02e10_init_state(struct v4l2_subdev *sd,
+			      struct v4l2_subdev_state *sd_state)
+{
+	ov02e10_update_pad_format(&supported_modes[0],
+				  v4l2_subdev_state_get_format(sd_state, 0));
+
+	return 0;
+}
+
+static const struct v4l2_subdev_video_ops ov02e10_video_ops = {
+	.s_stream = v4l2_subdev_s_stream_helper,
+};
+
+static const struct v4l2_subdev_pad_ops ov02e10_pad_ops = {
+	.set_fmt = ov02e10_set_format,
+	.get_fmt = ov02e10_get_format,
+	.enum_mbus_code = ov02e10_enum_mbus_code,
+	.enum_frame_size = ov02e10_enum_frame_size,
+	.enable_streams = ov02e10_enable_streams,
+	.disable_streams = ov02e10_disable_streams,
+};
+
+static const struct v4l2_subdev_ops ov02e10_subdev_ops = {
+	.video = &ov02e10_video_ops,
+	.pad = &ov02e10_pad_ops,
+};
+
+static const struct media_entity_operations ov02e10_subdev_entity_ops = {
+	.link_validate = v4l2_subdev_link_validate,
+};
+
+static const struct v4l2_subdev_internal_ops ov02e10_internal_ops = {
+	.init_state = ov02e10_init_state,
+};
+
+static int ov02e10_identify_module(struct ov02e10 *ov02e10)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&ov02e10->sd);
+	int ret;
+	u64 val;
+
+	ret = cci_write(ov02e10->regmap, OV02E10_REG_PAGE_FLAG,
+			OV02E10_PAGE_0, NULL);
+	cci_read(ov02e10->regmap, OV02E10_REG_CHIP_ID, &val, &ret);
+	if (ret)
+		return ret;
+
+	if (val != OV02E10_CHIP_ID) {
+		dev_err(&client->dev, "chip id mismatch: %x!=%x\n",
+			OV02E10_CHIP_ID, (u32)val);
+		return -ENXIO;
+	}
+
+	return 0;
+}
+
+static int ov02e10_check_hwcfg(struct device *dev, struct ov02e10 *ov02e10)
+{
+	struct v4l2_fwnode_endpoint bus_cfg = {
+		.bus_type = V4L2_MBUS_CSI2_DPHY
+	};
+	struct fwnode_handle *ep;
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	unsigned long link_freq_bitmap;
+	u32 ext_clk;
+	int ret;
+
+	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
+	if (!ep)
+		return dev_err_probe(dev, -EPROBE_DEFER,
+				     "waiting for fwnode graph endpoint\n");
+
+	ret = v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
+	fwnode_handle_put(ep);
+	if (ret)
+		return dev_err_probe(dev, ret, "parsing endpoint failed\n");
+
+	ov02e10->img_clk = devm_clk_get_optional(dev, NULL);
+	if (IS_ERR(ov02e10->img_clk)) {
+		ret = dev_err_probe(dev, PTR_ERR(ov02e10->img_clk),
+				    "failed to get imaging clock\n");
+		goto out_err;
+	}
+
+	if (ov02e10->img_clk) {
+		ext_clk = clk_get_rate(ov02e10->img_clk);
+	} else {
+		ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
+					       &ext_clk);
+		if (ret) {
+			dev_err(dev, "can't get clock frequency\n");
+			goto out_err;
+		}
+	}
+
+	if (ext_clk != OV02E10_MCLK) {
+		dev_err(dev, "external clock %d is not supported\n",
+			ext_clk);
+		ret = -EINVAL;
+		goto out_err;
+	}
+
+	if (bus_cfg.bus.mipi_csi2.num_data_lanes != OV02E10_DATA_LANES) {
+		dev_err(dev, "number of CSI2 data lanes %d is not supported\n",
+			bus_cfg.bus.mipi_csi2.num_data_lanes);
+		ret = -EINVAL;
+		goto out_err;
+	}
+
+	if (!bus_cfg.nr_of_link_frequencies) {
+		dev_err(dev, "no link frequencies defined\n");
+		ret = -EINVAL;
+		goto out_err;
+	}
+
+	ret = v4l2_link_freq_to_bitmap(dev, bus_cfg.link_frequencies,
+				       bus_cfg.nr_of_link_frequencies,
+				       link_freq_menu_items,
+				       ARRAY_SIZE(link_freq_menu_items),
+				       &link_freq_bitmap);
+	if (ret)
+		goto out_err;
+
+	/* v4l2_link_freq_to_bitmap() guarantees at least 1 bit is set */
+	ov02e10->link_freq_index = ffs(link_freq_bitmap) - 1;
+	ov02e10->mipi_lanes = bus_cfg.bus.mipi_csi2.num_data_lanes;
+
+out_err:
+	v4l2_fwnode_endpoint_free(&bus_cfg);
+
+	return ret;
+}
+
+static void ov02e10_remove(struct i2c_client *client)
+{
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+
+	v4l2_async_unregister_subdev(sd);
+	v4l2_subdev_cleanup(sd);
+	media_entity_cleanup(&sd->entity);
+	v4l2_ctrl_handler_free(sd->ctrl_handler);
+	pm_runtime_disable(&client->dev);
+
+	if (!pm_runtime_status_suspended(&client->dev)) {
+		ov02e10_power_off(&client->dev);
+		pm_runtime_set_suspended(&client->dev);
+	}
+}
+
+static int ov02e10_probe(struct i2c_client *client)
+{
+	struct ov02e10 *ov02e10;
+	int ret;
+
+	ov02e10 = devm_kzalloc(&client->dev, sizeof(*ov02e10), GFP_KERNEL);
+	if (!ov02e10)
+		return -ENOMEM;
+
+	v4l2_i2c_subdev_init(&ov02e10->sd, client, &ov02e10_subdev_ops);
+
+	/* Check HW config */
+	ret = ov02e10_check_hwcfg(&client->dev, ov02e10);
+	if (ret)
+		return ret;
+
+	/* Initialize subdev */
+	ov02e10->regmap = devm_cci_regmap_init_i2c(client, 8);
+	if (IS_ERR(ov02e10->regmap))
+		return PTR_ERR(ov02e10->regmap);
+
+	ret = ov02e10_get_pm_resources(&client->dev);
+	if (ret)
+		return ret;
+
+	ret = ov02e10_power_on(&client->dev);
+	if (ret) {
+		dev_err_probe(&client->dev, ret, "failed to power on\n");
+		return ret;
+	}
+
+	/* Check module identity */
+	ret = ov02e10_identify_module(ov02e10);
+	if (ret) {
+		dev_err(&client->dev, "failed to find sensor: %d\n", ret);
+		goto probe_error_power_off;
+	}
+
+	ov02e10->cur_mode = &supported_modes[0];
+	ret = ov02e10_init_controls(ov02e10);
+	if (ret) {
+		dev_err(&client->dev, "failed to init controls: %d\n", ret);
+		goto probe_error_v4l2_ctrl_handler_free;
+	}
+
+	/* Initialize subdev */
+	ov02e10->sd.internal_ops = &ov02e10_internal_ops;
+	ov02e10->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
+	ov02e10->sd.entity.ops = &ov02e10_subdev_entity_ops;
+	ov02e10->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
+
+	/* Initialize source pad */
+	ov02e10->pad.flags = MEDIA_PAD_FL_SOURCE;
+	ret = media_entity_pads_init(&ov02e10->sd.entity, 1, &ov02e10->pad);
+	if (ret) {
+		dev_err(&client->dev, "failed to init entity pads: %d", ret);
+		goto probe_error_v4l2_ctrl_handler_free;
+	}
+
+	ov02e10->sd.state_lock = ov02e10->ctrl_handler.lock;
+	ret = v4l2_subdev_init_finalize(&ov02e10->sd);
+	if (ret < 0) {
+		dev_err(&client->dev, "failed to init subdev: %d", ret);
+		goto probe_error_media_entity_cleanup;
+	}
+
+	pm_runtime_set_active(&client->dev);
+	pm_runtime_enable(&client->dev);
+
+	ret = v4l2_async_register_subdev_sensor(&ov02e10->sd);
+	if (ret < 0) {
+		dev_err(&client->dev, "failed to register V4L2 subdev: %d",
+			ret);
+		goto probe_error_v4l2_subdev_cleanup;
+	}
+
+	pm_runtime_idle(&client->dev);
+	return 0;
+
+probe_error_v4l2_subdev_cleanup:
+	pm_runtime_disable(&client->dev);
+	pm_runtime_set_suspended(&client->dev);
+	v4l2_subdev_cleanup(&ov02e10->sd);
+
+probe_error_media_entity_cleanup:
+	media_entity_cleanup(&ov02e10->sd.entity);
+
+probe_error_v4l2_ctrl_handler_free:
+	v4l2_ctrl_handler_free(ov02e10->sd.ctrl_handler);
+
+probe_error_power_off:
+	ov02e10_power_off(&client->dev);
+
+	return ret;
+}
+
+static DEFINE_RUNTIME_DEV_PM_OPS(ov02e10_pm_ops, ov02e10_power_off,
+				 ov02e10_power_on, NULL);
+
+static const struct acpi_device_id ov02e10_acpi_ids[] = {
+	{ "OVTI02E1" },
+	{ /* sentinel */ }
+};
+
+MODULE_DEVICE_TABLE(acpi, ov02e10_acpi_ids);
+
+static const struct of_device_id ov02e10_of_match[] = {
+	{ .compatible = "ovti,ov02e10" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, ov02e10_of_match);
+
+static struct i2c_driver ov02e10_i2c_driver = {
+	.driver = {
+		.name = "ov02e10",
+		.pm = pm_sleep_ptr(&ov02e10_pm_ops),
+		.acpi_match_table = ov02e10_acpi_ids,
+		.of_match_table = ov02e10_of_match,
+	},
+	.probe = ov02e10_probe,
+	.remove = ov02e10_remove,
+};
+
+module_i2c_driver(ov02e10_i2c_driver);
+
+MODULE_AUTHOR("Jingjing Xiong <jingjing.xiong@intel.com>");
+MODULE_AUTHOR("Hans de Goede <hdegoede@redhat.com>");
+MODULE_AUTHOR("Alan Stern <stern@rowland.harvard.edu>");
+MODULE_AUTHOR("Bryan O'Donoghue <bryan.odonoghue@linaro.org>");
+MODULE_DESCRIPTION("OmniVision OV02E10 sensor driver");
+MODULE_LICENSE("GPL");

-- 
2.49.0


