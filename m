Return-Path: <devicetree+bounces-6944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 250037BDD87
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47F1D1C20949
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ADCB18C20;
	Mon,  9 Oct 2023 13:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HkGnDkEx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696F518B11
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:10:25 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84172109;
	Mon,  9 Oct 2023 06:10:20 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 399DA158043973;
	Mon, 9 Oct 2023 08:10:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696857001;
	bh=gt+dnbi3J4RNeYKejbpT6PIw+CJYk4iSkxil/3NZzT0=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=HkGnDkExaAdIQTN8Qx/yj+4zbbrgqjY6JT5DXyVC/6djidLCT+G4Mn5i5hGrPqSaf
	 CB+3c4bLEfzO4Ti2hUSyXGJuFMejsaxUICuxbSy42qqdrgHGJHfzhLX/mM+aJaCFXZ
	 MTsQ/c0UMSQcsAtIhUP7eYyMUWZbTiVaDcNYH30Y=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 399DA11m071609
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 9 Oct 2023 08:10:01 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 9
 Oct 2023 08:10:01 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 9 Oct 2023 08:10:01 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 399DA0kR007610;
	Mon, 9 Oct 2023 08:10:01 -0500
From: Jai Luthra <j-luthra@ti.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tomi Valkeinen
	<tomi.valkeinen@ideasonboard.com>
CC: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
        Mauro Carvalho Chehab
	<mchehab+samsung@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        <niklas.soderlund+renesas@ragnatech.se>,
        Benoit Parrot <bparrot@ti.com>, Vaishnav Achath <vaishnav.a@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>, <nm@ti.com>, <devarsht@ti.com>,
        <j-luthra@ti.com>, <a-bhatia1@ti.com>,
        Martyn
 Welch <martyn.welch@collabora.com>,
        Julien Massot
	<julien.massot@collabora.com>
Subject: [PATCH v10 13/13] media: ti: Add CSI2RX support for J721E
Date: Mon, 9 Oct 2023 18:39:39 +0530
Message-ID: <20231009-upstream_csi-v10-13-330aaed24c5d@ti.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009-upstream_csi-v10-0-330aaed24c5d@ti.com>
References: <20231009-upstream_csi-v10-0-330aaed24c5d@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=37113; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=NHNjD6zSAyRPK+ay1Q7xnxoMSIxJggpY4NiPdJbmT7k=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlI/sw2mn3y3STRPxrX/Zt7Siqiw6OeHQPo/TeZ
 N4cwV/tSf6JAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZSP7MAAKCRBD3pH5JJpx
 RShmD/9lDr+93pg28Ls/gJy8FKQxvXc0ybN3ogKngmpvYyjmv49HjrBhufJORVsQtCS3sAcQTUC
 l8CvIJLFFIWByChIVPVNOqNdhECTLIYcfdvmJSJnFA6j+6A4Uoy/wK6DMK+WM3M2qCr2ZPgF41O
 v41mFp+rwUdXrp9/9iqcmWQgOKESHKLM4LpB5MHa+7/+AzHmpY+qajgIkwiwYFYOEz60M2l/oux
 t0nt3YecMAMx50q/Z72jAJBJzmIqH6GBjQzAMYo8rTUnwvB9BfywQkNgg71X4APmABsm3XyWwE4
 EBmwLkaDjYYz9XUA/CzQZ14Cj/XCevBzODSaP0LJZqnjJyKEFVp3dBy8aCIEFdWGevTKMq5egry
 X4XzRPeNufb8opCi51UniwOz+7xXZw6iJPdg7c8/gd3as08RICiDA439r/iRXpem83QBgYYYU6B
 obcdM2KBIYHG8xRRJEALd/B/SRDxcIoAQ+OskZE1Wnp6zAL2URasSml9ymHKL4aDt+A8cUXjJVt
 yZOX7QJefvsOyd03PKu1w3B3Eo6by4k2+Dw0QE7Ej95WNxg15tZpwI1NOvdVhrwN6ZQ84k23Gg9
 3qc4V3k/NU/gfJCfrwyKdNaP+t/MTuRPDpLt501d6o4mJ+ocbVbvFWY0XA79kVirpF/iX+j7Qas
 jjY8T2O760qJdmA==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp; fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

TI's J721E uses the Cadence CSI2RX and DPHY peripherals to facilitate
capture over a CSI-2 bus.

The Cadence CSI2RX IP acts as a bridge between the TI specific parts and
the CSI-2 protocol parts. TI then has a wrapper on top of this bridge
called the SHIM layer. It takes in data from stream 0, repacks it, and
sends it to memory over PSI-L DMA.

This driver acts as the "front end" to V4L2 client applications. It
implements the required ioctls and buffer operations, passes the
necessary calls on to the bridge, programs the SHIM layer, and performs
DMA via the dmaengine API to finally return the data to a buffer
supplied by the application.

Co-developed-by: Pratyush Yadav <p.yadav@ti.com>
Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
Co-developed-by: Vaishnav Achath <vaishnav.a@ti.com>
Signed-off-by: Vaishnav Achath <vaishnav.a@ti.com>
Tested-by: Vaishnav Achath <vaishnav.a@ti.com>
Tested-by: Julien Massot <julien.massot@collabora.com>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
Changes in v10:
- Fix bug around YUV422 pixel ordering in setup_shim(). Now we
  passthrough the incoming order of pixels over MIPI (U->Y->V->Y etc.)
  when storing in memory
- Only allocate 32KiB of memory for the drain buffer, which is the upper
  bound of the PSI-L endpoint's internal FIFO storage (2048 x 128-bits)
- Allocate drain buffer in probe() instead of start_streaming()
- Set other colorspace/encoding properties in the initial device format
- Make the module compilable with COMPILE_TEST if Cadence dependencies
  are missing
- Address Laurent's review comments around naming and other minor
  comments
- Address Tomi's comments around better explaining the scenarios where
  DMA drain is required
- Change module/patch authorship to myself

 MAINTAINERS                                        |    7 +
 drivers/media/platform/ti/Kconfig                  |   12 +
 drivers/media/platform/ti/Makefile                 |    1 +
 drivers/media/platform/ti/j721e-csi2rx/Makefile    |    2 +
 .../media/platform/ti/j721e-csi2rx/j721e-csi2rx.c  | 1159 ++++++++++++++++++++
 5 files changed, 1181 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index c934244acc31..01ec2e6e122f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21714,6 +21714,13 @@ F:	Documentation/devicetree/bindings/media/i2c/ti,ds90*
 F:	drivers/media/i2c/ds90*
 F:	include/media/i2c/ds90*
 
+TI J721E CSI2RX DRIVER
+M:	Jai Luthra <j-luthra@ti.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/ti,j721e-csi2rx.yaml
+F:	drivers/media/platform/ti/j721e-csi2rx/
+
 TI KEYSTONE MULTICORE NAVIGATOR DRIVERS
 M:	Nishanth Menon <nm@ti.com>
 M:	Santosh Shilimkar <ssantosh@kernel.org>
diff --git a/drivers/media/platform/ti/Kconfig b/drivers/media/platform/ti/Kconfig
index e1ab56c3be1f..bab998c4179a 100644
--- a/drivers/media/platform/ti/Kconfig
+++ b/drivers/media/platform/ti/Kconfig
@@ -63,6 +63,18 @@ config VIDEO_TI_VPE_DEBUG
 	help
 	  Enable debug messages on VPE driver.
 
+config VIDEO_TI_J721E_CSI2RX
+	tristate "TI J721E CSI2RX wrapper layer driver"
+	depends on VIDEO_DEV && VIDEO_V4L2_SUBDEV_API
+	depends on MEDIA_SUPPORT && MEDIA_CONTROLLER
+	depends on (PHY_CADENCE_DPHY_RX && VIDEO_CADENCE_CSI2RX) || COMPILE_TEST
+	depends on ARCH_K3 || COMPILE_TEST
+	select VIDEOBUF2_DMA_CONTIG
+	select V4L2_FWNODE
+	help
+	  Support for TI CSI2RX wrapper layer. This just enables the wrapper driver.
+	  The Cadence CSI2RX bridge driver needs to be enabled separately.
+
 source "drivers/media/platform/ti/am437x/Kconfig"
 source "drivers/media/platform/ti/davinci/Kconfig"
 source "drivers/media/platform/ti/omap/Kconfig"
diff --git a/drivers/media/platform/ti/Makefile b/drivers/media/platform/ti/Makefile
index 98c5fe5c40d6..8a2f74c9380e 100644
--- a/drivers/media/platform/ti/Makefile
+++ b/drivers/media/platform/ti/Makefile
@@ -3,5 +3,6 @@ obj-y += am437x/
 obj-y += cal/
 obj-y += vpe/
 obj-y += davinci/
+obj-y += j721e-csi2rx/
 obj-y += omap/
 obj-y += omap3isp/
diff --git a/drivers/media/platform/ti/j721e-csi2rx/Makefile b/drivers/media/platform/ti/j721e-csi2rx/Makefile
new file mode 100644
index 000000000000..377afc1d6280
--- /dev/null
+++ b/drivers/media/platform/ti/j721e-csi2rx/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_VIDEO_TI_J721E_CSI2RX) += j721e-csi2rx.o
diff --git a/drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c b/drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c
new file mode 100644
index 000000000000..ada61391c8d2
--- /dev/null
+++ b/drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c
@@ -0,0 +1,1159 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * TI CSI2RX Shim Wrapper Driver
+ *
+ * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Author: Pratyush Yadav <p.yadav@ti.com>
+ * Author: Jai Luthra <j-luthra@ti.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/dmaengine.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+
+#include <media/mipi-csi2.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-ioctl.h>
+#include <media/v4l2-mc.h>
+#include <media/videobuf2-dma-contig.h>
+
+#define TI_CSI2RX_MODULE_NAME		"j721e-csi2rx"
+
+#define SHIM_CNTL			0x10
+#define SHIM_CNTL_PIX_RST		BIT(0)
+
+#define SHIM_DMACNTX			0x20
+#define SHIM_DMACNTX_EN			BIT(31)
+#define SHIM_DMACNTX_YUV422		GENMASK(27, 26)
+#define SHIM_DMACNTX_SIZE		GENMASK(21, 20)
+#define SHIM_DMACNTX_FMT		GENMASK(5, 0)
+#define SHIM_DMACNTX_YUV422_MODE_11	3
+#define SHIM_DMACNTX_SIZE_8		0
+#define SHIM_DMACNTX_SIZE_16		1
+#define SHIM_DMACNTX_SIZE_32		2
+
+#define SHIM_PSI_CFG0			0x24
+#define SHIM_PSI_CFG0_SRC_TAG		GENMASK(15, 0)
+#define SHIM_PSI_CFG0_DST_TAG		GENMASK(31, 16)
+
+#define PSIL_WORD_SIZE_BYTES		16
+/*
+ * There are no hard limits on the width or height. The DMA engine can handle
+ * all sizes. The max width and height are arbitrary numbers for this driver.
+ * Use 16K * 16K as the arbitrary limit. It is large enough that it is unlikely
+ * the limit will be hit in practice.
+ */
+#define MAX_WIDTH_BYTES			SZ_16K
+#define MAX_HEIGHT_LINES		SZ_16K
+
+#define DRAIN_TIMEOUT_MS		50
+#define DRAIN_BUFFER_SIZE		SZ_32K
+
+struct ti_csi2rx_fmt {
+	u32				fourcc;	/* Four character code. */
+	u32				code;	/* Mbus code. */
+	u32				csi_dt;	/* CSI Data type. */
+	u8				bpp;	/* Bits per pixel. */
+	u8				size;	/* Data size shift when unpacking. */
+};
+
+struct ti_csi2rx_buffer {
+	/* Common v4l2 buffer. Must be first. */
+	struct vb2_v4l2_buffer		vb;
+	struct list_head		list;
+	struct ti_csi2rx_dev		*csi;
+};
+
+enum ti_csi2rx_dma_state {
+	TI_CSI2RX_DMA_STOPPED,	/* Streaming not started yet. */
+	TI_CSI2RX_DMA_IDLE,	/* Streaming but no pending DMA operation. */
+	TI_CSI2RX_DMA_ACTIVE,	/* Streaming and pending DMA operation. */
+};
+
+struct ti_csi2rx_dma {
+	/* Protects all fields in this struct. */
+	spinlock_t			lock;
+	struct dma_chan			*chan;
+	/* Buffers queued to the driver, waiting to be processed by DMA. */
+	struct list_head		queue;
+	enum ti_csi2rx_dma_state	state;
+	/*
+	 * Queue of buffers submitted to DMA engine.
+	 */
+	struct list_head		submitted;
+	/* Buffer to drain stale data from PSI-L endpoint */
+	struct {
+		void			*vaddr;
+		dma_addr_t		paddr;
+		size_t			len;
+	} drain;
+};
+
+struct ti_csi2rx_dev {
+	struct device			*dev;
+	void __iomem			*shim;
+	struct v4l2_device		v4l2_dev;
+	struct video_device		vdev;
+	struct media_device		mdev;
+	struct media_pipeline		pipe;
+	struct media_pad		pad;
+	struct v4l2_async_notifier	notifier;
+	struct v4l2_subdev		*source;
+	struct vb2_queue		vidq;
+	struct mutex			mutex; /* To serialize ioctls. */
+	struct v4l2_format		v_fmt;
+	struct ti_csi2rx_dma		dma;
+	u32				sequence;
+};
+
+static const struct ti_csi2rx_fmt ti_csi2rx_formats[] = {
+	{
+		.fourcc			= V4L2_PIX_FMT_YUYV,
+		.code			= MEDIA_BUS_FMT_YUYV8_1X16,
+		.csi_dt			= MIPI_CSI2_DT_YUV422_8B,
+		.bpp			= 16,
+		.size			= SHIM_DMACNTX_SIZE_8,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_UYVY,
+		.code			= MEDIA_BUS_FMT_UYVY8_1X16,
+		.csi_dt			= MIPI_CSI2_DT_YUV422_8B,
+		.bpp			= 16,
+		.size			= SHIM_DMACNTX_SIZE_8,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_YVYU,
+		.code			= MEDIA_BUS_FMT_YVYU8_1X16,
+		.csi_dt			= MIPI_CSI2_DT_YUV422_8B,
+		.bpp			= 16,
+		.size			= SHIM_DMACNTX_SIZE_8,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_VYUY,
+		.code			= MEDIA_BUS_FMT_VYUY8_1X16,
+		.csi_dt			= MIPI_CSI2_DT_YUV422_8B,
+		.bpp			= 16,
+		.size			= SHIM_DMACNTX_SIZE_8,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_SBGGR8,
+		.code			= MEDIA_BUS_FMT_SBGGR8_1X8,
+		.csi_dt			= MIPI_CSI2_DT_RAW8,
+		.bpp			= 8,
+		.size			= SHIM_DMACNTX_SIZE_8,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_SGBRG8,
+		.code			= MEDIA_BUS_FMT_SGBRG8_1X8,
+		.csi_dt			= MIPI_CSI2_DT_RAW8,
+		.bpp			= 8,
+		.size			= SHIM_DMACNTX_SIZE_8,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_SGRBG8,
+		.code			= MEDIA_BUS_FMT_SGRBG8_1X8,
+		.csi_dt			= MIPI_CSI2_DT_RAW8,
+		.bpp			= 8,
+		.size			= SHIM_DMACNTX_SIZE_8,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_SRGGB8,
+		.code			= MEDIA_BUS_FMT_SRGGB8_1X8,
+		.csi_dt			= MIPI_CSI2_DT_RAW8,
+		.bpp			= 8,
+		.size			= SHIM_DMACNTX_SIZE_8,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_SBGGR10,
+		.code			= MEDIA_BUS_FMT_SBGGR10_1X10,
+		.csi_dt			= MIPI_CSI2_DT_RAW10,
+		.bpp			= 16,
+		.size			= SHIM_DMACNTX_SIZE_16,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_SGBRG10,
+		.code			= MEDIA_BUS_FMT_SGBRG10_1X10,
+		.csi_dt			= MIPI_CSI2_DT_RAW10,
+		.bpp			= 16,
+		.size			= SHIM_DMACNTX_SIZE_16,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_SGRBG10,
+		.code			= MEDIA_BUS_FMT_SGRBG10_1X10,
+		.csi_dt			= MIPI_CSI2_DT_RAW10,
+		.bpp			= 16,
+		.size			= SHIM_DMACNTX_SIZE_16,
+	}, {
+		.fourcc			= V4L2_PIX_FMT_SRGGB10,
+		.code			= MEDIA_BUS_FMT_SRGGB10_1X10,
+		.csi_dt			= MIPI_CSI2_DT_RAW10,
+		.bpp			= 16,
+		.size			= SHIM_DMACNTX_SIZE_16,
+	},
+
+	/* More formats can be supported but they are not listed for now. */
+};
+
+/* Forward declaration needed by ti_csi2rx_dma_callback. */
+static int ti_csi2rx_start_dma(struct ti_csi2rx_dev *csi,
+			       struct ti_csi2rx_buffer *buf);
+
+static const struct ti_csi2rx_fmt *find_format_by_fourcc(u32 pixelformat)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(ti_csi2rx_formats); i++) {
+		if (ti_csi2rx_formats[i].fourcc == pixelformat)
+			return &ti_csi2rx_formats[i];
+	}
+
+	return NULL;
+}
+
+static const struct ti_csi2rx_fmt *find_format_by_code(u32 code)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(ti_csi2rx_formats); i++) {
+		if (ti_csi2rx_formats[i].code == code)
+			return &ti_csi2rx_formats[i];
+	}
+
+	return NULL;
+}
+
+static void ti_csi2rx_fill_fmt(const struct ti_csi2rx_fmt *csi_fmt,
+			       struct v4l2_format *v4l2_fmt)
+{
+	struct v4l2_pix_format *pix = &v4l2_fmt->fmt.pix;
+	unsigned int pixels_in_word;
+
+	pixels_in_word = PSIL_WORD_SIZE_BYTES * 8 / csi_fmt->bpp;
+
+	/* Clamp width and height to sensible maximums (16K x 16K) */
+	pix->width = clamp_t(unsigned int, pix->width,
+			     pixels_in_word,
+			     MAX_WIDTH_BYTES * 8 / csi_fmt->bpp);
+	pix->height = clamp_t(unsigned int, pix->height, 1, MAX_HEIGHT_LINES);
+
+	/* Width should be a multiple of transfer word-size */
+	pix->width = rounddown(pix->width, pixels_in_word);
+
+	v4l2_fmt->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
+	pix->pixelformat = csi_fmt->fourcc;
+	pix->bytesperline = pix->width * (csi_fmt->bpp / 8);
+	pix->sizeimage = pix->bytesperline * pix->height;
+}
+
+static int ti_csi2rx_querycap(struct file *file, void *priv,
+			      struct v4l2_capability *cap)
+{
+	strscpy(cap->driver, TI_CSI2RX_MODULE_NAME, sizeof(cap->driver));
+	strscpy(cap->card, TI_CSI2RX_MODULE_NAME, sizeof(cap->card));
+
+	return 0;
+}
+
+static int ti_csi2rx_enum_fmt_vid_cap(struct file *file, void *priv,
+				      struct v4l2_fmtdesc *f)
+{
+	const struct ti_csi2rx_fmt *fmt = NULL;
+
+	if (f->mbus_code) {
+		/* 1-to-1 mapping between bus formats and pixel formats */
+		if (f->index > 0)
+			return -EINVAL;
+
+		fmt = find_format_by_code(f->mbus_code);
+	} else {
+		if (f->index >= ARRAY_SIZE(ti_csi2rx_formats))
+			return -EINVAL;
+
+		fmt = &ti_csi2rx_formats[f->index];
+	}
+
+	if (!fmt)
+		return -EINVAL;
+
+	f->pixelformat = fmt->fourcc;
+	memset(f->reserved, 0, sizeof(f->reserved));
+	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
+
+	return 0;
+}
+
+static int ti_csi2rx_g_fmt_vid_cap(struct file *file, void *prov,
+				   struct v4l2_format *f)
+{
+	struct ti_csi2rx_dev *csi = video_drvdata(file);
+
+	*f = csi->v_fmt;
+
+	return 0;
+}
+
+static int ti_csi2rx_try_fmt_vid_cap(struct file *file, void *priv,
+				     struct v4l2_format *f)
+{
+	const struct ti_csi2rx_fmt *fmt;
+
+	/*
+	 * Default to the first format if the requested pixel format code isn't
+	 * supported.
+	 */
+	fmt = find_format_by_fourcc(f->fmt.pix.pixelformat);
+	if (!fmt)
+		fmt = &ti_csi2rx_formats[0];
+
+	/* Interlaced formats are not supported. */
+	f->fmt.pix.field = V4L2_FIELD_NONE;
+
+	ti_csi2rx_fill_fmt(fmt, f);
+
+	return 0;
+}
+
+static int ti_csi2rx_s_fmt_vid_cap(struct file *file, void *priv,
+				   struct v4l2_format *f)
+{
+	struct ti_csi2rx_dev *csi = video_drvdata(file);
+	struct vb2_queue *q = &csi->vidq;
+	int ret;
+
+	if (vb2_is_busy(q))
+		return -EBUSY;
+
+	ret = ti_csi2rx_try_fmt_vid_cap(file, priv, f);
+	if (ret < 0)
+		return ret;
+
+	csi->v_fmt = *f;
+
+	return 0;
+}
+
+static int ti_csi2rx_enum_framesizes(struct file *file, void *fh,
+				     struct v4l2_frmsizeenum *fsize)
+{
+	const struct ti_csi2rx_fmt *fmt;
+	unsigned int pixels_in_word;
+
+	fmt = find_format_by_fourcc(fsize->pixel_format);
+	if (!fmt || fsize->index != 0)
+		return -EINVAL;
+
+	/*
+	 * Number of pixels in one PSI-L word. The transfer happens in multiples
+	 * of PSI-L word sizes.
+	 */
+	pixels_in_word = PSIL_WORD_SIZE_BYTES * 8 / fmt->bpp;
+
+	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
+	fsize->stepwise.min_width = pixels_in_word;
+	fsize->stepwise.max_width = rounddown(MAX_WIDTH_BYTES * 8 / fmt->bpp,
+					      pixels_in_word);
+	fsize->stepwise.step_width = pixels_in_word;
+	fsize->stepwise.min_height = 1;
+	fsize->stepwise.max_height = MAX_HEIGHT_LINES;
+	fsize->stepwise.step_height = 1;
+
+	return 0;
+}
+
+static const struct v4l2_ioctl_ops csi_ioctl_ops = {
+	.vidioc_querycap      = ti_csi2rx_querycap,
+	.vidioc_enum_fmt_vid_cap = ti_csi2rx_enum_fmt_vid_cap,
+	.vidioc_try_fmt_vid_cap = ti_csi2rx_try_fmt_vid_cap,
+	.vidioc_g_fmt_vid_cap = ti_csi2rx_g_fmt_vid_cap,
+	.vidioc_s_fmt_vid_cap = ti_csi2rx_s_fmt_vid_cap,
+	.vidioc_enum_framesizes = ti_csi2rx_enum_framesizes,
+	.vidioc_reqbufs       = vb2_ioctl_reqbufs,
+	.vidioc_create_bufs   = vb2_ioctl_create_bufs,
+	.vidioc_prepare_buf   = vb2_ioctl_prepare_buf,
+	.vidioc_querybuf      = vb2_ioctl_querybuf,
+	.vidioc_qbuf          = vb2_ioctl_qbuf,
+	.vidioc_dqbuf         = vb2_ioctl_dqbuf,
+	.vidioc_expbuf        = vb2_ioctl_expbuf,
+	.vidioc_streamon      = vb2_ioctl_streamon,
+	.vidioc_streamoff     = vb2_ioctl_streamoff,
+};
+
+static const struct v4l2_file_operations csi_fops = {
+	.owner = THIS_MODULE,
+	.open = v4l2_fh_open,
+	.release = vb2_fop_release,
+	.read = vb2_fop_read,
+	.poll = vb2_fop_poll,
+	.unlocked_ioctl = video_ioctl2,
+	.mmap = vb2_fop_mmap,
+};
+
+static int csi_async_notifier_bound(struct v4l2_async_notifier *notifier,
+				    struct v4l2_subdev *subdev,
+				    struct v4l2_async_connection *asc)
+{
+	struct ti_csi2rx_dev *csi = dev_get_drvdata(notifier->v4l2_dev->dev);
+
+	csi->source = subdev;
+
+	return 0;
+}
+
+static int csi_async_notifier_complete(struct v4l2_async_notifier *notifier)
+{
+	struct ti_csi2rx_dev *csi = dev_get_drvdata(notifier->v4l2_dev->dev);
+	struct video_device *vdev = &csi->vdev;
+	int ret;
+
+	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
+	if (ret)
+		return ret;
+
+	ret = v4l2_create_fwnode_links_to_pad(csi->source, &csi->pad,
+					      MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);
+
+	if (ret) {
+		video_unregister_device(vdev);
+		return ret;
+	}
+
+	ret = v4l2_device_register_subdev_nodes(&csi->v4l2_dev);
+	if (ret)
+		video_unregister_device(vdev);
+
+	return ret;
+}
+
+static const struct v4l2_async_notifier_operations csi_async_notifier_ops = {
+	.bound = csi_async_notifier_bound,
+	.complete = csi_async_notifier_complete,
+};
+
+static int ti_csi2rx_notifier_register(struct ti_csi2rx_dev *csi)
+{
+	struct fwnode_handle *fwnode;
+	struct v4l2_async_connection *asc;
+	struct device_node *node;
+	int ret;
+
+	node = of_get_child_by_name(csi->dev->of_node, "csi-bridge");
+	if (!node)
+		return -EINVAL;
+
+	fwnode = of_fwnode_handle(node);
+	if (!fwnode) {
+		of_node_put(node);
+		return -EINVAL;
+	}
+
+	v4l2_async_nf_init(&csi->notifier, &csi->v4l2_dev);
+	csi->notifier.ops = &csi_async_notifier_ops;
+
+	asc = v4l2_async_nf_add_fwnode(&csi->notifier, fwnode,
+				       struct v4l2_async_connection);
+	of_node_put(node);
+	if (IS_ERR(asc)) {
+		v4l2_async_nf_cleanup(&csi->notifier);
+		return PTR_ERR(asc);
+	}
+
+	ret = v4l2_async_nf_register(&csi->notifier);
+	if (ret) {
+		v4l2_async_nf_cleanup(&csi->notifier);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void ti_csi2rx_setup_shim(struct ti_csi2rx_dev *csi)
+{
+	const struct ti_csi2rx_fmt *fmt;
+	unsigned int reg;
+
+	fmt = find_format_by_fourcc(csi->v_fmt.fmt.pix.pixelformat);
+
+	/* De-assert the pixel interface reset. */
+	reg = SHIM_CNTL_PIX_RST;
+	writel(reg, csi->shim + SHIM_CNTL);
+
+	reg = SHIM_DMACNTX_EN;
+	reg |= FIELD_PREP(SHIM_DMACNTX_FMT, fmt->csi_dt);
+
+	/*
+	 * The hardware assumes incoming YUV422 8-bit data on MIPI CSI2 bus
+	 * follows the spec and is packed in the order U0 -> Y0 -> V0 -> Y1 ->
+	 * ...
+	 *
+	 * There is an option to swap the bytes around before storing in
+	 * memory, to achieve different pixel formats:
+	 *
+	 * Byte3 <----------- Byte0
+	 * [ Y1 ][ V0 ][ Y0 ][ U0 ]	MODE 11
+	 * [ Y1 ][ U0 ][ Y0 ][ V0 ]	MODE 10
+	 * [ V0 ][ Y1 ][ U0 ][ Y0 ]	MODE 01
+	 * [ U0 ][ Y1 ][ V0 ][ Y0 ]	MODE 00
+	 *
+	 * We don't have any requirement to change pixelformat from what is
+	 * coming from the source, so we keep it in MODE 11, which does not
+	 * swap any bytes when storing in memory.
+	 */
+	switch (fmt->fourcc) {
+	case V4L2_PIX_FMT_UYVY:
+	case V4L2_PIX_FMT_VYUY:
+	case V4L2_PIX_FMT_YUYV:
+	case V4L2_PIX_FMT_YVYU:
+		reg |= FIELD_PREP(SHIM_DMACNTX_YUV422,
+				  SHIM_DMACNTX_YUV422_MODE_11);
+		break;
+	default:
+		/* Ignore if not YUV 4:2:2 */
+		break;
+	}
+
+	reg |= FIELD_PREP(SHIM_DMACNTX_SIZE, fmt->size);
+
+	writel(reg, csi->shim + SHIM_DMACNTX);
+
+	reg = FIELD_PREP(SHIM_PSI_CFG0_SRC_TAG, 0) |
+	      FIELD_PREP(SHIM_PSI_CFG0_DST_TAG, 0);
+	writel(reg, csi->shim + SHIM_PSI_CFG0);
+}
+
+static void ti_csi2rx_drain_callback(void *param)
+{
+	struct completion *drain_complete = param;
+
+	complete(drain_complete);
+}
+
+/*
+ * Drain the stale data left at the PSI-L endpoint.
+ *
+ * This might happen if no buffers are queued in time but source is still
+ * streaming. In multi-stream scenarios this can happen when one stream is
+ * stopped but other is still streaming, and thus module-level pixel reset is
+ * not asserted.
+ *
+ * To prevent that stale data corrupting the subsequent transactions, it is
+ * required to issue DMA requests to drain it out.
+ */
+static int ti_csi2rx_drain_dma(struct ti_csi2rx_dev *csi)
+{
+	struct dma_async_tx_descriptor *desc;
+	struct completion drain_complete;
+	dma_cookie_t cookie;
+	int ret;
+
+	init_completion(&drain_complete);
+
+	desc = dmaengine_prep_slave_single(csi->dma.chan, csi->dma.drain.paddr,
+					   csi->dma.drain.len, DMA_DEV_TO_MEM,
+					   DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+	if (!desc) {
+		ret = -EIO;
+		goto out;
+	}
+
+	desc->callback = ti_csi2rx_drain_callback;
+	desc->callback_param = &drain_complete;
+
+	cookie = dmaengine_submit(desc);
+	ret = dma_submit_error(cookie);
+	if (ret)
+		goto out;
+
+	dma_async_issue_pending(csi->dma.chan);
+
+	if (!wait_for_completion_timeout(&drain_complete,
+					 msecs_to_jiffies(DRAIN_TIMEOUT_MS))) {
+		dmaengine_terminate_sync(csi->dma.chan);
+		dev_dbg(csi->dev, "DMA transfer timed out for drain buffer\n");
+		ret = -ETIMEDOUT;
+		goto out;
+	}
+out:
+	return ret;
+}
+
+static void ti_csi2rx_dma_callback(void *param)
+{
+	struct ti_csi2rx_buffer *buf = param;
+	struct ti_csi2rx_dev *csi = buf->csi;
+	struct ti_csi2rx_dma *dma = &csi->dma;
+	unsigned long flags;
+
+	/*
+	 * TODO: Derive the sequence number from the CSI2RX frame number
+	 * hardware monitor registers.
+	 */
+	buf->vb.vb2_buf.timestamp = ktime_get_ns();
+	buf->vb.sequence = csi->sequence++;
+
+	spin_lock_irqsave(&dma->lock, flags);
+
+	WARN_ON(!list_is_first(&buf->list, &dma->submitted));
+	vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
+	list_del(&buf->list);
+
+	/* If there are more buffers to process then start their transfer. */
+	while (!list_empty(&dma->queue)) {
+		buf = list_entry(dma->queue.next, struct ti_csi2rx_buffer, list);
+
+		if (ti_csi2rx_start_dma(csi, buf)) {
+			dev_err(csi->dev, "Failed to queue the next buffer for DMA\n");
+			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+		} else {
+			list_move_tail(&buf->list, &dma->submitted);
+		}
+	}
+
+	if (list_empty(&dma->submitted))
+		dma->state = TI_CSI2RX_DMA_IDLE;
+
+	spin_unlock_irqrestore(&dma->lock, flags);
+}
+
+static int ti_csi2rx_start_dma(struct ti_csi2rx_dev *csi,
+			       struct ti_csi2rx_buffer *buf)
+{
+	unsigned long addr;
+	struct dma_async_tx_descriptor *desc;
+	size_t len = csi->v_fmt.fmt.pix.sizeimage;
+	dma_cookie_t cookie;
+	int ret = 0;
+
+	addr = vb2_dma_contig_plane_dma_addr(&buf->vb.vb2_buf, 0);
+	desc = dmaengine_prep_slave_single(csi->dma.chan, addr, len,
+					   DMA_DEV_TO_MEM,
+					   DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
+	if (!desc)
+		return -EIO;
+
+	desc->callback = ti_csi2rx_dma_callback;
+	desc->callback_param = buf;
+
+	cookie = dmaengine_submit(desc);
+	ret = dma_submit_error(cookie);
+	if (ret)
+		return ret;
+
+	dma_async_issue_pending(csi->dma.chan);
+
+	return 0;
+}
+
+static void ti_csi2rx_stop_dma(struct ti_csi2rx_dev *csi)
+{
+	struct ti_csi2rx_dma *dma = &csi->dma;
+	enum ti_csi2rx_dma_state state;
+	unsigned long flags;
+	int ret;
+
+	spin_lock_irqsave(&dma->lock, flags);
+	state = csi->dma.state;
+	dma->state = TI_CSI2RX_DMA_STOPPED;
+	spin_unlock_irqrestore(&dma->lock, flags);
+
+	if (state != TI_CSI2RX_DMA_STOPPED) {
+		/*
+		 * Normal DMA termination does not clean up pending data on
+		 * the endpoint if multiple streams are running and only one
+		 * is stopped, as the module-level pixel reset cannot be
+		 * enforced before terminating DMA.
+		 */
+		ret = ti_csi2rx_drain_dma(csi);
+		if (ret && ret != -ETIMEDOUT)
+			dev_warn(csi->dev,
+				 "Failed to drain DMA. Next frame might be bogus\n");
+	}
+
+	ret = dmaengine_terminate_sync(csi->dma.chan);
+	if (ret)
+		dev_err(csi->dev, "Failed to stop DMA: %d\n", ret);
+}
+
+static void ti_csi2rx_cleanup_buffers(struct ti_csi2rx_dev *csi,
+				      enum vb2_buffer_state state)
+{
+	struct ti_csi2rx_dma *dma = &csi->dma;
+	struct ti_csi2rx_buffer *buf, *tmp;
+	unsigned long flags;
+
+	spin_lock_irqsave(&dma->lock, flags);
+	list_for_each_entry_safe(buf, tmp, &csi->dma.queue, list) {
+		list_del(&buf->list);
+		vb2_buffer_done(&buf->vb.vb2_buf, state);
+	}
+	list_for_each_entry_safe(buf, tmp, &csi->dma.submitted, list) {
+		list_del(&buf->list);
+		vb2_buffer_done(&buf->vb.vb2_buf, state);
+	}
+	spin_unlock_irqrestore(&dma->lock, flags);
+}
+
+static int ti_csi2rx_queue_setup(struct vb2_queue *q, unsigned int *nbuffers,
+				 unsigned int *nplanes, unsigned int sizes[],
+				 struct device *alloc_devs[])
+{
+	struct ti_csi2rx_dev *csi = vb2_get_drv_priv(q);
+	unsigned int size = csi->v_fmt.fmt.pix.sizeimage;
+
+	if (*nplanes) {
+		if (sizes[0] < size)
+			return -EINVAL;
+		size = sizes[0];
+	}
+
+	*nplanes = 1;
+	sizes[0] = size;
+
+	return 0;
+}
+
+static int ti_csi2rx_buffer_prepare(struct vb2_buffer *vb)
+{
+	struct ti_csi2rx_dev *csi = vb2_get_drv_priv(vb->vb2_queue);
+	unsigned long size = csi->v_fmt.fmt.pix.sizeimage;
+
+	if (vb2_plane_size(vb, 0) < size) {
+		dev_err(csi->dev, "Data will not fit into plane\n");
+		return -EINVAL;
+	}
+
+	vb2_set_plane_payload(vb, 0, size);
+	return 0;
+}
+
+static void ti_csi2rx_buffer_queue(struct vb2_buffer *vb)
+{
+	struct ti_csi2rx_dev *csi = vb2_get_drv_priv(vb->vb2_queue);
+	struct ti_csi2rx_buffer *buf;
+	struct ti_csi2rx_dma *dma = &csi->dma;
+	bool restart_dma = false;
+	unsigned long flags = 0;
+	int ret;
+
+	buf = container_of(vb, struct ti_csi2rx_buffer, vb.vb2_buf);
+	buf->csi = csi;
+
+	spin_lock_irqsave(&dma->lock, flags);
+	/*
+	 * Usually the DMA callback takes care of queueing the pending buffers.
+	 * But if DMA has stalled due to lack of buffers, restart it now.
+	 */
+	if (dma->state == TI_CSI2RX_DMA_IDLE) {
+		/*
+		 * Do not restart DMA with the lock held because
+		 * ti_csi2rx_drain_dma() might block for completion.
+		 * There won't be a race on queueing DMA anyway since the
+		 * callback is not being fired.
+		 */
+		restart_dma = true;
+		dma->state = TI_CSI2RX_DMA_ACTIVE;
+	} else {
+		list_add_tail(&buf->list, &dma->queue);
+	}
+	spin_unlock_irqrestore(&dma->lock, flags);
+
+	if (restart_dma) {
+		/*
+		 * Once frames start dropping, some data gets stuck in the DMA
+		 * pipeline somewhere. So the first DMA transfer after frame
+		 * drops gives a partial frame. This is obviously not useful to
+		 * the application and will only confuse it. Issue a DMA
+		 * transaction to drain that up.
+		 */
+		ret = ti_csi2rx_drain_dma(csi);
+		if (ret && ret != -ETIMEDOUT)
+			dev_warn(csi->dev,
+				 "Failed to drain DMA. Next frame might be bogus\n");
+
+		ret = ti_csi2rx_start_dma(csi, buf);
+		if (ret) {
+			dev_err(csi->dev, "Failed to start DMA: %d\n", ret);
+			spin_lock_irqsave(&dma->lock, flags);
+			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+			dma->state = TI_CSI2RX_DMA_IDLE;
+			spin_unlock_irqrestore(&dma->lock, flags);
+		} else {
+			spin_lock_irqsave(&dma->lock, flags);
+			list_add_tail(&buf->list, &dma->submitted);
+			spin_unlock_irqrestore(&dma->lock, flags);
+		}
+	}
+}
+
+static int ti_csi2rx_start_streaming(struct vb2_queue *vq, unsigned int count)
+{
+	struct ti_csi2rx_dev *csi = vb2_get_drv_priv(vq);
+	struct ti_csi2rx_dma *dma = &csi->dma;
+	struct ti_csi2rx_buffer *buf;
+	unsigned long flags;
+	int ret = 0;
+
+	spin_lock_irqsave(&dma->lock, flags);
+	if (list_empty(&dma->queue))
+		ret = -EIO;
+	spin_unlock_irqrestore(&dma->lock, flags);
+	if (ret)
+		return ret;
+
+	ret = video_device_pipeline_start(&csi->vdev, &csi->pipe);
+	if (ret)
+		goto err;
+
+	ti_csi2rx_setup_shim(csi);
+
+	csi->sequence = 0;
+
+	spin_lock_irqsave(&dma->lock, flags);
+	buf = list_entry(dma->queue.next, struct ti_csi2rx_buffer, list);
+
+	ret = ti_csi2rx_start_dma(csi, buf);
+	if (ret) {
+		dev_err(csi->dev, "Failed to start DMA: %d\n", ret);
+		spin_unlock_irqrestore(&dma->lock, flags);
+		goto err_pipeline;
+	}
+
+	list_move_tail(&buf->list, &dma->submitted);
+	dma->state = TI_CSI2RX_DMA_ACTIVE;
+	spin_unlock_irqrestore(&dma->lock, flags);
+
+	ret = v4l2_subdev_call(csi->source, video, s_stream, 1);
+	if (ret)
+		goto err_dma;
+
+	return 0;
+
+err_dma:
+	ti_csi2rx_stop_dma(csi);
+err_pipeline:
+	video_device_pipeline_stop(&csi->vdev);
+	writel(0, csi->shim + SHIM_CNTL);
+	writel(0, csi->shim + SHIM_DMACNTX);
+err:
+	ti_csi2rx_cleanup_buffers(csi, VB2_BUF_STATE_QUEUED);
+	return ret;
+}
+
+static void ti_csi2rx_stop_streaming(struct vb2_queue *vq)
+{
+	struct ti_csi2rx_dev *csi = vb2_get_drv_priv(vq);
+	int ret;
+
+	video_device_pipeline_stop(&csi->vdev);
+
+	writel(0, csi->shim + SHIM_CNTL);
+	writel(0, csi->shim + SHIM_DMACNTX);
+
+	ret = v4l2_subdev_call(csi->source, video, s_stream, 0);
+	if (ret)
+		dev_err(csi->dev, "Failed to stop subdev stream\n");
+
+	ti_csi2rx_stop_dma(csi);
+	ti_csi2rx_cleanup_buffers(csi, VB2_BUF_STATE_ERROR);
+}
+
+static const struct vb2_ops csi_vb2_qops = {
+	.queue_setup = ti_csi2rx_queue_setup,
+	.buf_prepare = ti_csi2rx_buffer_prepare,
+	.buf_queue = ti_csi2rx_buffer_queue,
+	.start_streaming = ti_csi2rx_start_streaming,
+	.stop_streaming = ti_csi2rx_stop_streaming,
+	.wait_prepare = vb2_ops_wait_prepare,
+	.wait_finish = vb2_ops_wait_finish,
+};
+
+static int ti_csi2rx_init_vb2q(struct ti_csi2rx_dev *csi)
+{
+	struct vb2_queue *q = &csi->vidq;
+	int ret;
+
+	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
+	q->io_modes = VB2_MMAP | VB2_DMABUF;
+	q->drv_priv = csi;
+	q->buf_struct_size = sizeof(struct ti_csi2rx_buffer);
+	q->ops = &csi_vb2_qops;
+	q->mem_ops = &vb2_dma_contig_memops;
+	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
+	q->dev = dmaengine_get_dma_device(csi->dma.chan);
+	q->lock = &csi->mutex;
+	q->min_buffers_needed = 1;
+
+	ret = vb2_queue_init(q);
+	if (ret)
+		return ret;
+
+	csi->vdev.queue = q;
+
+	return 0;
+}
+
+static int ti_csi2rx_link_validate(struct media_link *link)
+{
+	struct media_entity *entity = link->sink->entity;
+	struct video_device *vdev = media_entity_to_video_device(entity);
+	struct ti_csi2rx_dev *csi = container_of(vdev, struct ti_csi2rx_dev, vdev);
+	struct v4l2_pix_format *csi_fmt = &csi->v_fmt.fmt.pix;
+	struct v4l2_subdev_format source_fmt = {
+		.which	= V4L2_SUBDEV_FORMAT_ACTIVE,
+		.pad	= link->source->index,
+	};
+	const struct ti_csi2rx_fmt *ti_fmt;
+	int ret;
+
+	ret = v4l2_subdev_call_state_active(csi->source, pad,
+					    get_fmt, &source_fmt);
+	if (ret)
+		return ret;
+
+	if (source_fmt.format.width != csi_fmt->width) {
+		dev_dbg(csi->dev, "Width does not match (source %u, sink %u)\n",
+			source_fmt.format.width, csi_fmt->width);
+		return -EPIPE;
+	}
+
+	if (source_fmt.format.height != csi_fmt->height) {
+		dev_dbg(csi->dev, "Height does not match (source %u, sink %u)\n",
+			source_fmt.format.height, csi_fmt->height);
+		return -EPIPE;
+	}
+
+	if (source_fmt.format.field != csi_fmt->field &&
+	    csi_fmt->field != V4L2_FIELD_NONE) {
+		dev_dbg(csi->dev, "Field does not match (source %u, sink %u)\n",
+			source_fmt.format.field, csi_fmt->field);
+		return -EPIPE;
+	}
+
+	ti_fmt = find_format_by_code(source_fmt.format.code);
+	if (!ti_fmt) {
+		dev_dbg(csi->dev, "Media bus format 0x%x not supported\n",
+			source_fmt.format.code);
+		return -EPIPE;
+	}
+
+	if (ti_fmt->fourcc != csi_fmt->pixelformat) {
+		dev_dbg(csi->dev,
+			"Cannot transform source fmt 0x%x to sink fmt 0x%x\n",
+			ti_fmt->fourcc, csi_fmt->pixelformat);
+		return -EPIPE;
+	}
+
+	return 0;
+}
+
+static const struct media_entity_operations ti_csi2rx_video_entity_ops = {
+	.link_validate = ti_csi2rx_link_validate,
+};
+
+static int ti_csi2rx_init_dma(struct ti_csi2rx_dev *csi)
+{
+	struct dma_slave_config cfg = {
+		.src_addr_width = DMA_SLAVE_BUSWIDTH_16_BYTES,
+	};
+	int ret;
+
+	INIT_LIST_HEAD(&csi->dma.queue);
+	INIT_LIST_HEAD(&csi->dma.submitted);
+	spin_lock_init(&csi->dma.lock);
+
+	csi->dma.state = TI_CSI2RX_DMA_STOPPED;
+
+	csi->dma.chan = dma_request_chan(csi->dev, "rx0");
+	if (IS_ERR(csi->dma.chan))
+		return PTR_ERR(csi->dma.chan);
+
+	ret = dmaengine_slave_config(csi->dma.chan, &cfg);
+	if (ret) {
+		dma_release_channel(csi->dma.chan);
+		return ret;
+	}
+
+	csi->dma.drain.len = DRAIN_BUFFER_SIZE;
+	csi->dma.drain.vaddr = dma_alloc_coherent(csi->dev, csi->dma.drain.len,
+						  &csi->dma.drain.paddr,
+						  GFP_KERNEL);
+	if (!csi->dma.drain.vaddr)
+		return -ENOMEM;
+
+	return 0;
+}
+
+static int ti_csi2rx_v4l2_init(struct ti_csi2rx_dev *csi)
+{
+	struct media_device *mdev = &csi->mdev;
+	struct video_device *vdev = &csi->vdev;
+	const struct ti_csi2rx_fmt *fmt;
+	struct v4l2_pix_format *pix_fmt = &csi->v_fmt.fmt.pix;
+	int ret;
+
+	fmt = find_format_by_fourcc(V4L2_PIX_FMT_UYVY);
+	if (!fmt)
+		return -EINVAL;
+
+	pix_fmt->width = 640;
+	pix_fmt->height = 480;
+	pix_fmt->field = V4L2_FIELD_NONE;
+	pix_fmt->colorspace = V4L2_COLORSPACE_SRGB;
+	pix_fmt->ycbcr_enc = V4L2_YCBCR_ENC_601,
+	pix_fmt->quantization = V4L2_QUANTIZATION_LIM_RANGE,
+	pix_fmt->xfer_func = V4L2_XFER_FUNC_SRGB,
+
+	ti_csi2rx_fill_fmt(fmt, &csi->v_fmt);
+
+	mdev->dev = csi->dev;
+	mdev->hw_revision = 1;
+	strscpy(mdev->model, "TI-CSI2RX", sizeof(mdev->model));
+
+	media_device_init(mdev);
+
+	strscpy(vdev->name, TI_CSI2RX_MODULE_NAME, sizeof(vdev->name));
+	vdev->v4l2_dev = &csi->v4l2_dev;
+	vdev->vfl_dir = VFL_DIR_RX;
+	vdev->fops = &csi_fops;
+	vdev->ioctl_ops = &csi_ioctl_ops;
+	vdev->release = video_device_release_empty;
+	vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
+			    V4L2_CAP_IO_MC;
+	vdev->lock = &csi->mutex;
+	video_set_drvdata(vdev, csi);
+
+	csi->pad.flags = MEDIA_PAD_FL_SINK;
+	vdev->entity.ops = &ti_csi2rx_video_entity_ops;
+	ret = media_entity_pads_init(&csi->vdev.entity, 1, &csi->pad);
+	if (ret)
+		return ret;
+
+	csi->v4l2_dev.mdev = mdev;
+
+	ret = v4l2_device_register(csi->dev, &csi->v4l2_dev);
+	if (ret)
+		return ret;
+
+	ret = media_device_register(mdev);
+	if (ret) {
+		v4l2_device_unregister(&csi->v4l2_dev);
+		media_device_cleanup(mdev);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void ti_csi2rx_cleanup_dma(struct ti_csi2rx_dev *csi)
+{
+	dma_free_coherent(csi->dev, csi->dma.drain.len,
+			  csi->dma.drain.vaddr, csi->dma.drain.paddr);
+	csi->dma.drain.vaddr = NULL;
+	dma_release_channel(csi->dma.chan);
+}
+
+static void ti_csi2rx_cleanup_v4l2(struct ti_csi2rx_dev *csi)
+{
+	media_device_unregister(&csi->mdev);
+	v4l2_device_unregister(&csi->v4l2_dev);
+	media_device_cleanup(&csi->mdev);
+}
+
+static void ti_csi2rx_cleanup_subdev(struct ti_csi2rx_dev *csi)
+{
+	v4l2_async_nf_unregister(&csi->notifier);
+	v4l2_async_nf_cleanup(&csi->notifier);
+}
+
+static void ti_csi2rx_cleanup_vb2q(struct ti_csi2rx_dev *csi)
+{
+	vb2_queue_release(&csi->vidq);
+}
+
+static int ti_csi2rx_probe(struct platform_device *pdev)
+{
+	struct ti_csi2rx_dev *csi;
+	struct resource *res;
+	int ret;
+
+	csi = devm_kzalloc(&pdev->dev, sizeof(*csi), GFP_KERNEL);
+	if (!csi)
+		return -ENOMEM;
+
+	csi->dev = &pdev->dev;
+	platform_set_drvdata(pdev, csi);
+
+	mutex_init(&csi->mutex);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	csi->shim = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(csi->shim)) {
+		ret = PTR_ERR(csi->shim);
+		goto err_mutex;
+	}
+
+	ret = ti_csi2rx_init_dma(csi);
+	if (ret)
+		goto err_mutex;
+
+	ret = ti_csi2rx_v4l2_init(csi);
+	if (ret)
+		goto err_dma;
+
+	ret = ti_csi2rx_init_vb2q(csi);
+	if (ret)
+		goto err_v4l2;
+
+	ret = ti_csi2rx_notifier_register(csi);
+	if (ret)
+		goto err_vb2q;
+
+	ret = of_platform_populate(csi->dev->of_node, NULL, NULL, csi->dev);
+	if (ret) {
+		dev_err(csi->dev, "Failed to create children: %d\n", ret);
+		goto err_subdev;
+	}
+
+	return 0;
+
+err_subdev:
+	ti_csi2rx_cleanup_subdev(csi);
+err_vb2q:
+	ti_csi2rx_cleanup_vb2q(csi);
+err_v4l2:
+	ti_csi2rx_cleanup_v4l2(csi);
+err_dma:
+	ti_csi2rx_cleanup_dma(csi);
+err_mutex:
+	mutex_destroy(&csi->mutex);
+	return ret;
+}
+
+static int ti_csi2rx_remove(struct platform_device *pdev)
+{
+	struct ti_csi2rx_dev *csi = platform_get_drvdata(pdev);
+
+	video_unregister_device(&csi->vdev);
+
+	ti_csi2rx_cleanup_vb2q(csi);
+	ti_csi2rx_cleanup_subdev(csi);
+	ti_csi2rx_cleanup_v4l2(csi);
+	ti_csi2rx_cleanup_dma(csi);
+
+	mutex_destroy(&csi->mutex);
+
+	return 0;
+}
+
+static const struct of_device_id ti_csi2rx_of_match[] = {
+	{ .compatible = "ti,j721e-csi2rx-shim", },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, ti_csi2rx_of_match);
+
+static struct platform_driver ti_csi2rx_pdrv = {
+	.probe = ti_csi2rx_probe,
+	.remove = ti_csi2rx_remove,
+	.driver = {
+		.name = TI_CSI2RX_MODULE_NAME,
+		.of_match_table = ti_csi2rx_of_match,
+	},
+};
+
+module_platform_driver(ti_csi2rx_pdrv);
+
+MODULE_DESCRIPTION("TI J721E CSI2 RX Driver");
+MODULE_AUTHOR("Jai Luthra <j-luthra@ti.com>");
+MODULE_LICENSE("GPL");

-- 
2.42.0

