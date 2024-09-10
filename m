Return-Path: <devicetree+bounces-101625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E69972BA2
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 10:11:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9E25289A8B
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 08:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1647C191F7C;
	Tue, 10 Sep 2024 08:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="epGlLwft"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5BB188921;
	Tue, 10 Sep 2024 08:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725955663; cv=none; b=W5PcMTtH7wM5dsA+wZ5C6oXV1BRw9AHKIUgd7OMtvAko/Z1aknA3OKoReP6msd+ufOcU9I+gTbchWO71DjMmzg8Gm8KUxq53+vUhXGw7eSikIXX2shBl7E5jXhTeCxD7bDsU/TkrYNXQiMRJx77/ZwHY23JP0tUk8yRbn4CNWAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725955663; c=relaxed/simple;
	bh=pvhYRDNuhtBQZTGyZgFP7Ks9y5FGiWxwPgA7uugbcM8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AptOKAnyU3mIGa47znTIMFSiM8VakrQer8fagYE6WA0uoEQBWq8T6BuL0crxZLtFPXHAr+M9f3G39ukXEDim2A6KdYS+JXPs2YTFwkQhrHS0OpmjvYVzUSViP8QA/oQsSbaAlqBGrDRDwknaLrn/SrHRBoq53GH/QADGDdlsRHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=epGlLwft; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-156-87-48.elisa-laajakaista.fi [91.156.87.48])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6FDAE19BA;
	Tue, 10 Sep 2024 10:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1725955577;
	bh=pvhYRDNuhtBQZTGyZgFP7Ks9y5FGiWxwPgA7uugbcM8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=epGlLwft9o04BSF5iPv1+r8uNAa75j0ym+yqqhkVobGSZE3RG9jTSL383WAX+Kc62
	 jREh42BlNEo+GTQjX27B3JqmvR/a8HVKjjvClDgxa8BpZIOCXS2eNaxxXBNGkWitBV
	 FyAcM3YqyLxDrwP0u7NTIqBWpYOd/A/sJxoojXJQ=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Tue, 10 Sep 2024 11:07:08 +0300
Subject: [PATCH v5 3/4] media: raspberrypi: Add support for RP1-CFE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240910-rp1-cfe-v5-3-9ab4c4c8eace@ideasonboard.com>
References: <20240910-rp1-cfe-v5-0-9ab4c4c8eace@ideasonboard.com>
In-Reply-To: <20240910-rp1-cfe-v5-0-9ab4c4c8eace@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Naushir Patuck <naush@raspberrypi.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=149169;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=pvhYRDNuhtBQZTGyZgFP7Ks9y5FGiWxwPgA7uugbcM8=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBm3/5Av2O1fMyqm5O4HNxYjdPUvvGfFjoMKS3iV
 TXC0yLOOWSJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZt/+QAAKCRD6PaqMvJYe
 9ceZD/9XMOrD0jCU9XZBq3GIeDeSXdKwYVnyfp/aC4nvdvOlD+iKvrQkm8GPgxHnd+GtBHQPVd7
 IiIoA0tl5rdTfpd2tQSxi6tSAt/gsvkgVcbwcZQ+LaEQcucz3I/QJLQojzCbdRBbGxqTd0S/wb1
 kpOMUGYE0DbwV2xEF+70sOhyIQHjxuWjcfCgg4Njb2g/9lceYUwZz9XuDiO8KUvN1hsfdx+8JUz
 kSUz+jhAD0HGt7iI9xYpaht2+BD1AOSsB47p5sQwuSfo+pTKSkb6MyokJBJ1PPCyKpXRFeZrTCV
 deejCwsHyTBpKfUDE0KmUbjhF7vhaCBXwuWoOwqIL94TY6L1kI2bCr8qv71xOzOEhUPnGHkl3K8
 tE7Y7oihxCdbOQTPGLUhqtebzhxk+0nXXiIw2aTOe5j2JLD5bmdvb4oPO4CytEBSMZ58/y8uyxP
 AvkkMZaSIgvLAdM3U//Z9gDLA9v1AEKMhfEHCOzzbphJ7DExbDdk0WnPmpFx4Gis2IAMxEjbQzl
 AaOyTQaXHIcfO1U/TGBs373ZabJI3d054+Pg6dJbOKZo9TvKB1LSTY39+p4XJpUbuvKZFJ/Erg/
 bUnnG4YDoLlaplq6z8FA7MB0yyz5scCNgfMc2ua9RGEA2LRTGmKOpVTgU9K44VbTzKOQZrZBK5H
 qmk8o8awJUWcMVA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5

Add support for Raspberry Pi CFE. The CFE is a hardware block that
contains:

- MIPI D-PHY
- MIPI CSI-2 receiver
- Front End ISP (FE)

The driver has been upported from the Raspberry Pi kernel commit
88a681df9623 ("ARM: dts: bcm2712-rpi: Add i2c<n>_pins labels").

Co-developed-by: Naushir Patuck <naush@raspberrypi.com>
Signed-off-by: Naushir Patuck <naush@raspberrypi.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 MAINTAINERS                                        |    7 +
 drivers/media/platform/raspberrypi/Kconfig         |    1 +
 drivers/media/platform/raspberrypi/Makefile        |    1 +
 drivers/media/platform/raspberrypi/rp1-cfe/Kconfig |   15 +
 .../media/platform/raspberrypi/rp1-cfe/Makefile    |    6 +
 .../media/platform/raspberrypi/rp1-cfe/cfe-fmts.h  |  332 +++
 .../media/platform/raspberrypi/rp1-cfe/cfe-trace.h |  196 ++
 drivers/media/platform/raspberrypi/rp1-cfe/cfe.c   | 2487 ++++++++++++++++++++
 drivers/media/platform/raspberrypi/rp1-cfe/cfe.h   |   43 +
 drivers/media/platform/raspberrypi/rp1-cfe/csi2.c  |  583 +++++
 drivers/media/platform/raspberrypi/rp1-cfe/csi2.h  |   89 +
 drivers/media/platform/raspberrypi/rp1-cfe/dphy.c  |  180 ++
 drivers/media/platform/raspberrypi/rp1-cfe/dphy.h  |   27 +
 .../media/platform/raspberrypi/rp1-cfe/pisp-fe.c   |  581 +++++
 .../media/platform/raspberrypi/rp1-cfe/pisp-fe.h   |   53 +
 .../uapi/linux/media/raspberrypi/pisp_fe_config.h  |  273 +++
 .../linux/media/raspberrypi/pisp_fe_statistics.h   |   64 +
 17 files changed, 4938 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fe83ba7194ea..fdb7c18ea164 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19144,6 +19144,13 @@ F:	Documentation/devicetree/bindings/media/raspberrypi,pispbe.yaml
 F:	drivers/media/platform/raspberrypi/pisp_be/
 F:	include/uapi/linux/media/raspberrypi/
 
+RASPBERRY PI PISP CAMERA FRONT END
+M:	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
+M:	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
+F:	drivers/media/platform/raspberrypi/rp1-cfe/
+
 RC-CORE / LIRC FRAMEWORK
 M:	Sean Young <sean@mess.org>
 L:	linux-media@vger.kernel.org
diff --git a/drivers/media/platform/raspberrypi/Kconfig b/drivers/media/platform/raspberrypi/Kconfig
index e928f979019e..bd5101ffefb5 100644
--- a/drivers/media/platform/raspberrypi/Kconfig
+++ b/drivers/media/platform/raspberrypi/Kconfig
@@ -3,3 +3,4 @@
 comment "Raspberry Pi media platform drivers"
 
 source "drivers/media/platform/raspberrypi/pisp_be/Kconfig"
+source "drivers/media/platform/raspberrypi/rp1-cfe/Kconfig"
diff --git a/drivers/media/platform/raspberrypi/Makefile b/drivers/media/platform/raspberrypi/Makefile
index c0d1a2dab486..af7fde84eefe 100644
--- a/drivers/media/platform/raspberrypi/Makefile
+++ b/drivers/media/platform/raspberrypi/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-y += pisp_be/
+obj-y += rp1-cfe/
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/Kconfig b/drivers/media/platform/raspberrypi/rp1-cfe/Kconfig
new file mode 100644
index 000000000000..327b61f1134b
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/Kconfig
@@ -0,0 +1,15 @@
+# RP1 V4L2 camera support
+
+config VIDEO_RP1_CFE
+	tristate "Raspberry Pi RP1 Camera Front End (CFE) video capture driver"
+	depends on VIDEO_DEV
+	depends on PM
+	select VIDEO_V4L2_SUBDEV_API
+	select MEDIA_CONTROLLER
+	select VIDEOBUF2_DMA_CONTIG
+	select V4L2_FWNODE
+	help
+	  Say Y here to enable support for the Raspberry Pi RP1 Camera Front End.
+
+	  To compile this driver as a module, choose M here. The module will be
+	  called rp1-cfe.
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/Makefile b/drivers/media/platform/raspberrypi/rp1-cfe/Makefile
new file mode 100644
index 000000000000..3f0d0fc8570e
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for RP1 Camera Front End driver
+#
+rp1-cfe-objs := cfe.o csi2.o pisp-fe.o dphy.o
+obj-$(CONFIG_VIDEO_RP1_CFE) += rp1-cfe.o
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/cfe-fmts.h b/drivers/media/platform/raspberrypi/rp1-cfe/cfe-fmts.h
new file mode 100644
index 000000000000..7aecf7f83733
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/cfe-fmts.h
@@ -0,0 +1,332 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * RP1 Camera Front End formats definition
+ *
+ * Copyright (C) 2021-2024 - Raspberry Pi Ltd.
+ */
+#ifndef _CFE_FMTS_H_
+#define _CFE_FMTS_H_
+
+#include "cfe.h"
+#include <media/mipi-csi2.h>
+
+static const struct cfe_fmt formats[] = {
+	/* YUV Formats */
+	{
+		.fourcc = V4L2_PIX_FMT_YUYV,
+		.code = MEDIA_BUS_FMT_YUYV8_1X16,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_YUV422_8B,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_UYVY,
+		.code = MEDIA_BUS_FMT_UYVY8_1X16,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_YUV422_8B,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_YVYU,
+		.code = MEDIA_BUS_FMT_YVYU8_1X16,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_YUV422_8B,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_VYUY,
+		.code = MEDIA_BUS_FMT_VYUY8_1X16,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_YUV422_8B,
+	},
+	{
+		/* RGB Formats */
+		.fourcc = V4L2_PIX_FMT_RGB565, /* gggbbbbb rrrrrggg */
+		.code = MEDIA_BUS_FMT_RGB565_2X8_LE,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_RGB565,
+	},
+	{	.fourcc = V4L2_PIX_FMT_RGB565X, /* rrrrrggg gggbbbbb */
+		.code = MEDIA_BUS_FMT_RGB565_2X8_BE,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_RGB565,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_RGB555, /* gggbbbbb arrrrrgg */
+		.code = MEDIA_BUS_FMT_RGB555_2X8_PADHI_LE,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_RGB555,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_RGB555X, /* arrrrrgg gggbbbbb */
+		.code = MEDIA_BUS_FMT_RGB555_2X8_PADHI_BE,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_RGB555,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_RGB24, /* rgb */
+		.code = MEDIA_BUS_FMT_RGB888_1X24,
+		.depth = 24,
+		.csi_dt = MIPI_CSI2_DT_RGB888,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_BGR24, /* bgr */
+		.code = MEDIA_BUS_FMT_BGR888_1X24,
+		.depth = 24,
+		.csi_dt = MIPI_CSI2_DT_RGB888,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_RGB32, /* argb */
+		.code = MEDIA_BUS_FMT_ARGB8888_1X32,
+		.depth = 32,
+		.csi_dt = 0x0,
+	},
+
+	/* Bayer Formats */
+	{
+		.fourcc = V4L2_PIX_FMT_SBGGR8,
+		.code = MEDIA_BUS_FMT_SBGGR8_1X8,
+		.depth = 8,
+		.csi_dt = MIPI_CSI2_DT_RAW8,
+		.remap = { V4L2_PIX_FMT_SBGGR16, V4L2_PIX_FMT_PISP_COMP1_BGGR },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGBRG8,
+		.code = MEDIA_BUS_FMT_SGBRG8_1X8,
+		.depth = 8,
+		.csi_dt = MIPI_CSI2_DT_RAW8,
+		.remap = { V4L2_PIX_FMT_SGBRG16, V4L2_PIX_FMT_PISP_COMP1_GBRG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGRBG8,
+		.code = MEDIA_BUS_FMT_SGRBG8_1X8,
+		.depth = 8,
+		.csi_dt = MIPI_CSI2_DT_RAW8,
+		.remap = { V4L2_PIX_FMT_SGRBG16, V4L2_PIX_FMT_PISP_COMP1_GRBG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SRGGB8,
+		.code = MEDIA_BUS_FMT_SRGGB8_1X8,
+		.depth = 8,
+		.csi_dt = MIPI_CSI2_DT_RAW8,
+		.remap = { V4L2_PIX_FMT_SRGGB16, V4L2_PIX_FMT_PISP_COMP1_RGGB },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SBGGR10P,
+		.code = MEDIA_BUS_FMT_SBGGR10_1X10,
+		.depth = 10,
+		.csi_dt = MIPI_CSI2_DT_RAW10,
+		.remap = { V4L2_PIX_FMT_SBGGR16, V4L2_PIX_FMT_PISP_COMP1_BGGR },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGBRG10P,
+		.code = MEDIA_BUS_FMT_SGBRG10_1X10,
+		.depth = 10,
+		.csi_dt = MIPI_CSI2_DT_RAW10,
+		.remap = { V4L2_PIX_FMT_SGBRG16, V4L2_PIX_FMT_PISP_COMP1_GBRG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGRBG10P,
+		.code = MEDIA_BUS_FMT_SGRBG10_1X10,
+		.depth = 10,
+		.csi_dt = MIPI_CSI2_DT_RAW10,
+		.remap = { V4L2_PIX_FMT_SGRBG16, V4L2_PIX_FMT_PISP_COMP1_GRBG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SRGGB10P,
+		.code = MEDIA_BUS_FMT_SRGGB10_1X10,
+		.depth = 10,
+		.csi_dt = MIPI_CSI2_DT_RAW10,
+		.remap = { V4L2_PIX_FMT_SRGGB16, V4L2_PIX_FMT_PISP_COMP1_RGGB },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SBGGR12P,
+		.code = MEDIA_BUS_FMT_SBGGR12_1X12,
+		.depth = 12,
+		.csi_dt = MIPI_CSI2_DT_RAW12,
+		.remap = { V4L2_PIX_FMT_SBGGR16, V4L2_PIX_FMT_PISP_COMP1_BGGR },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGBRG12P,
+		.code = MEDIA_BUS_FMT_SGBRG12_1X12,
+		.depth = 12,
+		.csi_dt = MIPI_CSI2_DT_RAW12,
+		.remap = { V4L2_PIX_FMT_SGBRG16, V4L2_PIX_FMT_PISP_COMP1_GBRG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGRBG12P,
+		.code = MEDIA_BUS_FMT_SGRBG12_1X12,
+		.depth = 12,
+		.csi_dt = MIPI_CSI2_DT_RAW12,
+		.remap = { V4L2_PIX_FMT_SGRBG16, V4L2_PIX_FMT_PISP_COMP1_GRBG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SRGGB12P,
+		.code = MEDIA_BUS_FMT_SRGGB12_1X12,
+		.depth = 12,
+		.csi_dt = MIPI_CSI2_DT_RAW12,
+		.remap = { V4L2_PIX_FMT_SRGGB16, V4L2_PIX_FMT_PISP_COMP1_RGGB },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SBGGR14P,
+		.code = MEDIA_BUS_FMT_SBGGR14_1X14,
+		.depth = 14,
+		.csi_dt = MIPI_CSI2_DT_RAW14,
+		.remap = { V4L2_PIX_FMT_SBGGR16, V4L2_PIX_FMT_PISP_COMP1_BGGR },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGBRG14P,
+		.code = MEDIA_BUS_FMT_SGBRG14_1X14,
+		.depth = 14,
+		.csi_dt = MIPI_CSI2_DT_RAW14,
+		.remap = { V4L2_PIX_FMT_SGBRG16, V4L2_PIX_FMT_PISP_COMP1_GBRG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGRBG14P,
+		.code = MEDIA_BUS_FMT_SGRBG14_1X14,
+		.depth = 14,
+		.csi_dt = MIPI_CSI2_DT_RAW14,
+		.remap = { V4L2_PIX_FMT_SGRBG16, V4L2_PIX_FMT_PISP_COMP1_GRBG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SRGGB14P,
+		.code = MEDIA_BUS_FMT_SRGGB14_1X14,
+		.depth = 14,
+		.csi_dt = MIPI_CSI2_DT_RAW14,
+		.remap = { V4L2_PIX_FMT_SRGGB16, V4L2_PIX_FMT_PISP_COMP1_RGGB },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SBGGR16,
+		.code = MEDIA_BUS_FMT_SBGGR16_1X16,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_RAW16,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+		.remap = { V4L2_PIX_FMT_SBGGR16, V4L2_PIX_FMT_PISP_COMP1_BGGR },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGBRG16,
+		.code = MEDIA_BUS_FMT_SGBRG16_1X16,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_RAW16,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+		.remap = { V4L2_PIX_FMT_SGBRG16, V4L2_PIX_FMT_PISP_COMP1_GBRG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SGRBG16,
+		.code = MEDIA_BUS_FMT_SGRBG16_1X16,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_RAW16,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+		.remap = { V4L2_PIX_FMT_SGRBG16, V4L2_PIX_FMT_PISP_COMP1_GRBG },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_SRGGB16,
+		.code = MEDIA_BUS_FMT_SRGGB16_1X16,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_RAW16,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+		.remap = { V4L2_PIX_FMT_SRGGB16, V4L2_PIX_FMT_PISP_COMP1_RGGB },
+	},
+	/* PiSP Compressed Mode 1 */
+	{
+		.fourcc = V4L2_PIX_FMT_PISP_COMP1_RGGB,
+		.code = MEDIA_BUS_FMT_SRGGB16_1X16,
+		.depth = 8,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_PISP_COMP1_BGGR,
+		.code = MEDIA_BUS_FMT_SBGGR16_1X16,
+		.depth = 8,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_PISP_COMP1_GBRG,
+		.code = MEDIA_BUS_FMT_SGBRG16_1X16,
+		.depth = 8,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_PISP_COMP1_GRBG,
+		.code = MEDIA_BUS_FMT_SGRBG16_1X16,
+		.depth = 8,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+	},
+	/* Greyscale format */
+	{
+		.fourcc = V4L2_PIX_FMT_GREY,
+		.code = MEDIA_BUS_FMT_Y8_1X8,
+		.depth = 8,
+		.csi_dt = MIPI_CSI2_DT_RAW8,
+		.remap = { V4L2_PIX_FMT_Y16, V4L2_PIX_FMT_PISP_COMP1_MONO },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_Y10P,
+		.code = MEDIA_BUS_FMT_Y10_1X10,
+		.depth = 10,
+		.csi_dt = MIPI_CSI2_DT_RAW10,
+		.remap = { V4L2_PIX_FMT_Y16, V4L2_PIX_FMT_PISP_COMP1_MONO },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_Y12P,
+		.code = MEDIA_BUS_FMT_Y12_1X12,
+		.depth = 12,
+		.csi_dt = MIPI_CSI2_DT_RAW12,
+		.remap = { V4L2_PIX_FMT_Y16, V4L2_PIX_FMT_PISP_COMP1_MONO },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_Y14P,
+		.code = MEDIA_BUS_FMT_Y14_1X14,
+		.depth = 14,
+		.csi_dt = MIPI_CSI2_DT_RAW14,
+		.remap = { V4L2_PIX_FMT_Y16, V4L2_PIX_FMT_PISP_COMP1_MONO },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_Y16,
+		.code = MEDIA_BUS_FMT_Y16_1X16,
+		.depth = 16,
+		.csi_dt = MIPI_CSI2_DT_RAW16,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+		.remap = { V4L2_PIX_FMT_Y16, V4L2_PIX_FMT_PISP_COMP1_MONO },
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_PISP_COMP1_MONO,
+		.code = MEDIA_BUS_FMT_Y16_1X16,
+		.depth = 8,
+		.flags = CFE_FORMAT_FLAG_FE_OUT,
+	},
+
+	/* Embedded data formats */
+	{
+		.fourcc = V4L2_META_FMT_GENERIC_8,
+		.code = MEDIA_BUS_FMT_META_8,
+		.depth = 8,
+		.csi_dt = MIPI_CSI2_DT_EMBEDDED_8B,
+		.flags = CFE_FORMAT_FLAG_META_CAP,
+	},
+	{
+		.fourcc = V4L2_META_FMT_GENERIC_CSI2_10,
+		.code = MEDIA_BUS_FMT_META_10,
+		.depth = 10,
+		.csi_dt = MIPI_CSI2_DT_EMBEDDED_8B,
+		.flags = CFE_FORMAT_FLAG_META_CAP,
+	},
+	{
+		.fourcc = V4L2_META_FMT_GENERIC_CSI2_12,
+		.code = MEDIA_BUS_FMT_META_12,
+		.depth = 12,
+		.csi_dt = MIPI_CSI2_DT_EMBEDDED_8B,
+		.flags = CFE_FORMAT_FLAG_META_CAP,
+	},
+
+	/* Frontend formats */
+	{
+		.fourcc = V4L2_META_FMT_RPI_FE_CFG,
+		.code = MEDIA_BUS_FMT_FIXED,
+		.flags = CFE_FORMAT_FLAG_META_OUT,
+	},
+	{
+		.fourcc = V4L2_META_FMT_RPI_FE_STATS,
+		.code = MEDIA_BUS_FMT_FIXED,
+		.flags = CFE_FORMAT_FLAG_META_CAP,
+	},
+};
+
+#endif /* _CFE_FMTS_H_ */
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/cfe-trace.h b/drivers/media/platform/raspberrypi/rp1-cfe/cfe-trace.h
new file mode 100644
index 000000000000..8f3e61cec8fc
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/cfe-trace.h
@@ -0,0 +1,196 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2024 Raspberry Pi Ltd.
+ * Copyright (c) 2024 Ideas on Board Oy
+ */
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM cfe
+
+#if !defined(_CFE_TRACE_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _CFE_TRACE_H
+
+#include <linux/tracepoint.h>
+#include <media/videobuf2-v4l2.h>
+
+TRACE_EVENT(cfe_return_buffer,
+	TP_PROTO(u32 node_id, u32 buf_idx, u32 queue_id),
+	TP_ARGS(node_id, buf_idx, queue_id),
+	TP_STRUCT__entry(
+		__field(u32, node_id)
+		__field(u32, buf_idx)
+		__field(u32, queue_id)
+	),
+	TP_fast_assign(
+		__entry->node_id = node_id;
+		__entry->buf_idx = buf_idx;
+		__entry->queue_id = queue_id;
+	),
+	TP_printk("node=%u buf=%u, queue=%u", __entry->node_id, __entry->buf_idx, __entry->queue_id)
+);
+
+DECLARE_EVENT_CLASS(cfe_buffer_template,
+	TP_PROTO(u32 node_id, struct vb2_buffer *buf),
+	TP_ARGS(node_id, buf),
+	TP_STRUCT__entry(
+		__field(u32, node_id)
+		__field(u32, buf_idx)
+	),
+	TP_fast_assign(
+		__entry->node_id = node_id;
+		__entry->buf_idx = buf->index;
+	),
+	TP_printk("node=%u buf=%u", __entry->node_id, __entry->buf_idx)
+);
+
+DEFINE_EVENT(cfe_buffer_template, cfe_buffer_prepare,
+	TP_PROTO(u32 node_id, struct vb2_buffer *buf),
+	TP_ARGS(node_id, buf));
+
+TRACE_EVENT(cfe_buffer_queue,
+	TP_PROTO(u32 node_id, struct vb2_buffer *buf, bool schedule_now),
+	TP_ARGS(node_id, buf, schedule_now),
+	TP_STRUCT__entry(
+		__field(u32, node_id)
+		__field(u32, buf_idx)
+		__field(bool, schedule_now)
+	),
+	TP_fast_assign(
+		__entry->node_id = node_id;
+		__entry->buf_idx = buf->index;
+		__entry->schedule_now = schedule_now;
+	),
+	TP_printk("node=%u buf=%u%s", __entry->node_id, __entry->buf_idx,
+		  __entry->schedule_now ? " schedule immediately" : "")
+);
+
+DEFINE_EVENT(cfe_buffer_template, cfe_csi2_schedule,
+	TP_PROTO(u32 node_id, struct vb2_buffer *buf),
+	TP_ARGS(node_id, buf));
+
+DEFINE_EVENT(cfe_buffer_template, cfe_fe_schedule,
+	TP_PROTO(u32 node_id, struct vb2_buffer *buf),
+	TP_ARGS(node_id, buf));
+
+TRACE_EVENT(cfe_buffer_complete,
+	TP_PROTO(u32 node_id, struct vb2_v4l2_buffer *buf),
+	TP_ARGS(node_id, buf),
+	TP_STRUCT__entry(
+		__field(u32, node_id)
+		__field(u32, buf_idx)
+		__field(u32, seq)
+		__field(u64, ts)
+	),
+	TP_fast_assign(
+		__entry->node_id = node_id;
+		__entry->buf_idx = buf->vb2_buf.index;
+		__entry->seq = buf->sequence;
+		__entry->ts = buf->vb2_buf.timestamp;
+	),
+	TP_printk("node=%u buf=%u seq=%u ts=%llu", __entry->node_id, __entry->buf_idx,
+		  __entry->seq,
+		  __entry->ts)
+);
+
+TRACE_EVENT(cfe_frame_start,
+	TP_PROTO(u32 node_id, u32 fs_count),
+	TP_ARGS(node_id, fs_count),
+	TP_STRUCT__entry(
+		__field(u32, node_id)
+		__field(u32, fs_count)
+	),
+	TP_fast_assign(
+		__entry->node_id = node_id;
+		__entry->fs_count = fs_count;
+	),
+	TP_printk("node=%u fs_count=%u", __entry->node_id, __entry->fs_count)
+);
+
+TRACE_EVENT(cfe_frame_end,
+	TP_PROTO(u32 node_id, u32 fs_count),
+	TP_ARGS(node_id, fs_count),
+	TP_STRUCT__entry(
+		__field(u32, node_id)
+		__field(u32, fs_count)
+	),
+	TP_fast_assign(
+		__entry->node_id = node_id;
+		__entry->fs_count = fs_count;
+	),
+	TP_printk("node=%u fs_count=%u", __entry->node_id, __entry->fs_count)
+);
+
+TRACE_EVENT(cfe_prepare_next_job,
+	TP_PROTO(bool fe_enabled),
+	TP_ARGS(fe_enabled),
+	TP_STRUCT__entry(
+		__field(bool, fe_enabled)
+	),
+	TP_fast_assign(
+		__entry->fe_enabled = fe_enabled;
+	),
+	TP_printk("fe_enabled=%u", __entry->fe_enabled)
+);
+
+/* These are copied from csi2.c */
+#define CSI2_STATUS_IRQ_FS(x)			(BIT(0) << (x))
+#define CSI2_STATUS_IRQ_FE(x)			(BIT(4) << (x))
+#define CSI2_STATUS_IRQ_FE_ACK(x)		(BIT(8) << (x))
+#define CSI2_STATUS_IRQ_LE(x)			(BIT(12) << (x))
+#define CSI2_STATUS_IRQ_LE_ACK(x)		(BIT(16) << (x))
+
+TRACE_EVENT(csi2_irq,
+	TP_PROTO(u32 channel, u32 status, u32 dbg),
+	TP_ARGS(channel, status, dbg),
+	TP_STRUCT__entry(
+		__field(u32, channel)
+		__field(u32, status)
+		__field(u32, dbg)
+	),
+	TP_fast_assign(
+		__entry->channel = channel;
+		__entry->status = status;
+		__entry->dbg = dbg;
+	),
+	TP_printk("ch=%u flags=[ %s%s%s%s%s] frame=%u line=%u\n",
+		  __entry->channel,
+		  (__entry->status & CSI2_STATUS_IRQ_FS(__entry->channel)) ? "FS " : "",
+		  (__entry->status & CSI2_STATUS_IRQ_FE(__entry->channel)) ? "FE " : "",
+		  (__entry->status & CSI2_STATUS_IRQ_FE_ACK(__entry->channel)) ? "FE_ACK " : "",
+		  (__entry->status & CSI2_STATUS_IRQ_LE(__entry->channel)) ? "LE " : "",
+		  (__entry->status & CSI2_STATUS_IRQ_LE_ACK(__entry->channel)) ? "LE_ACK " : "",
+		  __entry->dbg >> 16, __entry->dbg & 0xffff)
+);
+
+TRACE_EVENT(fe_irq,
+	TP_PROTO(u32 status, u32 output_status, u32 frame_status, u32 error_status, u32 int_status),
+	TP_ARGS(status, output_status, frame_status, error_status, int_status),
+	TP_STRUCT__entry(
+		__field(u32, status)
+		__field(u32, output_status)
+		__field(u32, frame_status)
+		__field(u32, error_status)
+		__field(u32, int_status)
+	),
+	TP_fast_assign(
+		__entry->status = status;
+		__entry->output_status = output_status;
+		__entry->frame_status = frame_status;
+		__entry->error_status = error_status;
+		__entry->int_status = int_status;
+	),
+	TP_printk("status 0x%x out_status 0x%x frame_status 0x%x error_status 0x%x int_status 0x%x",
+		  __entry->status,
+		  __entry->output_status,
+		  __entry->frame_status,
+		  __entry->error_status,
+		  __entry->int_status)
+);
+
+#endif /* _CFE_TRACE_H */
+
+/* This part must be outside protection */
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH .
+#define TRACE_INCLUDE_FILE ../../drivers/media/platform/raspberrypi/rp1-cfe/cfe-trace
+#include <trace/define_trace.h>
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/cfe.c b/drivers/media/platform/raspberrypi/rp1-cfe/cfe.c
new file mode 100644
index 000000000000..0147ed9786af
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/cfe.c
@@ -0,0 +1,2487 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * RP1 Camera Front End Driver
+ *
+ * Copyright (c) 2021-2024 Raspberry Pi Ltd.
+ * Copyright (c) 2023-2024 Ideas on Board Oy
+ */
+
+#include <linux/clk.h>
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/dma-mapping.h>
+#include <linux/err.h>
+#include <linux/fwnode.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/lcm.h>
+#include <linux/math.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/property.h>
+#include <linux/seq_file.h>
+#include <linux/slab.h>
+#include <linux/uaccess.h>
+#include <linux/videodev2.h>
+
+#include <media/v4l2-async.h>
+#include <media/v4l2-common.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-dev.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-event.h>
+#include <media/v4l2-fwnode.h>
+#include <media/v4l2-ioctl.h>
+#include <media/v4l2-mc.h>
+#include <media/videobuf2-dma-contig.h>
+
+#include <linux/media/raspberrypi/pisp_fe_config.h>
+#include <linux/media/raspberrypi/pisp_fe_statistics.h>
+
+#include "cfe-fmts.h"
+#include "cfe.h"
+#include "csi2.h"
+#include "pisp-fe.h"
+
+#define CREATE_TRACE_POINTS
+#include "cfe-trace.h"
+
+#define CFE_MODULE_NAME	"rp1-cfe"
+#define CFE_VERSION	"1.0"
+
+#define cfe_dbg(cfe, fmt, arg...) dev_dbg(&cfe->pdev->dev, fmt, ##arg)
+#define cfe_info(cfe, fmt, arg...) dev_info(&cfe->pdev->dev, fmt, ##arg)
+#define cfe_err(cfe, fmt, arg...) dev_err(&cfe->pdev->dev, fmt, ##arg)
+
+/* MIPICFG registers */
+#define MIPICFG_CFG		0x004
+#define MIPICFG_INTR		0x028
+#define MIPICFG_INTE		0x02c
+#define MIPICFG_INTF		0x030
+#define MIPICFG_INTS		0x034
+
+#define MIPICFG_CFG_SEL_CSI	BIT(0)
+
+#define MIPICFG_INT_CSI_DMA	BIT(0)
+#define MIPICFG_INT_CSI_HOST	BIT(2)
+#define MIPICFG_INT_PISP_FE	BIT(4)
+
+#define BPL_ALIGNMENT 16
+#define MAX_BYTESPERLINE 0xffffff00
+#define MAX_BUFFER_SIZE  0xffffff00
+/*
+ * Max width is therefore determined by the max stride divided by the number of
+ * bits per pixel.
+ *
+ * However, to avoid overflow issues let's use a 16k maximum. This lets us
+ * calculate 16k * 16k * 4 with 32bits. If we need higher maximums, a careful
+ * review and adjustment of the code is needed so that it will deal with
+ * overflows correctly.
+ */
+#define MAX_WIDTH 16384
+#define MAX_HEIGHT MAX_WIDTH
+/* Define a nominal minimum image size */
+#define MIN_WIDTH 16
+#define MIN_HEIGHT 16
+
+#define MIN_META_WIDTH 4
+#define MIN_META_HEIGHT 1
+
+const struct v4l2_mbus_framefmt cfe_default_format = {
+	.width = 640,
+	.height = 480,
+	.code = MEDIA_BUS_FMT_SRGGB10_1X10,
+	.field = V4L2_FIELD_NONE,
+	.colorspace = V4L2_COLORSPACE_RAW,
+	.ycbcr_enc = V4L2_YCBCR_ENC_601,
+	.quantization = V4L2_QUANTIZATION_FULL_RANGE,
+	.xfer_func = V4L2_XFER_FUNC_NONE,
+};
+
+enum node_ids {
+	/* CSI2 HW output nodes first. */
+	CSI2_CH0,
+	CSI2_CH1,
+	CSI2_CH2,
+	CSI2_CH3,
+	/* FE only nodes from here on. */
+	FE_OUT0,
+	FE_OUT1,
+	FE_STATS,
+	FE_CONFIG,
+	NUM_NODES
+};
+
+struct node_description {
+	enum node_ids id;
+	const char *name;
+	unsigned int caps;
+	unsigned int pad_flags;
+	unsigned int link_pad;
+};
+
+/* Must match the ordering of enum ids */
+static const struct node_description node_desc[NUM_NODES] = {
+	[CSI2_CH0] = {
+		.name = "csi2-ch0",
+		.caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_META_CAPTURE,
+		.pad_flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT,
+		.link_pad = CSI2_PAD_FIRST_SOURCE + 0
+	},
+	/*
+	 * At the moment the main userspace component (libcamera) doesn't
+	 * support metadata with video nodes that support both video and
+	 * metadata. So for the time being this node is set to only support
+	 * V4L2_CAP_META_CAPTURE.
+	 */
+	[CSI2_CH1] = {
+		.name = "csi2-ch1",
+		.caps = V4L2_CAP_META_CAPTURE,
+		.pad_flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT,
+		.link_pad = CSI2_PAD_FIRST_SOURCE + 1
+	},
+	[CSI2_CH2] = {
+		.name = "csi2-ch2",
+		.caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_META_CAPTURE,
+		.pad_flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT,
+		.link_pad = CSI2_PAD_FIRST_SOURCE + 2
+	},
+	[CSI2_CH3] = {
+		.name = "csi2-ch3",
+		.caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_META_CAPTURE,
+		.pad_flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT,
+		.link_pad = CSI2_PAD_FIRST_SOURCE + 3
+	},
+	[FE_OUT0] = {
+		.name = "fe-image0",
+		.caps = V4L2_CAP_VIDEO_CAPTURE,
+		.pad_flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT,
+		.link_pad = FE_OUTPUT0_PAD
+	},
+	[FE_OUT1] = {
+		.name = "fe-image1",
+		.caps = V4L2_CAP_VIDEO_CAPTURE,
+		.pad_flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT,
+		.link_pad = FE_OUTPUT1_PAD
+	},
+	[FE_STATS] = {
+		.name = "fe-stats",
+		.caps = V4L2_CAP_META_CAPTURE,
+		.pad_flags = MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT,
+		.link_pad = FE_STATS_PAD
+	},
+	[FE_CONFIG] = {
+		.name = "fe-config",
+		.caps = V4L2_CAP_META_OUTPUT,
+		.pad_flags = MEDIA_PAD_FL_SOURCE | MEDIA_PAD_FL_MUST_CONNECT,
+		.link_pad = FE_CONFIG_PAD
+	},
+};
+
+#define is_fe_node(node) (((node)->id) >= FE_OUT0)
+#define is_csi2_node(node) (!is_fe_node(node))
+
+#define node_supports_image_output(node) \
+	(node_desc[(node)->id].caps & V4L2_CAP_VIDEO_CAPTURE)
+#define node_supports_meta_output(node) \
+	(node_desc[(node)->id].caps & V4L2_CAP_META_CAPTURE)
+#define node_supports_image_input(node) \
+	(node_desc[(node)->id].caps & V4L2_CAP_VIDEO_OUTPUT)
+#define node_supports_meta_input(node) \
+	(node_desc[(node)->id].caps & V4L2_CAP_META_OUTPUT)
+#define node_supports_image(node) \
+	(node_supports_image_output(node) || node_supports_image_input(node))
+#define node_supports_meta(node) \
+	(node_supports_meta_output(node) || node_supports_meta_input(node))
+
+#define is_image_output_node(node) \
+	((node)->buffer_queue.type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
+#define is_image_input_node(node) \
+	((node)->buffer_queue.type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
+#define is_image_node(node) \
+	(is_image_output_node(node) || is_image_input_node(node))
+#define is_meta_output_node(node) \
+	((node)->buffer_queue.type == V4L2_BUF_TYPE_META_CAPTURE)
+#define is_meta_input_node(node) \
+	((node)->buffer_queue.type == V4L2_BUF_TYPE_META_OUTPUT)
+#define is_meta_node(node) \
+	(is_meta_output_node(node) || is_meta_input_node(node))
+
+/* To track state across all nodes. */
+#define NODE_REGISTERED		BIT(0)
+#define NODE_ENABLED		BIT(1)
+#define NODE_STREAMING		BIT(2)
+#define FS_INT			BIT(3)
+#define FE_INT			BIT(4)
+#define NUM_STATES		5
+
+struct cfe_buffer {
+	struct vb2_v4l2_buffer vb;
+	struct list_head list;
+};
+
+struct cfe_config_buffer {
+	struct cfe_buffer buf;
+	struct pisp_fe_config config;
+};
+
+static inline struct cfe_buffer *to_cfe_buffer(struct vb2_buffer *vb)
+{
+	return container_of(vb, struct cfe_buffer, vb.vb2_buf);
+}
+
+static inline
+struct cfe_config_buffer *to_cfe_config_buffer(struct cfe_buffer *buf)
+{
+	return container_of(buf, struct cfe_config_buffer, buf);
+}
+
+struct cfe_node {
+	/* Node id */
+	enum node_ids id;
+	/* Pointer pointing to current v4l2_buffer */
+	struct cfe_buffer *cur_frm;
+	/* Pointer pointing to next v4l2_buffer */
+	struct cfe_buffer *next_frm;
+	/* Used to store current pixel format */
+	struct v4l2_format vid_fmt;
+	/* Used to store current meta format */
+	struct v4l2_format meta_fmt;
+	/* Buffer queue used in video-buf */
+	struct vb2_queue buffer_queue;
+	/* Queue of filled frames */
+	struct list_head dma_queue;
+	/* lock used to access this structure */
+	struct mutex lock;
+	/* Identifies video device for this channel */
+	struct video_device video_dev;
+	/* Pointer to the parent handle */
+	struct cfe_device *cfe;
+	/* Media pad for this node */
+	struct media_pad pad;
+	/* Frame-start counter */
+	unsigned int fs_count;
+	/* Timestamp of the current buffer */
+	u64 ts;
+};
+
+struct cfe_device {
+	struct dentry *debugfs;
+	struct kref kref;
+
+	/* peripheral base address */
+	void __iomem *mipi_cfg_base;
+
+	struct clk *clk;
+
+	/* V4l2 device */
+	struct v4l2_device v4l2_dev;
+	struct media_device mdev;
+	struct media_pipeline pipe;
+
+	/* IRQ lock for node state and DMA queues */
+	spinlock_t state_lock;
+	bool job_ready;
+	bool job_queued;
+
+	/* parent device */
+	struct platform_device *pdev;
+	/* subdevice async Notifier */
+	struct v4l2_async_notifier notifier;
+
+	/* Source sub device */
+	struct v4l2_subdev *source_sd;
+	/* Source subdev's pad */
+	u32 source_pad;
+
+	struct cfe_node node[NUM_NODES];
+	DECLARE_BITMAP(node_flags, NUM_STATES * NUM_NODES);
+
+	struct csi2_device csi2;
+	struct pisp_fe_device fe;
+
+	int fe_csi2_channel;
+
+	/* Mask of enabled streams */
+	u64 streams_mask;
+};
+
+static inline bool is_fe_enabled(struct cfe_device *cfe)
+{
+	return cfe->fe_csi2_channel != -1;
+}
+
+static inline struct cfe_device *to_cfe_device(struct v4l2_device *v4l2_dev)
+{
+	return container_of(v4l2_dev, struct cfe_device, v4l2_dev);
+}
+
+static inline u32 cfg_reg_read(struct cfe_device *cfe, u32 offset)
+{
+	return readl(cfe->mipi_cfg_base + offset);
+}
+
+static inline void cfg_reg_write(struct cfe_device *cfe, u32 offset, u32 val)
+{
+	writel(val, cfe->mipi_cfg_base + offset);
+}
+
+static bool check_state(struct cfe_device *cfe, unsigned long state,
+			unsigned int node_id)
+{
+	unsigned long bit;
+
+	for_each_set_bit(bit, &state, sizeof(state)) {
+		if (!test_bit(bit + (node_id * NUM_STATES), cfe->node_flags))
+			return false;
+	}
+
+	return true;
+}
+
+static void set_state(struct cfe_device *cfe, unsigned long state,
+		      unsigned int node_id)
+{
+	unsigned long bit;
+
+	for_each_set_bit(bit, &state, sizeof(state))
+		set_bit(bit + (node_id * NUM_STATES), cfe->node_flags);
+}
+
+static void clear_state(struct cfe_device *cfe, unsigned long state,
+			unsigned int node_id)
+{
+	unsigned long bit;
+
+	for_each_set_bit(bit, &state, sizeof(state))
+		clear_bit(bit + (node_id * NUM_STATES), cfe->node_flags);
+}
+
+static bool test_any_node(struct cfe_device *cfe, unsigned long cond)
+{
+	for (unsigned int i = 0; i < NUM_NODES; i++) {
+		if (check_state(cfe, cond, i))
+			return true;
+	}
+
+	return false;
+}
+
+static bool test_all_nodes(struct cfe_device *cfe, unsigned long precond,
+			   unsigned long cond)
+{
+	for (unsigned int i = 0; i < NUM_NODES; i++) {
+		if (check_state(cfe, precond, i)) {
+			if (!check_state(cfe, cond, i))
+				return false;
+		}
+	}
+
+	return true;
+}
+
+static int mipi_cfg_regs_show(struct seq_file *s, void *data)
+{
+	struct cfe_device *cfe = s->private;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(&cfe->pdev->dev);
+	if (ret)
+		return ret;
+
+#define DUMP(reg) seq_printf(s, #reg " \t0x%08x\n", cfg_reg_read(cfe, reg))
+	DUMP(MIPICFG_CFG);
+	DUMP(MIPICFG_INTR);
+	DUMP(MIPICFG_INTE);
+	DUMP(MIPICFG_INTF);
+	DUMP(MIPICFG_INTS);
+#undef DUMP
+
+	pm_runtime_put(&cfe->pdev->dev);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(mipi_cfg_regs);
+
+/* Format setup functions */
+const struct cfe_fmt *find_format_by_code(u32 code)
+{
+	for (unsigned int i = 0; i < ARRAY_SIZE(formats); i++) {
+		if (formats[i].code == code)
+			return &formats[i];
+	}
+
+	return NULL;
+}
+
+const struct cfe_fmt *find_format_by_pix(u32 pixelformat)
+{
+	for (unsigned int i = 0; i < ARRAY_SIZE(formats); i++) {
+		if (formats[i].fourcc == pixelformat)
+			return &formats[i];
+	}
+
+	return NULL;
+}
+
+static const struct cfe_fmt *find_format_by_code_and_fourcc(u32 code, u32 fourcc)
+{
+	for (unsigned int i = 0; i < ARRAY_SIZE(formats); i++) {
+		if (formats[i].code == code && formats[i].fourcc == fourcc)
+			return &formats[i];
+	}
+
+	return NULL;
+}
+
+/*
+ * Given the mbus code, find the 16 bit remapped code. Returns 0 if no remap
+ * possible.
+ */
+u32 cfe_find_16bit_code(u32 code)
+{
+	const struct cfe_fmt *cfe_fmt;
+
+	cfe_fmt = find_format_by_code(code);
+
+	if (!cfe_fmt || !cfe_fmt->remap[CFE_REMAP_16BIT])
+		return 0;
+
+	cfe_fmt = find_format_by_pix(cfe_fmt->remap[CFE_REMAP_16BIT]);
+	if (!cfe_fmt)
+		return 0;
+
+	return cfe_fmt->code;
+}
+
+/*
+ * Given the mbus code, find the 8 bit compressed code. Returns 0 if no remap
+ * possible.
+ */
+u32 cfe_find_compressed_code(u32 code)
+{
+	const struct cfe_fmt *cfe_fmt;
+
+	cfe_fmt = find_format_by_code(code);
+
+	if (!cfe_fmt || !cfe_fmt->remap[CFE_REMAP_COMPRESSED])
+		return 0;
+
+	cfe_fmt = find_format_by_pix(cfe_fmt->remap[CFE_REMAP_COMPRESSED]);
+	if (!cfe_fmt)
+		return 0;
+
+	return cfe_fmt->code;
+}
+
+static void cfe_calc_vid_format_size_bpl(struct cfe_device *cfe,
+					 const struct cfe_fmt *fmt,
+					 struct v4l2_format *f)
+{
+	unsigned int min_bytesperline;
+
+	v4l_bound_align_image(&f->fmt.pix.width, MIN_WIDTH, MAX_WIDTH, 2,
+			      &f->fmt.pix.height, MIN_HEIGHT, MAX_HEIGHT, 0, 0);
+
+	min_bytesperline =
+		ALIGN((f->fmt.pix.width * fmt->depth) >> 3, BPL_ALIGNMENT);
+
+	if (f->fmt.pix.bytesperline > min_bytesperline &&
+	    f->fmt.pix.bytesperline <= MAX_BYTESPERLINE)
+		f->fmt.pix.bytesperline =
+			ALIGN(f->fmt.pix.bytesperline, BPL_ALIGNMENT);
+	else
+		f->fmt.pix.bytesperline = min_bytesperline;
+
+	f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
+
+	cfe_dbg(cfe, "%s: %p4cc size: %ux%u bpl:%u img_size:%u\n", __func__,
+		&f->fmt.pix.pixelformat, f->fmt.pix.width, f->fmt.pix.height,
+		f->fmt.pix.bytesperline, f->fmt.pix.sizeimage);
+}
+
+static void cfe_calc_meta_format_size_bpl(struct cfe_device *cfe,
+					  const struct cfe_fmt *fmt,
+					  struct v4l2_format *f)
+{
+	v4l_bound_align_image(&f->fmt.meta.width, MIN_META_WIDTH, MAX_WIDTH, 2,
+			      &f->fmt.meta.height, MIN_META_HEIGHT, MAX_HEIGHT, 0,
+			      0);
+
+	f->fmt.meta.bytesperline = (f->fmt.meta.width * fmt->depth) >> 3;
+	f->fmt.meta.buffersize = f->fmt.meta.height * f->fmt.pix.bytesperline;
+
+	cfe_dbg(cfe, "%s: %p4cc size: %ux%u bpl:%u buf_size:%u\n", __func__,
+		&f->fmt.meta.dataformat, f->fmt.meta.width, f->fmt.meta.height,
+		f->fmt.meta.bytesperline, f->fmt.meta.buffersize);
+}
+
+static void cfe_schedule_next_csi2_job(struct cfe_device *cfe)
+{
+	struct cfe_buffer *buf;
+	dma_addr_t addr;
+
+	for (unsigned int i = 0; i < CSI2_NUM_CHANNELS; i++) {
+		struct cfe_node *node = &cfe->node[i];
+		unsigned int stride, size;
+
+		if (!check_state(cfe, NODE_STREAMING, i))
+			continue;
+
+		buf = list_first_entry(&node->dma_queue, struct cfe_buffer,
+				       list);
+		node->next_frm = buf;
+		list_del(&buf->list);
+
+		trace_cfe_csi2_schedule(node->id, &buf->vb.vb2_buf);
+
+		if (is_meta_node(node)) {
+			size = node->meta_fmt.fmt.meta.buffersize;
+			/* We use CSI2_CH_CTRL_PACK_BYTES, so stride == 0 */
+			stride = 0;
+		} else {
+			size = node->vid_fmt.fmt.pix.sizeimage;
+			stride = node->vid_fmt.fmt.pix.bytesperline;
+		}
+
+		addr = vb2_dma_contig_plane_dma_addr(&buf->vb.vb2_buf, 0);
+		csi2_set_buffer(&cfe->csi2, node->id, addr, stride, size);
+	}
+}
+
+static void cfe_schedule_next_pisp_job(struct cfe_device *cfe)
+{
+	struct vb2_buffer *vb2_bufs[FE_NUM_PADS] = { 0 };
+	struct cfe_config_buffer *config_buf;
+	struct cfe_buffer *buf;
+
+	for (unsigned int i = CSI2_NUM_CHANNELS; i < NUM_NODES; i++) {
+		struct cfe_node *node = &cfe->node[i];
+
+		if (!check_state(cfe, NODE_STREAMING, i))
+			continue;
+
+		buf = list_first_entry(&node->dma_queue, struct cfe_buffer,
+				       list);
+
+		trace_cfe_fe_schedule(node->id, &buf->vb.vb2_buf);
+
+		node->next_frm = buf;
+		vb2_bufs[node_desc[i].link_pad] = &buf->vb.vb2_buf;
+		list_del(&buf->list);
+	}
+
+	config_buf = to_cfe_config_buffer(cfe->node[FE_CONFIG].next_frm);
+	pisp_fe_submit_job(&cfe->fe, vb2_bufs, &config_buf->config);
+}
+
+static bool cfe_check_job_ready(struct cfe_device *cfe)
+{
+	for (unsigned int i = 0; i < NUM_NODES; i++) {
+		struct cfe_node *node = &cfe->node[i];
+
+		if (!check_state(cfe, NODE_ENABLED, i))
+			continue;
+
+		if (list_empty(&node->dma_queue))
+			return false;
+	}
+
+	return true;
+}
+
+static void cfe_prepare_next_job(struct cfe_device *cfe)
+{
+	trace_cfe_prepare_next_job(is_fe_enabled(cfe));
+
+	cfe->job_queued = true;
+	cfe_schedule_next_csi2_job(cfe);
+	if (is_fe_enabled(cfe))
+		cfe_schedule_next_pisp_job(cfe);
+
+	/* Flag if another job is ready after this. */
+	cfe->job_ready = cfe_check_job_ready(cfe);
+}
+
+static void cfe_process_buffer_complete(struct cfe_node *node,
+					enum vb2_buffer_state state)
+{
+	trace_cfe_buffer_complete(node->id, &node->cur_frm->vb);
+
+	node->cur_frm->vb.sequence = node->fs_count - 1;
+	vb2_buffer_done(&node->cur_frm->vb.vb2_buf, state);
+}
+
+static void cfe_queue_event_sof(struct cfe_node *node)
+{
+	struct v4l2_event event = {
+		.type = V4L2_EVENT_FRAME_SYNC,
+		.u.frame_sync.frame_sequence = node->fs_count - 1,
+	};
+
+	v4l2_event_queue(&node->video_dev, &event);
+}
+
+static void cfe_sof_isr_handler(struct cfe_node *node)
+{
+	struct cfe_device *cfe = node->cfe;
+	bool matching_fs = true;
+
+	trace_cfe_frame_start(node->id, node->fs_count);
+
+	/*
+	 * If the sensor is producing unexpected frame event ordering over a
+	 * sustained period of time, guard against the possibility of coming
+	 * here and orphaning the cur_frm if it's not been dequeued already.
+	 * Unfortunately, there is not enough hardware state to tell if this
+	 * may have occurred.
+	 */
+	if (WARN(node->cur_frm, "%s: [%s] Orphanded frame at seq %u\n",
+		 __func__, node_desc[node->id].name, node->fs_count))
+		cfe_process_buffer_complete(node, VB2_BUF_STATE_ERROR);
+
+	node->cur_frm = node->next_frm;
+	node->next_frm = NULL;
+	node->fs_count++;
+
+	node->ts = ktime_get_ns();
+	for (unsigned int i = 0; i < NUM_NODES; i++) {
+		if (!check_state(cfe, NODE_STREAMING, i) || i == node->id)
+			continue;
+		/*
+		 * This checks if any other node has seen a FS. If yes, use the
+		 * same timestamp, eventually across all node buffers.
+		 */
+		if (cfe->node[i].fs_count >= node->fs_count)
+			node->ts = cfe->node[i].ts;
+		/*
+		 * This checks if all other node have seen a matching FS. If
+		 * yes, we can flag another job to be queued.
+		 */
+		if (matching_fs && cfe->node[i].fs_count != node->fs_count)
+			matching_fs = false;
+	}
+
+	if (matching_fs)
+		cfe->job_queued = false;
+
+	if (node->cur_frm)
+		node->cur_frm->vb.vb2_buf.timestamp = node->ts;
+
+	set_state(cfe, FS_INT, node->id);
+	clear_state(cfe, FE_INT, node->id);
+
+	if (is_image_output_node(node))
+		cfe_queue_event_sof(node);
+}
+
+static void cfe_eof_isr_handler(struct cfe_node *node)
+{
+	struct cfe_device *cfe = node->cfe;
+
+	trace_cfe_frame_end(node->id, node->fs_count - 1);
+
+	if (node->cur_frm)
+		cfe_process_buffer_complete(node, VB2_BUF_STATE_DONE);
+
+	node->cur_frm = NULL;
+	set_state(cfe, FE_INT, node->id);
+	clear_state(cfe, FS_INT, node->id);
+}
+
+static irqreturn_t cfe_isr(int irq, void *dev)
+{
+	struct cfe_device *cfe = dev;
+	bool sof[NUM_NODES] = { 0 }, eof[NUM_NODES] = { 0 };
+	u32 sts;
+
+	sts = cfg_reg_read(cfe, MIPICFG_INTS);
+
+	if (sts & MIPICFG_INT_CSI_DMA)
+		csi2_isr(&cfe->csi2, sof, eof);
+
+	if (sts & MIPICFG_INT_PISP_FE)
+		pisp_fe_isr(&cfe->fe, sof + CSI2_NUM_CHANNELS,
+			    eof + CSI2_NUM_CHANNELS);
+
+	spin_lock(&cfe->state_lock);
+
+	for (unsigned int i = 0; i < NUM_NODES; i++) {
+		struct cfe_node *node = &cfe->node[i];
+
+		/*
+		 * The check_state(NODE_STREAMING) is to ensure we do not loop
+		 * over the CSI2_CHx nodes when the FE is active since they
+		 * generate interrupts even though the node is not streaming.
+		 */
+		if (!check_state(cfe, NODE_STREAMING, i) || !(sof[i] || eof[i]))
+			continue;
+
+		/*
+		 * There are 3 cases where we could get FS + FE_ACK at
+		 * the same time:
+		 * 1) FE of the current frame, and FS of the next frame.
+		 * 2) FS + FE of the same frame.
+		 * 3) FE of the current frame, and FS + FE of the next
+		 *    frame. To handle this, see the sof handler below.
+		 *
+		 * (1) is handled implicitly by the ordering of the FE and FS
+		 * handlers below.
+		 */
+		if (eof[i]) {
+			/*
+			 * The condition below tests for (2). Run the FS handler
+			 * first before the FE handler, both for the current
+			 * frame.
+			 */
+			if (sof[i] && !check_state(cfe, FS_INT, i)) {
+				cfe_sof_isr_handler(node);
+				sof[i] = false;
+			}
+
+			cfe_eof_isr_handler(node);
+		}
+
+		if (sof[i]) {
+			/*
+			 * The condition below tests for (3). In such cases, we
+			 * come in here with FS flag set in the node state from
+			 * the previous frame since it only gets cleared in
+			 * eof_isr_handler(). Handle the FE for the previous
+			 * frame first before the FS handler for the current
+			 * frame.
+			 */
+			if (check_state(cfe, FS_INT, node->id) &&
+			    !check_state(cfe, FE_INT, node->id)) {
+				cfe_dbg(cfe, "%s: [%s] Handling missing previous FE interrupt\n",
+					__func__, node_desc[node->id].name);
+				cfe_eof_isr_handler(node);
+			}
+
+			cfe_sof_isr_handler(node);
+		}
+
+		if (!cfe->job_queued && cfe->job_ready)
+			cfe_prepare_next_job(cfe);
+	}
+
+	spin_unlock(&cfe->state_lock);
+
+	return IRQ_HANDLED;
+}
+
+/*
+ * Stream helpers
+ */
+
+static int cfe_get_vc_dt_fallback(struct cfe_device *cfe, u8 *vc, u8 *dt)
+{
+	struct v4l2_subdev_state *state;
+	struct v4l2_mbus_framefmt *fmt;
+	const struct cfe_fmt *cfe_fmt;
+
+	state = v4l2_subdev_get_locked_active_state(&cfe->csi2.sd);
+
+	fmt = v4l2_subdev_state_get_format(state, CSI2_PAD_SINK, 0);
+	if (!fmt)
+		return -EINVAL;
+
+	cfe_fmt = find_format_by_code(fmt->code);
+	if (!cfe_fmt)
+		return -EINVAL;
+
+	*vc = 0;
+	*dt = cfe_fmt->csi_dt;
+
+	return 0;
+}
+
+static int cfe_get_vc_dt(struct cfe_device *cfe, unsigned int channel, u8 *vc,
+			 u8 *dt)
+{
+	struct v4l2_mbus_frame_desc remote_desc;
+	struct v4l2_subdev_state *state;
+	u32 sink_stream;
+	unsigned int i;
+	int ret;
+
+	state = v4l2_subdev_get_locked_active_state(&cfe->csi2.sd);
+
+	ret = v4l2_subdev_routing_find_opposite_end(&state->routing,
+		CSI2_PAD_FIRST_SOURCE + channel, 0, NULL, &sink_stream);
+	if (ret)
+		return ret;
+
+	ret = v4l2_subdev_call(cfe->source_sd, pad, get_frame_desc,
+			       cfe->source_pad, &remote_desc);
+	if (ret == -ENOIOCTLCMD) {
+		cfe_dbg(cfe, "source does not support get_frame_desc, use fallback\n");
+		return cfe_get_vc_dt_fallback(cfe, vc, dt);
+	} else if (ret) {
+		cfe_err(cfe, "Failed to get frame descriptor\n");
+		return ret;
+	}
+
+	if (remote_desc.type != V4L2_MBUS_FRAME_DESC_TYPE_CSI2) {
+		cfe_err(cfe, "Frame descriptor does not describe CSI-2 link");
+		return -EINVAL;
+	}
+
+	for (i = 0; i < remote_desc.num_entries; i++) {
+		if (remote_desc.entry[i].stream == sink_stream)
+			break;
+	}
+
+	if (i == remote_desc.num_entries) {
+		cfe_err(cfe, "Stream %u not found in remote frame desc\n",
+			sink_stream);
+		return -EINVAL;
+	}
+
+	*vc = remote_desc.entry[i].bus.csi2.vc;
+	*dt = remote_desc.entry[i].bus.csi2.dt;
+
+	return 0;
+}
+
+static int cfe_start_channel(struct cfe_node *node)
+{
+	struct cfe_device *cfe = node->cfe;
+	struct v4l2_subdev_state *state;
+	struct v4l2_mbus_framefmt *source_fmt;
+	const struct cfe_fmt *fmt;
+	unsigned long flags;
+	bool start_fe;
+	int ret;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+
+	start_fe = is_fe_enabled(cfe) &&
+		   test_all_nodes(cfe, NODE_ENABLED, NODE_STREAMING);
+
+	state = v4l2_subdev_get_locked_active_state(&cfe->csi2.sd);
+
+	if (start_fe) {
+		unsigned int width, height;
+		u8 vc, dt;
+
+		cfe_dbg(cfe, "%s: %s using csi2 channel %d\n", __func__,
+			node_desc[FE_OUT0].name, cfe->fe_csi2_channel);
+
+		ret = cfe_get_vc_dt(cfe, cfe->fe_csi2_channel, &vc, &dt);
+		if (ret)
+			return ret;
+
+		source_fmt = v4l2_subdev_state_get_format(state,
+			node_desc[cfe->fe_csi2_channel].link_pad);
+		fmt = find_format_by_code(source_fmt->code);
+
+		width = source_fmt->width;
+		height = source_fmt->height;
+
+		/* Must have a valid CSI2 datatype. */
+		WARN_ON(!fmt->csi_dt);
+
+		/*
+		 * Start the associated CSI2 Channel as well.
+		 *
+		 * Must write to the ADDR register to latch the ctrl values
+		 * even if we are connected to the front end. Once running,
+		 * this is handled by the CSI2 AUTO_ARM mode.
+		 */
+		csi2_start_channel(&cfe->csi2, cfe->fe_csi2_channel,
+				   CSI2_MODE_FE_STREAMING,
+				   true, false, width, height, vc, dt);
+		csi2_set_buffer(&cfe->csi2, cfe->fe_csi2_channel, 0, 0, -1);
+		pisp_fe_start(&cfe->fe);
+	}
+
+	if (is_csi2_node(node)) {
+		unsigned int width = 0, height = 0;
+		u8 vc, dt;
+
+		ret = cfe_get_vc_dt(cfe, node->id, &vc, &dt);
+		if (ret) {
+			if (start_fe) {
+				csi2_stop_channel(&cfe->csi2, cfe->fe_csi2_channel);
+				pisp_fe_stop(&cfe->fe);
+			}
+
+			return ret;
+		}
+
+		u32 mode = CSI2_MODE_NORMAL;
+
+		source_fmt = v4l2_subdev_state_get_format(state,
+			node_desc[node->id].link_pad);
+		fmt = find_format_by_code(source_fmt->code);
+
+		/* Must have a valid CSI2 datatype. */
+		WARN_ON(!fmt->csi_dt);
+
+		if (is_image_output_node(node)) {
+			u32  pixfmt;
+
+			width = source_fmt->width;
+			height = source_fmt->height;
+
+			pixfmt = node->vid_fmt.fmt.pix.pixelformat;
+
+			if (pixfmt == fmt->remap[CFE_REMAP_16BIT]) {
+				mode = CSI2_MODE_REMAP;
+			} else if (pixfmt == fmt->remap[CFE_REMAP_COMPRESSED]) {
+				mode = CSI2_MODE_COMPRESSED;
+				csi2_set_compression(&cfe->csi2, node->id,
+						     CSI2_COMPRESSION_DELTA, 0,
+						     0);
+			}
+		}
+		/* Unconditionally start this CSI2 channel. */
+		csi2_start_channel(&cfe->csi2, node->id,
+				   mode,
+				   /* Auto arm */
+				   false,
+				   /* Pack bytes */
+				   is_meta_node(node) ? true : false,
+				   width, height, vc, dt);
+	}
+
+	spin_lock_irqsave(&cfe->state_lock, flags);
+	if (cfe->job_ready && test_all_nodes(cfe, NODE_ENABLED, NODE_STREAMING))
+		cfe_prepare_next_job(cfe);
+	spin_unlock_irqrestore(&cfe->state_lock, flags);
+
+	return 0;
+}
+
+static void cfe_stop_channel(struct cfe_node *node, bool fe_stop)
+{
+	struct cfe_device *cfe = node->cfe;
+
+	cfe_dbg(cfe, "%s: [%s] fe_stop %u\n", __func__, node_desc[node->id].name,
+		fe_stop);
+
+	if (fe_stop) {
+		csi2_stop_channel(&cfe->csi2, cfe->fe_csi2_channel);
+		pisp_fe_stop(&cfe->fe);
+	}
+
+	if (is_csi2_node(node))
+		csi2_stop_channel(&cfe->csi2, node->id);
+}
+
+static void cfe_return_buffers(struct cfe_node *node,
+			       enum vb2_buffer_state state)
+{
+	struct cfe_device *cfe = node->cfe;
+	struct cfe_buffer *buf, *tmp;
+	unsigned long flags;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+
+	spin_lock_irqsave(&cfe->state_lock, flags);
+	list_for_each_entry_safe(buf, tmp, &node->dma_queue, list) {
+		list_del(&buf->list);
+		trace_cfe_return_buffer(node->id, buf->vb.vb2_buf.index, 2);
+		vb2_buffer_done(&buf->vb.vb2_buf, state);
+	}
+
+	if (node->cur_frm) {
+		trace_cfe_return_buffer(node->id, node->cur_frm->vb.vb2_buf.index, 0);
+		vb2_buffer_done(&node->cur_frm->vb.vb2_buf, state);
+	}
+	if (node->next_frm && node->cur_frm != node->next_frm) {
+		trace_cfe_return_buffer(node->id, node->next_frm->vb.vb2_buf.index, 1);
+		vb2_buffer_done(&node->next_frm->vb.vb2_buf, state);
+	}
+
+	node->cur_frm = NULL;
+	node->next_frm = NULL;
+	spin_unlock_irqrestore(&cfe->state_lock, flags);
+}
+
+/*
+ * vb2 ops
+ */
+
+static int cfe_queue_setup(struct vb2_queue *vq, unsigned int *nbuffers,
+			   unsigned int *nplanes, unsigned int sizes[],
+			   struct device *alloc_devs[])
+{
+	struct cfe_node *node = vb2_get_drv_priv(vq);
+	struct cfe_device *cfe = node->cfe;
+	unsigned int size = is_image_node(node) ?
+				    node->vid_fmt.fmt.pix.sizeimage :
+				    node->meta_fmt.fmt.meta.buffersize;
+
+	cfe_dbg(cfe, "%s: [%s] type:%u\n", __func__, node_desc[node->id].name,
+		node->buffer_queue.type);
+
+	if (vq->max_num_buffers + *nbuffers < 3)
+		*nbuffers = 3 - vq->max_num_buffers;
+
+	if (*nplanes) {
+		if (sizes[0] < size) {
+			cfe_err(cfe, "sizes[0] %i < size %u\n", sizes[0], size);
+			return -EINVAL;
+		}
+		size = sizes[0];
+	}
+
+	*nplanes = 1;
+	sizes[0] = size;
+
+	return 0;
+}
+
+static int cfe_buffer_prepare(struct vb2_buffer *vb)
+{
+	struct cfe_node *node = vb2_get_drv_priv(vb->vb2_queue);
+	struct cfe_device *cfe = node->cfe;
+	struct cfe_buffer *buf = to_cfe_buffer(vb);
+	unsigned long size;
+
+	trace_cfe_buffer_prepare(node->id, vb);
+
+	size = is_image_node(node) ? node->vid_fmt.fmt.pix.sizeimage :
+				     node->meta_fmt.fmt.meta.buffersize;
+	if (vb2_plane_size(vb, 0) < size) {
+		cfe_err(cfe, "data will not fit into plane (%lu < %lu)\n",
+			vb2_plane_size(vb, 0), size);
+		return -EINVAL;
+	}
+
+	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, size);
+
+	if (node->id == FE_CONFIG) {
+		struct cfe_config_buffer *b = to_cfe_config_buffer(buf);
+		void *addr = vb2_plane_vaddr(vb, 0);
+
+		memcpy(&b->config, addr, sizeof(struct pisp_fe_config));
+		return pisp_fe_validate_config(&cfe->fe, &b->config,
+					       &cfe->node[FE_OUT0].vid_fmt,
+					       &cfe->node[FE_OUT1].vid_fmt);
+	}
+
+	return 0;
+}
+
+static void cfe_buffer_queue(struct vb2_buffer *vb)
+{
+	struct cfe_node *node = vb2_get_drv_priv(vb->vb2_queue);
+	struct cfe_device *cfe = node->cfe;
+	struct cfe_buffer *buf = to_cfe_buffer(vb);
+	unsigned long flags;
+	bool schedule_now;
+
+	spin_lock_irqsave(&cfe->state_lock, flags);
+
+	list_add_tail(&buf->list, &node->dma_queue);
+
+	if (!cfe->job_ready)
+		cfe->job_ready = cfe_check_job_ready(cfe);
+
+	schedule_now = !cfe->job_queued && cfe->job_ready &&
+		       test_all_nodes(cfe, NODE_ENABLED, NODE_STREAMING);
+
+	trace_cfe_buffer_queue(node->id, vb, schedule_now);
+
+	if (schedule_now)
+		cfe_prepare_next_job(cfe);
+
+	spin_unlock_irqrestore(&cfe->state_lock, flags);
+}
+
+static s64 cfe_get_source_link_freq(struct cfe_device *cfe)
+{
+	struct v4l2_subdev_state *state;
+	s64 link_freq;
+	u32 bpp;
+
+	state = v4l2_subdev_get_locked_active_state(&cfe->csi2.sd);
+
+	/*
+	 * v4l2_get_link_freq() uses V4L2_CID_LINK_FREQ first, and falls back
+	 * to V4L2_CID_PIXEL_RATE if V4L2_CID_LINK_FREQ is not available.
+	 *
+	 * With multistream input there is no single pixel rate, and thus we
+	 * cannot use V4L2_CID_PIXEL_RATE, so we pass 0 as the bpp which
+	 * causes v4l2_get_link_freq() to return an error if it falls back to
+	 * V4L2_CID_PIXEL_RATE.
+	 */
+
+	if (state->routing.num_routes == 1) {
+		struct v4l2_subdev_route *route = &state->routing.routes[0];
+		struct v4l2_mbus_framefmt *source_fmt;
+		const struct cfe_fmt *fmt;
+
+		source_fmt = v4l2_subdev_state_get_format(state,
+			route->sink_pad, route->sink_stream);
+
+		fmt = find_format_by_code(source_fmt->code);
+		if (!fmt)
+			return -EINVAL;
+
+		bpp = fmt->depth;
+	} else {
+		bpp = 0;
+	}
+
+	link_freq = v4l2_get_link_freq(cfe->source_sd->ctrl_handler, bpp,
+				       2 * cfe->csi2.dphy.active_lanes);
+	if (link_freq < 0)
+		cfe_err(cfe, "failed to get link freq for subdev '%s'\n",
+			cfe->source_sd->name);
+
+	return link_freq;
+}
+
+static int cfe_start_streaming(struct vb2_queue *vq, unsigned int count)
+{
+	struct v4l2_mbus_config mbus_config = { 0 };
+	struct cfe_node *node = vb2_get_drv_priv(vq);
+	struct cfe_device *cfe = node->cfe;
+	struct v4l2_subdev_state *state;
+	struct v4l2_subdev_route *route;
+	s64 link_freq;
+	int ret;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+
+	if (!check_state(cfe, NODE_ENABLED, node->id)) {
+		cfe_err(cfe, "%s node link is not enabled.\n",
+			node_desc[node->id].name);
+		ret = -EINVAL;
+		goto err_streaming;
+	}
+
+	ret = pm_runtime_resume_and_get(&cfe->pdev->dev);
+	if (ret < 0) {
+		cfe_err(cfe, "pm_runtime_resume_and_get failed\n");
+		goto err_streaming;
+	}
+
+	/* When using the Frontend, we must enable the FE_CONFIG node. */
+	if (is_fe_enabled(cfe) &&
+	    !check_state(cfe, NODE_ENABLED, cfe->node[FE_CONFIG].id)) {
+		cfe_err(cfe, "FE enabled, but FE_CONFIG node is not\n");
+		ret = -EINVAL;
+		goto err_pm_put;
+	}
+
+	ret = media_pipeline_start(&node->pad, &cfe->pipe);
+	if (ret < 0) {
+		cfe_err(cfe, "Failed to start media pipeline: %d\n", ret);
+		goto err_pm_put;
+	}
+
+	state = v4l2_subdev_lock_and_get_active_state(&cfe->csi2.sd);
+
+	clear_state(cfe, FS_INT | FE_INT, node->id);
+	set_state(cfe, NODE_STREAMING, node->id);
+	node->fs_count = 0;
+
+	ret = cfe_start_channel(node);
+	if (ret)
+		goto err_unlock_state;
+
+	if (!test_all_nodes(cfe, NODE_ENABLED, NODE_STREAMING)) {
+		cfe_dbg(cfe, "Streaming on hold, as all nodes are not set to streaming yet\n");
+		v4l2_subdev_unlock_state(state);
+		return 0;
+	}
+
+	cfg_reg_write(cfe, MIPICFG_CFG, MIPICFG_CFG_SEL_CSI);
+	cfg_reg_write(cfe, MIPICFG_INTE, MIPICFG_INT_CSI_DMA | MIPICFG_INT_PISP_FE);
+
+	ret = v4l2_subdev_call(cfe->source_sd, pad, get_mbus_config, 0,
+			       &mbus_config);
+	if (ret < 0 && ret != -ENOIOCTLCMD) {
+		cfe_err(cfe, "g_mbus_config failed\n");
+		goto err_clear_inte;
+	}
+
+	cfe->csi2.dphy.active_lanes = mbus_config.bus.mipi_csi2.num_data_lanes;
+	if (!cfe->csi2.dphy.active_lanes)
+		cfe->csi2.dphy.active_lanes = cfe->csi2.dphy.max_lanes;
+	if (cfe->csi2.dphy.active_lanes > cfe->csi2.dphy.max_lanes) {
+		cfe_err(cfe, "Device has requested %u data lanes, which is >%u configured in DT\n",
+			cfe->csi2.dphy.active_lanes, cfe->csi2.dphy.max_lanes);
+		ret = -EINVAL;
+		goto err_clear_inte;
+	}
+
+	link_freq = cfe_get_source_link_freq(cfe);
+	if (link_freq < 0)
+		goto err_clear_inte;
+
+	cfe->csi2.dphy.dphy_rate = div_s64(link_freq * 2, 1000000);
+	csi2_open_rx(&cfe->csi2);
+
+	cfe->streams_mask = 0;
+
+	for_each_active_route(&state->routing, route)
+		cfe->streams_mask |= BIT_ULL(route->sink_stream);
+
+	ret = v4l2_subdev_enable_streams(cfe->source_sd, cfe->source_pad, cfe->streams_mask);
+	if (ret) {
+		cfe_err(cfe, "stream on failed in subdev\n");
+		goto err_disable_cfe;
+	}
+
+	cfe_dbg(cfe, "Streaming enabled\n");
+
+	v4l2_subdev_unlock_state(state);
+
+	return 0;
+
+err_disable_cfe:
+	csi2_close_rx(&cfe->csi2);
+err_clear_inte:
+	cfg_reg_write(cfe, MIPICFG_INTE, 0);
+
+	cfe_stop_channel(node,
+			 is_fe_enabled(cfe) && test_all_nodes(cfe, NODE_ENABLED,
+							      NODE_STREAMING));
+err_unlock_state:
+	v4l2_subdev_unlock_state(state);
+	media_pipeline_stop(&node->pad);
+err_pm_put:
+	pm_runtime_put(&cfe->pdev->dev);
+err_streaming:
+	cfe_return_buffers(node, VB2_BUF_STATE_QUEUED);
+	clear_state(cfe, NODE_STREAMING, node->id);
+
+	return ret;
+}
+
+static void cfe_stop_streaming(struct vb2_queue *vq)
+{
+	struct cfe_node *node = vb2_get_drv_priv(vq);
+	struct cfe_device *cfe = node->cfe;
+	unsigned long flags;
+	bool fe_stop;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+
+	spin_lock_irqsave(&cfe->state_lock, flags);
+	fe_stop = is_fe_enabled(cfe) &&
+		  test_all_nodes(cfe, NODE_ENABLED, NODE_STREAMING);
+
+	cfe->job_ready = false;
+	clear_state(cfe, NODE_STREAMING, node->id);
+	spin_unlock_irqrestore(&cfe->state_lock, flags);
+
+	cfe_stop_channel(node, fe_stop);
+
+	if (!test_any_node(cfe, NODE_STREAMING)) {
+		struct v4l2_subdev_state *state;
+		int ret;
+
+		state = v4l2_subdev_lock_and_get_active_state(&cfe->csi2.sd);
+
+		ret = v4l2_subdev_disable_streams(cfe->source_sd,
+			cfe->source_pad, cfe->streams_mask);
+		if (ret)
+			cfe_err(cfe, "stream disable failed in subdev\n");
+
+		v4l2_subdev_unlock_state(state);
+
+		csi2_close_rx(&cfe->csi2);
+
+		cfg_reg_write(cfe, MIPICFG_INTE, 0);
+
+		cfe_dbg(cfe, "%s: Streaming disabled\n", __func__);
+	}
+
+	media_pipeline_stop(&node->pad);
+
+	/* Clear all queued buffers for the node */
+	cfe_return_buffers(node, VB2_BUF_STATE_ERROR);
+
+	pm_runtime_put(&cfe->pdev->dev);
+}
+
+static const struct vb2_ops cfe_video_qops = {
+	.wait_prepare = vb2_ops_wait_prepare,
+	.wait_finish = vb2_ops_wait_finish,
+	.queue_setup = cfe_queue_setup,
+	.buf_prepare = cfe_buffer_prepare,
+	.buf_queue = cfe_buffer_queue,
+	.start_streaming = cfe_start_streaming,
+	.stop_streaming = cfe_stop_streaming,
+};
+
+/*
+ * v4l2 ioctl ops
+ */
+
+static int cfe_querycap(struct file *file, void *priv,
+			struct v4l2_capability *cap)
+{
+	strscpy(cap->driver, CFE_MODULE_NAME, sizeof(cap->driver));
+	strscpy(cap->card, CFE_MODULE_NAME, sizeof(cap->card));
+
+	cap->capabilities |= V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_META_CAPTURE |
+			     V4L2_CAP_META_OUTPUT;
+
+	return 0;
+}
+
+static int cfe_enum_fmt_vid_cap(struct file *file, void *priv,
+				struct v4l2_fmtdesc *f)
+{
+	struct cfe_node *node = video_drvdata(file);
+	struct cfe_device *cfe = node->cfe;
+	unsigned int i, j;
+
+	if (!node_supports_image_output(node))
+		return -EINVAL;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+
+	for (i = 0, j = 0; i < ARRAY_SIZE(formats); i++) {
+		if (f->mbus_code && formats[i].code != f->mbus_code)
+			continue;
+
+		if (formats[i].flags & CFE_FORMAT_FLAG_META_OUT ||
+		    formats[i].flags & CFE_FORMAT_FLAG_META_CAP)
+			continue;
+
+		if (is_fe_node(node) &&
+		    !(formats[i].flags & CFE_FORMAT_FLAG_FE_OUT))
+			continue;
+
+		if (j == f->index) {
+			f->pixelformat = formats[i].fourcc;
+			f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
+			return 0;
+		}
+		j++;
+	}
+
+	return -EINVAL;
+}
+
+static int cfe_g_fmt(struct file *file, void *priv, struct v4l2_format *f)
+{
+	struct cfe_node *node = video_drvdata(file);
+
+	if (!node_supports_image(node))
+		return -EINVAL;
+
+	*f = node->vid_fmt;
+
+	return 0;
+}
+
+static int cfe_validate_fmt_vid_cap(struct cfe_node *node, struct v4l2_format *f)
+{
+	struct cfe_device *cfe = node->cfe;
+	const struct cfe_fmt *fmt;
+
+	cfe_dbg(cfe, "%s: [%s] %ux%u, V4L2 pix %p4cc\n", __func__,
+		node_desc[node->id].name, f->fmt.pix.width, f->fmt.pix.height,
+		&f->fmt.pix.pixelformat);
+
+	if (!node_supports_image_output(node))
+		return -EINVAL;
+
+	/*
+	 * Default to a format that works for both CSI2 and FE.
+	 */
+	fmt = find_format_by_pix(f->fmt.pix.pixelformat);
+	if (!fmt)
+		fmt = find_format_by_code(MEDIA_BUS_FMT_SBGGR10_1X10);
+
+	f->fmt.pix.pixelformat = fmt->fourcc;
+
+	if (is_fe_node(node) && fmt->remap[CFE_REMAP_16BIT]) {
+		f->fmt.pix.pixelformat = fmt->remap[CFE_REMAP_16BIT];
+		fmt = find_format_by_pix(f->fmt.pix.pixelformat);
+	}
+
+	f->fmt.pix.field = V4L2_FIELD_NONE;
+
+	cfe_calc_vid_format_size_bpl(cfe, fmt, f);
+
+	return 0;
+}
+
+static int cfe_s_fmt_vid_cap(struct file *file, void *priv,
+			     struct v4l2_format *f)
+{
+	struct cfe_node *node = video_drvdata(file);
+	struct cfe_device *cfe = node->cfe;
+	struct vb2_queue *q = &node->buffer_queue;
+	int ret;
+
+	if (vb2_is_busy(q))
+		return -EBUSY;
+
+	ret = cfe_validate_fmt_vid_cap(node, f);
+	if (ret)
+		return ret;
+
+	node->vid_fmt = *f;
+
+	cfe_dbg(cfe, "%s: Set %ux%u, V4L2 pix %p4cc\n", __func__,
+		node->vid_fmt.fmt.pix.width, node->vid_fmt.fmt.pix.height,
+		&node->vid_fmt.fmt.pix.pixelformat);
+
+	return 0;
+}
+
+static int cfe_try_fmt_vid_cap(struct file *file, void *priv,
+			       struct v4l2_format *f)
+{
+	struct cfe_node *node = video_drvdata(file);
+	struct cfe_device *cfe = node->cfe;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+
+	return cfe_validate_fmt_vid_cap(node, f);
+}
+
+static int cfe_enum_fmt_meta(struct file *file, void *priv,
+			     struct v4l2_fmtdesc *f)
+{
+	struct cfe_node *node = video_drvdata(file);
+	struct cfe_device *cfe = node->cfe;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+
+	if (!node_supports_meta(node))
+		return -EINVAL;
+
+	switch (node->id) {
+	case CSI2_CH0...CSI2_CH3:
+		f->flags = V4L2_FMT_FLAG_META_LINE_BASED;
+
+		switch (f->index) {
+		case 0:
+			f->pixelformat = V4L2_META_FMT_GENERIC_8;
+			return 0;
+		case 1:
+			f->pixelformat = V4L2_META_FMT_GENERIC_CSI2_10;
+			return 0;
+		case 2:
+			f->pixelformat = V4L2_META_FMT_GENERIC_CSI2_12;
+			return 0;
+		default:
+			return -EINVAL;
+		}
+	default:
+		break;
+	}
+
+	if (f->index != 0)
+		return -EINVAL;
+
+	switch (node->id) {
+	case FE_STATS:
+		f->pixelformat = V4L2_META_FMT_RPI_FE_STATS;
+		return 0;
+	case FE_CONFIG:
+		f->pixelformat = V4L2_META_FMT_RPI_FE_CFG;
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int cfe_validate_fmt_meta(struct cfe_node *node, struct v4l2_format *f)
+{
+	struct cfe_device *cfe = node->cfe;
+	const struct cfe_fmt *fmt;
+
+	switch (node->id) {
+	case CSI2_CH0...CSI2_CH3:
+		cfe_dbg(cfe, "%s: [%s] %ux%u, V4L2 meta %p4cc\n", __func__,
+			node_desc[node->id].name, f->fmt.meta.width, f->fmt.meta.height,
+			&f->fmt.meta.dataformat);
+		break;
+	case FE_STATS:
+	case FE_CONFIG:
+		cfe_dbg(cfe, "%s: [%s] %u bytes, V4L2 meta %p4cc\n", __func__,
+			node_desc[node->id].name, f->fmt.meta.buffersize,
+			&f->fmt.meta.dataformat);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (!node_supports_meta(node))
+		return -EINVAL;
+
+	switch (node->id) {
+	case CSI2_CH0...CSI2_CH3:
+		fmt = find_format_by_pix(f->fmt.meta.dataformat);
+		if (!fmt || !(fmt->flags & CFE_FORMAT_FLAG_META_CAP))
+			fmt = find_format_by_pix(V4L2_META_FMT_GENERIC_CSI2_10);
+
+		f->fmt.meta.dataformat = fmt->fourcc;
+
+		cfe_calc_meta_format_size_bpl(cfe, fmt, f);
+
+		return 0;
+	case FE_STATS:
+		f->fmt.meta.dataformat = V4L2_META_FMT_RPI_FE_STATS;
+		f->fmt.meta.buffersize = sizeof(struct pisp_statistics);
+		return 0;
+	case FE_CONFIG:
+		f->fmt.meta.dataformat = V4L2_META_FMT_RPI_FE_CFG;
+		f->fmt.meta.buffersize = sizeof(struct pisp_fe_config);
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int cfe_g_fmt_meta(struct file *file, void *priv, struct v4l2_format *f)
+{
+	struct cfe_node *node = video_drvdata(file);
+	struct cfe_device *cfe = node->cfe;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+
+	if (!node_supports_meta(node))
+		return -EINVAL;
+
+	*f = node->meta_fmt;
+
+	return 0;
+}
+
+static int cfe_s_fmt_meta(struct file *file, void *priv, struct v4l2_format *f)
+{
+	struct cfe_node *node = video_drvdata(file);
+	struct cfe_device *cfe = node->cfe;
+	struct vb2_queue *q = &node->buffer_queue;
+	int ret;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+
+	if (vb2_is_busy(q))
+		return -EBUSY;
+
+	if (!node_supports_meta(node))
+		return -EINVAL;
+
+	ret = cfe_validate_fmt_meta(node, f);
+	if (ret)
+		return ret;
+
+	node->meta_fmt = *f;
+
+	cfe_dbg(cfe, "%s: Set %p4cc\n", __func__,
+		&node->meta_fmt.fmt.meta.dataformat);
+
+	return 0;
+}
+
+static int cfe_try_fmt_meta(struct file *file, void *priv,
+			    struct v4l2_format *f)
+{
+	struct cfe_node *node = video_drvdata(file);
+	struct cfe_device *cfe = node->cfe;
+
+	cfe_dbg(cfe, "%s: [%s]\n", __func__, node_desc[node->id].name);
+	return cfe_validate_fmt_meta(node, f);
+}
+
+static int cfe_enum_framesizes(struct file *file, void *priv,
+			       struct v4l2_frmsizeenum *fsize)
+{
+	struct cfe_node *node = video_drvdata(file);
+	struct cfe_device *cfe = node->cfe;
+	const struct cfe_fmt *fmt;
+
+	cfe_dbg(cfe, "%s [%s]\n", __func__, node_desc[node->id].name);
+
+	if (fsize->index > 0)
+		return -EINVAL;
+
+	/* check for valid format */
+	fmt = find_format_by_pix(fsize->pixel_format);
+	if (!fmt) {
+		cfe_dbg(cfe, "Invalid pixel code: %x\n", fsize->pixel_format);
+		return -EINVAL;
+	}
+
+	/* TODO: Do we have limits on the step_width? */
+
+	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
+	fsize->stepwise.min_width = MIN_WIDTH;
+	fsize->stepwise.max_width = MAX_WIDTH;
+	fsize->stepwise.step_width = 2;
+	fsize->stepwise.min_height = MIN_HEIGHT;
+	fsize->stepwise.max_height = MAX_HEIGHT;
+	fsize->stepwise.step_height = 1;
+
+	return 0;
+}
+
+static int cfe_vb2_ioctl_reqbufs(struct file *file, void *priv,
+				 struct v4l2_requestbuffers *p)
+{
+	struct video_device *vdev = video_devdata(file);
+	struct cfe_node *node = video_get_drvdata(vdev);
+	struct cfe_device *cfe = node->cfe;
+	int ret;
+
+	cfe_dbg(cfe, "%s: [%s] type:%u\n", __func__, node_desc[node->id].name,
+		p->type);
+
+	if (p->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
+	    p->type != V4L2_BUF_TYPE_META_CAPTURE &&
+	    p->type != V4L2_BUF_TYPE_META_OUTPUT)
+		return -EINVAL;
+
+	ret = vb2_queue_change_type(vdev->queue, p->type);
+	if (ret)
+		return ret;
+
+	return vb2_ioctl_reqbufs(file, priv, p);
+}
+
+static int cfe_vb2_ioctl_create_bufs(struct file *file, void *priv,
+				     struct v4l2_create_buffers *p)
+{
+	struct video_device *vdev = video_devdata(file);
+	struct cfe_node *node = video_get_drvdata(vdev);
+	struct cfe_device *cfe = node->cfe;
+	int ret;
+
+	cfe_dbg(cfe, "%s: [%s] type:%u\n", __func__, node_desc[node->id].name,
+		p->format.type);
+
+	if (p->format.type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
+	    p->format.type != V4L2_BUF_TYPE_META_CAPTURE &&
+	    p->format.type != V4L2_BUF_TYPE_META_OUTPUT)
+		return -EINVAL;
+
+	ret = vb2_queue_change_type(vdev->queue, p->format.type);
+	if (ret)
+		return ret;
+
+	return vb2_ioctl_create_bufs(file, priv, p);
+}
+
+static int cfe_subscribe_event(struct v4l2_fh *fh,
+			       const struct v4l2_event_subscription *sub)
+{
+	struct cfe_node *node = video_get_drvdata(fh->vdev);
+
+	switch (sub->type) {
+	case V4L2_EVENT_FRAME_SYNC:
+		if (!node_supports_image_output(node))
+			break;
+
+		return v4l2_event_subscribe(fh, sub, 2, NULL);
+	case V4L2_EVENT_SOURCE_CHANGE:
+		if (!node_supports_image_output(node) &&
+		    !node_supports_meta_output(node))
+			break;
+
+		return v4l2_event_subscribe(fh, sub, 4, NULL);
+	}
+
+	return v4l2_ctrl_subscribe_event(fh, sub);
+}
+
+static const struct v4l2_ioctl_ops cfe_ioctl_ops = {
+	.vidioc_querycap = cfe_querycap,
+	.vidioc_enum_fmt_vid_cap = cfe_enum_fmt_vid_cap,
+	.vidioc_g_fmt_vid_cap = cfe_g_fmt,
+	.vidioc_s_fmt_vid_cap = cfe_s_fmt_vid_cap,
+	.vidioc_try_fmt_vid_cap = cfe_try_fmt_vid_cap,
+
+	.vidioc_enum_fmt_meta_cap = cfe_enum_fmt_meta,
+	.vidioc_g_fmt_meta_cap = cfe_g_fmt_meta,
+	.vidioc_s_fmt_meta_cap = cfe_s_fmt_meta,
+	.vidioc_try_fmt_meta_cap = cfe_try_fmt_meta,
+
+	.vidioc_enum_fmt_meta_out = cfe_enum_fmt_meta,
+	.vidioc_g_fmt_meta_out = cfe_g_fmt_meta,
+	.vidioc_s_fmt_meta_out = cfe_s_fmt_meta,
+	.vidioc_try_fmt_meta_out = cfe_try_fmt_meta,
+
+	.vidioc_enum_framesizes = cfe_enum_framesizes,
+
+	.vidioc_reqbufs = cfe_vb2_ioctl_reqbufs,
+	.vidioc_create_bufs = cfe_vb2_ioctl_create_bufs,
+	.vidioc_prepare_buf = vb2_ioctl_prepare_buf,
+	.vidioc_querybuf = vb2_ioctl_querybuf,
+	.vidioc_qbuf = vb2_ioctl_qbuf,
+	.vidioc_dqbuf = vb2_ioctl_dqbuf,
+	.vidioc_expbuf = vb2_ioctl_expbuf,
+	.vidioc_streamon = vb2_ioctl_streamon,
+	.vidioc_streamoff = vb2_ioctl_streamoff,
+
+	.vidioc_subscribe_event = cfe_subscribe_event,
+	.vidioc_unsubscribe_event = v4l2_event_unsubscribe,
+};
+
+static void cfe_notify(struct v4l2_subdev *sd, unsigned int notification,
+		       void *arg)
+{
+	struct cfe_device *cfe = to_cfe_device(sd->v4l2_dev);
+
+	switch (notification) {
+	case V4L2_DEVICE_NOTIFY_EVENT:
+		for (unsigned int i = 0; i < NUM_NODES; i++) {
+			struct cfe_node *node = &cfe->node[i];
+
+			if (check_state(cfe, NODE_REGISTERED, i))
+				continue;
+
+			v4l2_event_queue(&node->video_dev, arg);
+		}
+		break;
+	default:
+		break;
+	}
+}
+
+/* cfe capture driver file operations */
+static const struct v4l2_file_operations cfe_fops = {
+	.owner = THIS_MODULE,
+	.open = v4l2_fh_open,
+	.release = vb2_fop_release,
+	.poll = vb2_fop_poll,
+	.unlocked_ioctl = video_ioctl2,
+	.mmap = vb2_fop_mmap,
+};
+
+static int cfe_video_link_validate(struct media_link *link)
+{
+	struct video_device *vd = container_of(link->sink->entity,
+					       struct video_device, entity);
+	struct cfe_node *node = container_of(vd, struct cfe_node, video_dev);
+	struct cfe_device *cfe = node->cfe;
+	struct v4l2_mbus_framefmt *source_fmt;
+	struct v4l2_subdev_state *state;
+	struct v4l2_subdev *source_sd;
+	int ret = 0;
+
+	cfe_dbg(cfe, "%s: [%s] link \"%s\":%u -> \"%s\":%u\n", __func__,
+		node_desc[node->id].name,
+		link->source->entity->name, link->source->index,
+		link->sink->entity->name, link->sink->index);
+
+	if (!media_entity_remote_source_pad_unique(link->sink->entity)) {
+		cfe_err(cfe, "video node %s pad not connected\n", vd->name);
+		return -ENOTCONN;
+	}
+
+	source_sd = media_entity_to_v4l2_subdev(link->source->entity);
+
+	state = v4l2_subdev_lock_and_get_active_state(source_sd);
+
+	source_fmt = v4l2_subdev_state_get_format(state, link->source->index);
+	if (!source_fmt) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	if (is_image_output_node(node)) {
+		struct v4l2_pix_format *pix_fmt = &node->vid_fmt.fmt.pix;
+		const struct cfe_fmt *fmt;
+
+		if (source_fmt->width != pix_fmt->width ||
+		    source_fmt->height != pix_fmt->height) {
+			cfe_err(cfe, "Wrong width or height %ux%u (remote pad set to %ux%u)\n",
+				pix_fmt->width, pix_fmt->height,
+				source_fmt->width, source_fmt->height);
+			ret = -EINVAL;
+			goto out;
+		}
+
+		fmt = find_format_by_code_and_fourcc(source_fmt->code,
+						     pix_fmt->pixelformat);
+		if (!fmt) {
+			cfe_err(cfe, "Format mismatch!\n");
+			ret = -EINVAL;
+			goto out;
+		}
+	} else if (is_csi2_node(node) && is_meta_output_node(node)) {
+		struct v4l2_meta_format *meta_fmt = &node->meta_fmt.fmt.meta;
+		const struct cfe_fmt *fmt;
+
+		if (source_fmt->width != meta_fmt->width ||
+		    source_fmt->height != meta_fmt->height) {
+			cfe_err(cfe, "Wrong width or height %ux%u (remote pad set to %ux%u)\n",
+				meta_fmt->width, meta_fmt->height,
+				source_fmt->width, source_fmt->height);
+			ret = -EINVAL;
+			goto out;
+		}
+
+		fmt = find_format_by_code_and_fourcc(source_fmt->code,
+						     meta_fmt->dataformat);
+		if (!fmt) {
+			cfe_err(cfe, "Format mismatch!\n");
+			ret = -EINVAL;
+			goto out;
+		}
+	}
+
+out:
+	v4l2_subdev_unlock_state(state);
+
+	return ret;
+}
+
+static const struct media_entity_operations cfe_media_entity_ops = {
+	.link_validate = cfe_video_link_validate,
+};
+
+static int cfe_video_link_notify(struct media_link *link, u32 flags,
+				 unsigned int notification)
+{
+	struct media_device *mdev = link->graph_obj.mdev;
+	struct cfe_device *cfe = container_of(mdev, struct cfe_device, mdev);
+	struct media_entity *fe = &cfe->fe.sd.entity;
+	struct media_entity *csi2 = &cfe->csi2.sd.entity;
+	unsigned long lock_flags;
+
+	if (notification != MEDIA_DEV_NOTIFY_POST_LINK_CH)
+		return 0;
+
+	cfe_dbg(cfe, "%s: %s[%u] -> %s[%u] 0x%x", __func__,
+		link->source->entity->name, link->source->index,
+		link->sink->entity->name, link->sink->index, flags);
+
+	spin_lock_irqsave(&cfe->state_lock, lock_flags);
+
+	for (unsigned int i = 0; i < NUM_NODES; i++) {
+		if (link->sink->entity != &cfe->node[i].video_dev.entity &&
+		    link->source->entity != &cfe->node[i].video_dev.entity)
+			continue;
+
+		if (link->flags & MEDIA_LNK_FL_ENABLED)
+			set_state(cfe, NODE_ENABLED, i);
+		else
+			clear_state(cfe, NODE_ENABLED, i);
+
+		break;
+	}
+
+	spin_unlock_irqrestore(&cfe->state_lock, lock_flags);
+
+	if (link->source->entity != csi2)
+		return 0;
+	if (link->sink->entity != fe)
+		return 0;
+	if (link->sink->index != 0)
+		return 0;
+
+	cfe->fe_csi2_channel = -1;
+	if (link->flags & MEDIA_LNK_FL_ENABLED) {
+		if (link->source->index == node_desc[CSI2_CH0].link_pad)
+			cfe->fe_csi2_channel = CSI2_CH0;
+		else if (link->source->index == node_desc[CSI2_CH1].link_pad)
+			cfe->fe_csi2_channel = CSI2_CH1;
+		else if (link->source->index == node_desc[CSI2_CH2].link_pad)
+			cfe->fe_csi2_channel = CSI2_CH2;
+		else if (link->source->index == node_desc[CSI2_CH3].link_pad)
+			cfe->fe_csi2_channel = CSI2_CH3;
+	}
+
+	if (is_fe_enabled(cfe))
+		cfe_dbg(cfe, "%s: Found CSI2:%d -> FE:0 link\n", __func__,
+			cfe->fe_csi2_channel);
+	else
+		cfe_dbg(cfe, "%s: Unable to find CSI2:x -> FE:0 link\n", __func__);
+
+	return 0;
+}
+
+static const struct media_device_ops cfe_media_device_ops = {
+	.link_notify = cfe_video_link_notify,
+};
+
+static void cfe_release(struct kref *kref)
+{
+	struct cfe_device *cfe = container_of(kref, struct cfe_device, kref);
+
+	media_device_cleanup(&cfe->mdev);
+
+	kfree(cfe);
+}
+
+static void cfe_put(struct cfe_device *cfe)
+{
+	kref_put(&cfe->kref, cfe_release);
+}
+
+static void cfe_get(struct cfe_device *cfe)
+{
+	kref_get(&cfe->kref);
+}
+
+static void cfe_node_release(struct video_device *vdev)
+{
+	struct cfe_node *node = video_get_drvdata(vdev);
+
+	cfe_put(node->cfe);
+}
+
+static int cfe_register_node(struct cfe_device *cfe, int id)
+{
+	struct video_device *vdev;
+	const struct cfe_fmt *fmt;
+	struct vb2_queue *q;
+	struct cfe_node *node = &cfe->node[id];
+	int ret;
+
+	node->cfe = cfe;
+	node->id = id;
+
+	if (node_supports_image(node)) {
+		if (node_supports_image_output(node))
+			node->vid_fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
+		else
+			node->vid_fmt.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
+
+		fmt = find_format_by_code(cfe_default_format.code);
+		if (!fmt) {
+			cfe_err(cfe, "Failed to find format code\n");
+			return -EINVAL;
+		}
+
+		node->vid_fmt.fmt.pix.pixelformat = fmt->fourcc;
+		v4l2_fill_pix_format(&node->vid_fmt.fmt.pix, &cfe_default_format);
+
+		ret = cfe_validate_fmt_vid_cap(node, &node->vid_fmt);
+		if (ret)
+			return ret;
+	}
+
+	if (node_supports_meta(node)) {
+		if (node_supports_meta_output(node))
+			node->meta_fmt.type = V4L2_BUF_TYPE_META_CAPTURE;
+		else
+			node->meta_fmt.type = V4L2_BUF_TYPE_META_OUTPUT;
+
+		ret = cfe_validate_fmt_meta(node, &node->meta_fmt);
+		if (ret)
+			return ret;
+	}
+
+	mutex_init(&node->lock);
+
+	q = &node->buffer_queue;
+	q->type = node_supports_image(node) ? node->vid_fmt.type :
+					      node->meta_fmt.type;
+	q->io_modes = VB2_MMAP | VB2_DMABUF;
+	q->drv_priv = node;
+	q->ops = &cfe_video_qops;
+	q->mem_ops = &vb2_dma_contig_memops;
+	q->buf_struct_size = id == FE_CONFIG ? sizeof(struct cfe_config_buffer)
+					     : sizeof(struct cfe_buffer);
+	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
+	q->lock = &node->lock;
+	q->min_queued_buffers = 1;
+	q->dev = &cfe->pdev->dev;
+
+	ret = vb2_queue_init(q);
+	if (ret) {
+		cfe_err(cfe, "vb2_queue_init() failed\n");
+		return ret;
+	}
+
+	INIT_LIST_HEAD(&node->dma_queue);
+
+	vdev = &node->video_dev;
+	vdev->release = cfe_node_release;
+	vdev->fops = &cfe_fops;
+	vdev->ioctl_ops = &cfe_ioctl_ops;
+	vdev->entity.ops = &cfe_media_entity_ops;
+	vdev->v4l2_dev = &cfe->v4l2_dev;
+	vdev->vfl_dir = (node_supports_image_output(node) ||
+			 node_supports_meta_output(node)) ?
+				VFL_DIR_RX :
+				VFL_DIR_TX;
+	vdev->queue = q;
+	vdev->lock = &node->lock;
+	vdev->device_caps = node_desc[id].caps;
+	vdev->device_caps |= V4L2_CAP_STREAMING | V4L2_CAP_IO_MC;
+
+	/* Define the device names */
+	snprintf(vdev->name, sizeof(vdev->name), "%s-%s", CFE_MODULE_NAME,
+		 node_desc[id].name);
+
+	video_set_drvdata(vdev, node);
+	node->pad.flags = node_desc[id].pad_flags;
+	media_entity_pads_init(&vdev->entity, 1, &node->pad);
+
+	if (!node_supports_image(node)) {
+		v4l2_disable_ioctl(&node->video_dev,
+				   VIDIOC_ENUM_FRAMEINTERVALS);
+		v4l2_disable_ioctl(&node->video_dev, VIDIOC_ENUM_FRAMESIZES);
+	}
+
+	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
+	if (ret) {
+		cfe_err(cfe, "Unable to register video device %s\n", vdev->name);
+		return ret;
+	}
+
+	cfe_info(cfe, "Registered [%s] node id %d as /dev/video%u\n",
+		 vdev->name, id, vdev->num);
+
+	/*
+	 * Acquire a reference to cfe, which will be released when the video
+	 * device will be unregistered and userspace will have closed all open
+	 * file handles.
+	 */
+	cfe_get(cfe);
+	set_state(cfe, NODE_REGISTERED, id);
+
+	return 0;
+}
+
+static void cfe_unregister_nodes(struct cfe_device *cfe)
+{
+	for (unsigned int i = 0; i < NUM_NODES; i++) {
+		struct cfe_node *node = &cfe->node[i];
+
+		if (check_state(cfe, NODE_REGISTERED, i)) {
+			clear_state(cfe, NODE_REGISTERED, i);
+			video_unregister_device(&node->video_dev);
+		}
+	}
+}
+
+static int cfe_link_node_pads(struct cfe_device *cfe)
+{
+	struct media_pad *remote_pad;
+	int ret;
+
+	/* Source -> CSI2 */
+
+	ret = v4l2_create_fwnode_links_to_pad(cfe->source_sd,
+		&cfe->csi2.pad[CSI2_PAD_SINK],
+		MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);
+
+	if (ret) {
+		cfe_err(cfe, "Failed to create links to the source: %d\n", ret);
+		return ret;
+	}
+
+	remote_pad = media_pad_remote_pad_unique(&cfe->csi2.pad[CSI2_PAD_SINK]);
+	if (IS_ERR(remote_pad)) {
+		ret = PTR_ERR(remote_pad);
+		cfe_err(cfe, "Failed to get unique remote source pad: %d\n", ret);
+		return ret;
+	}
+
+	cfe->source_pad = remote_pad->index;
+
+	for (unsigned int i = 0; i < CSI2_NUM_CHANNELS; i++) {
+		struct cfe_node *node = &cfe->node[i];
+
+		if (!check_state(cfe, NODE_REGISTERED, i))
+			continue;
+
+		/* CSI2 channel # -> /dev/video# */
+		ret = media_create_pad_link(&cfe->csi2.sd.entity,
+					    node_desc[i].link_pad,
+					    &node->video_dev.entity, 0, 0);
+		if (ret)
+			return ret;
+
+		if (node_supports_image(node)) {
+			/* CSI2 channel # -> FE Input */
+			ret = media_create_pad_link(&cfe->csi2.sd.entity,
+						    node_desc[i].link_pad,
+						    &cfe->fe.sd.entity,
+						    FE_STREAM_PAD, 0);
+			if (ret)
+				return ret;
+		}
+	}
+
+	for (unsigned int i = CSI2_NUM_CHANNELS; i < NUM_NODES; i++) {
+		struct cfe_node *node = &cfe->node[i];
+		struct media_entity *src, *dst;
+		unsigned int src_pad, dst_pad;
+
+		if (node_desc[i].pad_flags & MEDIA_PAD_FL_SINK) {
+			/* FE -> /dev/video# */
+			src = &cfe->fe.sd.entity;
+			src_pad = node_desc[i].link_pad;
+			dst = &node->video_dev.entity;
+			dst_pad = 0;
+		} else {
+			/* /dev/video# -> FE */
+			dst = &cfe->fe.sd.entity;
+			dst_pad = node_desc[i].link_pad;
+			src = &node->video_dev.entity;
+			src_pad = 0;
+		}
+
+		ret = media_create_pad_link(src, src_pad, dst, dst_pad, 0);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int cfe_probe_complete(struct cfe_device *cfe)
+{
+	int ret;
+
+	cfe->v4l2_dev.notify = cfe_notify;
+
+	for (unsigned int i = 0; i < NUM_NODES; i++) {
+		ret = cfe_register_node(cfe, i);
+		if (ret) {
+			cfe_err(cfe, "Unable to register video node %u.\n", i);
+			goto unregister;
+		}
+	}
+
+	ret = cfe_link_node_pads(cfe);
+	if (ret) {
+		cfe_err(cfe, "Unable to link node pads.\n");
+		goto unregister;
+	}
+
+	ret = v4l2_device_register_subdev_nodes(&cfe->v4l2_dev);
+	if (ret) {
+		cfe_err(cfe, "Unable to register subdev nodes.\n");
+		goto unregister;
+	}
+
+	return 0;
+
+unregister:
+	cfe_unregister_nodes(cfe);
+	return ret;
+}
+
+static int cfe_async_bound(struct v4l2_async_notifier *notifier,
+			   struct v4l2_subdev *subdev,
+			   struct v4l2_async_connection *asd)
+{
+	struct cfe_device *cfe = to_cfe_device(notifier->v4l2_dev);
+
+	if (cfe->source_sd) {
+		cfe_err(cfe, "Rejecting subdev %s (Already set!!)", subdev->name);
+		return 0;
+	}
+
+	cfe->source_sd = subdev;
+
+	cfe_dbg(cfe, "Using source %s for capture\n", subdev->name);
+
+	return 0;
+}
+
+static int cfe_async_complete(struct v4l2_async_notifier *notifier)
+{
+	struct cfe_device *cfe = to_cfe_device(notifier->v4l2_dev);
+
+	return cfe_probe_complete(cfe);
+}
+
+static const struct v4l2_async_notifier_operations cfe_async_ops = {
+	.bound = cfe_async_bound,
+	.complete = cfe_async_complete,
+};
+
+static int cfe_register_async_nf(struct cfe_device *cfe)
+{
+	struct platform_device *pdev = cfe->pdev;
+	struct v4l2_fwnode_endpoint ep = { .bus_type = V4L2_MBUS_CSI2_DPHY };
+	struct fwnode_handle *local_ep_fwnode;
+	struct v4l2_async_connection *asd;
+	int ret;
+
+	local_ep_fwnode = fwnode_graph_get_endpoint_by_id(pdev->dev.fwnode, 0, 0, 0);
+	if (!local_ep_fwnode) {
+		cfe_err(cfe, "Failed to find local endpoint fwnode\n");
+		return -ENODEV;
+	}
+
+	/* Parse the local endpoint and validate its configuration. */
+	ret = v4l2_fwnode_endpoint_parse(local_ep_fwnode, &ep);
+	if (ret) {
+		cfe_err(cfe, "Failed to find remote endpoint fwnode\n");
+		goto err_put_local_fwnode;
+	}
+
+	for (unsigned int lane = 0; lane < ep.bus.mipi_csi2.num_data_lanes; lane++) {
+		if (ep.bus.mipi_csi2.data_lanes[lane] != lane + 1) {
+			cfe_err(cfe, "Data lanes reordering not supported\n");
+			ret = -EINVAL;
+			goto err_put_local_fwnode;
+		}
+	}
+
+	cfe->csi2.dphy.max_lanes = ep.bus.mipi_csi2.num_data_lanes;
+	cfe->csi2.bus_flags = ep.bus.mipi_csi2.flags;
+
+	/* Initialize and register the async notifier. */
+	v4l2_async_nf_init(&cfe->notifier, &cfe->v4l2_dev);
+	cfe->notifier.ops = &cfe_async_ops;
+
+	asd = v4l2_async_nf_add_fwnode_remote(&cfe->notifier, local_ep_fwnode,
+				       struct v4l2_async_connection);
+	if (IS_ERR(asd)) {
+		ret = PTR_ERR(asd);
+		cfe_err(cfe, "Error adding subdevice: %d\n", ret);
+		goto err_put_local_fwnode;
+	}
+
+	ret = v4l2_async_nf_register(&cfe->notifier);
+	if (ret) {
+		cfe_err(cfe, "Error registering async notifier: %d\n", ret);
+		goto err_nf_cleanup;
+	}
+
+	fwnode_handle_put(local_ep_fwnode);
+
+	return 0;
+
+err_nf_cleanup:
+	v4l2_async_nf_cleanup(&cfe->notifier);
+err_put_local_fwnode:
+	fwnode_handle_put(local_ep_fwnode);
+
+	return ret;
+}
+
+static int cfe_probe(struct platform_device *pdev)
+{
+	struct cfe_device *cfe;
+	char debugfs_name[32];
+	int ret;
+
+	cfe = kzalloc(sizeof(*cfe), GFP_KERNEL);
+	if (!cfe)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, cfe);
+
+	kref_init(&cfe->kref);
+	cfe->pdev = pdev;
+	cfe->fe_csi2_channel = -1;
+	spin_lock_init(&cfe->state_lock);
+
+	cfe->csi2.base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(cfe->csi2.base)) {
+		dev_err(&pdev->dev, "Failed to get dma io block\n");
+		ret = PTR_ERR(cfe->csi2.base);
+		goto err_cfe_put;
+	}
+
+	cfe->csi2.dphy.base = devm_platform_ioremap_resource(pdev, 1);
+	if (IS_ERR(cfe->csi2.dphy.base)) {
+		dev_err(&pdev->dev, "Failed to get host io block\n");
+		ret = PTR_ERR(cfe->csi2.dphy.base);
+		goto err_cfe_put;
+	}
+
+	cfe->mipi_cfg_base = devm_platform_ioremap_resource(pdev, 2);
+	if (IS_ERR(cfe->mipi_cfg_base)) {
+		dev_err(&pdev->dev, "Failed to get mipi cfg io block\n");
+		ret = PTR_ERR(cfe->mipi_cfg_base);
+		goto err_cfe_put;
+	}
+
+	cfe->fe.base = devm_platform_ioremap_resource(pdev, 3);
+	if (IS_ERR(cfe->fe.base)) {
+		dev_err(&pdev->dev, "Failed to get pisp fe io block\n");
+		ret = PTR_ERR(cfe->fe.base);
+		goto err_cfe_put;
+	}
+
+	ret = platform_get_irq(pdev, 0);
+	if (ret <= 0) {
+		dev_err(&pdev->dev, "No IRQ resource\n");
+		ret = -EINVAL;
+		goto err_cfe_put;
+	}
+
+	ret = devm_request_irq(&pdev->dev, ret, cfe_isr, 0, "rp1-cfe", cfe);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to request interrupt\n");
+		ret = -EINVAL;
+		goto err_cfe_put;
+	}
+
+	ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
+	if (ret) {
+		dev_err(&pdev->dev, "DMA enable failed\n");
+		goto err_cfe_put;
+	}
+
+	/* TODO: Enable clock only when running. */
+	cfe->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(cfe->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(cfe->clk),
+				     "clock not found\n");
+
+	cfe->mdev.dev = &pdev->dev;
+	cfe->mdev.ops = &cfe_media_device_ops;
+	strscpy(cfe->mdev.model, CFE_MODULE_NAME, sizeof(cfe->mdev.model));
+	strscpy(cfe->mdev.serial, "", sizeof(cfe->mdev.serial));
+	snprintf(cfe->mdev.bus_info, sizeof(cfe->mdev.bus_info), "platform:%s",
+		 dev_name(&pdev->dev));
+
+	media_device_init(&cfe->mdev);
+
+	cfe->v4l2_dev.mdev = &cfe->mdev;
+
+	ret = v4l2_device_register(&pdev->dev, &cfe->v4l2_dev);
+	if (ret) {
+		cfe_err(cfe, "Unable to register v4l2 device.\n");
+		goto err_cfe_put;
+	}
+
+	snprintf(debugfs_name, sizeof(debugfs_name), "rp1-cfe:%s",
+		 dev_name(&pdev->dev));
+	cfe->debugfs = debugfs_create_dir(debugfs_name, NULL);
+	debugfs_create_file("regs", 0440, cfe->debugfs, cfe,
+			    &mipi_cfg_regs_fops);
+
+	/* Enable the block power domain */
+	pm_runtime_enable(&pdev->dev);
+
+	ret = pm_runtime_resume_and_get(&cfe->pdev->dev);
+	if (ret)
+		goto err_runtime_disable;
+
+	cfe->csi2.v4l2_dev = &cfe->v4l2_dev;
+	ret = csi2_init(&cfe->csi2, cfe->debugfs);
+	if (ret) {
+		cfe_err(cfe, "Failed to init csi2 (%d)\n", ret);
+		goto err_runtime_put;
+	}
+
+	cfe->fe.v4l2_dev = &cfe->v4l2_dev;
+	ret = pisp_fe_init(&cfe->fe, cfe->debugfs);
+	if (ret) {
+		cfe_err(cfe, "Failed to init pisp fe (%d)\n", ret);
+		goto err_csi2_uninit;
+	}
+
+	cfe->mdev.hw_revision = cfe->fe.hw_revision;
+	ret = media_device_register(&cfe->mdev);
+	if (ret < 0) {
+		cfe_err(cfe, "Unable to register media-controller device.\n");
+		goto err_pisp_fe_uninit;
+	}
+
+	ret = cfe_register_async_nf(cfe);
+	if (ret) {
+		cfe_err(cfe, "Failed to connect subdevs\n");
+		goto err_media_unregister;
+	}
+
+	pm_runtime_put(&cfe->pdev->dev);
+
+	return 0;
+
+err_media_unregister:
+	media_device_unregister(&cfe->mdev);
+err_pisp_fe_uninit:
+	pisp_fe_uninit(&cfe->fe);
+err_csi2_uninit:
+	csi2_uninit(&cfe->csi2);
+err_runtime_put:
+	pm_runtime_put(&cfe->pdev->dev);
+err_runtime_disable:
+	pm_runtime_disable(&pdev->dev);
+	debugfs_remove(cfe->debugfs);
+	v4l2_device_unregister(&cfe->v4l2_dev);
+err_cfe_put:
+	cfe_put(cfe);
+
+	return ret;
+}
+
+static void cfe_remove(struct platform_device *pdev)
+{
+	struct cfe_device *cfe = platform_get_drvdata(pdev);
+
+	debugfs_remove(cfe->debugfs);
+
+	v4l2_async_nf_unregister(&cfe->notifier);
+	v4l2_async_nf_cleanup(&cfe->notifier);
+
+	media_device_unregister(&cfe->mdev);
+	cfe_unregister_nodes(cfe);
+
+	pisp_fe_uninit(&cfe->fe);
+	csi2_uninit(&cfe->csi2);
+
+	pm_runtime_disable(&pdev->dev);
+
+	v4l2_device_unregister(&cfe->v4l2_dev);
+
+	cfe_put(cfe);
+}
+
+static int cfe_runtime_suspend(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct cfe_device *cfe = platform_get_drvdata(pdev);
+
+	clk_disable_unprepare(cfe->clk);
+
+	return 0;
+}
+
+static int cfe_runtime_resume(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct cfe_device *cfe = platform_get_drvdata(pdev);
+	int ret;
+
+	ret = clk_prepare_enable(cfe->clk);
+	if (ret) {
+		dev_err(dev, "Unable to enable clock\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static const struct dev_pm_ops cfe_pm_ops = {
+	SET_RUNTIME_PM_OPS(cfe_runtime_suspend, cfe_runtime_resume, NULL)
+	SET_LATE_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
+};
+
+static const struct of_device_id cfe_of_match[] = {
+	{ .compatible = "raspberrypi,rp1-cfe" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, cfe_of_match);
+
+static struct platform_driver cfe_driver = {
+	.probe		= cfe_probe,
+	.remove		= cfe_remove,
+	.driver = {
+		.name	= CFE_MODULE_NAME,
+		.of_match_table = cfe_of_match,
+		.pm = &cfe_pm_ops,
+	},
+};
+
+module_platform_driver(cfe_driver);
+
+MODULE_AUTHOR("Naushir Patuck <naush@raspberrypi.com>");
+MODULE_AUTHOR("Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>");
+MODULE_DESCRIPTION("Raspberry Pi RP1 Camera Front End driver");
+MODULE_LICENSE("GPL");
+MODULE_VERSION(CFE_VERSION);
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/cfe.h b/drivers/media/platform/raspberrypi/rp1-cfe/cfe.h
new file mode 100644
index 000000000000..c63cc314be3c
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/cfe.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * RP1 CFE Driver
+ *
+ * Copyright (c) 2021-2024 Raspberry Pi Ltd.
+ * Copyright (c) 2023-2024 Ideas on Board Oy
+ */
+#ifndef _RP1_CFE_
+#define _RP1_CFE_
+
+#include <linux/media-bus-format.h>
+#include <linux/types.h>
+#include <linux/videodev2.h>
+
+extern bool cfe_debug_verbose;
+
+enum cfe_remap_types {
+	CFE_REMAP_16BIT,
+	CFE_REMAP_COMPRESSED,
+	CFE_NUM_REMAP,
+};
+
+#define CFE_FORMAT_FLAG_META_OUT	BIT(0)
+#define CFE_FORMAT_FLAG_META_CAP	BIT(1)
+#define CFE_FORMAT_FLAG_FE_OUT		BIT(2)
+
+struct cfe_fmt {
+	u32 fourcc;
+	u32 code;
+	u8 depth;
+	u8 csi_dt;
+	u32 remap[CFE_NUM_REMAP];
+	u32 flags;
+};
+
+extern const struct v4l2_mbus_framefmt cfe_default_format;
+
+const struct cfe_fmt *find_format_by_code(u32 code);
+const struct cfe_fmt *find_format_by_pix(u32 pixelformat);
+u32 cfe_find_16bit_code(u32 code);
+u32 cfe_find_compressed_code(u32 code);
+
+#endif
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/csi2.c b/drivers/media/platform/raspberrypi/rp1-cfe/csi2.c
new file mode 100644
index 000000000000..db0b2d94c666
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/csi2.c
@@ -0,0 +1,583 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * RP1 CSI-2 Driver
+ *
+ * Copyright (c) 2021-2024 Raspberry Pi Ltd.
+ * Copyright (c) 2023-2024 Ideas on Board Oy
+ */
+
+#include <linux/delay.h>
+#include <linux/moduleparam.h>
+#include <linux/pm_runtime.h>
+#include <linux/seq_file.h>
+
+#include <media/videobuf2-dma-contig.h>
+
+#include "cfe.h"
+#include "csi2.h"
+
+#include "cfe-trace.h"
+
+static bool csi2_track_errors;
+module_param_named(track_csi2_errors, csi2_track_errors, bool, 0);
+MODULE_PARM_DESC(track_csi2_errors, "track csi-2 errors");
+
+#define csi2_dbg(csi2, fmt, arg...) dev_dbg(csi2->v4l2_dev->dev, fmt, ##arg)
+#define csi2_err(csi2, fmt, arg...) dev_err(csi2->v4l2_dev->dev, fmt, ##arg)
+
+/* CSI2-DMA registers */
+#define CSI2_STATUS		0x000
+#define CSI2_QOS		0x004
+#define CSI2_DISCARDS_OVERFLOW	0x008
+#define CSI2_DISCARDS_INACTIVE	0x00c
+#define CSI2_DISCARDS_UNMATCHED	0x010
+#define CSI2_DISCARDS_LEN_LIMIT	0x014
+
+#define CSI2_DISCARDS_AMOUNT_SHIFT	0
+#define CSI2_DISCARDS_AMOUNT_MASK	GENMASK(23, 0)
+#define CSI2_DISCARDS_DT_SHIFT		24
+#define CSI2_DISCARDS_DT_MASK		GENMASK(29, 24)
+#define CSI2_DISCARDS_VC_SHIFT		30
+#define CSI2_DISCARDS_VC_MASK		GENMASK(31, 30)
+
+#define CSI2_LLEV_PANICS	0x018
+#define CSI2_ULEV_PANICS	0x01c
+#define CSI2_IRQ_MASK		0x020
+#define CSI2_IRQ_MASK_IRQ_OVERFLOW		BIT(0)
+#define CSI2_IRQ_MASK_IRQ_DISCARD_OVERFLOW	BIT(1)
+#define CSI2_IRQ_MASK_IRQ_DISCARD_LENGTH_LIMIT	BIT(2)
+#define CSI2_IRQ_MASK_IRQ_DISCARD_UNMATCHED	BIT(3)
+#define CSI2_IRQ_MASK_IRQ_DISCARD_INACTIVE	BIT(4)
+#define CSI2_IRQ_MASK_IRQ_ALL                                              \
+	(CSI2_IRQ_MASK_IRQ_OVERFLOW | CSI2_IRQ_MASK_IRQ_DISCARD_OVERFLOW | \
+	 CSI2_IRQ_MASK_IRQ_DISCARD_LENGTH_LIMIT |                          \
+	 CSI2_IRQ_MASK_IRQ_DISCARD_UNMATCHED |                             \
+	 CSI2_IRQ_MASK_IRQ_DISCARD_INACTIVE)
+
+#define CSI2_CTRL		0x024
+#define CSI2_CH_CTRL(x)		((x) * 0x40 + 0x28)
+#define CSI2_CH_ADDR0(x)	((x) * 0x40 + 0x2c)
+#define CSI2_CH_ADDR1(x)	((x) * 0x40 + 0x3c)
+#define CSI2_CH_STRIDE(x)	((x) * 0x40 + 0x30)
+#define CSI2_CH_LENGTH(x)	((x) * 0x40 + 0x34)
+#define CSI2_CH_DEBUG(x)	((x) * 0x40 + 0x38)
+#define CSI2_CH_FRAME_SIZE(x)	((x) * 0x40 + 0x40)
+#define CSI2_CH_COMP_CTRL(x)	((x) * 0x40 + 0x44)
+#define CSI2_CH_FE_FRAME_ID(x)	((x) * 0x40 + 0x48)
+
+/* CSI2_STATUS */
+#define CSI2_STATUS_IRQ_FS(x)			(BIT(0) << (x))
+#define CSI2_STATUS_IRQ_FE(x)			(BIT(4) << (x))
+#define CSI2_STATUS_IRQ_FE_ACK(x)		(BIT(8) << (x))
+#define CSI2_STATUS_IRQ_LE(x)			(BIT(12) << (x))
+#define CSI2_STATUS_IRQ_LE_ACK(x)		(BIT(16) << (x))
+#define CSI2_STATUS_IRQ_CH_MASK(x) \
+	(CSI2_STATUS_IRQ_FS(x) | CSI2_STATUS_IRQ_FE(x) | \
+	 CSI2_STATUS_IRQ_FE_ACK(x) | CSI2_STATUS_IRQ_LE(x) | \
+	 CSI2_STATUS_IRQ_LE_ACK(x))
+#define CSI2_STATUS_IRQ_OVERFLOW		BIT(20)
+#define CSI2_STATUS_IRQ_DISCARD_OVERFLOW	BIT(21)
+#define CSI2_STATUS_IRQ_DISCARD_LEN_LIMIT	BIT(22)
+#define CSI2_STATUS_IRQ_DISCARD_UNMATCHED	BIT(23)
+#define CSI2_STATUS_IRQ_DISCARD_INACTIVE	BIT(24)
+
+/* CSI2_CTRL */
+#define CSI2_CTRL_EOP_IS_EOL			BIT(0)
+
+/* CSI2_CH_CTRL */
+#define CSI2_CH_CTRL_DMA_EN			BIT(0)
+#define CSI2_CH_CTRL_FORCE			BIT(3)
+#define CSI2_CH_CTRL_AUTO_ARM			BIT(4)
+#define CSI2_CH_CTRL_IRQ_EN_FS			BIT(13)
+#define CSI2_CH_CTRL_IRQ_EN_FE			BIT(14)
+#define CSI2_CH_CTRL_IRQ_EN_FE_ACK		BIT(15)
+#define CSI2_CH_CTRL_IRQ_EN_LE			BIT(16)
+#define CSI2_CH_CTRL_IRQ_EN_LE_ACK		BIT(17)
+#define CSI2_CH_CTRL_FLUSH_FE			BIT(28)
+#define CSI2_CH_CTRL_PACK_LINE			BIT(29)
+#define CSI2_CH_CTRL_PACK_BYTES			BIT(30)
+#define CSI2_CH_CTRL_CH_MODE_MASK		GENMASK(2, 1)
+#define CSI2_CH_CTRL_VC_MASK			GENMASK(6, 5)
+#define CSI2_CH_CTRL_DT_MASK			GENMASK(12, 7)
+#define CSI2_CH_CTRL_LC_MASK			GENMASK(27, 18)
+
+/* CHx_COMPRESSION_CONTROL */
+#define CSI2_CH_COMP_CTRL_OFFSET_MASK		GENMASK(15, 0)
+#define CSI2_CH_COMP_CTRL_SHIFT_MASK		GENMASK(19, 16)
+#define CSI2_CH_COMP_CTRL_MODE_MASK		GENMASK(25, 24)
+
+static inline u32 csi2_reg_read(struct csi2_device *csi2, u32 offset)
+{
+	return readl(csi2->base + offset);
+}
+
+static inline void csi2_reg_write(struct csi2_device *csi2, u32 offset, u32 val)
+{
+	writel(val, csi2->base + offset);
+}
+
+static inline void set_field(u32 *valp, u32 field, u32 mask)
+{
+	u32 val = *valp;
+
+	val &= ~mask;
+	val |= (field << __ffs(mask)) & mask;
+	*valp = val;
+}
+
+static int csi2_regs_show(struct seq_file *s, void *data)
+{
+	struct csi2_device *csi2 = s->private;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(csi2->v4l2_dev->dev);
+	if (ret)
+		return ret;
+
+#define DUMP(reg) seq_printf(s, #reg " \t0x%08x\n", csi2_reg_read(csi2, reg))
+#define DUMP_CH(idx, reg) seq_printf(s, #reg "(%u) \t0x%08x\n", idx, csi2_reg_read(csi2, reg(idx)))
+
+	DUMP(CSI2_STATUS);
+	DUMP(CSI2_DISCARDS_OVERFLOW);
+	DUMP(CSI2_DISCARDS_INACTIVE);
+	DUMP(CSI2_DISCARDS_UNMATCHED);
+	DUMP(CSI2_DISCARDS_LEN_LIMIT);
+	DUMP(CSI2_LLEV_PANICS);
+	DUMP(CSI2_ULEV_PANICS);
+	DUMP(CSI2_IRQ_MASK);
+	DUMP(CSI2_CTRL);
+
+	for (unsigned int i = 0; i < CSI2_NUM_CHANNELS; ++i) {
+		DUMP_CH(i, CSI2_CH_CTRL);
+		DUMP_CH(i, CSI2_CH_ADDR0);
+		DUMP_CH(i, CSI2_CH_ADDR1);
+		DUMP_CH(i, CSI2_CH_STRIDE);
+		DUMP_CH(i, CSI2_CH_LENGTH);
+		DUMP_CH(i, CSI2_CH_DEBUG);
+		DUMP_CH(i, CSI2_CH_FRAME_SIZE);
+		DUMP_CH(i, CSI2_CH_COMP_CTRL);
+		DUMP_CH(i, CSI2_CH_FE_FRAME_ID);
+	}
+
+#undef DUMP
+#undef DUMP_CH
+
+	pm_runtime_put(csi2->v4l2_dev->dev);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(csi2_regs);
+
+static int csi2_errors_show(struct seq_file *s, void *data)
+{
+	struct csi2_device *csi2 = s->private;
+	unsigned long flags;
+	u32 discards_table[DISCARDS_TABLE_NUM_VCS][DISCARDS_TABLE_NUM_ENTRIES];
+	u32 discards_dt_table[DISCARDS_TABLE_NUM_ENTRIES];
+	u32 overflows;
+
+	spin_lock_irqsave(&csi2->errors_lock, flags);
+
+	memcpy(discards_table, csi2->discards_table, sizeof(discards_table));
+	memcpy(discards_dt_table, csi2->discards_dt_table,
+	       sizeof(discards_dt_table));
+	overflows = csi2->overflows;
+
+	csi2->overflows = 0;
+	memset(csi2->discards_table, 0, sizeof(discards_table));
+	memset(csi2->discards_dt_table, 0, sizeof(discards_dt_table));
+
+	spin_unlock_irqrestore(&csi2->errors_lock, flags);
+
+	seq_printf(s, "Overflows %u\n", overflows);
+	seq_puts(s, "Discards:\n");
+	seq_puts(s, "VC            OVLF        LEN  UNMATCHED   INACTIVE\n");
+
+	for (unsigned int vc = 0; vc < DISCARDS_TABLE_NUM_VCS; ++vc) {
+		seq_printf(s, "%u       %10u %10u %10u %10u\n", vc,
+			   discards_table[vc][DISCARDS_TABLE_OVERFLOW],
+			   discards_table[vc][DISCARDS_TABLE_LENGTH_LIMIT],
+			   discards_table[vc][DISCARDS_TABLE_UNMATCHED],
+			   discards_table[vc][DISCARDS_TABLE_INACTIVE]);
+	}
+
+	seq_printf(s, "Last DT %10u %10u %10u %10u\n",
+		   discards_dt_table[DISCARDS_TABLE_OVERFLOW],
+		   discards_dt_table[DISCARDS_TABLE_LENGTH_LIMIT],
+		   discards_dt_table[DISCARDS_TABLE_UNMATCHED],
+		   discards_dt_table[DISCARDS_TABLE_INACTIVE]);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(csi2_errors);
+
+static void csi2_isr_handle_errors(struct csi2_device *csi2, u32 status)
+{
+	spin_lock(&csi2->errors_lock);
+
+	if (status & CSI2_STATUS_IRQ_OVERFLOW)
+		csi2->overflows++;
+
+	for (unsigned int i = 0; i < DISCARDS_TABLE_NUM_ENTRIES; ++i) {
+		static const u32 discard_bits[] = {
+			CSI2_STATUS_IRQ_DISCARD_OVERFLOW,
+			CSI2_STATUS_IRQ_DISCARD_LEN_LIMIT,
+			CSI2_STATUS_IRQ_DISCARD_UNMATCHED,
+			CSI2_STATUS_IRQ_DISCARD_INACTIVE,
+		};
+		static const u8 discard_regs[] = {
+			CSI2_DISCARDS_OVERFLOW,
+			CSI2_DISCARDS_LEN_LIMIT,
+			CSI2_DISCARDS_UNMATCHED,
+			CSI2_DISCARDS_INACTIVE,
+		};
+		u32 amount;
+		u8 dt, vc;
+		u32 v;
+
+		if (!(status & discard_bits[i]))
+			continue;
+
+		v = csi2_reg_read(csi2, discard_regs[i]);
+		csi2_reg_write(csi2, discard_regs[i], 0);
+
+		amount = (v & CSI2_DISCARDS_AMOUNT_MASK) >>
+			 CSI2_DISCARDS_AMOUNT_SHIFT;
+		dt = (v & CSI2_DISCARDS_DT_MASK) >> CSI2_DISCARDS_DT_SHIFT;
+		vc = (v & CSI2_DISCARDS_VC_MASK) >> CSI2_DISCARDS_VC_SHIFT;
+
+		csi2->discards_table[vc][i] += amount;
+		csi2->discards_dt_table[i] = dt;
+	}
+
+	spin_unlock(&csi2->errors_lock);
+}
+
+void csi2_isr(struct csi2_device *csi2, bool *sof, bool *eof)
+{
+	u32 status;
+
+	status = csi2_reg_read(csi2, CSI2_STATUS);
+
+	/* Write value back to clear the interrupts */
+	csi2_reg_write(csi2, CSI2_STATUS, status);
+
+	for (unsigned int i = 0; i < CSI2_NUM_CHANNELS; i++) {
+		u32 dbg;
+
+		if ((status & CSI2_STATUS_IRQ_CH_MASK(i)) == 0)
+			continue;
+
+		dbg = csi2_reg_read(csi2, CSI2_CH_DEBUG(i));
+
+		trace_csi2_irq(i, status, dbg);
+
+		sof[i] = !!(status & CSI2_STATUS_IRQ_FS(i));
+		eof[i] = !!(status & CSI2_STATUS_IRQ_FE_ACK(i));
+	}
+
+	if (csi2_track_errors)
+		csi2_isr_handle_errors(csi2, status);
+}
+
+void csi2_set_buffer(struct csi2_device *csi2, unsigned int channel,
+		     dma_addr_t dmaaddr, unsigned int stride, unsigned int size)
+{
+	u64 addr = dmaaddr;
+	/*
+	 * ADDRESS0 must be written last as it triggers the double buffering
+	 * mechanism for all buffer registers within the hardware.
+	 */
+	addr >>= 4;
+	csi2_reg_write(csi2, CSI2_CH_LENGTH(channel), size >> 4);
+	csi2_reg_write(csi2, CSI2_CH_STRIDE(channel), stride >> 4);
+	csi2_reg_write(csi2, CSI2_CH_ADDR1(channel), addr >> 32);
+	csi2_reg_write(csi2, CSI2_CH_ADDR0(channel), addr & 0xffffffff);
+}
+
+void csi2_set_compression(struct csi2_device *csi2, unsigned int channel,
+			  enum csi2_compression_mode mode, unsigned int shift,
+			  unsigned int offset)
+{
+	u32 compression = 0;
+
+	set_field(&compression, CSI2_CH_COMP_CTRL_OFFSET_MASK, offset);
+	set_field(&compression, CSI2_CH_COMP_CTRL_SHIFT_MASK, shift);
+	set_field(&compression, CSI2_CH_COMP_CTRL_MODE_MASK, mode);
+	csi2_reg_write(csi2, CSI2_CH_COMP_CTRL(channel), compression);
+}
+
+void csi2_start_channel(struct csi2_device *csi2, unsigned int channel,
+			enum csi2_mode mode, bool auto_arm, bool pack_bytes,
+			unsigned int width, unsigned int height,
+			u8 vc, u8 dt)
+{
+	u32 ctrl;
+
+	csi2_dbg(csi2, "%s [%u]\n", __func__, channel);
+
+	csi2_reg_write(csi2, CSI2_CH_CTRL(channel), 0);
+	csi2_reg_write(csi2, CSI2_CH_DEBUG(channel), 0);
+	csi2_reg_write(csi2, CSI2_STATUS, CSI2_STATUS_IRQ_CH_MASK(channel));
+
+	/* Enable channel and FS/FE interrupts. */
+	ctrl = CSI2_CH_CTRL_DMA_EN | CSI2_CH_CTRL_IRQ_EN_FS |
+	       CSI2_CH_CTRL_IRQ_EN_FE_ACK | CSI2_CH_CTRL_PACK_LINE;
+	/* PACK_BYTES ensures no striding for embedded data. */
+	if (pack_bytes)
+		ctrl |= CSI2_CH_CTRL_PACK_BYTES;
+
+	if (auto_arm)
+		ctrl |= CSI2_CH_CTRL_AUTO_ARM;
+
+	if (width && height) {
+		set_field(&ctrl, mode, CSI2_CH_CTRL_CH_MODE_MASK);
+		csi2_reg_write(csi2, CSI2_CH_FRAME_SIZE(channel),
+			       (height << 16) | width);
+	} else {
+		set_field(&ctrl, 0x0, CSI2_CH_CTRL_CH_MODE_MASK);
+		csi2_reg_write(csi2, CSI2_CH_FRAME_SIZE(channel), 0);
+	}
+
+	set_field(&ctrl, vc, CSI2_CH_CTRL_VC_MASK);
+	set_field(&ctrl, dt, CSI2_CH_CTRL_DT_MASK);
+	csi2_reg_write(csi2, CSI2_CH_CTRL(channel), ctrl);
+	csi2->num_lines[channel] = height;
+}
+
+void csi2_stop_channel(struct csi2_device *csi2, unsigned int channel)
+{
+	csi2_dbg(csi2, "%s [%u]\n", __func__, channel);
+
+	/* Channel disable.  Use FORCE to allow stopping mid-frame. */
+	csi2_reg_write(csi2, CSI2_CH_CTRL(channel), CSI2_CH_CTRL_FORCE);
+	/* Latch the above change by writing to the ADDR0 register. */
+	csi2_reg_write(csi2, CSI2_CH_ADDR0(channel), 0);
+	/* Write this again, the HW needs it! */
+	csi2_reg_write(csi2, CSI2_CH_ADDR0(channel), 0);
+}
+
+void csi2_open_rx(struct csi2_device *csi2)
+{
+	csi2_reg_write(csi2, CSI2_IRQ_MASK,
+		       csi2_track_errors ? CSI2_IRQ_MASK_IRQ_ALL : 0);
+
+	dphy_start(&csi2->dphy);
+
+	csi2_reg_write(csi2, CSI2_CTRL, CSI2_CTRL_EOP_IS_EOL);
+}
+
+void csi2_close_rx(struct csi2_device *csi2)
+{
+	dphy_stop(&csi2->dphy);
+
+	csi2_reg_write(csi2, CSI2_IRQ_MASK, 0);
+}
+
+static int csi2_init_state(struct v4l2_subdev *sd,
+			   struct v4l2_subdev_state *state)
+{
+	struct v4l2_subdev_route routes[] = { {
+		.sink_pad = CSI2_PAD_SINK,
+		.sink_stream = 0,
+		.source_pad = CSI2_PAD_FIRST_SOURCE,
+		.source_stream = 0,
+		.flags = V4L2_SUBDEV_ROUTE_FL_ACTIVE,
+	} };
+
+	struct v4l2_subdev_krouting routing = {
+		.num_routes = ARRAY_SIZE(routes),
+		.routes = routes,
+	};
+
+	int ret;
+
+	ret = v4l2_subdev_set_routing_with_fmt(sd, state, &routing,
+					       &cfe_default_format);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int csi2_pad_set_fmt(struct v4l2_subdev *sd,
+			    struct v4l2_subdev_state *state,
+			    struct v4l2_subdev_format *format)
+{
+	if (format->pad == CSI2_PAD_SINK) {
+		/* Store the sink format and propagate it to the source. */
+
+		const struct cfe_fmt *cfe_fmt;
+
+		cfe_fmt = find_format_by_code(format->format.code);
+		if (!cfe_fmt) {
+			cfe_fmt = find_format_by_code(MEDIA_BUS_FMT_SRGGB10_1X10);
+			format->format.code = cfe_fmt->code;
+		}
+
+		struct v4l2_mbus_framefmt *fmt;
+
+		fmt = v4l2_subdev_state_get_format(state, format->pad,
+						   format->stream);
+		if (!fmt)
+			return -EINVAL;
+
+		*fmt = format->format;
+
+		fmt = v4l2_subdev_state_get_opposite_stream_format(state, format->pad,
+								   format->stream);
+		if (!fmt)
+			return -EINVAL;
+
+		format->format.field = V4L2_FIELD_NONE;
+
+		*fmt = format->format;
+	} else {
+		/* Only allow changing the source pad mbus code. */
+
+		struct v4l2_mbus_framefmt *sink_fmt, *source_fmt;
+		u32 sink_code;
+		u32 code;
+
+		sink_fmt = v4l2_subdev_state_get_opposite_stream_format(state, format->pad,
+									format->stream);
+		if (!sink_fmt)
+			return -EINVAL;
+
+		source_fmt = v4l2_subdev_state_get_format(state, format->pad,
+							  format->stream);
+		if (!source_fmt)
+			return -EINVAL;
+
+		sink_code = sink_fmt->code;
+		code = format->format.code;
+
+		/*
+		 * Only allow changing the mbus code to:
+		 * - The sink's mbus code
+		 * - The 16-bit version of the sink's mbus code
+		 * - The compressed version of the sink's mbus code
+		 */
+		if (code == sink_code ||
+		    code == cfe_find_16bit_code(sink_code) ||
+		    code == cfe_find_compressed_code(sink_code))
+			source_fmt->code = code;
+
+		format->format.code = source_fmt->code;
+	}
+
+	return 0;
+}
+
+static int csi2_set_routing(struct v4l2_subdev *sd,
+			    struct v4l2_subdev_state *state,
+			    enum v4l2_subdev_format_whence which,
+			    struct v4l2_subdev_krouting *routing)
+{
+	int ret;
+
+	ret = v4l2_subdev_routing_validate(sd, routing,
+					   V4L2_SUBDEV_ROUTING_ONLY_1_TO_1 |
+					   V4L2_SUBDEV_ROUTING_NO_SOURCE_MULTIPLEXING);
+	if (ret)
+		return ret;
+
+	/* Only stream ID 0 allowed on source pads */
+	for (unsigned int i = 0; i < routing->num_routes; ++i) {
+		const struct v4l2_subdev_route *route = &routing->routes[i];
+
+		if (route->source_stream != 0)
+			return -EINVAL;
+	}
+
+	ret = v4l2_subdev_set_routing_with_fmt(sd, state, routing,
+					       &cfe_default_format);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static const struct v4l2_subdev_pad_ops csi2_subdev_pad_ops = {
+	.get_fmt = v4l2_subdev_get_fmt,
+	.set_fmt = csi2_pad_set_fmt,
+	.set_routing = csi2_set_routing,
+	.link_validate = v4l2_subdev_link_validate_default,
+};
+
+static const struct media_entity_operations csi2_entity_ops = {
+	.link_validate = v4l2_subdev_link_validate,
+	.has_pad_interdep = v4l2_subdev_has_pad_interdep,
+};
+
+static const struct v4l2_subdev_ops csi2_subdev_ops = {
+	.pad = &csi2_subdev_pad_ops,
+};
+
+static const struct v4l2_subdev_internal_ops csi2_internal_ops = {
+	.init_state = csi2_init_state,
+};
+
+int csi2_init(struct csi2_device *csi2, struct dentry *debugfs)
+{
+	unsigned int ret;
+
+	spin_lock_init(&csi2->errors_lock);
+
+	csi2->dphy.dev = csi2->v4l2_dev->dev;
+	dphy_probe(&csi2->dphy);
+
+	debugfs_create_file("csi2_regs", 0440, debugfs, csi2, &csi2_regs_fops);
+
+	if (csi2_track_errors)
+		debugfs_create_file("csi2_errors", 0440, debugfs, csi2,
+				    &csi2_errors_fops);
+
+	csi2->pad[CSI2_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
+
+	for (unsigned int i = CSI2_PAD_FIRST_SOURCE;
+	     i < CSI2_PAD_FIRST_SOURCE + CSI2_PAD_NUM_SOURCES; i++)
+		csi2->pad[i].flags = MEDIA_PAD_FL_SOURCE;
+
+	ret = media_entity_pads_init(&csi2->sd.entity, ARRAY_SIZE(csi2->pad),
+				     csi2->pad);
+	if (ret)
+		return ret;
+
+	/* Initialize subdev */
+	v4l2_subdev_init(&csi2->sd, &csi2_subdev_ops);
+	csi2->sd.internal_ops = &csi2_internal_ops;
+	csi2->sd.entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
+	csi2->sd.entity.ops = &csi2_entity_ops;
+	csi2->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_STREAMS;
+	csi2->sd.owner = THIS_MODULE;
+	snprintf(csi2->sd.name, sizeof(csi2->sd.name), "csi2");
+
+	ret = v4l2_subdev_init_finalize(&csi2->sd);
+	if (ret)
+		goto err_entity_cleanup;
+
+	ret = v4l2_device_register_subdev(csi2->v4l2_dev, &csi2->sd);
+	if (ret) {
+		csi2_err(csi2, "Failed register csi2 subdev (%d)\n", ret);
+		goto err_subdev_cleanup;
+	}
+
+	return 0;
+
+err_subdev_cleanup:
+	v4l2_subdev_cleanup(&csi2->sd);
+err_entity_cleanup:
+	media_entity_cleanup(&csi2->sd.entity);
+
+	return ret;
+}
+
+void csi2_uninit(struct csi2_device *csi2)
+{
+	v4l2_device_unregister_subdev(&csi2->sd);
+	v4l2_subdev_cleanup(&csi2->sd);
+	media_entity_cleanup(&csi2->sd.entity);
+}
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/csi2.h b/drivers/media/platform/raspberrypi/rp1-cfe/csi2.h
new file mode 100644
index 000000000000..a8ee5de565fb
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/csi2.h
@@ -0,0 +1,89 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * RP1 CSI-2 Driver
+ *
+ * Copyright (c) 2021-2024 Raspberry Pi Ltd.
+ * Copyright (c) 2023-2024 Ideas on Board Oy
+ */
+
+#ifndef _RP1_CSI2_
+#define _RP1_CSI2_
+
+#include <linux/debugfs.h>
+#include <linux/io.h>
+#include <linux/types.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-subdev.h>
+
+#include "dphy.h"
+
+#define CSI2_NUM_CHANNELS 4
+
+#define CSI2_PAD_SINK 0
+#define CSI2_PAD_FIRST_SOURCE 1
+#define CSI2_PAD_NUM_SOURCES 4
+#define CSI2_NUM_PADS 5
+
+#define DISCARDS_TABLE_NUM_VCS 4
+
+enum csi2_mode {
+	CSI2_MODE_NORMAL = 0,
+	CSI2_MODE_REMAP = 1,
+	CSI2_MODE_COMPRESSED = 2,
+	CSI2_MODE_FE_STREAMING = 3,
+};
+
+enum csi2_compression_mode {
+	CSI2_COMPRESSION_DELTA = 1,
+	CSI2_COMPRESSION_SIMPLE = 2,
+	CSI2_COMPRESSION_COMBINED = 3,
+};
+
+enum discards_table_index {
+	DISCARDS_TABLE_OVERFLOW = 0,
+	DISCARDS_TABLE_LENGTH_LIMIT,
+	DISCARDS_TABLE_UNMATCHED,
+	DISCARDS_TABLE_INACTIVE,
+	DISCARDS_TABLE_NUM_ENTRIES,
+};
+
+struct csi2_device {
+	/* Parent V4l2 device */
+	struct v4l2_device *v4l2_dev;
+
+	void __iomem *base;
+
+	struct dphy_data dphy;
+
+	enum v4l2_mbus_type bus_type;
+	unsigned int bus_flags;
+	unsigned int num_lines[CSI2_NUM_CHANNELS];
+
+	struct media_pad pad[CSI2_NUM_PADS];
+	struct v4l2_subdev sd;
+
+	/* lock for csi2 errors counters */
+	spinlock_t errors_lock;
+	u32 overflows;
+	u32 discards_table[DISCARDS_TABLE_NUM_VCS][DISCARDS_TABLE_NUM_ENTRIES];
+	u32 discards_dt_table[DISCARDS_TABLE_NUM_ENTRIES];
+};
+
+void csi2_isr(struct csi2_device *csi2, bool *sof, bool *eof);
+void csi2_set_buffer(struct csi2_device *csi2, unsigned int channel,
+		     dma_addr_t dmaaddr, unsigned int stride,
+		     unsigned int size);
+void csi2_set_compression(struct csi2_device *csi2, unsigned int channel,
+			  enum csi2_compression_mode mode, unsigned int shift,
+			  unsigned int offset);
+void csi2_start_channel(struct csi2_device *csi2, unsigned int channel,
+			enum csi2_mode mode, bool auto_arm,
+			bool pack_bytes, unsigned int width,
+			unsigned int height, u8 vc, u8 dt);
+void csi2_stop_channel(struct csi2_device *csi2, unsigned int channel);
+void csi2_open_rx(struct csi2_device *csi2);
+void csi2_close_rx(struct csi2_device *csi2);
+int csi2_init(struct csi2_device *csi2, struct dentry *debugfs);
+void csi2_uninit(struct csi2_device *csi2);
+
+#endif
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/dphy.c b/drivers/media/platform/raspberrypi/rp1-cfe/dphy.c
new file mode 100644
index 000000000000..29f4cf660d0b
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/dphy.c
@@ -0,0 +1,180 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * RP1 CSI-2 Driver
+ *
+ * Copyright (c) 2021-2024 Raspberry Pi Ltd.
+ * Copyright (c) 2023-2024 Ideas on Board Oy
+ */
+
+#include <linux/delay.h>
+#include <linux/pm_runtime.h>
+
+#include "dphy.h"
+
+#define dphy_dbg(dphy, fmt, arg...) dev_dbg(dphy->dev, fmt, ##arg)
+#define dphy_err(dphy, fmt, arg...) dev_err(dphy->dev, fmt, ##arg)
+
+/* DW dphy Host registers */
+#define DPHY_VERSION		0x000
+#define DPHY_N_LANES		0x004
+#define DPHY_RESETN		0x008
+#define DPHY_PHY_SHUTDOWNZ	0x040
+#define DPHY_PHY_RSTZ		0x044
+#define DPHY_PHY_RX		0x048
+#define	DPHY_PHY_STOPSTATE	0x04c
+#define DPHY_PHY_TST_CTRL0	0x050
+#define DPHY_PHY_TST_CTRL1	0x054
+#define DPHY_PHY2_TST_CTRL0	0x058
+#define DPHY_PHY2_TST_CTRL1	0x05c
+
+/* DW dphy Host Transactions */
+#define DPHY_HS_RX_CTRL_LANE0_OFFSET	0x44
+#define DPHY_PLL_INPUT_DIV_OFFSET	0x17
+#define DPHY_PLL_LOOP_DIV_OFFSET	0x18
+#define DPHY_PLL_DIV_CTRL_OFFSET	0x19
+
+static u32 dw_csi2_host_read(struct dphy_data *dphy, u32 offset)
+{
+	return readl(dphy->base + offset);
+}
+
+static void dw_csi2_host_write(struct dphy_data *dphy, u32 offset, u32 data)
+{
+	writel(data, dphy->base + offset);
+}
+
+static void set_tstclr(struct dphy_data *dphy, u32 val)
+{
+	u32 ctrl0 = dw_csi2_host_read(dphy, DPHY_PHY_TST_CTRL0);
+
+	dw_csi2_host_write(dphy, DPHY_PHY_TST_CTRL0, (ctrl0 & ~1) | val);
+}
+
+static void set_tstclk(struct dphy_data *dphy, u32 val)
+{
+	u32 ctrl0 = dw_csi2_host_read(dphy, DPHY_PHY_TST_CTRL0);
+
+	dw_csi2_host_write(dphy, DPHY_PHY_TST_CTRL0, (ctrl0 & ~2) | (val << 1));
+}
+
+static uint8_t get_tstdout(struct dphy_data *dphy)
+{
+	u32 ctrl1 = dw_csi2_host_read(dphy, DPHY_PHY_TST_CTRL1);
+
+	return ((ctrl1 >> 8) & 0xff);
+}
+
+static void set_testen(struct dphy_data *dphy, u32 val)
+{
+	u32 ctrl1 = dw_csi2_host_read(dphy, DPHY_PHY_TST_CTRL1);
+
+	dw_csi2_host_write(dphy, DPHY_PHY_TST_CTRL1,
+			   (ctrl1 & ~(1 << 16)) | (val << 16));
+}
+
+static void set_testdin(struct dphy_data *dphy, u32 val)
+{
+	u32 ctrl1 = dw_csi2_host_read(dphy, DPHY_PHY_TST_CTRL1);
+
+	dw_csi2_host_write(dphy, DPHY_PHY_TST_CTRL1, (ctrl1 & ~0xff) | val);
+}
+
+static uint8_t dphy_transaction(struct dphy_data *dphy, u8 test_code,
+				uint8_t test_data)
+{
+	/* See page 101 of the MIPI DPHY databook. */
+	set_tstclk(dphy, 1);
+	set_testen(dphy, 0);
+	set_testdin(dphy, test_code);
+	set_testen(dphy, 1);
+	set_tstclk(dphy, 0);
+	set_testen(dphy, 0);
+	set_testdin(dphy, test_data);
+	set_tstclk(dphy, 1);
+	return get_tstdout(dphy);
+}
+
+static void dphy_set_hsfreqrange(struct dphy_data *dphy, uint32_t mbps)
+{
+	/* See Table 5-1 on page 65 of dphy databook */
+	static const u16 hsfreqrange_table[][2] = {
+		{ 89, 0b000000 },   { 99, 0b010000 },	{ 109, 0b100000 },
+		{ 129, 0b000001 },  { 139, 0b010001 },	{ 149, 0b100001 },
+		{ 169, 0b000010 },  { 179, 0b010010 },	{ 199, 0b100010 },
+		{ 219, 0b000011 },  { 239, 0b010011 },	{ 249, 0b100011 },
+		{ 269, 0b000100 },  { 299, 0b010100 },	{ 329, 0b000101 },
+		{ 359, 0b010101 },  { 399, 0b100101 },	{ 449, 0b000110 },
+		{ 499, 0b010110 },  { 549, 0b000111 },	{ 599, 0b010111 },
+		{ 649, 0b001000 },  { 699, 0b011000 },	{ 749, 0b001001 },
+		{ 799, 0b011001 },  { 849, 0b101001 },	{ 899, 0b111001 },
+		{ 949, 0b001010 },  { 999, 0b011010 },	{ 1049, 0b101010 },
+		{ 1099, 0b111010 }, { 1149, 0b001011 }, { 1199, 0b011011 },
+		{ 1249, 0b101011 }, { 1299, 0b111011 }, { 1349, 0b001100 },
+		{ 1399, 0b011100 }, { 1449, 0b101100 }, { 1500, 0b111100 },
+	};
+	unsigned int i;
+
+	if (mbps < 80 || mbps > 1500)
+		dphy_err(dphy, "DPHY: Datarate %u Mbps out of range\n", mbps);
+
+	for (i = 0; i < ARRAY_SIZE(hsfreqrange_table) - 1; i++) {
+		if (mbps <= hsfreqrange_table[i][0])
+			break;
+	}
+
+	dphy_transaction(dphy, DPHY_HS_RX_CTRL_LANE0_OFFSET,
+			 hsfreqrange_table[i][1] << 1);
+}
+
+static void dphy_init(struct dphy_data *dphy)
+{
+	dw_csi2_host_write(dphy, DPHY_PHY_RSTZ, 0);
+	dw_csi2_host_write(dphy, DPHY_PHY_SHUTDOWNZ, 0);
+	set_tstclk(dphy, 1);
+	set_testen(dphy, 0);
+	set_tstclr(dphy, 1);
+	usleep_range(15, 20);
+	set_tstclr(dphy, 0);
+	usleep_range(15, 20);
+
+	dphy_set_hsfreqrange(dphy, dphy->dphy_rate);
+
+	usleep_range(5, 10);
+	dw_csi2_host_write(dphy, DPHY_PHY_SHUTDOWNZ, 1);
+	usleep_range(5, 10);
+	dw_csi2_host_write(dphy, DPHY_PHY_RSTZ, 1);
+}
+
+void dphy_start(struct dphy_data *dphy)
+{
+	dphy_dbg(dphy, "%s: Link rate %u Mbps, %u data lanes\n", __func__,
+		 dphy->dphy_rate, dphy->active_lanes);
+
+	dw_csi2_host_write(dphy, DPHY_N_LANES, (dphy->active_lanes - 1));
+	dphy_init(dphy);
+	dw_csi2_host_write(dphy, DPHY_RESETN, 0xffffffff);
+	usleep_range(10, 50);
+}
+
+void dphy_stop(struct dphy_data *dphy)
+{
+	dphy_dbg(dphy, "%s\n", __func__);
+
+	/* Set only one lane (lane 0) as active (ON) */
+	dw_csi2_host_write(dphy, DPHY_N_LANES, 0);
+	dw_csi2_host_write(dphy, DPHY_RESETN, 0);
+}
+
+void dphy_probe(struct dphy_data *dphy)
+{
+	u32 host_ver;
+	u8 host_ver_major, host_ver_minor;
+
+	host_ver = dw_csi2_host_read(dphy, DPHY_VERSION);
+	host_ver_major = (u8)((host_ver >> 24) - '0');
+	host_ver_minor = (u8)((host_ver >> 16) - '0');
+	host_ver_minor = host_ver_minor * 10;
+	host_ver_minor += (u8)((host_ver >> 8) - '0');
+
+	dphy_dbg(dphy, "DW dphy Host HW v%u.%u\n", host_ver_major, host_ver_minor);
+}
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/dphy.h b/drivers/media/platform/raspberrypi/rp1-cfe/dphy.h
new file mode 100644
index 000000000000..84fa370957cc
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/dphy.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2021-2024 Raspberry Pi Ltd.
+ * Copyright (c) 2023-2024 Ideas on Board Oy
+ */
+
+#ifndef _RP1_DPHY_
+#define _RP1_DPHY_
+
+#include <linux/io.h>
+#include <linux/types.h>
+
+struct dphy_data {
+	struct device *dev;
+
+	void __iomem *base;
+
+	u32 dphy_rate;
+	u32 max_lanes;
+	u32 active_lanes;
+};
+
+void dphy_probe(struct dphy_data *dphy);
+void dphy_start(struct dphy_data *dphy);
+void dphy_stop(struct dphy_data *dphy);
+
+#endif
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/pisp-fe.c b/drivers/media/platform/raspberrypi/rp1-cfe/pisp-fe.c
new file mode 100644
index 000000000000..f25280258188
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/pisp-fe.c
@@ -0,0 +1,581 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PiSP Front End Driver
+ *
+ * Copyright (c) 2021-2024 Raspberry Pi Ltd.
+ */
+
+#include <linux/bitops.h>
+#include <linux/delay.h>
+#include <linux/moduleparam.h>
+#include <linux/pm_runtime.h>
+#include <linux/seq_file.h>
+
+#include <media/videobuf2-dma-contig.h>
+
+#include "cfe.h"
+#include "pisp-fe.h"
+
+#include "cfe-trace.h"
+
+#define FE_VERSION		0x000
+#define FE_CONTROL		0x004
+#define FE_STATUS		0x008
+#define FE_FRAME_STATUS		0x00c
+#define FE_ERROR_STATUS		0x010
+#define FE_OUTPUT_STATUS	0x014
+#define FE_INT_EN		0x018
+#define FE_INT_STATUS		0x01c
+
+/* CONTROL */
+#define FE_CONTROL_QUEUE	BIT(0)
+#define FE_CONTROL_ABORT	BIT(1)
+#define FE_CONTROL_RESET	BIT(2)
+#define FE_CONTROL_LATCH_REGS	BIT(3)
+
+/* INT_EN / INT_STATUS */
+#define FE_INT_EOF		BIT(0)
+#define FE_INT_SOF		BIT(1)
+#define FE_INT_LINES0		BIT(8)
+#define FE_INT_LINES1		BIT(9)
+#define FE_INT_STATS		BIT(16)
+#define FE_INT_QREADY		BIT(24)
+
+/* STATUS */
+#define FE_STATUS_QUEUED	BIT(0)
+#define FE_STATUS_WAITING	BIT(1)
+#define FE_STATUS_ACTIVE	BIT(2)
+
+#define PISP_FE_CONFIG_BASE_OFFSET	0x0040
+
+#define PISP_FE_ENABLE_STATS_CLUSTER \
+	(PISP_FE_ENABLE_STATS_CROP | PISP_FE_ENABLE_DECIMATE    | \
+	 PISP_FE_ENABLE_BLC        | PISP_FE_ENABLE_CDAF_STATS  | \
+	 PISP_FE_ENABLE_AWB_STATS  | PISP_FE_ENABLE_RGBY        | \
+	 PISP_FE_ENABLE_LSC        | PISP_FE_ENABLE_AGC_STATS)
+
+#define PISP_FE_ENABLE_OUTPUT_CLUSTER(i)				\
+	((PISP_FE_ENABLE_CROP0     | PISP_FE_ENABLE_DOWNSCALE0 |	\
+	  PISP_FE_ENABLE_COMPRESS0 | PISP_FE_ENABLE_OUTPUT0) << (4 * (i)))
+
+struct pisp_fe_config_param {
+	u32 dirty_flags;
+	u32 dirty_flags_extra;
+	size_t offset;
+	size_t size;
+};
+
+static const struct pisp_fe_config_param pisp_fe_config_map[] = {
+	/* *_dirty_flag_extra types */
+	{ 0, PISP_FE_DIRTY_GLOBAL,     offsetof(struct pisp_fe_config, global),
+					sizeof(struct pisp_fe_global_config)         },
+	{ 0, PISP_FE_DIRTY_FLOATING,   offsetof(struct pisp_fe_config, floating_stats),
+					sizeof(struct pisp_fe_floating_stats_config) },
+	{ 0, PISP_FE_DIRTY_OUTPUT_AXI, offsetof(struct pisp_fe_config, output_axi),
+					sizeof(struct pisp_fe_output_axi_config)     },
+	/* *_dirty_flag types */
+	{ PISP_FE_ENABLE_INPUT,      0, offsetof(struct pisp_fe_config, input),
+					sizeof(struct pisp_fe_input_config)          },
+	{ PISP_FE_ENABLE_DECOMPRESS, 0, offsetof(struct pisp_fe_config, decompress),
+					sizeof(struct pisp_decompress_config)        },
+	{ PISP_FE_ENABLE_DECOMPAND,  0, offsetof(struct pisp_fe_config, decompand),
+					sizeof(struct pisp_fe_decompand_config)      },
+	{ PISP_FE_ENABLE_BLA,        0, offsetof(struct pisp_fe_config, bla),
+					sizeof(struct pisp_bla_config)               },
+	{ PISP_FE_ENABLE_DPC,        0, offsetof(struct pisp_fe_config, dpc),
+					sizeof(struct pisp_fe_dpc_config)            },
+	{ PISP_FE_ENABLE_STATS_CROP, 0, offsetof(struct pisp_fe_config, stats_crop),
+					sizeof(struct pisp_fe_crop_config)           },
+	{ PISP_FE_ENABLE_BLC,	     0, offsetof(struct pisp_fe_config, blc),
+					sizeof(struct pisp_bla_config)               },
+	{ PISP_FE_ENABLE_CDAF_STATS, 0, offsetof(struct pisp_fe_config, cdaf_stats),
+					sizeof(struct pisp_fe_cdaf_stats_config)     },
+	{ PISP_FE_ENABLE_AWB_STATS,  0, offsetof(struct pisp_fe_config, awb_stats),
+					sizeof(struct pisp_fe_awb_stats_config)      },
+	{ PISP_FE_ENABLE_RGBY,       0, offsetof(struct pisp_fe_config, rgby),
+					sizeof(struct pisp_fe_rgby_config)           },
+	{ PISP_FE_ENABLE_LSC,        0, offsetof(struct pisp_fe_config, lsc),
+					sizeof(struct pisp_fe_lsc_config)            },
+	{ PISP_FE_ENABLE_AGC_STATS,  0, offsetof(struct pisp_fe_config, agc_stats),
+					sizeof(struct pisp_agc_statistics)           },
+	{ PISP_FE_ENABLE_CROP0,      0, offsetof(struct pisp_fe_config, ch[0].crop),
+					sizeof(struct pisp_fe_crop_config)           },
+	{ PISP_FE_ENABLE_DOWNSCALE0, 0, offsetof(struct pisp_fe_config, ch[0].downscale),
+					sizeof(struct pisp_fe_downscale_config)      },
+	{ PISP_FE_ENABLE_COMPRESS0,  0, offsetof(struct pisp_fe_config, ch[0].compress),
+					sizeof(struct pisp_compress_config)          },
+	{ PISP_FE_ENABLE_OUTPUT0,    0, offsetof(struct pisp_fe_config, ch[0].output),
+					sizeof(struct pisp_fe_output_config)         },
+	{ PISP_FE_ENABLE_CROP1,      0, offsetof(struct pisp_fe_config, ch[1].crop),
+					sizeof(struct pisp_fe_crop_config)           },
+	{ PISP_FE_ENABLE_DOWNSCALE1, 0, offsetof(struct pisp_fe_config, ch[1].downscale),
+					sizeof(struct pisp_fe_downscale_config)      },
+	{ PISP_FE_ENABLE_COMPRESS1,  0, offsetof(struct pisp_fe_config, ch[1].compress),
+					sizeof(struct pisp_compress_config)          },
+	{ PISP_FE_ENABLE_OUTPUT1,    0, offsetof(struct pisp_fe_config, ch[1].output),
+					sizeof(struct pisp_fe_output_config)         },
+};
+
+#define pisp_fe_dbg(fe, fmt, arg...) dev_dbg(fe->v4l2_dev->dev, fmt, ##arg)
+#define pisp_fe_info(fe, fmt, arg...) dev_info(fe->v4l2_dev->dev, fmt, ##arg)
+#define pisp_fe_err(fe, fmt, arg...) dev_err(fe->v4l2_dev->dev, fmt, ##arg)
+
+static inline u32 pisp_fe_reg_read(struct pisp_fe_device *fe, u32 offset)
+{
+	return readl(fe->base + offset);
+}
+
+static inline void pisp_fe_reg_write(struct pisp_fe_device *fe, u32 offset,
+				     u32 val)
+{
+	writel(val, fe->base + offset);
+}
+
+static inline void pisp_fe_reg_write_relaxed(struct pisp_fe_device *fe,
+					     u32 offset, u32 val)
+{
+	writel_relaxed(val, fe->base + offset);
+}
+
+static int pisp_fe_regs_show(struct seq_file *s, void *data)
+{
+	struct pisp_fe_device *fe = s->private;
+	int ret;
+
+	ret = pm_runtime_resume_and_get(fe->v4l2_dev->dev);
+	if (ret)
+		return ret;
+
+	pisp_fe_reg_write(fe, FE_CONTROL, FE_CONTROL_LATCH_REGS);
+
+#define DUMP(reg) seq_printf(s, #reg " \t0x%08x\n", pisp_fe_reg_read(fe, reg))
+	DUMP(FE_VERSION);
+	DUMP(FE_CONTROL);
+	DUMP(FE_STATUS);
+	DUMP(FE_FRAME_STATUS);
+	DUMP(FE_ERROR_STATUS);
+	DUMP(FE_OUTPUT_STATUS);
+	DUMP(FE_INT_EN);
+	DUMP(FE_INT_STATUS);
+#undef DUMP
+
+	pm_runtime_put(fe->v4l2_dev->dev);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(pisp_fe_regs);
+
+static void pisp_fe_config_write(struct pisp_fe_device *fe,
+				 struct pisp_fe_config *config,
+				 unsigned int start_offset, unsigned int size)
+{
+	const unsigned int max_offset =
+		offsetof(struct pisp_fe_config, ch[PISP_FE_NUM_OUTPUTS]);
+	unsigned int end_offset;
+	u32 *cfg = (u32 *)config;
+
+	start_offset = min(start_offset, max_offset);
+	end_offset = min(start_offset + size, max_offset);
+
+	cfg += start_offset >> 2;
+	for (unsigned int i = start_offset; i < end_offset; i += 4, cfg++)
+		pisp_fe_reg_write_relaxed(fe, PISP_FE_CONFIG_BASE_OFFSET + i,
+					  *cfg);
+}
+
+void pisp_fe_isr(struct pisp_fe_device *fe, bool *sof, bool *eof)
+{
+	u32 status, int_status, out_status, frame_status, error_status;
+
+	pisp_fe_reg_write(fe, FE_CONTROL, FE_CONTROL_LATCH_REGS);
+	status = pisp_fe_reg_read(fe, FE_STATUS);
+	out_status = pisp_fe_reg_read(fe, FE_OUTPUT_STATUS);
+	frame_status = pisp_fe_reg_read(fe, FE_FRAME_STATUS);
+	error_status = pisp_fe_reg_read(fe, FE_ERROR_STATUS);
+
+	int_status = pisp_fe_reg_read(fe, FE_INT_STATUS);
+	pisp_fe_reg_write(fe, FE_INT_STATUS, int_status);
+
+	trace_fe_irq(status, out_status, frame_status, error_status,
+		     int_status);
+
+	/* We do not report interrupts for the input/stream pad. */
+	for (unsigned int i = 0; i < FE_NUM_PADS - 1; i++) {
+		sof[i] = !!(int_status & FE_INT_SOF);
+		eof[i] = !!(int_status & FE_INT_EOF);
+	}
+}
+
+static bool pisp_fe_validate_output(struct pisp_fe_config const *cfg,
+				    unsigned int c, struct v4l2_format const *f)
+{
+	unsigned int wbytes;
+
+	wbytes = cfg->ch[c].output.format.width;
+	if (cfg->ch[c].output.format.format & PISP_IMAGE_FORMAT_BPS_MASK)
+		wbytes *= 2;
+
+	/* Check output image dimensions are nonzero and not too big */
+	if (cfg->ch[c].output.format.width < 2 ||
+	    cfg->ch[c].output.format.height < 2 ||
+	    cfg->ch[c].output.format.height > f->fmt.pix.height ||
+	    cfg->ch[c].output.format.stride > f->fmt.pix.bytesperline ||
+	    wbytes > f->fmt.pix.bytesperline)
+		return false;
+
+	/* Check for zero-sized crops, which could cause lockup */
+	if ((cfg->global.enables & PISP_FE_ENABLE_CROP(c)) &&
+	    ((cfg->ch[c].crop.offset_x >= (cfg->input.format.width & ~1) ||
+	      cfg->ch[c].crop.offset_y >= cfg->input.format.height ||
+	      cfg->ch[c].crop.width < 2 || cfg->ch[c].crop.height < 2)))
+		return false;
+
+	if ((cfg->global.enables & PISP_FE_ENABLE_DOWNSCALE(c)) &&
+	    (cfg->ch[c].downscale.output_width < 2 ||
+	     cfg->ch[c].downscale.output_height < 2))
+		return false;
+
+	return true;
+}
+
+static bool pisp_fe_validate_stats(struct pisp_fe_config const *cfg)
+{
+	/* Check for zero-sized crop, which could cause lockup */
+	return (!(cfg->global.enables & PISP_FE_ENABLE_STATS_CROP) ||
+		(cfg->stats_crop.offset_x < (cfg->input.format.width & ~1) &&
+		 cfg->stats_crop.offset_y < cfg->input.format.height &&
+		 cfg->stats_crop.width >= 2 && cfg->stats_crop.height >= 2));
+}
+
+int pisp_fe_validate_config(struct pisp_fe_device *fe,
+			    struct pisp_fe_config *cfg,
+			    struct v4l2_format const *f0,
+			    struct v4l2_format const *f1)
+{
+	/*
+	 * Check the input is enabled, streaming and has nonzero size;
+	 * to avoid cases where the hardware might lock up or try to
+	 * read inputs from memory (which this driver doesn't support).
+	 */
+	if (!(cfg->global.enables & PISP_FE_ENABLE_INPUT) ||
+	    cfg->input.streaming != 1 || cfg->input.format.width < 2 ||
+	    cfg->input.format.height < 2) {
+		pisp_fe_err(fe, "%s: Input config not valid", __func__);
+		return -EINVAL;
+	}
+
+	for (unsigned int i = 0; i < PISP_FE_NUM_OUTPUTS; i++) {
+		if (!(cfg->global.enables & PISP_FE_ENABLE_OUTPUT(i))) {
+			if (cfg->global.enables &
+					PISP_FE_ENABLE_OUTPUT_CLUSTER(i)) {
+				pisp_fe_err(fe, "%s: Output %u not valid",
+					    __func__, i);
+				return -EINVAL;
+			}
+			continue;
+		}
+
+		if (!pisp_fe_validate_output(cfg, i, i ? f1 : f0))
+			return -EINVAL;
+	}
+
+	if ((cfg->global.enables & PISP_FE_ENABLE_STATS_CLUSTER) &&
+	    !pisp_fe_validate_stats(cfg)) {
+		pisp_fe_err(fe, "%s: Stats config not valid", __func__);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+void pisp_fe_submit_job(struct pisp_fe_device *fe, struct vb2_buffer **vb2_bufs,
+			struct pisp_fe_config *cfg)
+{
+	u64 addr;
+	u32 status;
+
+	/*
+	 * Check output buffers exist and outputs are correctly configured.
+	 * If valid, set the buffer's DMA address; otherwise disable.
+	 */
+	for (unsigned int i = 0; i < PISP_FE_NUM_OUTPUTS; i++) {
+		struct vb2_buffer *buf = vb2_bufs[FE_OUTPUT0_PAD + i];
+
+		if (!(cfg->global.enables & PISP_FE_ENABLE_OUTPUT(i)))
+			continue;
+
+		addr = vb2_dma_contig_plane_dma_addr(buf, 0);
+		cfg->output_buffer[i].addr_lo = addr & 0xffffffff;
+		cfg->output_buffer[i].addr_hi = addr >> 32;
+	}
+
+	if (vb2_bufs[FE_STATS_PAD]) {
+		addr = vb2_dma_contig_plane_dma_addr(vb2_bufs[FE_STATS_PAD], 0);
+		cfg->stats_buffer.addr_lo = addr & 0xffffffff;
+		cfg->stats_buffer.addr_hi = addr >> 32;
+	}
+
+	/* Set up ILINES interrupts 3/4 of the way down each output */
+	cfg->ch[0].output.ilines =
+		max(0x80u, (3u * cfg->ch[0].output.format.height) >> 2);
+	cfg->ch[1].output.ilines =
+		max(0x80u, (3u * cfg->ch[1].output.format.height) >> 2);
+
+	/*
+	 * The hardware must have consumed the previous config by now.
+	 * This read of status also serves as a memory barrier before the
+	 * sequence of relaxed writes which follow.
+	 */
+	status = pisp_fe_reg_read(fe, FE_STATUS);
+	if (WARN_ON(status & FE_STATUS_QUEUED))
+		return;
+
+	/*
+	 * Unconditionally write buffers, global and input parameters.
+	 * Write cropping and output parameters whenever they are enabled.
+	 * Selectively write other parameters that have been marked as
+	 * changed through the dirty flags.
+	 */
+	pisp_fe_config_write(fe, cfg, 0,
+			     offsetof(struct pisp_fe_config, decompress));
+	cfg->dirty_flags_extra &= ~PISP_FE_DIRTY_GLOBAL;
+	cfg->dirty_flags &= ~PISP_FE_ENABLE_INPUT;
+	cfg->dirty_flags |= (cfg->global.enables &
+			     (PISP_FE_ENABLE_STATS_CROP        |
+			      PISP_FE_ENABLE_OUTPUT_CLUSTER(0) |
+			      PISP_FE_ENABLE_OUTPUT_CLUSTER(1)));
+	for (unsigned int i = 0; i < ARRAY_SIZE(pisp_fe_config_map); i++) {
+		const struct pisp_fe_config_param *p = &pisp_fe_config_map[i];
+
+		if (cfg->dirty_flags & p->dirty_flags ||
+		    cfg->dirty_flags_extra & p->dirty_flags_extra)
+			pisp_fe_config_write(fe, cfg, p->offset, p->size);
+	}
+
+	/* This final non-relaxed write serves as a memory barrier */
+	pisp_fe_reg_write(fe, FE_CONTROL, FE_CONTROL_QUEUE);
+}
+
+void pisp_fe_start(struct pisp_fe_device *fe)
+{
+	pisp_fe_reg_write(fe, FE_CONTROL, FE_CONTROL_RESET);
+	pisp_fe_reg_write(fe, FE_INT_STATUS, ~0);
+	pisp_fe_reg_write(fe, FE_INT_EN, FE_INT_EOF | FE_INT_SOF | FE_INT_LINES0 | FE_INT_LINES1);
+	fe->inframe_count = 0;
+}
+
+void pisp_fe_stop(struct pisp_fe_device *fe)
+{
+	pisp_fe_reg_write(fe, FE_INT_EN, 0);
+	pisp_fe_reg_write(fe, FE_CONTROL, FE_CONTROL_ABORT);
+	usleep_range(1000, 2000);
+	WARN_ON(pisp_fe_reg_read(fe, FE_STATUS));
+	pisp_fe_reg_write(fe, FE_INT_STATUS, ~0);
+}
+
+static int pisp_fe_init_state(struct v4l2_subdev *sd,
+			      struct v4l2_subdev_state *state)
+{
+	struct v4l2_mbus_framefmt *fmt;
+
+	fmt = v4l2_subdev_state_get_format(state, FE_STREAM_PAD);
+	*fmt = cfe_default_format;
+	fmt->code = MEDIA_BUS_FMT_SRGGB16_1X16;
+
+	fmt = v4l2_subdev_state_get_format(state, FE_CONFIG_PAD);
+	fmt->code = MEDIA_BUS_FMT_FIXED;
+	fmt->width = sizeof(struct pisp_fe_config);
+	fmt->height = 1;
+
+	fmt = v4l2_subdev_state_get_format(state, FE_OUTPUT0_PAD);
+	*fmt = cfe_default_format;
+	fmt->code = MEDIA_BUS_FMT_SRGGB16_1X16;
+
+	fmt = v4l2_subdev_state_get_format(state, FE_OUTPUT1_PAD);
+	*fmt = cfe_default_format;
+	fmt->code = MEDIA_BUS_FMT_SRGGB16_1X16;
+
+	fmt = v4l2_subdev_state_get_format(state, FE_STATS_PAD);
+	fmt->code = MEDIA_BUS_FMT_FIXED;
+	fmt->width = sizeof(struct pisp_statistics);
+	fmt->height = 1;
+
+	return 0;
+}
+
+static int pisp_fe_pad_set_fmt(struct v4l2_subdev *sd,
+			       struct v4l2_subdev_state *state,
+			       struct v4l2_subdev_format *format)
+{
+	struct v4l2_mbus_framefmt *fmt;
+	const struct cfe_fmt *cfe_fmt;
+
+	/* TODO: format propagation to source pads */
+	/* TODO: format validation */
+
+	switch (format->pad) {
+	case FE_STREAM_PAD:
+		cfe_fmt = find_format_by_code(format->format.code);
+		if (!cfe_fmt || !(cfe_fmt->flags & CFE_FORMAT_FLAG_FE_OUT))
+			cfe_fmt = find_format_by_code(MEDIA_BUS_FMT_SRGGB16_1X16);
+
+		format->format.code = cfe_fmt->code;
+		format->format.field = V4L2_FIELD_NONE;
+
+		fmt = v4l2_subdev_state_get_format(state, FE_STREAM_PAD);
+		*fmt = format->format;
+
+		fmt = v4l2_subdev_state_get_format(state, FE_OUTPUT0_PAD);
+		*fmt = format->format;
+
+		fmt = v4l2_subdev_state_get_format(state, FE_OUTPUT1_PAD);
+		*fmt = format->format;
+
+		return 0;
+
+	case FE_OUTPUT0_PAD:
+	case FE_OUTPUT1_PAD: {
+		/*
+		 * TODO: we should allow scaling and cropping by allowing the
+		 * user to set the size here.
+		 */
+		struct v4l2_mbus_framefmt *sink_fmt, *source_fmt;
+		u32 sink_code;
+		u32 code;
+
+		cfe_fmt = find_format_by_code(format->format.code);
+		if (!cfe_fmt || !(cfe_fmt->flags & CFE_FORMAT_FLAG_FE_OUT))
+			cfe_fmt = find_format_by_code(MEDIA_BUS_FMT_SRGGB16_1X16);
+
+		format->format.code = cfe_fmt->code;
+
+		sink_fmt = v4l2_subdev_state_get_format(state, FE_STREAM_PAD);
+		if (!sink_fmt)
+			return -EINVAL;
+
+		source_fmt = v4l2_subdev_state_get_format(state, format->pad);
+		if (!source_fmt)
+			return -EINVAL;
+
+		sink_code = sink_fmt->code;
+		code = format->format.code;
+
+		/*
+		 * If the source code from the user does not match the code in
+		 * the sink pad, check that the source code matches the
+		 * compressed version of the sink code.
+		 */
+
+		if (code != sink_code &&
+		    code == cfe_find_compressed_code(sink_code))
+			source_fmt->code = code;
+
+		return 0;
+	}
+
+	case FE_CONFIG_PAD:
+	case FE_STATS_PAD:
+	default:
+		return v4l2_subdev_get_fmt(sd, state, format);
+	}
+}
+
+static const struct v4l2_subdev_pad_ops pisp_fe_subdev_pad_ops = {
+	.get_fmt = v4l2_subdev_get_fmt,
+	.set_fmt = pisp_fe_pad_set_fmt,
+	.link_validate = v4l2_subdev_link_validate_default,
+};
+
+static int pisp_fe_link_validate(struct media_link *link)
+{
+	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(link->sink->entity);
+	struct pisp_fe_device *fe = container_of(sd, struct pisp_fe_device, sd);
+
+	pisp_fe_dbg(fe, "%s: link \"%s\":%u -> \"%s\":%u\n", __func__,
+		    link->source->entity->name, link->source->index,
+		    link->sink->entity->name, link->sink->index);
+
+	if (link->sink->index == FE_STREAM_PAD)
+		return v4l2_subdev_link_validate(link);
+
+	if (link->sink->index == FE_CONFIG_PAD)
+		return 0;
+
+	return -EINVAL;
+}
+
+static const struct media_entity_operations pisp_fe_entity_ops = {
+	.link_validate = pisp_fe_link_validate,
+};
+
+static const struct v4l2_subdev_ops pisp_fe_subdev_ops = {
+	.pad = &pisp_fe_subdev_pad_ops,
+};
+
+static const struct v4l2_subdev_internal_ops pisp_fe_internal_ops = {
+	.init_state = pisp_fe_init_state,
+};
+
+int pisp_fe_init(struct pisp_fe_device *fe, struct dentry *debugfs)
+{
+	int ret;
+
+	debugfs_create_file("fe_regs", 0440, debugfs, fe, &pisp_fe_regs_fops);
+
+	fe->hw_revision = pisp_fe_reg_read(fe, FE_VERSION);
+	pisp_fe_info(fe, "PiSP FE HW v%u.%u\n",
+		     (fe->hw_revision >> 24) & 0xff,
+		     (fe->hw_revision >> 20) & 0x0f);
+
+	fe->pad[FE_STREAM_PAD].flags =
+		MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT;
+	fe->pad[FE_CONFIG_PAD].flags = MEDIA_PAD_FL_SINK;
+	fe->pad[FE_OUTPUT0_PAD].flags = MEDIA_PAD_FL_SOURCE;
+	fe->pad[FE_OUTPUT1_PAD].flags = MEDIA_PAD_FL_SOURCE;
+	fe->pad[FE_STATS_PAD].flags = MEDIA_PAD_FL_SOURCE;
+
+	ret = media_entity_pads_init(&fe->sd.entity, ARRAY_SIZE(fe->pad),
+				     fe->pad);
+	if (ret)
+		return ret;
+
+	/* Initialize subdev */
+	v4l2_subdev_init(&fe->sd, &pisp_fe_subdev_ops);
+	fe->sd.internal_ops = &pisp_fe_internal_ops;
+	fe->sd.entity.function = MEDIA_ENT_F_PROC_VIDEO_SCALER;
+	fe->sd.entity.ops = &pisp_fe_entity_ops;
+	fe->sd.entity.name = "pisp-fe";
+	fe->sd.flags = V4L2_SUBDEV_FL_HAS_DEVNODE;
+	fe->sd.owner = THIS_MODULE;
+	snprintf(fe->sd.name, sizeof(fe->sd.name), "pisp-fe");
+
+	ret = v4l2_subdev_init_finalize(&fe->sd);
+	if (ret)
+		goto err_entity_cleanup;
+
+	ret = v4l2_device_register_subdev(fe->v4l2_dev, &fe->sd);
+	if (ret) {
+		pisp_fe_err(fe, "Failed register pisp fe subdev (%d)\n", ret);
+		goto err_subdev_cleanup;
+	}
+
+	/* Must be in IDLE state (STATUS == 0) here. */
+	WARN_ON(pisp_fe_reg_read(fe, FE_STATUS));
+
+	return 0;
+
+err_subdev_cleanup:
+	v4l2_subdev_cleanup(&fe->sd);
+err_entity_cleanup:
+	media_entity_cleanup(&fe->sd.entity);
+
+	return ret;
+}
+
+void pisp_fe_uninit(struct pisp_fe_device *fe)
+{
+	v4l2_device_unregister_subdev(&fe->sd);
+	v4l2_subdev_cleanup(&fe->sd);
+	media_entity_cleanup(&fe->sd.entity);
+}
diff --git a/drivers/media/platform/raspberrypi/rp1-cfe/pisp-fe.h b/drivers/media/platform/raspberrypi/rp1-cfe/pisp-fe.h
new file mode 100644
index 000000000000..54d506e19cf2
--- /dev/null
+++ b/drivers/media/platform/raspberrypi/rp1-cfe/pisp-fe.h
@@ -0,0 +1,53 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * PiSP Front End Driver
+ *
+ * Copyright (c) 2021-2024 Raspberry Pi Ltd.
+ */
+#ifndef _PISP_FE_H_
+#define _PISP_FE_H_
+
+#include <linux/debugfs.h>
+#include <linux/io.h>
+#include <linux/types.h>
+#include <linux/videodev2.h>
+
+#include <media/media-device.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-subdev.h>
+
+#include <linux/media/raspberrypi/pisp_fe_config.h>
+
+enum pisp_fe_pads {
+	FE_STREAM_PAD,
+	FE_CONFIG_PAD,
+	FE_OUTPUT0_PAD,
+	FE_OUTPUT1_PAD,
+	FE_STATS_PAD,
+	FE_NUM_PADS
+};
+
+struct pisp_fe_device {
+	/* Parent V4l2 device */
+	struct v4l2_device *v4l2_dev;
+	void __iomem *base;
+	u32 hw_revision;
+
+	u16 inframe_count;
+	struct media_pad pad[FE_NUM_PADS];
+	struct v4l2_subdev sd;
+};
+
+void pisp_fe_isr(struct pisp_fe_device *fe, bool *sof, bool *eof);
+int pisp_fe_validate_config(struct pisp_fe_device *fe,
+			    struct pisp_fe_config *cfg,
+			    struct v4l2_format const *f0,
+			    struct v4l2_format const *f1);
+void pisp_fe_submit_job(struct pisp_fe_device *fe, struct vb2_buffer **vb2_bufs,
+			struct pisp_fe_config *cfg);
+void pisp_fe_start(struct pisp_fe_device *fe);
+void pisp_fe_stop(struct pisp_fe_device *fe);
+int pisp_fe_init(struct pisp_fe_device *fe, struct dentry *debugfs);
+void pisp_fe_uninit(struct pisp_fe_device *fe);
+
+#endif
diff --git a/include/uapi/linux/media/raspberrypi/pisp_fe_config.h b/include/uapi/linux/media/raspberrypi/pisp_fe_config.h
new file mode 100644
index 000000000000..77237460a3b5
--- /dev/null
+++ b/include/uapi/linux/media/raspberrypi/pisp_fe_config.h
@@ -0,0 +1,273 @@
+/* SPDX-License-Identifier: GPL-2.0-only WITH Linux-syscall-note */
+/*
+ * RP1 PiSP Front End Driver Configuration structures
+ *
+ * Copyright (C) 2021 - Raspberry Pi Ltd.
+ *
+ */
+#ifndef _UAPI_PISP_FE_CONFIG_
+#define _UAPI_PISP_FE_CONFIG_
+
+#include <linux/types.h>
+
+#include "pisp_common.h"
+#include "pisp_fe_statistics.h"
+
+#define PISP_FE_NUM_OUTPUTS 2
+
+enum pisp_fe_enable {
+	PISP_FE_ENABLE_INPUT = 0x000001,
+	PISP_FE_ENABLE_DECOMPRESS = 0x000002,
+	PISP_FE_ENABLE_DECOMPAND = 0x000004,
+	PISP_FE_ENABLE_BLA = 0x000008,
+	PISP_FE_ENABLE_DPC = 0x000010,
+	PISP_FE_ENABLE_STATS_CROP = 0x000020,
+	PISP_FE_ENABLE_DECIMATE = 0x000040,
+	PISP_FE_ENABLE_BLC = 0x000080,
+	PISP_FE_ENABLE_CDAF_STATS = 0x000100,
+	PISP_FE_ENABLE_AWB_STATS = 0x000200,
+	PISP_FE_ENABLE_RGBY = 0x000400,
+	PISP_FE_ENABLE_LSC = 0x000800,
+	PISP_FE_ENABLE_AGC_STATS = 0x001000,
+	PISP_FE_ENABLE_CROP0 = 0x010000,
+	PISP_FE_ENABLE_DOWNSCALE0 = 0x020000,
+	PISP_FE_ENABLE_COMPRESS0 = 0x040000,
+	PISP_FE_ENABLE_OUTPUT0 = 0x080000,
+	PISP_FE_ENABLE_CROP1 = 0x100000,
+	PISP_FE_ENABLE_DOWNSCALE1 = 0x200000,
+	PISP_FE_ENABLE_COMPRESS1 = 0x400000,
+	PISP_FE_ENABLE_OUTPUT1 = 0x800000
+};
+
+#define PISP_FE_ENABLE_CROP(i) (PISP_FE_ENABLE_CROP0 << (4 * (i)))
+#define PISP_FE_ENABLE_DOWNSCALE(i) (PISP_FE_ENABLE_DOWNSCALE0 << (4 * (i)))
+#define PISP_FE_ENABLE_COMPRESS(i) (PISP_FE_ENABLE_COMPRESS0 << (4 * (i)))
+#define PISP_FE_ENABLE_OUTPUT(i) (PISP_FE_ENABLE_OUTPUT0 << (4 * (i)))
+
+/*
+ * We use the enable flags to show when blocks are "dirty", but we need some
+ * extra ones too.
+ */
+enum pisp_fe_dirty {
+	PISP_FE_DIRTY_GLOBAL = 0x0001,
+	PISP_FE_DIRTY_FLOATING = 0x0002,
+	PISP_FE_DIRTY_OUTPUT_AXI = 0x0004
+};
+
+struct pisp_fe_global_config {
+	__u32 enables;
+	__u8 bayer_order;
+	__u8 pad[3];
+} __attribute__((packed));
+
+struct pisp_fe_input_axi_config {
+	/* burst length minus one, in the range 0..15; OR'd with flags */
+	__u8 maxlen_flags;
+	/* { prot[2:0], cache[3:0] } fields */
+	__u8 cache_prot;
+	/* QoS (only 4 LS bits are used) */
+	__u16 qos;
+} __attribute__((packed));
+
+struct pisp_fe_output_axi_config {
+	/* burst length minus one, in the range 0..15; OR'd with flags */
+	__u8 maxlen_flags;
+	/* { prot[2:0], cache[3:0] } fields */
+	__u8 cache_prot;
+	/* QoS (4 bitfields of 4 bits each for different panic levels) */
+	__u16 qos;
+	/*  For Panic mode: Output FIFO panic threshold */
+	__u16 thresh;
+	/*  For Panic mode: Output FIFO statistics throttle threshold */
+	__u16 throttle;
+} __attribute__((packed));
+
+struct pisp_fe_input_config {
+	__u8 streaming;
+	__u8 pad[3];
+	struct pisp_image_format_config format;
+	struct pisp_fe_input_axi_config axi;
+	/* Extra cycles delay before issuing each burst request */
+	__u8 holdoff;
+	__u8 pad2[3];
+} __attribute__((packed));
+
+struct pisp_fe_output_config {
+	struct pisp_image_format_config format;
+	__u16 ilines;
+	__u8 pad[2];
+} __attribute__((packed));
+
+struct pisp_fe_input_buffer_config {
+	__u32 addr_lo;
+	__u32 addr_hi;
+	__u16 frame_id;
+	__u16 pad;
+} __attribute__((packed));
+
+#define PISP_FE_DECOMPAND_LUT_SIZE 65
+
+struct pisp_fe_decompand_config {
+	__u16 lut[PISP_FE_DECOMPAND_LUT_SIZE];
+	__u16 pad;
+} __attribute__((packed));
+
+struct pisp_fe_dpc_config {
+	__u8 coeff_level;
+	__u8 coeff_range;
+	__u8 coeff_range2;
+#define PISP_FE_DPC_FLAG_FOLDBACK 1
+#define PISP_FE_DPC_FLAG_VFLAG 2
+	__u8 flags;
+} __attribute__((packed));
+
+#define PISP_FE_LSC_LUT_SIZE 16
+
+struct pisp_fe_lsc_config {
+	__u8 shift;
+	__u8 pad0;
+	__u16 scale;
+	__u16 centre_x;
+	__u16 centre_y;
+	__u16 lut[PISP_FE_LSC_LUT_SIZE];
+} __attribute__((packed));
+
+struct pisp_fe_rgby_config {
+	__u16 gain_r;
+	__u16 gain_g;
+	__u16 gain_b;
+	__u8 maxflag;
+	__u8 pad;
+} __attribute__((packed));
+
+struct pisp_fe_agc_stats_config {
+	__u16 offset_x;
+	__u16 offset_y;
+	__u16 size_x;
+	__u16 size_y;
+	/* each weight only 4 bits */
+	__u8 weights[PISP_AGC_STATS_NUM_ZONES / 2];
+	__u16 row_offset_x;
+	__u16 row_offset_y;
+	__u16 row_size_x;
+	__u16 row_size_y;
+	__u8 row_shift;
+	__u8 float_shift;
+	__u8 pad1[2];
+} __attribute__((packed));
+
+struct pisp_fe_awb_stats_config {
+	__u16 offset_x;
+	__u16 offset_y;
+	__u16 size_x;
+	__u16 size_y;
+	__u8 shift;
+	__u8 pad[3];
+	__u16 r_lo;
+	__u16 r_hi;
+	__u16 g_lo;
+	__u16 g_hi;
+	__u16 b_lo;
+	__u16 b_hi;
+} __attribute__((packed));
+
+struct pisp_fe_floating_stats_region {
+	__u16 offset_x;
+	__u16 offset_y;
+	__u16 size_x;
+	__u16 size_y;
+} __attribute__((packed));
+
+struct pisp_fe_floating_stats_config {
+	struct pisp_fe_floating_stats_region
+		regions[PISP_FLOATING_STATS_NUM_ZONES];
+} __attribute__((packed));
+
+#define PISP_FE_CDAF_NUM_WEIGHTS 8
+
+struct pisp_fe_cdaf_stats_config {
+	__u16 noise_constant;
+	__u16 noise_slope;
+	__u16 offset_x;
+	__u16 offset_y;
+	__u16 size_x;
+	__u16 size_y;
+	__u16 skip_x;
+	__u16 skip_y;
+	__u32 mode;
+} __attribute__((packed));
+
+struct pisp_fe_stats_buffer_config {
+	__u32 addr_lo;
+	__u32 addr_hi;
+} __attribute__((packed));
+
+struct pisp_fe_crop_config {
+	__u16 offset_x;
+	__u16 offset_y;
+	__u16 width;
+	__u16 height;
+} __attribute__((packed));
+
+enum pisp_fe_downscale_flags {
+	/* downscale the four Bayer components independently... */
+	DOWNSCALE_BAYER = 1,
+	/* ...without trying to preserve their spatial relationship */
+	DOWNSCALE_BIN = 2,
+};
+
+struct pisp_fe_downscale_config {
+	__u8 xin;
+	__u8 xout;
+	__u8 yin;
+	__u8 yout;
+	__u8 flags; /* enum pisp_fe_downscale_flags */
+	__u8 pad[3];
+	__u16 output_width;
+	__u16 output_height;
+} __attribute__((packed));
+
+struct pisp_fe_output_buffer_config {
+	__u32 addr_lo;
+	__u32 addr_hi;
+} __attribute__((packed));
+
+/* Each of the two output channels/branches: */
+struct pisp_fe_output_branch_config {
+	struct pisp_fe_crop_config crop;
+	struct pisp_fe_downscale_config downscale;
+	struct pisp_compress_config compress;
+	struct pisp_fe_output_config output;
+	__u32 pad;
+} __attribute__((packed));
+
+/* And finally one to rule them all: */
+struct pisp_fe_config {
+	/* I/O configuration: */
+	struct pisp_fe_stats_buffer_config stats_buffer;
+	struct pisp_fe_output_buffer_config output_buffer[PISP_FE_NUM_OUTPUTS];
+	struct pisp_fe_input_buffer_config input_buffer;
+	/* processing configuration: */
+	struct pisp_fe_global_config global;
+	struct pisp_fe_input_config input;
+	struct pisp_decompress_config decompress;
+	struct pisp_fe_decompand_config decompand;
+	struct pisp_bla_config bla;
+	struct pisp_fe_dpc_config dpc;
+	struct pisp_fe_crop_config stats_crop;
+	__u32 spare1; /* placeholder for future decimate configuration */
+	struct pisp_bla_config blc;
+	struct pisp_fe_rgby_config rgby;
+	struct pisp_fe_lsc_config lsc;
+	struct pisp_fe_agc_stats_config agc_stats;
+	struct pisp_fe_awb_stats_config awb_stats;
+	struct pisp_fe_cdaf_stats_config cdaf_stats;
+	struct pisp_fe_floating_stats_config floating_stats;
+	struct pisp_fe_output_axi_config output_axi;
+	struct pisp_fe_output_branch_config ch[PISP_FE_NUM_OUTPUTS];
+	/* non-register fields: */
+	__u32 dirty_flags; /* these use pisp_fe_enable */
+	__u32 dirty_flags_extra; /* these use pisp_fe_dirty */
+} __attribute__((packed));
+
+#endif /* _UAPI_PISP_FE_CONFIG_ */
diff --git a/include/uapi/linux/media/raspberrypi/pisp_fe_statistics.h b/include/uapi/linux/media/raspberrypi/pisp_fe_statistics.h
new file mode 100644
index 000000000000..a7d42985aee8
--- /dev/null
+++ b/include/uapi/linux/media/raspberrypi/pisp_fe_statistics.h
@@ -0,0 +1,64 @@
+/* SPDX-License-Identifier: GPL-2.0-only WITH Linux-syscall-note */
+/*
+ * RP1 PiSP Front End statistics definitions
+ *
+ * Copyright (C) 2021 - Raspberry Pi Ltd.
+ *
+ */
+#ifndef _UAPI_PISP_FE_STATISTICS_H_
+#define _UAPI_PISP_FE_STATISTICS_H_
+
+#include <linux/types.h>
+
+#define PISP_FLOATING_STATS_NUM_ZONES 4
+#define PISP_AGC_STATS_NUM_BINS 1024
+#define PISP_AGC_STATS_SIZE 16
+#define PISP_AGC_STATS_NUM_ZONES (PISP_AGC_STATS_SIZE * PISP_AGC_STATS_SIZE)
+#define PISP_AGC_STATS_NUM_ROW_SUMS 512
+
+struct pisp_agc_statistics_zone {
+	__u64 Y_sum;
+	__u32 counted;
+	__u32 pad;
+} __attribute__((packed));
+
+struct pisp_agc_statistics {
+	__u32 row_sums[PISP_AGC_STATS_NUM_ROW_SUMS];
+	/*
+	 * 32-bits per bin means an image (just less than) 16384x16384 pixels
+	 * in size can weight every pixel from 0 to 15.
+	 */
+	__u32 histogram[PISP_AGC_STATS_NUM_BINS];
+	struct pisp_agc_statistics_zone floating[PISP_FLOATING_STATS_NUM_ZONES];
+} __attribute__((packed));
+
+#define PISP_AWB_STATS_SIZE 32
+#define PISP_AWB_STATS_NUM_ZONES (PISP_AWB_STATS_SIZE * PISP_AWB_STATS_SIZE)
+
+struct pisp_awb_statistics_zone {
+	__u32 R_sum;
+	__u32 G_sum;
+	__u32 B_sum;
+	__u32 counted;
+} __attribute__((packed));
+
+struct pisp_awb_statistics {
+	struct pisp_awb_statistics_zone zones[PISP_AWB_STATS_NUM_ZONES];
+	struct pisp_awb_statistics_zone floating[PISP_FLOATING_STATS_NUM_ZONES];
+} __attribute__((packed));
+
+#define PISP_CDAF_STATS_SIZE 8
+#define PISP_CDAF_STATS_NUM_FOMS (PISP_CDAF_STATS_SIZE * PISP_CDAF_STATS_SIZE)
+
+struct pisp_cdaf_statistics {
+	__u64 foms[PISP_CDAF_STATS_NUM_FOMS];
+	__u64 floating[PISP_FLOATING_STATS_NUM_ZONES];
+} __attribute__((packed));
+
+struct pisp_statistics {
+	struct pisp_awb_statistics awb;
+	struct pisp_agc_statistics agc;
+	struct pisp_cdaf_statistics cdaf;
+} __attribute__((packed));
+
+#endif /* _UAPI_PISP_FE_STATISTICS_H_ */

-- 
2.43.0


