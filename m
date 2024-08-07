Return-Path: <devicetree+bounces-91749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BECB94A6A9
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 13:09:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7D571F24BC7
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 11:09:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6B281E2138;
	Wed,  7 Aug 2024 11:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=collabora.com header.i=cristian.ciocaltea@collabora.com header.b="OjupSdLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com [136.143.188.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719FB1E211D;
	Wed,  7 Aug 2024 11:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723028928; cv=pass; b=MLwP4vr9dDr2dJ9C0A+2PKzugc/EZC2zTJ6VSQAfq7sLynrFk1DzAnRymCgcPMFtnqm7fai7fNhbHkSRvF94e2BKMSt83Zf1jg5UqBZNZJKErSvt5qJB61eBlCcUCg6DZFo2dX6wpRpkwfhz4tKwSxUQDo2IwJ82v8doHb27b+0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723028928; c=relaxed/simple;
	bh=N5o9DOwYVKWuCL4QaEkyQXZlhP2tiXsm5zihs5fBSds=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wou9Mg6coeVZHi9km19Ylin0pzins+NZTSuIV0OvHn3aJ7GXOYF9Ey29+43I421i9pPF7CrPrXskhYXtwr2X6RkqoNM9VBBtQMpZQTJkE1AczugPPrH4wwbKxbKLjj9+3vSYbpApmrLuitv4B9gcOQChb77ZAtuuOUS2N0x9FCE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=cristian.ciocaltea@collabora.com header.b=OjupSdLQ; arc=pass smtp.client-ip=136.143.188.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
Delivered-To: kernel@collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1723028882; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=a4pqPKAJn77iLLULNYm33iMMaPt8ZXHovv/9QFW2AP9Jkev/G7RzE9OlCEK3pKLYCL8brAWFbuc39Czf3cPLIPx8zudqju8eXauv3fbOQikipsQXuqD32MlPttDGHvQJSdUHp4eUNwqri9jO2BbNf8xo95Dae4a2+6yT2tHePUo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723028882; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=5vAPnVjyWFyFnynEwJR8a3aQZpgsOiBgyhe9XLomNpI=; 
	b=bRqAAiNOZjDnfdZ7gfdpXgrXnFImiHNTB1yoBxJh840CE55pBfTGmVKHnY0cqno5+x/lWaj3rOmtxB/I8onQtgTx49hmbev8AtcvB+tpIYmhD9G5/Ap03CaQFAsKI0SPiiLaYoTMOvEONmBvuLjfcEtBgiMUlNU1ZoBVqsFAzHc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723028882;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=5vAPnVjyWFyFnynEwJR8a3aQZpgsOiBgyhe9XLomNpI=;
	b=OjupSdLQsSl2RP8pfMmmfi+5J9/wVyaS0wEbN1AZgWKMd0nsK7PfyDOe5c8DY4yT
	rVQWyfsn3Q2Qs6LsYabxCF1/Hpa+1quz75c/cuPEiNVuv2sE7I63CVQi6vx0jqJ2r1Z
	kFA/JGRBGL1hiqGA8QwDm3I7oSijgrKwxKqMQNCE=
Received: by mx.zohomail.com with SMTPS id 172302888154761.604283507185414;
	Wed, 7 Aug 2024 04:08:01 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 07 Aug 2024 14:07:24 +0300
Subject: [PATCH v3 2/5] drm/bridge: synopsys: Add DW HDMI QP TX Controller
 support library
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240807-b4-rk3588-bridge-upstream-v3-2-60d6bab0dc7c@collabora.com>
References: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
In-Reply-To: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Algea Cao <algea.cao@rock-chips.com>
X-Mailer: b4 0.14.1
X-ZohoMailClient: External

The Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX Controller IP
supports the following features, among others:

* Fixed Rate Link (FRL)
* Display Stream Compression (DSC)
* 4K@120Hz and 8K@60Hz video modes
* Variable Refresh Rate (VRR) including Quick Media Switching (QMS), aka
  Cinema VRR
* Fast Vactive (FVA), aka Quick Frame Transport (QFT)
* SCDC I2C DDC access
* TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
* YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
* Multi-stream audio
* Enhanced Audio Return Channel (EARC)

Add library containing common helpers to enable basic support, i.e. RGB
output up to 4K@60Hz, without audio, CEC or any HDMI 2.1 specific
features.

Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/Kconfig      |   8 +
 drivers/gpu/drm/bridge/synopsys/Makefile     |   2 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 742 ++++++++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h | 834 +++++++++++++++++++++++++++
 include/drm/bridge/dw_hdmi_qp.h              |  36 ++
 5 files changed, 1622 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/Kconfig b/drivers/gpu/drm/bridge/synopsys/Kconfig
index 15fc182d05ef..ca416dab156d 100644
--- a/drivers/gpu/drm/bridge/synopsys/Kconfig
+++ b/drivers/gpu/drm/bridge/synopsys/Kconfig
@@ -46,6 +46,14 @@ config DRM_DW_HDMI_CEC
 	  Support the CE interface which is part of the Synopsys
 	  Designware HDMI block.
 
+config DRM_DW_HDMI_QP
+	tristate
+	select DRM_DISPLAY_HDMI_HELPER
+	select DRM_DISPLAY_HDMI_STATE_HELPER
+	select DRM_DISPLAY_HELPER
+	select DRM_KMS_HELPER
+	select REGMAP_MMIO
+
 config DRM_DW_MIPI_DSI
 	tristate
 	select DRM_KMS_HELPER
diff --git a/drivers/gpu/drm/bridge/synopsys/Makefile b/drivers/gpu/drm/bridge/synopsys/Makefile
index ce715562e9e5..9869d9651ed1 100644
--- a/drivers/gpu/drm/bridge/synopsys/Makefile
+++ b/drivers/gpu/drm/bridge/synopsys/Makefile
@@ -5,4 +5,6 @@ obj-$(CONFIG_DRM_DW_HDMI_GP_AUDIO) += dw-hdmi-gp-audio.o
 obj-$(CONFIG_DRM_DW_HDMI_I2S_AUDIO) += dw-hdmi-i2s-audio.o
 obj-$(CONFIG_DRM_DW_HDMI_CEC) += dw-hdmi-cec.o
 
+obj-$(CONFIG_DRM_DW_HDMI_QP) += dw-hdmi-qp.o
+
 obj-$(CONFIG_DRM_DW_MIPI_DSI) += dw-mipi-dsi.o
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
new file mode 100644
index 000000000000..891e322f5dbe
--- /dev/null
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -0,0 +1,742 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2021-2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2024 Collabora Ltd.
+ *
+ * Author: Algea Cao <algea.cao@rock-chips.com>
+ * Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
+ */
+#include <linux/clk.h>
+#include <linux/completion.h>
+#include <linux/hdmi.h>
+#include <linux/i2c.h>
+#include <linux/irq.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/of.h>
+
+#include <drm/bridge/dw_hdmi_qp.h>
+#include <drm/display/drm_hdmi_state_helper.h>
+#include <drm/display/drm_scdc_helper.h>
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_bridge.h>
+#include <drm/drm_connector.h>
+#include <drm/drm_edid.h>
+
+#include <sound/hdmi-codec.h>
+
+#include "dw-hdmi-qp.h"
+
+#define DDC_CI_ADDR		0x37
+#define DDC_SEGMENT_ADDR	0x30
+
+#define SCDC_MIN_SOURCE_VERSION	0x1
+
+#define HDMI14_MAX_TMDSCLK	340000000
+
+struct dw_hdmi_qp_i2c {
+	struct i2c_adapter	adap;
+
+	struct mutex		lock;	/* used to serialize data transfers */
+	struct completion	cmp;
+	u8			stat;
+
+	u8			slave_reg;
+	bool			is_regaddr;
+	bool			is_segment;
+};
+
+struct dw_hdmi_qp {
+	struct drm_bridge bridge;
+
+	struct device *dev;
+	struct dw_hdmi_qp_i2c *i2c;
+
+	struct {
+		const struct dw_hdmi_qp_phy_ops *ops;
+		void *data;
+	} phy;
+
+	struct clk *ref_clk;
+
+	struct drm_connector *curr_conn;
+	unsigned long long pix_clock;
+
+	struct regmap *regm;
+};
+
+/* Filter out invalid setups to avoid configuring SCDC and scrambling */
+static bool dw_hdmi_qp_support_scdc(struct dw_hdmi_qp *hdmi,
+				    const struct drm_display_info *display)
+{
+	/* Disable if no DDC bus */
+	if (!hdmi->bridge.ddc)
+		return false;
+
+	/* Disable if SCDC is not supported, or if an HF-VSDB block is absent */
+	if (!display->hdmi.scdc.supported ||
+	    !display->hdmi.scdc.scrambling.supported)
+		return false;
+
+	/*
+	 * Disable if display only support low TMDS rates and scrambling
+	 * for low rates is not supported either
+	 */
+	if (!display->hdmi.scdc.scrambling.low_rates &&
+	    display->max_tmds_clock <= 340000)
+		return false;
+
+	return true;
+}
+
+int dw_hdmi_qp_set_refclk_rate(struct dw_hdmi_qp *hdmi, unsigned long rate)
+{
+	return clk_set_rate(hdmi->ref_clk, rate);
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_qp_set_refclk_rate);
+
+/*
+ * HDMI2.0 Specifies the following procedure for High TMDS Bit Rates:
+ * - The Source shall suspend transmission of the TMDS clock and data
+ *
+ * - The Source shall write to the TMDS_Bit_Clock_Ratio bit to change it
+ *   from a 0 to a 1 or from a 1 to a 0
+ *
+ * - The Source shall allow a minimum of 1 ms and a maximum of 100 ms from
+ *   the time the TMDS_Bit_Clock_Ratio bit is written until resuming
+ *   transmission of TMDS clock and data
+ *
+ * To respect the 100ms max delay, the dw_hdmi_qp_set_high_tmds_clock_ratio()
+ * helper should be called right before enabling the TMDS Clock and Data in
+ * the PHY configuration callback.
+ */
+void dw_hdmi_qp_set_high_tmds_clock_ratio(struct dw_hdmi_qp *hdmi,
+					  const struct drm_display_info *display)
+{
+	bool set;
+
+	if (hdmi->curr_conn && dw_hdmi_qp_support_scdc(hdmi, display)) {
+		set = (hdmi->pix_clock > HDMI14_MAX_TMDSCLK);
+		drm_scdc_set_high_tmds_clock_ratio(hdmi->curr_conn, set);
+	}
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_qp_set_high_tmds_clock_ratio);
+
+static void dw_hdmi_qp_write(struct dw_hdmi_qp *hdmi, unsigned int val,
+			     int offset)
+{
+	regmap_write(hdmi->regm, offset, val);
+}
+
+static unsigned int dw_hdmi_qp_read(struct dw_hdmi_qp *hdmi, int offset)
+{
+	unsigned int val = 0;
+
+	regmap_read(hdmi->regm, offset, &val);
+
+	return val;
+}
+
+static void dw_hdmi_qp_mod(struct dw_hdmi_qp *hdmi, unsigned int data,
+			   unsigned int mask, unsigned int reg)
+{
+	regmap_update_bits(hdmi->regm, reg, mask, data);
+}
+
+static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
+			       unsigned char *buf, unsigned int length)
+{
+	struct dw_hdmi_qp_i2c *i2c = hdmi->i2c;
+	int stat;
+
+	if (!i2c->is_regaddr) {
+		dev_dbg(hdmi->dev, "set read register address to 0\n");
+		i2c->slave_reg = 0x00;
+		i2c->is_regaddr = true;
+	}
+
+	while (length--) {
+		reinit_completion(&i2c->cmp);
+
+		dw_hdmi_qp_mod(hdmi, i2c->slave_reg++ << 12, I2CM_ADDR,
+			       I2CM_INTERFACE_CONTROL0);
+
+		if (i2c->is_segment)
+			dw_hdmi_qp_mod(hdmi, I2CM_EXT_READ, I2CM_WR_MASK,
+				       I2CM_INTERFACE_CONTROL0);
+		else
+			dw_hdmi_qp_mod(hdmi, I2CM_FM_READ, I2CM_WR_MASK,
+				       I2CM_INTERFACE_CONTROL0);
+
+		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
+		if (!stat) {
+			dev_err(hdmi->dev, "i2c read timed out\n");
+			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
+			return -EAGAIN;
+		}
+
+		/* Check for error condition on the bus */
+		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
+			dev_err(hdmi->dev, "i2c read error\n");
+			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
+			return -EIO;
+		}
+
+		*buf++ = dw_hdmi_qp_read(hdmi, I2CM_INTERFACE_RDDATA_0_3) & 0xff;
+		dw_hdmi_qp_mod(hdmi, 0, I2CM_WR_MASK, I2CM_INTERFACE_CONTROL0);
+	}
+
+	i2c->is_segment = false;
+
+	return 0;
+}
+
+static int dw_hdmi_qp_i2c_write(struct dw_hdmi_qp *hdmi,
+				unsigned char *buf, unsigned int length)
+{
+	struct dw_hdmi_qp_i2c *i2c = hdmi->i2c;
+	int stat;
+
+	if (!i2c->is_regaddr) {
+		/* Use the first write byte as register address */
+		i2c->slave_reg = buf[0];
+		length--;
+		buf++;
+		i2c->is_regaddr = true;
+	}
+
+	while (length--) {
+		reinit_completion(&i2c->cmp);
+
+		dw_hdmi_qp_write(hdmi, *buf++, I2CM_INTERFACE_WRDATA_0_3);
+		dw_hdmi_qp_mod(hdmi, i2c->slave_reg++ << 12, I2CM_ADDR,
+			       I2CM_INTERFACE_CONTROL0);
+		dw_hdmi_qp_mod(hdmi, I2CM_FM_WRITE, I2CM_WR_MASK,
+			       I2CM_INTERFACE_CONTROL0);
+
+		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
+		if (!stat) {
+			dev_err(hdmi->dev, "i2c write time out!\n");
+			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
+			return -EAGAIN;
+		}
+
+		/* Check for error condition on the bus */
+		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
+			dev_err(hdmi->dev, "i2c write nack!\n");
+			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
+			return -EIO;
+		}
+
+		dw_hdmi_qp_mod(hdmi, 0, I2CM_WR_MASK, I2CM_INTERFACE_CONTROL0);
+	}
+
+	return 0;
+}
+
+static int dw_hdmi_qp_i2c_xfer(struct i2c_adapter *adap,
+			       struct i2c_msg *msgs, int num)
+{
+	struct dw_hdmi_qp *hdmi = i2c_get_adapdata(adap);
+	struct dw_hdmi_qp_i2c *i2c = hdmi->i2c;
+	u8 addr = msgs[0].addr;
+	int i, ret = 0;
+
+	if (addr == DDC_CI_ADDR)
+		/*
+		 * The internal I2C controller does not support the multi-byte
+		 * read and write operations needed for DDC/CI.
+		 * FIXME: Blacklist the DDC/CI address until we filter out
+		 * unsupported I2C operations.
+		 */
+		return -EOPNOTSUPP;
+
+	for (i = 0; i < num; i++) {
+		if (msgs[i].len == 0) {
+			dev_err(hdmi->dev,
+				"unsupported transfer %d/%d, no data\n",
+				i + 1, num);
+			return -EOPNOTSUPP;
+		}
+	}
+
+	mutex_lock(&i2c->lock);
+
+	/* Unmute DONE and ERROR interrupts */
+	dw_hdmi_qp_mod(hdmi, I2CM_NACK_RCVD_MASK_N | I2CM_OP_DONE_MASK_N,
+		       I2CM_NACK_RCVD_MASK_N | I2CM_OP_DONE_MASK_N,
+		       MAINUNIT_1_INT_MASK_N);
+
+	/* Set slave device address taken from the first I2C message */
+	if (addr == DDC_SEGMENT_ADDR && msgs[0].len == 1)
+		addr = DDC_ADDR;
+
+	dw_hdmi_qp_mod(hdmi, addr << 5, I2CM_SLVADDR, I2CM_INTERFACE_CONTROL0);
+
+	/* Set slave device register address on transfer */
+	i2c->is_regaddr = false;
+
+	/* Set segment pointer for I2C extended read mode operation */
+	i2c->is_segment = false;
+
+	for (i = 0; i < num; i++) {
+		if (msgs[i].addr == DDC_SEGMENT_ADDR && msgs[i].len == 1) {
+			i2c->is_segment = true;
+			dw_hdmi_qp_mod(hdmi, DDC_SEGMENT_ADDR, I2CM_SEG_ADDR,
+				       I2CM_INTERFACE_CONTROL1);
+			dw_hdmi_qp_mod(hdmi, *msgs[i].buf << 7, I2CM_SEG_PTR,
+				       I2CM_INTERFACE_CONTROL1);
+		} else {
+			if (msgs[i].flags & I2C_M_RD)
+				ret = dw_hdmi_qp_i2c_read(hdmi, msgs[i].buf,
+							  msgs[i].len);
+			else
+				ret = dw_hdmi_qp_i2c_write(hdmi, msgs[i].buf,
+							   msgs[i].len);
+		}
+		if (ret < 0)
+			break;
+	}
+
+	if (!ret)
+		ret = num;
+
+	/* Mute DONE and ERROR interrupts */
+	dw_hdmi_qp_mod(hdmi, 0, I2CM_OP_DONE_MASK_N | I2CM_NACK_RCVD_MASK_N,
+		       MAINUNIT_1_INT_MASK_N);
+
+	mutex_unlock(&i2c->lock);
+
+	return ret;
+}
+
+static u32 dw_hdmi_qp_i2c_func(struct i2c_adapter *adapter)
+{
+	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
+}
+
+static const struct i2c_algorithm dw_hdmi_qp_algorithm = {
+	.master_xfer	= dw_hdmi_qp_i2c_xfer,
+	.functionality	= dw_hdmi_qp_i2c_func,
+};
+
+static struct i2c_adapter *dw_hdmi_qp_i2c_adapter(struct dw_hdmi_qp *hdmi)
+{
+	struct dw_hdmi_qp_i2c *i2c;
+	struct i2c_adapter *adap;
+	int ret;
+
+	i2c = devm_kzalloc(hdmi->dev, sizeof(*i2c), GFP_KERNEL);
+	if (!i2c)
+		return ERR_PTR(-ENOMEM);
+
+	mutex_init(&i2c->lock);
+	init_completion(&i2c->cmp);
+
+	adap = &i2c->adap;
+	adap->owner = THIS_MODULE;
+	adap->dev.parent = hdmi->dev;
+	adap->algo = &dw_hdmi_qp_algorithm;
+	strscpy(adap->name, "DesignWare HDMI QP", sizeof(adap->name));
+
+	i2c_set_adapdata(adap, hdmi);
+
+	ret = devm_i2c_add_adapter(hdmi->dev, adap);
+	if (ret) {
+		dev_warn(hdmi->dev, "cannot add %s I2C adapter\n", adap->name);
+		devm_kfree(hdmi->dev, i2c);
+		return ERR_PTR(ret);
+	}
+
+	hdmi->i2c = i2c;
+	dev_info(hdmi->dev, "registered %s I2C bus driver\n", adap->name);
+
+	return adap;
+}
+
+static int dw_hdmi_qp_config_avi_infoframe(struct dw_hdmi_qp *hdmi,
+					   const u8 *buffer, size_t len)
+{
+	u32 val, i, j;
+
+	if (len != HDMI_INFOFRAME_SIZE(AVI)) {
+		dev_err(hdmi->dev, "failed to configure avi infoframe\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * DW HDMI QP IP uses a different byte format from standard AVI info
+	 * frames, though generally the bits are in the correct bytes.
+	 */
+	val = buffer[1] << 8 | buffer[2] << 16;
+	dw_hdmi_qp_write(hdmi, val, PKT_AVI_CONTENTS0);
+
+	for (i = 0; i < 4; i++) {
+		for (j = 0; j < 4; j++) {
+			if (i * 4 + j >= 14)
+				break;
+			if (!j)
+				val = buffer[i * 4 + j + 3];
+			val |= buffer[i * 4 + j + 3] << (8 * j);
+		}
+
+		dw_hdmi_qp_write(hdmi, val, PKT_AVI_CONTENTS1 + i * 4);
+	}
+
+	dw_hdmi_qp_mod(hdmi, 0, PKTSCHED_AVI_FIELDRATE, PKTSCHED_PKT_CONFIG1);
+
+	dw_hdmi_qp_mod(hdmi, PKTSCHED_AVI_TX_EN | PKTSCHED_GCP_TX_EN,
+		       PKTSCHED_AVI_TX_EN | PKTSCHED_GCP_TX_EN, PKTSCHED_PKT_EN);
+
+	return 0;
+}
+
+static int dw_hdmi_qp_config_drm_infoframe(struct dw_hdmi_qp *hdmi,
+					   const u8 *buffer, size_t len)
+{
+	u32 val, i;
+
+	if (len != HDMI_INFOFRAME_SIZE(DRM)) {
+		dev_err(hdmi->dev, "failed to configure drm infoframe\n");
+		return -EINVAL;
+	}
+
+	dw_hdmi_qp_mod(hdmi, 0, PKTSCHED_DRMI_TX_EN, PKTSCHED_PKT_EN);
+
+	val = buffer[1] << 8 | buffer[2] << 16;
+	dw_hdmi_qp_write(hdmi, val, PKT_DRMI_CONTENTS0);
+
+	for (i = 0; i <= buffer[2]; i++) {
+		if (i % 4 == 0)
+			val = buffer[3 + i];
+		val |= buffer[3 + i] << ((i % 4) * 8);
+
+		if ((i % 4 == 3) || i == buffer[2])
+			dw_hdmi_qp_write(hdmi, val,
+					 PKT_DRMI_CONTENTS1 + ((i / 4) * 4));
+	}
+
+	dw_hdmi_qp_mod(hdmi, 0, PKTSCHED_DRMI_FIELDRATE, PKTSCHED_PKT_CONFIG1);
+	dw_hdmi_qp_mod(hdmi, PKTSCHED_DRMI_TX_EN, PKTSCHED_DRMI_TX_EN,
+		       PKTSCHED_PKT_EN);
+
+	return 0;
+}
+
+static void dw_hdmi_qp_setup(struct dw_hdmi_qp *hdmi,
+			     struct drm_connector *connector)
+{
+	bool scramb;
+	u8 ver;
+
+	if (!connector->display_info.is_hdmi) {
+		dev_dbg(hdmi->dev, "%s DVI mode\n", __func__);
+
+		dw_hdmi_qp_mod(hdmi, HDCP2_BYPASS, HDCP2_BYPASS,
+			       HDCP2LOGIC_CONFIG0);
+		dw_hdmi_qp_mod(hdmi, OPMODE_DVI, OPMODE_DVI, LINK_CONFIG0);
+
+		return;
+	}
+
+	dev_dbg(hdmi->dev, "%s HDMI mode\n", __func__);
+
+	dw_hdmi_qp_mod(hdmi, 0, OPMODE_DVI, LINK_CONFIG0);
+	dw_hdmi_qp_mod(hdmi, HDCP2_BYPASS, HDCP2_BYPASS, HDCP2LOGIC_CONFIG0);
+
+	scramb = (hdmi->pix_clock > HDMI14_MAX_TMDSCLK);
+
+	if (dw_hdmi_qp_support_scdc(hdmi, &connector->display_info)) {
+		if (scramb) {
+			drm_scdc_readb(hdmi->bridge.ddc, SCDC_SINK_VERSION, &ver);
+			drm_scdc_writeb(hdmi->bridge.ddc, SCDC_SOURCE_VERSION,
+					min_t(u8, ver, SCDC_MIN_SOURCE_VERSION));
+		}
+
+		drm_scdc_set_high_tmds_clock_ratio(connector, scramb);
+		drm_scdc_set_scrambling(connector, scramb);
+	}
+
+	dw_hdmi_qp_write(hdmi, scramb, SCRAMB_CONFIG0);
+}
+
+static int dw_hdmi_qp_bridge_atomic_check(struct drm_bridge *bridge,
+					  struct drm_bridge_state *bridge_state,
+					  struct drm_crtc_state *crtc_state,
+					  struct drm_connector_state *conn_state)
+{
+	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+	int ret;
+
+	ret = drm_atomic_helper_connector_hdmi_check(conn_state->connector,
+						     conn_state->state);
+	if (ret)
+		dev_dbg(hdmi->dev, "%s failed: %d\n", __func__, ret);
+
+	return ret;
+}
+
+static void dw_hdmi_qp_bridge_atomic_enable(struct drm_bridge *bridge,
+					    struct drm_bridge_state *old_state)
+{
+	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+	struct drm_atomic_state *state = old_state->base.state;
+	struct drm_connector *connector;
+	struct drm_connector_state *conn_state;
+
+	connector = drm_atomic_get_new_connector_for_encoder(state,
+							     bridge->encoder);
+	conn_state = drm_atomic_get_new_connector_state(state, connector);
+
+	hdmi->pix_clock = conn_state->hdmi.tmds_char_rate;
+	hdmi->curr_conn = connector;
+
+	hdmi->phy.ops->init(hdmi, hdmi->phy.data, &connector->display_info);
+
+	dw_hdmi_qp_setup(hdmi, connector);
+
+	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
+}
+
+static void dw_hdmi_qp_bridge_atomic_disable(struct drm_bridge *bridge,
+					     struct drm_bridge_state *old_state)
+{
+	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+
+	hdmi->curr_conn = NULL;
+	hdmi->phy.ops->disable(hdmi, hdmi->phy.data);
+}
+
+static enum drm_connector_status
+dw_hdmi_qp_bridge_detect(struct drm_bridge *bridge)
+{
+	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+
+	return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
+}
+
+static const struct drm_edid *
+dw_hdmi_qp_bridge_edid_read(struct drm_bridge *bridge,
+			    struct drm_connector *connector)
+{
+	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+	const struct drm_edid *drm_edid;
+
+	if (!bridge->ddc)
+		return NULL;
+
+	drm_edid = drm_edid_read_ddc(connector, bridge->ddc);
+	if (!drm_edid)
+		dev_dbg(hdmi->dev, "failed to get edid\n");
+
+	return drm_edid;
+}
+
+static int dw_hdmi_qp_bridge_clear_infoframe(struct drm_bridge *bridge,
+					     enum hdmi_infoframe_type type)
+{
+	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+
+	switch (type) {
+	case HDMI_INFOFRAME_TYPE_AVI:
+		dw_hdmi_qp_mod(hdmi, 0, PKTSCHED_AVI_TX_EN | PKTSCHED_GCP_TX_EN,
+			       PKTSCHED_PKT_EN);
+		break;
+
+	case HDMI_INFOFRAME_TYPE_DRM:
+		dw_hdmi_qp_mod(hdmi, 0, PKTSCHED_DRMI_TX_EN, PKTSCHED_PKT_EN);
+		break;
+
+	default:
+		dev_dbg(hdmi->dev, "Unsupported infoframe type %x\n", type);
+	}
+
+	return 0;
+}
+
+static int dw_hdmi_qp_bridge_write_infoframe(struct drm_bridge *bridge,
+					     enum hdmi_infoframe_type type,
+					     const u8 *buffer, size_t len)
+{
+	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+
+	dw_hdmi_qp_bridge_clear_infoframe(bridge, type);
+
+	switch (type) {
+	case HDMI_INFOFRAME_TYPE_AVI:
+		return dw_hdmi_qp_config_avi_infoframe(hdmi, buffer, len);
+
+	case HDMI_INFOFRAME_TYPE_DRM:
+		return dw_hdmi_qp_config_drm_infoframe(hdmi, buffer, len);
+
+	default:
+		dev_dbg(hdmi->dev, "Unsupported infoframe type %x\n", type);
+		return 0;
+	}
+}
+
+static const struct drm_bridge_funcs dw_hdmi_qp_bridge_funcs = {
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
+	.atomic_check = dw_hdmi_qp_bridge_atomic_check,
+	.atomic_enable = dw_hdmi_qp_bridge_atomic_enable,
+	.atomic_disable = dw_hdmi_qp_bridge_atomic_disable,
+	.detect = dw_hdmi_qp_bridge_detect,
+	.edid_read = dw_hdmi_qp_bridge_edid_read,
+	.hdmi_clear_infoframe = dw_hdmi_qp_bridge_clear_infoframe,
+	.hdmi_write_infoframe = dw_hdmi_qp_bridge_write_infoframe,
+};
+
+static irqreturn_t dw_hdmi_qp_main_hardirq(int irq, void *dev_id)
+{
+	struct dw_hdmi_qp *hdmi = dev_id;
+	struct dw_hdmi_qp_i2c *i2c = hdmi->i2c;
+	u32 stat;
+
+	stat = dw_hdmi_qp_read(hdmi, MAINUNIT_1_INT_STATUS);
+
+	i2c->stat = stat & (I2CM_OP_DONE_IRQ | I2CM_READ_REQUEST_IRQ |
+			    I2CM_NACK_RCVD_IRQ);
+
+	if (i2c->stat) {
+		dw_hdmi_qp_write(hdmi, i2c->stat, MAINUNIT_1_INT_CLEAR);
+		complete(&i2c->cmp);
+	}
+
+	if (stat)
+		return IRQ_HANDLED;
+
+	return IRQ_NONE;
+}
+
+static const struct regmap_config dw_hdmi_qp_regmap_config = {
+	.reg_bits	= 32,
+	.val_bits	= 32,
+	.reg_stride	= 4,
+	.max_register	= EARCRX_1_INT_FORCE,
+};
+
+static void dw_hdmi_qp_init_hw(struct dw_hdmi_qp *hdmi)
+{
+	dw_hdmi_qp_write(hdmi, 0, MAINUNIT_0_INT_MASK_N);
+	dw_hdmi_qp_write(hdmi, 0, MAINUNIT_1_INT_MASK_N);
+	dw_hdmi_qp_write(hdmi, 428571429, TIMER_BASE_CONFIG0);
+
+	/* Software reset */
+	dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
+
+	dw_hdmi_qp_write(hdmi, 0x085c085c, I2CM_FM_SCL_CONFIG0);
+
+	dw_hdmi_qp_mod(hdmi, 0, I2CM_FM_EN, I2CM_INTERFACE_CONTROL0);
+
+	/* Clear DONE and ERROR interrupts */
+	dw_hdmi_qp_write(hdmi, I2CM_OP_DONE_CLEAR | I2CM_NACK_RCVD_CLEAR,
+			 MAINUNIT_1_INT_CLEAR);
+
+	if (hdmi->phy.ops->setup_hpd)
+		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
+}
+
+struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
+				   struct drm_encoder *encoder,
+				   const struct dw_hdmi_qp_plat_data *plat_data)
+{
+	static const char * const clk_names[] = {
+		"pclk", "earc", "aud", "ref" /* keep "ref" last */
+	};
+	struct device *dev = &pdev->dev;
+	struct dw_hdmi_qp *hdmi;
+	void __iomem *regs;
+	struct clk *clk;
+	int irq, ret, i;
+
+	if (!plat_data->phy_ops || !plat_data->phy_ops->init ||
+	    !plat_data->phy_ops->disable || !plat_data->phy_ops->read_hpd) {
+		dev_err(dev, "Missing platform PHY ops\n");
+		return ERR_PTR(-ENODEV);
+	}
+
+	hdmi = devm_kzalloc(dev, sizeof(*hdmi), GFP_KERNEL);
+	if (!hdmi)
+		return ERR_PTR(-ENOMEM);
+
+	hdmi->dev = dev;
+
+	regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(regs))
+		return regs;
+
+	hdmi->regm = devm_regmap_init_mmio(dev, regs, &dw_hdmi_qp_regmap_config);
+	if (IS_ERR(hdmi->regm)) {
+		dev_err(dev, "Failed to configure regmap\n");
+		return ERR_CAST(hdmi->regm);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(clk_names); i++) {
+		clk = devm_clk_get_enabled(hdmi->dev, clk_names[i]);
+
+		if (IS_ERR(clk)) {
+			if (PTR_ERR(clk) != -EPROBE_DEFER)
+				dev_err(dev, "Failed to get %s clock\n",
+					clk_names[i]);
+			return ERR_CAST(clk);
+		}
+	}
+	hdmi->ref_clk = clk;
+
+	hdmi->phy.ops = plat_data->phy_ops;
+	hdmi->phy.data = plat_data->phy_data;
+
+	dw_hdmi_qp_init_hw(hdmi);
+
+	irq = platform_get_irq_byname(pdev, "main");
+	if (irq < 0)
+		return ERR_PTR(irq);
+
+	ret = devm_request_threaded_irq(dev, irq,
+					dw_hdmi_qp_main_hardirq, NULL,
+					IRQF_SHARED, dev_name(dev), hdmi);
+	if (ret)
+		return ERR_PTR(ret);
+
+	hdmi->bridge.driver_private = hdmi;
+	hdmi->bridge.funcs = &dw_hdmi_qp_bridge_funcs;
+	hdmi->bridge.ops = DRM_BRIDGE_OP_DETECT |
+			   DRM_BRIDGE_OP_EDID |
+			   DRM_BRIDGE_OP_HDMI |
+			   DRM_BRIDGE_OP_HPD;
+	hdmi->bridge.of_node = pdev->dev.of_node;
+	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
+	hdmi->bridge.vendor = "Synopsys";
+	hdmi->bridge.product = "DW HDMI QP TX";
+
+	hdmi->bridge.ddc = dw_hdmi_qp_i2c_adapter(hdmi);
+	if (IS_ERR(hdmi->bridge.ddc))
+		hdmi->bridge.ddc = NULL;
+
+	ret = devm_drm_bridge_add(dev, &hdmi->bridge);
+	if (ret)
+		return ERR_PTR(ret);
+
+	ret = drm_bridge_attach(encoder, &hdmi->bridge, NULL,
+				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return hdmi;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_qp_bind);
+
+void dw_hdmi_qp_resume(struct device *dev, struct dw_hdmi_qp *hdmi)
+{
+	dw_hdmi_qp_init_hw(hdmi);
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_qp_resume);
+
+MODULE_AUTHOR("Algea Cao <algea.cao@rock-chips.com>");
+MODULE_AUTHOR("Cristian Ciocaltea <cristian.ciocaltea@collabora.com>");
+MODULE_DESCRIPTION("DW HDMI QP transmitter library");
+MODULE_LICENSE("GPL");
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h
new file mode 100644
index 000000000000..2115b8ef0bd6
--- /dev/null
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h
@@ -0,0 +1,834 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) Rockchip Electronics Co.Ltd
+ * Author:
+ *      Algea Cao <algea.cao@rock-chips.com>
+ */
+#ifndef __DW_HDMI_QP_H__
+#define __DW_HDMI_QP_H__
+
+#include <linux/bits.h>
+
+/* Main Unit Registers */
+#define CORE_ID						0x0
+#define VER_NUMBER					0x4
+#define VER_TYPE					0x8
+#define CONFIG_REG					0xc
+#define CONFIG_CEC					BIT(28)
+#define CONFIG_AUD_UD					BIT(23)
+#define CORE_TIMESTAMP_HHMM				0x14
+#define CORE_TIMESTAMP_MMDD				0x18
+#define CORE_TIMESTAMP_YYYY				0x1c
+/* Reset Manager Registers */
+#define GLOBAL_SWRESET_REQUEST				0x40
+#define EARCRX_CMDC_SWINIT_P				BIT(27)
+#define AVP_DATAPATH_PACKET_AUDIO_SWINIT_P		BIT(10)
+#define GLOBAL_SWDISABLE				0x44
+#define CEC_SWDISABLE					BIT(17)
+#define AVP_DATAPATH_PACKET_AUDIO_SWDISABLE		BIT(10)
+#define AVP_DATAPATH_VIDEO_SWDISABLE			BIT(6)
+#define RESET_MANAGER_CONFIG0				0x48
+#define RESET_MANAGER_STATUS0				0x50
+#define RESET_MANAGER_STATUS1				0x54
+#define RESET_MANAGER_STATUS2				0x58
+/* Timer Base Registers */
+#define TIMER_BASE_CONFIG0				0x80
+#define TIMER_BASE_STATUS0				0x84
+/* CMU Registers */
+#define CMU_CONFIG0					0xa0
+#define CMU_CONFIG1					0xa4
+#define CMU_CONFIG2					0xa8
+#define CMU_CONFIG3					0xac
+#define CMU_STATUS					0xb0
+#define DISPLAY_CLK_MONITOR				0x3f
+#define DISPLAY_CLK_LOCKED				0X15
+#define EARC_BPCLK_OFF					BIT(9)
+#define AUDCLK_OFF					BIT(7)
+#define LINKQPCLK_OFF					BIT(5)
+#define VIDQPCLK_OFF					BIT(3)
+#define IPI_CLK_OFF					BIT(1)
+#define CMU_IPI_CLK_FREQ				0xb4
+#define CMU_VIDQPCLK_FREQ				0xb8
+#define CMU_LINKQPCLK_FREQ				0xbc
+#define CMU_AUDQPCLK_FREQ				0xc0
+#define CMU_EARC_BPCLK_FREQ				0xc4
+/* I2CM Registers */
+#define I2CM_SM_SCL_CONFIG0				0xe0
+#define I2CM_FM_SCL_CONFIG0				0xe4
+#define I2CM_CONFIG0					0xe8
+#define I2CM_CONTROL0					0xec
+#define I2CM_STATUS0					0xf0
+#define I2CM_INTERFACE_CONTROL0				0xf4
+#define I2CM_ADDR					0xff000
+#define I2CM_SLVADDR					0xfe0
+#define I2CM_WR_MASK					0x1e
+#define I2CM_EXT_READ					BIT(4)
+#define I2CM_SHORT_READ					BIT(3)
+#define I2CM_FM_READ					BIT(2)
+#define I2CM_FM_WRITE					BIT(1)
+#define I2CM_FM_EN					BIT(0)
+#define I2CM_INTERFACE_CONTROL1				0xf8
+#define I2CM_SEG_PTR					0x7f80
+#define I2CM_SEG_ADDR					0x7f
+#define I2CM_INTERFACE_WRDATA_0_3			0xfc
+#define I2CM_INTERFACE_WRDATA_4_7			0x100
+#define I2CM_INTERFACE_WRDATA_8_11			0x104
+#define I2CM_INTERFACE_WRDATA_12_15			0x108
+#define I2CM_INTERFACE_RDDATA_0_3			0x10c
+#define I2CM_INTERFACE_RDDATA_4_7			0x110
+#define I2CM_INTERFACE_RDDATA_8_11			0x114
+#define I2CM_INTERFACE_RDDATA_12_15			0x118
+/* SCDC Registers */
+#define SCDC_CONFIG0					0x140
+#define SCDC_I2C_FM_EN					BIT(12)
+#define SCDC_UPD_FLAGS_AUTO_CLR				BIT(6)
+#define SCDC_UPD_FLAGS_POLL_EN				BIT(4)
+#define SCDC_CONTROL0					0x148
+#define SCDC_STATUS0					0x150
+#define STATUS_UPDATE					BIT(0)
+#define FRL_START					BIT(4)
+#define FLT_UPDATE					BIT(5)
+/* FLT Registers */
+#define FLT_CONFIG0					0x160
+#define FLT_CONFIG1					0x164
+#define FLT_CONFIG2					0x168
+#define FLT_CONTROL0					0x170
+/*  Main Unit 2 Registers */
+#define MAINUNIT_STATUS0				0x180
+/* Video Interface Registers */
+#define VIDEO_INTERFACE_CONFIG0				0x800
+#define VIDEO_INTERFACE_CONFIG1				0x804
+#define VIDEO_INTERFACE_CONFIG2				0x808
+#define VIDEO_INTERFACE_CONTROL0			0x80c
+#define VIDEO_INTERFACE_STATUS0				0x814
+/* Video Packing Registers */
+#define VIDEO_PACKING_CONFIG0				0x81c
+/* Audio Interface Registers */
+#define AUDIO_INTERFACE_CONFIG0				0x820
+#define AUD_IF_SEL_MSK					0x3
+#define AUD_IF_SPDIF					0x2
+#define AUD_IF_I2S					0x1
+#define AUD_IF_PAI					0x0
+#define AUD_FIFO_INIT_ON_OVF_MSK			BIT(2)
+#define AUD_FIFO_INIT_ON_OVF_EN				BIT(2)
+#define I2S_LINES_EN_MSK				GENMASK(7, 4)
+#define I2S_LINES_EN(x)					BIT((x) + 4)
+#define I2S_BPCUV_RCV_MSK				BIT(12)
+#define I2S_BPCUV_RCV_EN				BIT(12)
+#define I2S_BPCUV_RCV_DIS				0
+#define SPDIF_LINES_EN					GENMASK(19, 16)
+#define AUD_FORMAT_MSK					GENMASK(26, 24)
+#define AUD_3DOBA					(0x7 << 24)
+#define AUD_3DASP					(0x6 << 24)
+#define AUD_MSOBA					(0x5 << 24)
+#define AUD_MSASP					(0x4 << 24)
+#define AUD_HBR						(0x3 << 24)
+#define AUD_DST						(0x2 << 24)
+#define AUD_OBA						(0x1 << 24)
+#define AUD_ASP						(0x0 << 24)
+#define AUDIO_INTERFACE_CONFIG1				0x824
+#define AUDIO_INTERFACE_CONTROL0			0x82c
+#define AUDIO_FIFO_CLR_P				BIT(0)
+#define AUDIO_INTERFACE_STATUS0				0x834
+/* Frame Composer Registers */
+#define FRAME_COMPOSER_CONFIG0				0x840
+#define FRAME_COMPOSER_CONFIG1				0x844
+#define FRAME_COMPOSER_CONFIG2				0x848
+#define FRAME_COMPOSER_CONFIG3				0x84c
+#define FRAME_COMPOSER_CONFIG4				0x850
+#define FRAME_COMPOSER_CONFIG5				0x854
+#define FRAME_COMPOSER_CONFIG6				0x858
+#define FRAME_COMPOSER_CONFIG7				0x85c
+#define FRAME_COMPOSER_CONFIG8				0x860
+#define FRAME_COMPOSER_CONFIG9				0x864
+#define FRAME_COMPOSER_CONTROL0				0x86c
+/* Video Monitor Registers */
+#define VIDEO_MONITOR_CONFIG0				0x880
+#define VIDEO_MONITOR_STATUS0				0x884
+#define VIDEO_MONITOR_STATUS1				0x888
+#define VIDEO_MONITOR_STATUS2				0x88c
+#define VIDEO_MONITOR_STATUS3				0x890
+#define VIDEO_MONITOR_STATUS4				0x894
+#define VIDEO_MONITOR_STATUS5				0x898
+#define VIDEO_MONITOR_STATUS6				0x89c
+/* HDCP2 Logic Registers */
+#define HDCP2LOGIC_CONFIG0				0x8e0
+#define HDCP2_BYPASS					BIT(0)
+#define HDCP2LOGIC_ESM_GPIO_IN				0x8e4
+#define HDCP2LOGIC_ESM_GPIO_OUT				0x8e8
+/* HDCP14 Registers */
+#define HDCP14_CONFIG0					0x900
+#define HDCP14_CONFIG1					0x904
+#define HDCP14_CONFIG2					0x908
+#define HDCP14_CONFIG3					0x90c
+#define HDCP14_KEY_SEED					0x914
+#define HDCP14_KEY_H					0x918
+#define HDCP14_KEY_L					0x91c
+#define HDCP14_KEY_STATUS				0x920
+#define HDCP14_AKSV_H					0x924
+#define HDCP14_AKSV_L					0x928
+#define HDCP14_AN_H					0x92c
+#define HDCP14_AN_L					0x930
+#define HDCP14_STATUS0					0x934
+#define HDCP14_STATUS1					0x938
+/* Scrambler Registers */
+#define SCRAMB_CONFIG0					0x960
+/* Video Configuration Registers */
+#define LINK_CONFIG0					0x968
+#define OPMODE_FRL_4LANES				BIT(8)
+#define OPMODE_DVI					BIT(4)
+#define OPMODE_FRL					BIT(0)
+/* TMDS FIFO Registers */
+#define TMDS_FIFO_CONFIG0				0x970
+#define TMDS_FIFO_CONTROL0				0x974
+/* FRL RSFEC Registers */
+#define FRL_RSFEC_CONFIG0				0xa20
+#define FRL_RSFEC_STATUS0				0xa30
+/* FRL Packetizer Registers */
+#define FRL_PKTZ_CONFIG0				0xa40
+#define FRL_PKTZ_CONTROL0				0xa44
+#define FRL_PKTZ_CONTROL1				0xa50
+#define FRL_PKTZ_STATUS1				0xa54
+/* Packet Scheduler Registers */
+#define PKTSCHED_CONFIG0				0xa80
+#define PKTSCHED_PRQUEUE0_CONFIG0			0xa84
+#define PKTSCHED_PRQUEUE1_CONFIG0			0xa88
+#define PKTSCHED_PRQUEUE2_CONFIG0			0xa8c
+#define PKTSCHED_PRQUEUE2_CONFIG1			0xa90
+#define PKTSCHED_PRQUEUE2_CONFIG2			0xa94
+#define PKTSCHED_PKT_CONFIG0				0xa98
+#define PKTSCHED_PKT_CONFIG1				0xa9c
+#define PKTSCHED_DRMI_FIELDRATE				BIT(13)
+#define PKTSCHED_AVI_FIELDRATE				BIT(12)
+#define PKTSCHED_PKT_CONFIG2				0xaa0
+#define PKTSCHED_PKT_CONFIG3				0xaa4
+#define PKTSCHED_PKT_EN					0xaa8
+#define PKTSCHED_DRMI_TX_EN				BIT(17)
+#define PKTSCHED_AUDI_TX_EN				BIT(15)
+#define PKTSCHED_AVI_TX_EN				BIT(13)
+#define PKTSCHED_EMP_CVTEM_TX_EN			BIT(10)
+#define PKTSCHED_AMD_TX_EN				BIT(8)
+#define PKTSCHED_GCP_TX_EN				BIT(3)
+#define PKTSCHED_AUDS_TX_EN				BIT(2)
+#define PKTSCHED_ACR_TX_EN				BIT(1)
+#define PKTSCHED_NULL_TX_EN				BIT(0)
+#define PKTSCHED_PKT_CONTROL0				0xaac
+#define PKTSCHED_PKT_SEND				0xab0
+#define PKTSCHED_PKT_STATUS0				0xab4
+#define PKTSCHED_PKT_STATUS1				0xab8
+#define PKT_NULL_CONTENTS0				0xb00
+#define PKT_NULL_CONTENTS1				0xb04
+#define PKT_NULL_CONTENTS2				0xb08
+#define PKT_NULL_CONTENTS3				0xb0c
+#define PKT_NULL_CONTENTS4				0xb10
+#define PKT_NULL_CONTENTS5				0xb14
+#define PKT_NULL_CONTENTS6				0xb18
+#define PKT_NULL_CONTENTS7				0xb1c
+#define PKT_ACP_CONTENTS0				0xb20
+#define PKT_ACP_CONTENTS1				0xb24
+#define PKT_ACP_CONTENTS2				0xb28
+#define PKT_ACP_CONTENTS3				0xb2c
+#define PKT_ACP_CONTENTS4				0xb30
+#define PKT_ACP_CONTENTS5				0xb34
+#define PKT_ACP_CONTENTS6				0xb38
+#define PKT_ACP_CONTENTS7				0xb3c
+#define PKT_ISRC1_CONTENTS0				0xb40
+#define PKT_ISRC1_CONTENTS1				0xb44
+#define PKT_ISRC1_CONTENTS2				0xb48
+#define PKT_ISRC1_CONTENTS3				0xb4c
+#define PKT_ISRC1_CONTENTS4				0xb50
+#define PKT_ISRC1_CONTENTS5				0xb54
+#define PKT_ISRC1_CONTENTS6				0xb58
+#define PKT_ISRC1_CONTENTS7				0xb5c
+#define PKT_ISRC2_CONTENTS0				0xb60
+#define PKT_ISRC2_CONTENTS1				0xb64
+#define PKT_ISRC2_CONTENTS2				0xb68
+#define PKT_ISRC2_CONTENTS3				0xb6c
+#define PKT_ISRC2_CONTENTS4				0xb70
+#define PKT_ISRC2_CONTENTS5				0xb74
+#define PKT_ISRC2_CONTENTS6				0xb78
+#define PKT_ISRC2_CONTENTS7				0xb7c
+#define PKT_GMD_CONTENTS0				0xb80
+#define PKT_GMD_CONTENTS1				0xb84
+#define PKT_GMD_CONTENTS2				0xb88
+#define PKT_GMD_CONTENTS3				0xb8c
+#define PKT_GMD_CONTENTS4				0xb90
+#define PKT_GMD_CONTENTS5				0xb94
+#define PKT_GMD_CONTENTS6				0xb98
+#define PKT_GMD_CONTENTS7				0xb9c
+#define PKT_AMD_CONTENTS0				0xba0
+#define PKT_AMD_CONTENTS1				0xba4
+#define PKT_AMD_CONTENTS2				0xba8
+#define PKT_AMD_CONTENTS3				0xbac
+#define PKT_AMD_CONTENTS4				0xbb0
+#define PKT_AMD_CONTENTS5				0xbb4
+#define PKT_AMD_CONTENTS6				0xbb8
+#define PKT_AMD_CONTENTS7				0xbbc
+#define PKT_VSI_CONTENTS0				0xbc0
+#define PKT_VSI_CONTENTS1				0xbc4
+#define PKT_VSI_CONTENTS2				0xbc8
+#define PKT_VSI_CONTENTS3				0xbcc
+#define PKT_VSI_CONTENTS4				0xbd0
+#define PKT_VSI_CONTENTS5				0xbd4
+#define PKT_VSI_CONTENTS6				0xbd8
+#define PKT_VSI_CONTENTS7				0xbdc
+#define PKT_AVI_CONTENTS0				0xbe0
+#define HDMI_FC_AVICONF0_ACTIVE_FMT_INFO_PRESENT	BIT(4)
+#define HDMI_FC_AVICONF0_BAR_DATA_VERT_BAR		0x04
+#define HDMI_FC_AVICONF0_BAR_DATA_HORIZ_BAR		0x08
+#define HDMI_FC_AVICONF2_IT_CONTENT_VALID		0x80
+#define PKT_AVI_CONTENTS1				0xbe4
+#define PKT_AVI_CONTENTS2				0xbe8
+#define PKT_AVI_CONTENTS3				0xbec
+#define PKT_AVI_CONTENTS4				0xbf0
+#define PKT_AVI_CONTENTS5				0xbf4
+#define PKT_AVI_CONTENTS6				0xbf8
+#define PKT_AVI_CONTENTS7				0xbfc
+#define PKT_SPDI_CONTENTS0				0xc00
+#define PKT_SPDI_CONTENTS1				0xc04
+#define PKT_SPDI_CONTENTS2				0xc08
+#define PKT_SPDI_CONTENTS3				0xc0c
+#define PKT_SPDI_CONTENTS4				0xc10
+#define PKT_SPDI_CONTENTS5				0xc14
+#define PKT_SPDI_CONTENTS6				0xc18
+#define PKT_SPDI_CONTENTS7				0xc1c
+#define PKT_AUDI_CONTENTS0				0xc20
+#define PKT_AUDI_CONTENTS1				0xc24
+#define PKT_AUDI_CONTENTS2				0xc28
+#define PKT_AUDI_CONTENTS3				0xc2c
+#define PKT_AUDI_CONTENTS4				0xc30
+#define PKT_AUDI_CONTENTS5				0xc34
+#define PKT_AUDI_CONTENTS6				0xc38
+#define PKT_AUDI_CONTENTS7				0xc3c
+#define PKT_NVI_CONTENTS0				0xc40
+#define PKT_NVI_CONTENTS1				0xc44
+#define PKT_NVI_CONTENTS2				0xc48
+#define PKT_NVI_CONTENTS3				0xc4c
+#define PKT_NVI_CONTENTS4				0xc50
+#define PKT_NVI_CONTENTS5				0xc54
+#define PKT_NVI_CONTENTS6				0xc58
+#define PKT_NVI_CONTENTS7				0xc5c
+#define PKT_DRMI_CONTENTS0				0xc60
+#define PKT_DRMI_CONTENTS1				0xc64
+#define PKT_DRMI_CONTENTS2				0xc68
+#define PKT_DRMI_CONTENTS3				0xc6c
+#define PKT_DRMI_CONTENTS4				0xc70
+#define PKT_DRMI_CONTENTS5				0xc74
+#define PKT_DRMI_CONTENTS6				0xc78
+#define PKT_DRMI_CONTENTS7				0xc7c
+#define PKT_GHDMI1_CONTENTS0				0xc80
+#define PKT_GHDMI1_CONTENTS1				0xc84
+#define PKT_GHDMI1_CONTENTS2				0xc88
+#define PKT_GHDMI1_CONTENTS3				0xc8c
+#define PKT_GHDMI1_CONTENTS4				0xc90
+#define PKT_GHDMI1_CONTENTS5				0xc94
+#define PKT_GHDMI1_CONTENTS6				0xc98
+#define PKT_GHDMI1_CONTENTS7				0xc9c
+#define PKT_GHDMI2_CONTENTS0				0xca0
+#define PKT_GHDMI2_CONTENTS1				0xca4
+#define PKT_GHDMI2_CONTENTS2				0xca8
+#define PKT_GHDMI2_CONTENTS3				0xcac
+#define PKT_GHDMI2_CONTENTS4				0xcb0
+#define PKT_GHDMI2_CONTENTS5				0xcb4
+#define PKT_GHDMI2_CONTENTS6				0xcb8
+#define PKT_GHDMI2_CONTENTS7				0xcbc
+/* EMP Packetizer Registers */
+#define PKT_EMP_CONFIG0					0xce0
+#define PKT_EMP_CONTROL0				0xcec
+#define PKT_EMP_CONTROL1				0xcf0
+#define PKT_EMP_CONTROL2				0xcf4
+#define PKT_EMP_VTEM_CONTENTS0				0xd00
+#define PKT_EMP_VTEM_CONTENTS1				0xd04
+#define PKT_EMP_VTEM_CONTENTS2				0xd08
+#define PKT_EMP_VTEM_CONTENTS3				0xd0c
+#define PKT_EMP_VTEM_CONTENTS4				0xd10
+#define PKT_EMP_VTEM_CONTENTS5				0xd14
+#define PKT_EMP_VTEM_CONTENTS6				0xd18
+#define PKT_EMP_VTEM_CONTENTS7				0xd1c
+#define PKT0_EMP_CVTEM_CONTENTS0			0xd20
+#define PKT0_EMP_CVTEM_CONTENTS1			0xd24
+#define PKT0_EMP_CVTEM_CONTENTS2			0xd28
+#define PKT0_EMP_CVTEM_CONTENTS3			0xd2c
+#define PKT0_EMP_CVTEM_CONTENTS4			0xd30
+#define PKT0_EMP_CVTEM_CONTENTS5			0xd34
+#define PKT0_EMP_CVTEM_CONTENTS6			0xd38
+#define PKT0_EMP_CVTEM_CONTENTS7			0xd3c
+#define PKT1_EMP_CVTEM_CONTENTS0			0xd40
+#define PKT1_EMP_CVTEM_CONTENTS1			0xd44
+#define PKT1_EMP_CVTEM_CONTENTS2			0xd48
+#define PKT1_EMP_CVTEM_CONTENTS3			0xd4c
+#define PKT1_EMP_CVTEM_CONTENTS4			0xd50
+#define PKT1_EMP_CVTEM_CONTENTS5			0xd54
+#define PKT1_EMP_CVTEM_CONTENTS6			0xd58
+#define PKT1_EMP_CVTEM_CONTENTS7			0xd5c
+#define PKT2_EMP_CVTEM_CONTENTS0			0xd60
+#define PKT2_EMP_CVTEM_CONTENTS1			0xd64
+#define PKT2_EMP_CVTEM_CONTENTS2			0xd68
+#define PKT2_EMP_CVTEM_CONTENTS3			0xd6c
+#define PKT2_EMP_CVTEM_CONTENTS4			0xd70
+#define PKT2_EMP_CVTEM_CONTENTS5			0xd74
+#define PKT2_EMP_CVTEM_CONTENTS6			0xd78
+#define PKT2_EMP_CVTEM_CONTENTS7			0xd7c
+#define PKT3_EMP_CVTEM_CONTENTS0			0xd80
+#define PKT3_EMP_CVTEM_CONTENTS1			0xd84
+#define PKT3_EMP_CVTEM_CONTENTS2			0xd88
+#define PKT3_EMP_CVTEM_CONTENTS3			0xd8c
+#define PKT3_EMP_CVTEM_CONTENTS4			0xd90
+#define PKT3_EMP_CVTEM_CONTENTS5			0xd94
+#define PKT3_EMP_CVTEM_CONTENTS6			0xd98
+#define PKT3_EMP_CVTEM_CONTENTS7			0xd9c
+#define PKT4_EMP_CVTEM_CONTENTS0			0xda0
+#define PKT4_EMP_CVTEM_CONTENTS1			0xda4
+#define PKT4_EMP_CVTEM_CONTENTS2			0xda8
+#define PKT4_EMP_CVTEM_CONTENTS3			0xdac
+#define PKT4_EMP_CVTEM_CONTENTS4			0xdb0
+#define PKT4_EMP_CVTEM_CONTENTS5			0xdb4
+#define PKT4_EMP_CVTEM_CONTENTS6			0xdb8
+#define PKT4_EMP_CVTEM_CONTENTS7			0xdbc
+#define PKT5_EMP_CVTEM_CONTENTS0			0xdc0
+#define PKT5_EMP_CVTEM_CONTENTS1			0xdc4
+#define PKT5_EMP_CVTEM_CONTENTS2			0xdc8
+#define PKT5_EMP_CVTEM_CONTENTS3			0xdcc
+#define PKT5_EMP_CVTEM_CONTENTS4			0xdd0
+#define PKT5_EMP_CVTEM_CONTENTS5			0xdd4
+#define PKT5_EMP_CVTEM_CONTENTS6			0xdd8
+#define PKT5_EMP_CVTEM_CONTENTS7			0xddc
+/* Audio Packetizer Registers */
+#define AUDPKT_CONTROL0					0xe20
+#define AUDPKT_PBIT_FORCE_EN_MASK			BIT(12)
+#define AUDPKT_PBIT_FORCE_EN				BIT(12)
+#define AUDPKT_CHSTATUS_OVR_EN_MASK			BIT(0)
+#define AUDPKT_CHSTATUS_OVR_EN				BIT(0)
+#define AUDPKT_CONTROL1					0xe24
+#define AUDPKT_ACR_CONTROL0				0xe40
+#define AUDPKT_ACR_N_VALUE				0xfffff
+#define AUDPKT_ACR_CONTROL1				0xe44
+#define AUDPKT_ACR_CTS_OVR_VAL_MSK			GENMASK(23, 4)
+#define AUDPKT_ACR_CTS_OVR_VAL(x)			((x) << 4)
+#define AUDPKT_ACR_CTS_OVR_EN_MSK			BIT(1)
+#define AUDPKT_ACR_CTS_OVR_EN				BIT(1)
+#define AUDPKT_ACR_STATUS0				0xe4c
+#define AUDPKT_CHSTATUS_OVR0				0xe60
+#define AUDPKT_CHSTATUS_OVR1				0xe64
+/* IEC60958 Byte 3: Sampleing frenuency Bits 24 to 27 */
+#define AUDPKT_CHSTATUS_SR_MASK				GENMASK(3, 0)
+#define AUDPKT_CHSTATUS_SR_22050			0x4
+#define AUDPKT_CHSTATUS_SR_24000			0x6
+#define AUDPKT_CHSTATUS_SR_32000			0x3
+#define AUDPKT_CHSTATUS_SR_44100			0x0
+#define AUDPKT_CHSTATUS_SR_48000			0x2
+#define AUDPKT_CHSTATUS_SR_88200			0x8
+#define AUDPKT_CHSTATUS_SR_96000			0xa
+#define AUDPKT_CHSTATUS_SR_176400			0xc
+#define AUDPKT_CHSTATUS_SR_192000			0xe
+#define AUDPKT_CHSTATUS_SR_768000			0x9
+#define AUDPKT_CHSTATUS_SR_NOT_INDICATED		0x1
+/* IEC60958 Byte 4: Original Sampleing frenuency Bits 36 to 39 */
+#define AUDPKT_CHSTATUS_0SR_MASK			GENMASK(15, 12)
+#define AUDPKT_CHSTATUS_OSR_8000			0x6
+#define AUDPKT_CHSTATUS_OSR_11025			0xa
+#define AUDPKT_CHSTATUS_OSR_12000			0x2
+#define AUDPKT_CHSTATUS_OSR_16000			0x8
+#define AUDPKT_CHSTATUS_OSR_22050			0xb
+#define AUDPKT_CHSTATUS_OSR_24000			0x9
+#define AUDPKT_CHSTATUS_OSR_32000			0xc
+#define AUDPKT_CHSTATUS_OSR_44100			0xf
+#define AUDPKT_CHSTATUS_OSR_48000			0xd
+#define AUDPKT_CHSTATUS_OSR_88200			0x7
+#define AUDPKT_CHSTATUS_OSR_96000			0x5
+#define AUDPKT_CHSTATUS_OSR_176400			0x3
+#define AUDPKT_CHSTATUS_OSR_192000			0x1
+#define AUDPKT_CHSTATUS_OSR_NOT_INDICATED		0x0
+#define AUDPKT_CHSTATUS_OVR2				0xe68
+#define AUDPKT_CHSTATUS_OVR3				0xe6c
+#define AUDPKT_CHSTATUS_OVR4				0xe70
+#define AUDPKT_CHSTATUS_OVR5				0xe74
+#define AUDPKT_CHSTATUS_OVR6				0xe78
+#define AUDPKT_CHSTATUS_OVR7				0xe7c
+#define AUDPKT_CHSTATUS_OVR8				0xe80
+#define AUDPKT_CHSTATUS_OVR9				0xe84
+#define AUDPKT_CHSTATUS_OVR10				0xe88
+#define AUDPKT_CHSTATUS_OVR11				0xe8c
+#define AUDPKT_CHSTATUS_OVR12				0xe90
+#define AUDPKT_CHSTATUS_OVR13				0xe94
+#define AUDPKT_CHSTATUS_OVR14				0xe98
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC0			0xea0
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC1			0xea4
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC2			0xea8
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC3			0xeac
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC4			0xeb0
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC5			0xeb4
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC6			0xeb8
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC7			0xebc
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC8			0xec0
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC9			0xec4
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC10		0xec8
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC11		0xecc
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC12		0xed0
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC13		0xed4
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC14		0xed8
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC15		0xedc
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC16		0xee0
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC17		0xee4
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC18		0xee8
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC19		0xeec
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC20		0xef0
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC21		0xef4
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC22		0xef8
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC23		0xefc
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC24		0xf00
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC25		0xf04
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC26		0xf08
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC27		0xf0c
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC28		0xf10
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC29		0xf14
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC30		0xf18
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC31		0xf1c
+#define AUDPKT_USRDATA_OVR_MSG_GENERIC32		0xf20
+#define AUDPKT_VBIT_OVR0				0xf24
+/* CEC Registers */
+#define CEC_TX_CONTROL					0x1000
+#define CEC_STATUS					0x1004
+#define CEC_CONFIG					0x1008
+#define CEC_ADDR					0x100c
+#define CEC_TX_COUNT					0x1020
+#define CEC_TX_DATA3_0					0x1024
+#define CEC_TX_DATA7_4					0x1028
+#define CEC_TX_DATA11_8					0x102c
+#define CEC_TX_DATA15_12				0x1030
+#define CEC_RX_COUNT_STATUS				0x1040
+#define CEC_RX_DATA3_0					0x1044
+#define CEC_RX_DATA7_4					0x1048
+#define CEC_RX_DATA11_8					0x104c
+#define CEC_RX_DATA15_12				0x1050
+#define CEC_LOCK_CONTROL				0x1054
+#define CEC_RXQUAL_BITTIME_CONFIG			0x1060
+#define CEC_RX_BITTIME_CONFIG				0x1064
+#define CEC_TX_BITTIME_CONFIG				0x1068
+/* eARC RX CMDC Registers */
+#define EARCRX_CMDC_CONFIG0				0x1800
+#define EARCRX_XACTREAD_STOP_CFG			BIT(26)
+#define EARCRX_XACTREAD_RETRY_CFG			BIT(25)
+#define EARCRX_CMDC_DSCVR_EARCVALID0_TO_DISC1		BIT(24)
+#define EARCRX_CMDC_XACT_RESTART_EN			BIT(18)
+#define EARCRX_CMDC_CONFIG1				0x1804
+#define EARCRX_CMDC_CONTROL				0x1808
+#define EARCRX_CMDC_HEARTBEAT_LOSS_EN			BIT(4)
+#define EARCRX_CMDC_DISCOVERY_EN			BIT(3)
+#define EARCRX_CONNECTOR_HPD				BIT(1)
+#define EARCRX_CMDC_WHITELIST0_CONFIG			0x180c
+#define EARCRX_CMDC_WHITELIST1_CONFIG			0x1810
+#define EARCRX_CMDC_WHITELIST2_CONFIG			0x1814
+#define EARCRX_CMDC_WHITELIST3_CONFIG			0x1818
+#define EARCRX_CMDC_STATUS				0x181c
+#define EARCRX_CMDC_XACT_INFO				0x1820
+#define EARCRX_CMDC_XACT_ACTION				0x1824
+#define EARCRX_CMDC_HEARTBEAT_RXSTAT_SE			0x1828
+#define EARCRX_CMDC_HEARTBEAT_STATUS			0x182c
+#define EARCRX_CMDC_XACT_WR0				0x1840
+#define EARCRX_CMDC_XACT_WR1				0x1844
+#define EARCRX_CMDC_XACT_WR2				0x1848
+#define EARCRX_CMDC_XACT_WR3				0x184c
+#define EARCRX_CMDC_XACT_WR4				0x1850
+#define EARCRX_CMDC_XACT_WR5				0x1854
+#define EARCRX_CMDC_XACT_WR6				0x1858
+#define EARCRX_CMDC_XACT_WR7				0x185c
+#define EARCRX_CMDC_XACT_WR8				0x1860
+#define EARCRX_CMDC_XACT_WR9				0x1864
+#define EARCRX_CMDC_XACT_WR10				0x1868
+#define EARCRX_CMDC_XACT_WR11				0x186c
+#define EARCRX_CMDC_XACT_WR12				0x1870
+#define EARCRX_CMDC_XACT_WR13				0x1874
+#define EARCRX_CMDC_XACT_WR14				0x1878
+#define EARCRX_CMDC_XACT_WR15				0x187c
+#define EARCRX_CMDC_XACT_WR16				0x1880
+#define EARCRX_CMDC_XACT_WR17				0x1884
+#define EARCRX_CMDC_XACT_WR18				0x1888
+#define EARCRX_CMDC_XACT_WR19				0x188c
+#define EARCRX_CMDC_XACT_WR20				0x1890
+#define EARCRX_CMDC_XACT_WR21				0x1894
+#define EARCRX_CMDC_XACT_WR22				0x1898
+#define EARCRX_CMDC_XACT_WR23				0x189c
+#define EARCRX_CMDC_XACT_WR24				0x18a0
+#define EARCRX_CMDC_XACT_WR25				0x18a4
+#define EARCRX_CMDC_XACT_WR26				0x18a8
+#define EARCRX_CMDC_XACT_WR27				0x18ac
+#define EARCRX_CMDC_XACT_WR28				0x18b0
+#define EARCRX_CMDC_XACT_WR29				0x18b4
+#define EARCRX_CMDC_XACT_WR30				0x18b8
+#define EARCRX_CMDC_XACT_WR31				0x18bc
+#define EARCRX_CMDC_XACT_WR32				0x18c0
+#define EARCRX_CMDC_XACT_WR33				0x18c4
+#define EARCRX_CMDC_XACT_WR34				0x18c8
+#define EARCRX_CMDC_XACT_WR35				0x18cc
+#define EARCRX_CMDC_XACT_WR36				0x18d0
+#define EARCRX_CMDC_XACT_WR37				0x18d4
+#define EARCRX_CMDC_XACT_WR38				0x18d8
+#define EARCRX_CMDC_XACT_WR39				0x18dc
+#define EARCRX_CMDC_XACT_WR40				0x18e0
+#define EARCRX_CMDC_XACT_WR41				0x18e4
+#define EARCRX_CMDC_XACT_WR42				0x18e8
+#define EARCRX_CMDC_XACT_WR43				0x18ec
+#define EARCRX_CMDC_XACT_WR44				0x18f0
+#define EARCRX_CMDC_XACT_WR45				0x18f4
+#define EARCRX_CMDC_XACT_WR46				0x18f8
+#define EARCRX_CMDC_XACT_WR47				0x18fc
+#define EARCRX_CMDC_XACT_WR48				0x1900
+#define EARCRX_CMDC_XACT_WR49				0x1904
+#define EARCRX_CMDC_XACT_WR50				0x1908
+#define EARCRX_CMDC_XACT_WR51				0x190c
+#define EARCRX_CMDC_XACT_WR52				0x1910
+#define EARCRX_CMDC_XACT_WR53				0x1914
+#define EARCRX_CMDC_XACT_WR54				0x1918
+#define EARCRX_CMDC_XACT_WR55				0x191c
+#define EARCRX_CMDC_XACT_WR56				0x1920
+#define EARCRX_CMDC_XACT_WR57				0x1924
+#define EARCRX_CMDC_XACT_WR58				0x1928
+#define EARCRX_CMDC_XACT_WR59				0x192c
+#define EARCRX_CMDC_XACT_WR60				0x1930
+#define EARCRX_CMDC_XACT_WR61				0x1934
+#define EARCRX_CMDC_XACT_WR62				0x1938
+#define EARCRX_CMDC_XACT_WR63				0x193c
+#define EARCRX_CMDC_XACT_WR64				0x1940
+#define EARCRX_CMDC_XACT_RD0				0x1960
+#define EARCRX_CMDC_XACT_RD1				0x1964
+#define EARCRX_CMDC_XACT_RD2				0x1968
+#define EARCRX_CMDC_XACT_RD3				0x196c
+#define EARCRX_CMDC_XACT_RD4				0x1970
+#define EARCRX_CMDC_XACT_RD5				0x1974
+#define EARCRX_CMDC_XACT_RD6				0x1978
+#define EARCRX_CMDC_XACT_RD7				0x197c
+#define EARCRX_CMDC_XACT_RD8				0x1980
+#define EARCRX_CMDC_XACT_RD9				0x1984
+#define EARCRX_CMDC_XACT_RD10				0x1988
+#define EARCRX_CMDC_XACT_RD11				0x198c
+#define EARCRX_CMDC_XACT_RD12				0x1990
+#define EARCRX_CMDC_XACT_RD13				0x1994
+#define EARCRX_CMDC_XACT_RD14				0x1998
+#define EARCRX_CMDC_XACT_RD15				0x199c
+#define EARCRX_CMDC_XACT_RD16				0x19a0
+#define EARCRX_CMDC_XACT_RD17				0x19a4
+#define EARCRX_CMDC_XACT_RD18				0x19a8
+#define EARCRX_CMDC_XACT_RD19				0x19ac
+#define EARCRX_CMDC_XACT_RD20				0x19b0
+#define EARCRX_CMDC_XACT_RD21				0x19b4
+#define EARCRX_CMDC_XACT_RD22				0x19b8
+#define EARCRX_CMDC_XACT_RD23				0x19bc
+#define EARCRX_CMDC_XACT_RD24				0x19c0
+#define EARCRX_CMDC_XACT_RD25				0x19c4
+#define EARCRX_CMDC_XACT_RD26				0x19c8
+#define EARCRX_CMDC_XACT_RD27				0x19cc
+#define EARCRX_CMDC_XACT_RD28				0x19d0
+#define EARCRX_CMDC_XACT_RD29				0x19d4
+#define EARCRX_CMDC_XACT_RD30				0x19d8
+#define EARCRX_CMDC_XACT_RD31				0x19dc
+#define EARCRX_CMDC_XACT_RD32				0x19e0
+#define EARCRX_CMDC_XACT_RD33				0x19e4
+#define EARCRX_CMDC_XACT_RD34				0x19e8
+#define EARCRX_CMDC_XACT_RD35				0x19ec
+#define EARCRX_CMDC_XACT_RD36				0x19f0
+#define EARCRX_CMDC_XACT_RD37				0x19f4
+#define EARCRX_CMDC_XACT_RD38				0x19f8
+#define EARCRX_CMDC_XACT_RD39				0x19fc
+#define EARCRX_CMDC_XACT_RD40				0x1a00
+#define EARCRX_CMDC_XACT_RD41				0x1a04
+#define EARCRX_CMDC_XACT_RD42				0x1a08
+#define EARCRX_CMDC_XACT_RD43				0x1a0c
+#define EARCRX_CMDC_XACT_RD44				0x1a10
+#define EARCRX_CMDC_XACT_RD45				0x1a14
+#define EARCRX_CMDC_XACT_RD46				0x1a18
+#define EARCRX_CMDC_XACT_RD47				0x1a1c
+#define EARCRX_CMDC_XACT_RD48				0x1a20
+#define EARCRX_CMDC_XACT_RD49				0x1a24
+#define EARCRX_CMDC_XACT_RD50				0x1a28
+#define EARCRX_CMDC_XACT_RD51				0x1a2c
+#define EARCRX_CMDC_XACT_RD52				0x1a30
+#define EARCRX_CMDC_XACT_RD53				0x1a34
+#define EARCRX_CMDC_XACT_RD54				0x1a38
+#define EARCRX_CMDC_XACT_RD55				0x1a3c
+#define EARCRX_CMDC_XACT_RD56				0x1a40
+#define EARCRX_CMDC_XACT_RD57				0x1a44
+#define EARCRX_CMDC_XACT_RD58				0x1a48
+#define EARCRX_CMDC_XACT_RD59				0x1a4c
+#define EARCRX_CMDC_XACT_RD60				0x1a50
+#define EARCRX_CMDC_XACT_RD61				0x1a54
+#define EARCRX_CMDC_XACT_RD62				0x1a58
+#define EARCRX_CMDC_XACT_RD63				0x1a5c
+#define EARCRX_CMDC_XACT_RD64				0x1a60
+#define EARCRX_CMDC_SYNC_CONFIG				0x1b00
+/* eARC RX DMAC Registers */
+#define EARCRX_DMAC_PHY_CONTROL				0x1c00
+#define EARCRX_DMAC_CONFIG				0x1c08
+#define EARCRX_DMAC_CONTROL0				0x1c0c
+#define EARCRX_DMAC_AUDIO_EN				BIT(1)
+#define EARCRX_DMAC_EN					BIT(0)
+#define EARCRX_DMAC_CONTROL1				0x1c10
+#define EARCRX_DMAC_STATUS				0x1c14
+#define EARCRX_DMAC_CHSTATUS0				0x1c18
+#define EARCRX_DMAC_CHSTATUS1				0x1c1c
+#define EARCRX_DMAC_CHSTATUS2				0x1c20
+#define EARCRX_DMAC_CHSTATUS3				0x1c24
+#define EARCRX_DMAC_CHSTATUS4				0x1c28
+#define EARCRX_DMAC_CHSTATUS5				0x1c2c
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC0		0x1c30
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC1		0x1c34
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC2		0x1c38
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC3		0x1c3c
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC4		0x1c40
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC5		0x1c44
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC6		0x1c48
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC7		0x1c4c
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC8		0x1c50
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC9		0x1c54
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC10		0x1c58
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_AC11		0x1c5c
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT0		0x1c60
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT1		0x1c64
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT2		0x1c68
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT3		0x1c6c
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT4		0x1c70
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT5		0x1c74
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT6		0x1c78
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT7		0x1c7c
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT8		0x1c80
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT9		0x1c84
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT10	0x1c88
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC1_PKT11	0x1c8c
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT0		0x1c90
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT1		0x1c94
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT2		0x1c98
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT3		0x1c9c
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT4		0x1ca0
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT5		0x1ca4
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT6		0x1ca8
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT7		0x1cac
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT8		0x1cb0
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT9		0x1cb4
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT10	0x1cb8
+#define EARCRX_DMAC_USRDATA_MSG_HDMI_ISRC2_PKT11	0x1cbc
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC0		0x1cc0
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC1		0x1cc4
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC2		0x1cc8
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC3		0x1ccc
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC4		0x1cd0
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC5		0x1cd4
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC6		0x1cd8
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC7		0x1cdc
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC8		0x1ce0
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC9		0x1ce4
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC10		0x1ce8
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC11		0x1cec
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC12		0x1cf0
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC13		0x1cf4
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC14		0x1cf8
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC15		0x1cfc
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC16		0x1d00
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC17		0x1d04
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC18		0x1d08
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC19		0x1d0c
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC20		0x1d10
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC21		0x1d14
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC22		0x1d18
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC23		0x1d1c
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC24		0x1d20
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC25		0x1d24
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC26		0x1d28
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC27		0x1d2c
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC28		0x1d30
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC29		0x1d34
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC30		0x1d38
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC31		0x1d3c
+#define EARCRX_DMAC_USRDATA_MSG_GENERIC32		0x1d40
+#define EARCRX_DMAC_CHSTATUS_STREAMER0			0x1d44
+#define EARCRX_DMAC_CHSTATUS_STREAMER1			0x1d48
+#define EARCRX_DMAC_CHSTATUS_STREAMER2			0x1d4c
+#define EARCRX_DMAC_CHSTATUS_STREAMER3			0x1d50
+#define EARCRX_DMAC_CHSTATUS_STREAMER4			0x1d54
+#define EARCRX_DMAC_CHSTATUS_STREAMER5			0x1d58
+#define EARCRX_DMAC_CHSTATUS_STREAMER6			0x1d5c
+#define EARCRX_DMAC_CHSTATUS_STREAMER7			0x1d60
+#define EARCRX_DMAC_CHSTATUS_STREAMER8			0x1d64
+#define EARCRX_DMAC_CHSTATUS_STREAMER9			0x1d68
+#define EARCRX_DMAC_CHSTATUS_STREAMER10			0x1d6c
+#define EARCRX_DMAC_CHSTATUS_STREAMER11			0x1d70
+#define EARCRX_DMAC_CHSTATUS_STREAMER12			0x1d74
+#define EARCRX_DMAC_CHSTATUS_STREAMER13			0x1d78
+#define EARCRX_DMAC_CHSTATUS_STREAMER14			0x1d7c
+#define EARCRX_DMAC_USRDATA_STREAMER0			0x1d80
+/* Main Unit Interrupt Registers */
+#define MAIN_INTVEC_INDEX				0x3000
+#define MAINUNIT_0_INT_STATUS				0x3010
+#define MAINUNIT_0_INT_MASK_N				0x3014
+#define MAINUNIT_0_INT_CLEAR				0x3018
+#define MAINUNIT_0_INT_FORCE				0x301c
+#define MAINUNIT_1_INT_STATUS				0x3020
+#define FLT_EXIT_TO_LTSL_IRQ				BIT(22)
+#define FLT_EXIT_TO_LTS4_IRQ				BIT(21)
+#define FLT_EXIT_TO_LTSP_IRQ				BIT(20)
+#define SCDC_NACK_RCVD_IRQ				BIT(12)
+#define SCDC_RR_REPLY_STOP_IRQ				BIT(11)
+#define SCDC_UPD_FLAGS_CLR_IRQ				BIT(10)
+#define SCDC_UPD_FLAGS_CHG_IRQ				BIT(9)
+#define SCDC_UPD_FLAGS_RD_IRQ				BIT(8)
+#define I2CM_NACK_RCVD_IRQ				BIT(2)
+#define I2CM_READ_REQUEST_IRQ				BIT(1)
+#define I2CM_OP_DONE_IRQ				BIT(0)
+#define MAINUNIT_1_INT_MASK_N				0x3024
+#define I2CM_NACK_RCVD_MASK_N				BIT(2)
+#define I2CM_READ_REQUEST_MASK_N			BIT(1)
+#define I2CM_OP_DONE_MASK_N				BIT(0)
+#define MAINUNIT_1_INT_CLEAR				0x3028
+#define I2CM_NACK_RCVD_CLEAR				BIT(2)
+#define I2CM_READ_REQUEST_CLEAR				BIT(1)
+#define I2CM_OP_DONE_CLEAR				BIT(0)
+#define MAINUNIT_1_INT_FORCE				0x302c
+/* AVPUNIT Interrupt Registers */
+#define AVP_INTVEC_INDEX				0x3800
+#define AVP_0_INT_STATUS				0x3810
+#define AVP_0_INT_MASK_N				0x3814
+#define AVP_0_INT_CLEAR					0x3818
+#define AVP_0_INT_FORCE					0x381c
+#define AVP_1_INT_STATUS				0x3820
+#define AVP_1_INT_MASK_N				0x3824
+#define HDCP14_AUTH_CHG_MASK_N				BIT(6)
+#define AVP_1_INT_CLEAR					0x3828
+#define AVP_1_INT_FORCE					0x382c
+#define AVP_2_INT_STATUS				0x3830
+#define AVP_2_INT_MASK_N				0x3834
+#define AVP_2_INT_CLEAR					0x3838
+#define AVP_2_INT_FORCE					0x383c
+#define AVP_3_INT_STATUS				0x3840
+#define AVP_3_INT_MASK_N				0x3844
+#define AVP_3_INT_CLEAR					0x3848
+#define AVP_3_INT_FORCE					0x384c
+#define AVP_4_INT_STATUS				0x3850
+#define AVP_4_INT_MASK_N				0x3854
+#define AVP_4_INT_CLEAR					0x3858
+#define AVP_4_INT_FORCE					0x385c
+#define AVP_5_INT_STATUS				0x3860
+#define AVP_5_INT_MASK_N				0x3864
+#define AVP_5_INT_CLEAR					0x3868
+#define AVP_5_INT_FORCE					0x386c
+#define AVP_6_INT_STATUS				0x3870
+#define AVP_6_INT_MASK_N				0x3874
+#define AVP_6_INT_CLEAR					0x3878
+#define AVP_6_INT_FORCE					0x387c
+/* CEC Interrupt Registers */
+#define CEC_INT_STATUS					0x4000
+#define CEC_INT_MASK_N					0x4004
+#define CEC_INT_CLEAR					0x4008
+#define CEC_INT_FORCE					0x400c
+/* eARC RX Interrupt Registers  */
+#define EARCRX_INTVEC_INDEX				0x4800
+#define EARCRX_0_INT_STATUS				0x4810
+#define EARCRX_CMDC_DISCOVERY_TIMEOUT_IRQ		BIT(9)
+#define EARCRX_CMDC_DISCOVERY_DONE_IRQ			BIT(8)
+#define EARCRX_0_INT_MASK_N				0x4814
+#define EARCRX_0_INT_CLEAR				0x4818
+#define EARCRX_0_INT_FORCE				0x481c
+#define EARCRX_1_INT_STATUS				0x4820
+#define EARCRX_1_INT_MASK_N				0x4824
+#define EARCRX_1_INT_CLEAR				0x4828
+#define EARCRX_1_INT_FORCE				0x482c
+
+#endif /* __DW_HDMI_QP_H__ */
diff --git a/include/drm/bridge/dw_hdmi_qp.h b/include/drm/bridge/dw_hdmi_qp.h
new file mode 100644
index 000000000000..e83e4551b710
--- /dev/null
+++ b/include/drm/bridge/dw_hdmi_qp.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2021-2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2024 Collabora Ltd.
+ */
+
+#ifndef __DW_HDMI_QP__
+#define __DW_HDMI_QP__
+
+struct device;
+struct drm_display_info;
+struct drm_encoder;
+struct dw_hdmi_qp;
+struct platform_device;
+
+struct dw_hdmi_qp_phy_ops {
+	int (*init)(struct dw_hdmi_qp *hdmi, void *data,
+		    const struct drm_display_info *display);
+	void (*disable)(struct dw_hdmi_qp *hdmi, void *data);
+	enum drm_connector_status (*read_hpd)(struct dw_hdmi_qp *hdmi, void *data);
+	void (*setup_hpd)(struct dw_hdmi_qp *hdmi, void *data);
+};
+
+struct dw_hdmi_qp_plat_data {
+	const struct dw_hdmi_qp_phy_ops *phy_ops;
+	void *phy_data;
+};
+
+int dw_hdmi_qp_set_refclk_rate(struct dw_hdmi_qp *hdmi, unsigned long rate);
+void dw_hdmi_qp_set_high_tmds_clock_ratio(struct dw_hdmi_qp *hdmi,
+					  const struct drm_display_info *display);
+struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
+				   struct drm_encoder *encoder,
+				   const struct dw_hdmi_qp_plat_data *plat_data);
+void dw_hdmi_qp_resume(struct device *dev, struct dw_hdmi_qp *hdmi);
+#endif /* __DW_HDMI_QP__ */

-- 
2.45.2


