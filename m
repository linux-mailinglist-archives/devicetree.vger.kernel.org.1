Return-Path: <devicetree+bounces-71481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA048D7023
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 15:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D1412813EB
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 13:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A2B51552F6;
	Sat,  1 Jun 2024 13:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="blZNFc0U"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDE815444C;
	Sat,  1 Jun 2024 13:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717247601; cv=none; b=GalovZZsf5iw4HDJ4UkCO0bJvwITcytuoefBLRKNbMeD4dZtq33niwyAzQ+dur0JuHwMPBt9RNTErEHyLzeNrkJOtNQuO7I76IExVGDe3ORNfRRnhGZ/GmHM/3KRU9U0o4mLOBHBoNMjhLkxlPTo5ciWNzbbR0zbu6mWADW57JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717247601; c=relaxed/simple;
	bh=uGwD+r6nZ0FdEL7feBanHa0zSTFtyY2x1KQ2FdWFj+I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WjQF1DOZTA1AFnhNodg4yZrlUa0U2Tgto86aVDZryA3FElq5HhmUrJsN5rQQhI2EXg1RAwTomuJtQidgN/XG+1x7RdtMQundMUTwb4gOpyQlOBH8M9QgNDImv1ZcPJkoC6Hd21MNkEU1OigFOZUflrD+1Kq9vaur6vAMFT+ujuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=blZNFc0U; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247594;
	bh=uGwD+r6nZ0FdEL7feBanHa0zSTFtyY2x1KQ2FdWFj+I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=blZNFc0UdLLG3DWChd+P84ZikOeM1JYoBXOPXylSdYYwBgfxZhpw1kX6d7u2WVNYe
	 Lkasi5TtevUWLuMpTF8p6iap2BlE4lDFwWbGZq95rHIkN7eOljVRAk8d4HSfAcRM18
	 0QuYIIRv0Fdm7AH0jyqTlS/urMdyQxH8fvY1WKffJtequ/kmRu9liXMUl6G+c3XhTB
	 Qx+OWazASwuvCdJU4FcIxFMcfiIZYynYMnfqV9/B7lVUHB3wFUlYllVNbmVZwpjmFo
	 qYu1+uPo3TgeW2jP96+JWgFIBI+e44g0Co//N1nd4etzvD26tpRsF/7+12Kx3kV6Yh
	 X4dk8Smqv8HWg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 57D60378203E;
	Sat,  1 Jun 2024 13:13:14 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:35 +0300
Subject: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
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
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Algea Cao <algea.cao@rock-chips.com>
X-Mailer: b4 0.14-dev-f7c49

The Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX controller supports
the following features, among others:

* Fixed Rate Link (FRL)
* 4K@120Hz and 8K@60Hz video modes
* Variable Refresh Rate (VRR) including Quick Media Switching (QMS), aka
  Cinema VRR
* Fast Vactive (FVA), aka Quick Frame Transport (QFT)
* SCDC I2C DDC access
* TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
* YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
* Multi-stream audio
* Enhanced Audio Return Channel (EARC)

Add driver to enable basic support, i.e. RGB output up to 4K@60Hz,
without audio, CEC or any HDMI 2.1 specific features.

Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/Makefile     |   2 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 787 +++++++++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h | 831 +++++++++++++++++++++++++++
 include/drm/bridge/dw_hdmi.h                 |   8 +
 4 files changed, 1627 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/Makefile b/drivers/gpu/drm/bridge/synopsys/Makefile
index ce715562e9e5..8354e4879f70 100644
--- a/drivers/gpu/drm/bridge/synopsys/Makefile
+++ b/drivers/gpu/drm/bridge/synopsys/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_DRM_DW_HDMI) += dw-hdmi.o
+obj-$(CONFIG_DRM_DW_HDMI) += dw-hdmi.o dw-hdmi-qp.o
 obj-$(CONFIG_DRM_DW_HDMI_AHB_AUDIO) += dw-hdmi-ahb-audio.o
 obj-$(CONFIG_DRM_DW_HDMI_GP_AUDIO) += dw-hdmi-gp-audio.o
 obj-$(CONFIG_DRM_DW_HDMI_I2S_AUDIO) += dw-hdmi-i2s-audio.o
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
new file mode 100644
index 000000000000..0ff7c2e259f5
--- /dev/null
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -0,0 +1,787 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2021-2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2024 Collabora Ltd.
+ *
+ * Author: Algea Cao <algea.cao@rock-chips.com>
+ * Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
+ */
+#include <linux/hdmi.h>
+#include <linux/irq.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+#include <drm/display/drm_hdmi_helper.h>
+#include <drm/display/drm_scdc_helper.h>
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_probe_helper.h>
+
+#include "dw-hdmi-common.h"
+#include "dw-hdmi-qp.h"
+
+static void dw_hdmi_qp_write(struct dw_hdmi *hdmi, unsigned int val, int offset)
+{
+	regmap_write(hdmi->regm, offset, val);
+}
+
+static unsigned int dw_hdmi_qp_read(struct dw_hdmi *hdmi, int offset)
+{
+	unsigned int val = 0;
+
+	regmap_read(hdmi->regm, offset, &val);
+
+	return val;
+}
+
+static void dw_hdmi_qp_mod(struct dw_hdmi *hdmi, unsigned int data,
+			   unsigned int mask, unsigned int reg)
+{
+	regmap_update_bits(hdmi->regm, reg, mask, data);
+}
+
+static void dw_hdmi_qp_i2c_init(struct dw_hdmi *hdmi)
+{
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
+}
+
+static int dw_hdmi_qp_i2c_read(struct dw_hdmi *hdmi,
+			       unsigned char *buf, unsigned int length)
+{
+	struct dw_hdmi_i2c *i2c = hdmi->i2c;
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
+		dw_hdmi_qp_mod(hdmi, I2CM_FM_READ, I2CM_WR_MASK,
+			       I2CM_INTERFACE_CONTROL0);
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
+static int dw_hdmi_qp_i2c_write(struct dw_hdmi *hdmi,
+				unsigned char *buf, unsigned int length)
+{
+	struct dw_hdmi_i2c *i2c = hdmi->i2c;
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
+	struct dw_hdmi *hdmi = i2c_get_adapdata(adap);
+	struct dw_hdmi_i2c *i2c = hdmi->i2c;
+	u8 addr = msgs[0].addr;
+	int i, ret = 0;
+
+	if (addr == DDC_CI_ADDR)
+		/*
+		 * The internal I2C controller does not support the multi-byte
+		 * read and write operations needed for DDC/CI.
+		 * TOFIX: Blacklist the DDC/CI address until we filter out
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
+			dw_hdmi_qp_mod(hdmi, *msgs[i].buf, I2CM_SEG_PTR,
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
+static const struct i2c_algorithm dw_hdmi_algorithm = {
+	.master_xfer	= dw_hdmi_qp_i2c_xfer,
+	.functionality	= dw_hdmi_qp_i2c_func,
+};
+
+static void hdmi_infoframe_set_checksum(u8 *ptr, int size)
+{
+	u8 csum = 0;
+	int i;
+
+	ptr[3] = 0;
+	/* compute checksum */
+	for (i = 0; i < size; i++)
+		csum += ptr[i];
+
+	ptr[3] = 256 - csum;
+}
+
+static void hdmi_config_AVI(struct dw_hdmi *hdmi,
+			    const struct drm_connector *connector,
+			    const struct drm_display_mode *mode)
+{
+	struct hdmi_avi_infoframe frame;
+	u32 val, i, j;
+	u8 buf[17];
+
+	dw_hdmi_prep_avi_infoframe(&frame, hdmi, connector, mode);
+
+	frame.scan_mode = HDMI_SCAN_MODE_NONE;
+	frame.video_code = hdmi->vic;
+
+	hdmi_avi_infoframe_pack_only(&frame, buf, 17);
+
+	/* mode which vic >= 128 must use avi version 3 */
+	if (hdmi->vic >= 128) {
+		frame.version = 3;
+		buf[1] = frame.version;
+		buf[4] &= 0x1f;
+		buf[4] |= ((frame.colorspace & 0x7) << 5);
+		buf[7] = frame.video_code;
+		hdmi_infoframe_set_checksum(buf, 17);
+	}
+
+	/*
+	 * The Designware IP uses a different byte format from standard
+	 * AVI info frames, though generally the bits are in the correct
+	 * bytes.
+	 */
+
+	val = (frame.version << 8) | (frame.length << 16);
+	dw_hdmi_qp_write(hdmi, val, PKT_AVI_CONTENTS0);
+
+	for (i = 0; i < 4; i++) {
+		for (j = 0; j < 4; j++) {
+			if (i * 4 + j >= 14)
+				break;
+			if (!j)
+				val = buf[i * 4 + j + 3];
+			val |= buf[i * 4 + j + 3] << (8 * j);
+		}
+
+		dw_hdmi_qp_write(hdmi, val, PKT_AVI_CONTENTS1 + i * 4);
+	}
+
+	dw_hdmi_qp_mod(hdmi, 0, PKTSCHED_AVI_FIELDRATE, PKTSCHED_PKT_CONFIG1);
+
+	dw_hdmi_qp_mod(hdmi, PKTSCHED_AVI_TX_EN | PKTSCHED_GCP_TX_EN,
+		       PKTSCHED_AVI_TX_EN | PKTSCHED_GCP_TX_EN, PKTSCHED_PKT_EN);
+}
+
+static void hdmi_config_drm_infoframe(struct dw_hdmi *hdmi,
+				      const struct drm_connector *connector)
+{
+	const struct drm_connector_state *conn_state = connector->state;
+	struct hdr_output_metadata *hdr_metadata;
+	struct hdmi_drm_infoframe frame;
+	u8 buffer[30];
+	ssize_t err;
+	int i;
+	u32 val;
+
+	if (!hdmi->plat_data->use_drm_infoframe)
+		return;
+
+	dw_hdmi_qp_mod(hdmi, 0, PKTSCHED_DRMI_TX_EN, PKTSCHED_PKT_EN);
+
+	if (!hdmi->connector.hdr_sink_metadata.hdmi_type1.eotf) {
+		dev_dbg(hdmi->dev, "No need to set HDR metadata in infoframe\n");
+		return;
+	}
+
+	if (!conn_state->hdr_output_metadata) {
+		dev_dbg(hdmi->dev, "source metadata not set yet\n");
+		return;
+	}
+
+	hdr_metadata = (struct hdr_output_metadata *)
+		conn_state->hdr_output_metadata->data;
+
+	if (!(hdmi->connector.hdr_sink_metadata.hdmi_type1.eotf &
+	      BIT(hdr_metadata->hdmi_metadata_type1.eotf))) {
+		dev_err(hdmi->dev, "EOTF %d not supported\n",
+			hdr_metadata->hdmi_metadata_type1.eotf);
+		return;
+	}
+
+	err = drm_hdmi_infoframe_set_hdr_metadata(&frame, conn_state);
+	if (err < 0)
+		return;
+
+	err = hdmi_drm_infoframe_pack(&frame, buffer, sizeof(buffer));
+	if (err < 0) {
+		dev_err(hdmi->dev, "Failed to pack drm infoframe: %zd\n", err);
+		return;
+	}
+
+	val = (frame.version << 8) | (frame.length << 16);
+	dw_hdmi_qp_write(hdmi, val, PKT_DRMI_CONTENTS0);
+
+	for (i = 0; i <= frame.length; i++) {
+		if (i % 4 == 0)
+			val = buffer[3 + i];
+		val |= buffer[3 + i] << ((i % 4) * 8);
+
+		if ((i % 4 == 3) || i == frame.length)
+			dw_hdmi_qp_write(hdmi, val,
+					 PKT_DRMI_CONTENTS1 + ((i / 4) * 4));
+	}
+
+	dw_hdmi_qp_mod(hdmi, 0, PKTSCHED_DRMI_FIELDRATE, PKTSCHED_PKT_CONFIG1);
+	dw_hdmi_qp_mod(hdmi, PKTSCHED_DRMI_TX_EN, PKTSCHED_DRMI_TX_EN,
+		       PKTSCHED_PKT_EN);
+}
+
+static int dw_hdmi_qp_setup(struct dw_hdmi *hdmi,
+			    struct drm_connector *connector,
+			    struct drm_display_mode *mode)
+{
+	u8 bytes = 0;
+	int ret;
+
+	dw_hdmi_prep_data(hdmi, mode);
+
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK) {
+		hdmi->hdmi_data.video_mode.mpixelrepetitionoutput = 1;
+		hdmi->hdmi_data.video_mode.mpixelrepetitioninput = 1;
+	}
+
+	/*
+	 * According to the dw-hdmi specification 6.4.2
+	 * vp_pr_cd[3:0]:
+	 * 0000b: No pixel repetition (pixel sent only once)
+	 * 0001b: Pixel sent two times (pixel repeated once)
+	 */
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		hdmi->hdmi_data.pix_repet_factor = 1;
+
+	/* HDMI Initialization Step B.1 */
+	dw_hdmi_prep_vmode(hdmi, mode);
+
+	/* HDMI Initialization Step B.2 */
+	ret = hdmi->phy.ops->init(hdmi, hdmi->phy.data,
+				  &connector->display_info,
+				  &hdmi->previous_mode);
+	if (ret)
+		return ret;
+	hdmi->phy.enabled = true;
+
+	/* not for DVI mode */
+	if (hdmi->sink_is_hdmi) {
+		dev_dbg(hdmi->dev, "%s HDMI mode\n", __func__);
+
+		dw_hdmi_qp_mod(hdmi, 0, OPMODE_DVI, LINK_CONFIG0);
+		dw_hdmi_qp_mod(hdmi, HDCP2_BYPASS, HDCP2_BYPASS, HDCP2LOGIC_CONFIG0);
+
+		if (hdmi->hdmi_data.video_mode.mtmdsclock > HDMI14_MAX_TMDSCLK) {
+			if (dw_hdmi_support_scdc(hdmi, &connector->display_info)) {
+				drm_scdc_readb(hdmi->ddc, SCDC_SINK_VERSION, &bytes);
+				drm_scdc_writeb(hdmi->ddc, SCDC_SOURCE_VERSION,
+						min_t(u8, bytes, SCDC_MIN_SOURCE_VERSION));
+				drm_scdc_set_high_tmds_clock_ratio(connector, 1);
+				drm_scdc_set_scrambling(connector, 1);
+			}
+			dw_hdmi_qp_write(hdmi, 1, SCRAMB_CONFIG0);
+		} else {
+			if (dw_hdmi_support_scdc(hdmi, &connector->display_info)) {
+				drm_scdc_set_high_tmds_clock_ratio(connector, 0);
+				drm_scdc_set_scrambling(connector, 0);
+			}
+			dw_hdmi_qp_write(hdmi, 0, SCRAMB_CONFIG0);
+		}
+
+		/* HDMI Initialization Step F */
+		hdmi_config_AVI(hdmi, connector, mode);
+		hdmi_config_drm_infoframe(hdmi, connector);
+	} else {
+		dev_dbg(hdmi->dev, "%s DVI mode\n", __func__);
+
+		dw_hdmi_qp_mod(hdmi, HDCP2_BYPASS, HDCP2_BYPASS, HDCP2LOGIC_CONFIG0);
+		dw_hdmi_qp_mod(hdmi, OPMODE_DVI, OPMODE_DVI, LINK_CONFIG0);
+	}
+
+	return 0;
+}
+
+static void dw_hdmi_qp_update_power(struct dw_hdmi *hdmi)
+{
+	int force = hdmi->force;
+
+	if (hdmi->disabled) {
+		force = DRM_FORCE_OFF;
+	} else if (force == DRM_FORCE_UNSPECIFIED) {
+		if (hdmi->rxsense)
+			force = DRM_FORCE_ON;
+		else
+			force = DRM_FORCE_OFF;
+	}
+
+	if (force == DRM_FORCE_OFF) {
+		if (hdmi->bridge_is_on) {
+			if (hdmi->phy.enabled) {
+				hdmi->phy.ops->disable(hdmi, hdmi->phy.data);
+				hdmi->phy.enabled = false;
+			}
+
+			hdmi->bridge_is_on = false;
+		}
+	} else {
+		if (!hdmi->bridge_is_on) {
+			hdmi->bridge_is_on = true;
+
+			/*
+			 * The curr_conn field is guaranteed to be valid here, as this function
+			 * is only be called when !hdmi->disabled.
+			 */
+			dw_hdmi_qp_setup(hdmi, hdmi->curr_conn, &hdmi->previous_mode);
+		}
+	}
+}
+
+static void dw_hdmi_qp_connector_force(struct drm_connector *connector)
+{
+	struct dw_hdmi *hdmi =
+		container_of(connector, struct dw_hdmi, connector);
+
+	mutex_lock(&hdmi->mutex);
+	hdmi->force = connector->force;
+	dw_hdmi_qp_update_power(hdmi);
+	mutex_unlock(&hdmi->mutex);
+}
+
+static const struct drm_connector_funcs dw_hdmi_qp_connector_funcs = {
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.detect = dw_hdmi_connector_detect,
+	.destroy = drm_connector_cleanup,
+	.force = dw_hdmi_qp_connector_force,
+	.reset = drm_atomic_helper_connector_reset,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static int dw_hdmi_qp_bridge_attach(struct drm_bridge *bridge,
+				    enum drm_bridge_attach_flags flags)
+{
+	struct dw_hdmi *hdmi = bridge->driver_private;
+
+	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
+		return drm_bridge_attach(bridge->encoder, hdmi->next_bridge,
+					 bridge, flags);
+
+	return dw_hdmi_connector_create(hdmi, &dw_hdmi_qp_connector_funcs);
+}
+
+static enum drm_mode_status
+dw_hdmi_qp_bridge_mode_valid(struct drm_bridge *bridge,
+			     const struct drm_display_info *info,
+			     const struct drm_display_mode *mode)
+{
+	struct dw_hdmi *hdmi = bridge->driver_private;
+	const struct dw_hdmi_plat_data *pdata = hdmi->plat_data;
+	enum drm_mode_status mode_status = MODE_OK;
+
+	if (pdata->mode_valid)
+		mode_status = pdata->mode_valid(hdmi, pdata->priv_data, info,
+						mode);
+
+	return mode_status;
+}
+
+static void dw_hdmi_qp_bridge_atomic_disable(struct drm_bridge *bridge,
+					     struct drm_bridge_state *old_state)
+{
+	struct dw_hdmi *hdmi = bridge->driver_private;
+
+	mutex_lock(&hdmi->mutex);
+	hdmi->disabled = true;
+	hdmi->curr_conn = NULL;
+	dw_hdmi_qp_update_power(hdmi);
+	dw_handle_plugged_change(hdmi, false);
+	mutex_unlock(&hdmi->mutex);
+}
+
+static void dw_hdmi_qp_bridge_atomic_enable(struct drm_bridge *bridge,
+					    struct drm_bridge_state *old_state)
+{
+	struct dw_hdmi *hdmi = bridge->driver_private;
+	struct drm_atomic_state *state = old_state->base.state;
+	struct drm_connector *connector;
+
+	connector = drm_atomic_get_new_connector_for_encoder(state,
+							     bridge->encoder);
+
+	mutex_lock(&hdmi->mutex);
+	hdmi->disabled = false;
+	hdmi->curr_conn = connector;
+	dw_hdmi_qp_update_power(hdmi);
+	dw_handle_plugged_change(hdmi, true);
+	mutex_unlock(&hdmi->mutex);
+}
+
+static const struct drm_bridge_funcs dw_hdmi_qp_bridge_funcs = {
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
+	.attach = dw_hdmi_qp_bridge_attach,
+	.detach = dw_hdmi_bridge_detach,
+	.atomic_check = dw_hdmi_bridge_atomic_check,
+	.atomic_enable = dw_hdmi_qp_bridge_atomic_enable,
+	.atomic_disable = dw_hdmi_qp_bridge_atomic_disable,
+	.mode_set = dw_hdmi_bridge_mode_set,
+	.mode_valid = dw_hdmi_qp_bridge_mode_valid,
+	.detect = dw_hdmi_bridge_detect,
+	.edid_read = dw_hdmi_bridge_edid_read,
+};
+
+static irqreturn_t dw_hdmi_qp_main_hardirq(int irq, void *dev_id)
+{
+	struct dw_hdmi *hdmi = dev_id;
+	struct dw_hdmi_i2c *i2c = hdmi->i2c;
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
+static int dw_hdmi_qp_detect_phy(struct dw_hdmi *hdmi)
+{
+	if (!hdmi->plat_data->phy_force_vendor) {
+		dev_err(hdmi->dev, "Internal HDMI PHY not supported\n");
+		return -ENODEV;
+	}
+
+	/* Vendor PHYs require support from the glue layer. */
+	if (!hdmi->plat_data->phy_ops || !hdmi->plat_data->phy_name) {
+		dev_err(hdmi->dev,
+			"Vendor HDMI PHY not supported by glue layer\n");
+		return -ENODEV;
+	}
+
+	hdmi->phy.ops = hdmi->plat_data->phy_ops;
+	hdmi->phy.data = hdmi->plat_data->phy_data;
+	hdmi->phy.name = hdmi->plat_data->phy_name;
+
+	return 0;
+}
+
+static const struct regmap_config dw_hdmi_qp_regmap_config = {
+	.reg_bits	= 32,
+	.val_bits	= 32,
+	.reg_stride	= 4,
+	.max_register	= EARCRX_1_INT_FORCE,
+};
+
+static void dw_hdmi_qp_init_hw(struct dw_hdmi *hdmi)
+{
+	dw_hdmi_qp_write(hdmi, 0, MAINUNIT_0_INT_MASK_N);
+	dw_hdmi_qp_write(hdmi, 0, MAINUNIT_1_INT_MASK_N);
+	dw_hdmi_qp_write(hdmi, 428571429, TIMER_BASE_CONFIG0);
+
+	dw_hdmi_qp_i2c_init(hdmi);
+
+	if (hdmi->phy.ops->setup_hpd)
+		hdmi->phy.ops->setup_hpd(hdmi, hdmi->phy.data);
+}
+
+static struct dw_hdmi *
+dw_hdmi_qp_probe(struct platform_device *pdev,
+		 const struct dw_hdmi_plat_data *plat_data)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct device_node *ddc_node;
+	struct dw_hdmi *hdmi;
+	struct resource *iores = NULL;
+	int irq, ret;
+
+	hdmi = devm_kzalloc(dev, sizeof(*hdmi), GFP_KERNEL);
+	if (!hdmi)
+		return ERR_PTR(-ENOMEM);
+
+	hdmi->plat_data = plat_data;
+	hdmi->dev = dev;
+	hdmi->disabled = true;
+	hdmi->rxsense = true;
+	hdmi->last_connector_result = connector_status_disconnected;
+
+	mutex_init(&hdmi->mutex);
+	mutex_init(&hdmi->audio_mutex);
+	mutex_init(&hdmi->cec_notifier_mutex);
+	spin_lock_init(&hdmi->audio_lock);
+
+	ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
+	if (ddc_node) {
+		hdmi->ddc = of_get_i2c_adapter_by_node(ddc_node);
+		of_node_put(ddc_node);
+		if (!hdmi->ddc) {
+			dev_dbg(hdmi->dev, "failed to read ddc node\n");
+			return ERR_PTR(-EPROBE_DEFER);
+		}
+
+	} else {
+		dev_dbg(hdmi->dev, "no ddc property found\n");
+	}
+
+	if (!plat_data->regm) {
+		const struct regmap_config *reg_config;
+
+		reg_config = &dw_hdmi_qp_regmap_config;
+
+		iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+		hdmi->regs = devm_ioremap_resource(dev, iores);
+		if (IS_ERR(hdmi->regs)) {
+			ret = PTR_ERR(hdmi->regs);
+			goto err_put;
+		}
+
+		hdmi->regm = devm_regmap_init_mmio(dev, hdmi->regs, reg_config);
+		if (IS_ERR(hdmi->regm)) {
+			dev_err(dev, "Failed to configure regmap\n");
+			ret = PTR_ERR(hdmi->regm);
+			goto err_put;
+		}
+	} else {
+		hdmi->regm = plat_data->regm;
+	}
+
+	/* Allow SCDC advertising in dw_hdmi_support_scdc() */
+	hdmi->version = 0x200a;
+
+	ret = dw_hdmi_qp_detect_phy(hdmi);
+	if (ret < 0)
+		goto err_put;
+
+	dw_hdmi_qp_init_hw(hdmi);
+
+	if ((dw_hdmi_qp_read(hdmi, CMU_STATUS) & DISPLAY_CLK_MONITOR) ==
+			DISPLAY_CLK_LOCKED)
+		hdmi->disabled = false;
+
+	/* Not handled for now: IRQ0 (AVP), IRQ1 (CEC), IRQ2 (EARC) */
+	irq = platform_get_irq(pdev, 3);
+	if (irq < 0) {
+		ret = irq;
+		goto err_put;
+	}
+
+	ret = devm_request_threaded_irq(dev, irq,
+					dw_hdmi_qp_main_hardirq, NULL,
+					IRQF_SHARED, dev_name(dev), hdmi);
+	if (ret)
+		goto err_put;
+
+	/* If DDC bus is not specified, try to register HDMI I2C bus */
+	if (!hdmi->ddc) {
+		hdmi->ddc = dw_hdmi_i2c_adapter(hdmi, &dw_hdmi_algorithm);
+		if (IS_ERR(hdmi->ddc))
+			hdmi->ddc = NULL;
+	}
+
+	hdmi->bridge.driver_private = hdmi;
+	hdmi->bridge.funcs = &dw_hdmi_qp_bridge_funcs;
+	hdmi->bridge.ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID
+			 | DRM_BRIDGE_OP_HPD;
+	hdmi->bridge.ddc = hdmi->ddc;
+	hdmi->bridge.of_node = pdev->dev.of_node;
+	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
+
+	drm_bridge_add(&hdmi->bridge);
+
+	return hdmi;
+
+err_put:
+	i2c_put_adapter(hdmi->ddc);
+
+	return ERR_PTR(ret);
+}
+
+static void dw_hdmi_qp_remove(struct dw_hdmi *hdmi)
+{
+	drm_bridge_remove(&hdmi->bridge);
+
+	if (hdmi->audio && !IS_ERR(hdmi->audio))
+		platform_device_unregister(hdmi->audio);
+	if (!IS_ERR(hdmi->cec))
+		platform_device_unregister(hdmi->cec);
+
+	if (hdmi->i2c)
+		i2c_del_adapter(&hdmi->i2c->adap);
+	else
+		i2c_put_adapter(hdmi->ddc);
+}
+
+struct dw_hdmi *dw_hdmi_qp_bind(struct platform_device *pdev,
+				struct drm_encoder *encoder,
+				struct dw_hdmi_plat_data *plat_data)
+{
+	struct dw_hdmi *hdmi;
+	int ret;
+
+	hdmi = dw_hdmi_qp_probe(pdev, plat_data);
+	if (IS_ERR(hdmi))
+		return hdmi;
+
+	ret = drm_bridge_attach(encoder, &hdmi->bridge, NULL, 0);
+	if (ret) {
+		dw_hdmi_qp_remove(hdmi);
+		return ERR_PTR(ret);
+	}
+
+	return hdmi;
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_qp_bind);
+
+void dw_hdmi_qp_unbind(struct dw_hdmi *hdmi)
+{
+	dw_hdmi_qp_remove(hdmi);
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_qp_unbind);
+
+void dw_hdmi_qp_resume(struct device *dev, struct dw_hdmi *hdmi)
+{
+	dw_hdmi_qp_init_hw(hdmi);
+}
+EXPORT_SYMBOL_GPL(dw_hdmi_qp_resume);
+
+MODULE_AUTHOR("Algea Cao <algea.cao@rock-chips.com>");
+MODULE_AUTHOR("Cristian Ciocaltea <cristian.ciocaltea@collabora.com>");
+MODULE_DESCRIPTION("DW HDMI QP transmitter driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:dw-hdmi-qp");
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h
new file mode 100644
index 000000000000..a953cc00161d
--- /dev/null
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h
@@ -0,0 +1,831 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) Rockchip Electronics Co.Ltd
+ * Author:
+ *      Algea Cao <algea.cao@rock-chips.com>
+ */
+#ifndef __DW_HDMI_QP_H__
+#define __DW_HDMI_QP_H__
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
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index 6a46baa0737c..a9cc4604222a 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -131,6 +131,7 @@ struct dw_hdmi_plat_data {
 	unsigned long input_bus_encoding;
 	bool use_drm_infoframe;
 	bool ycbcr_420_allowed;
+	bool is_hdmi_qp;
 
 	/*
 	 * Private data passed to all the .mode_valid() and .configure_phy()
@@ -162,6 +163,7 @@ struct dw_hdmi_plat_data {
 			     unsigned long mpixelclock);
 
 	unsigned int disable_cec : 1;
+
 };
 
 struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
@@ -206,6 +208,12 @@ void dw_hdmi_phy_update_hpd(struct dw_hdmi *hdmi, void *data,
 			    bool force, bool disabled, bool rxsense);
 void dw_hdmi_phy_setup_hpd(struct dw_hdmi *hdmi, void *data);
 
+void dw_hdmi_qp_unbind(struct dw_hdmi *hdmi);
+struct dw_hdmi *dw_hdmi_qp_bind(struct platform_device *pdev,
+				struct drm_encoder *encoder,
+				struct dw_hdmi_plat_data *plat_data);
+void dw_hdmi_qp_resume(struct device *dev, struct dw_hdmi *hdmi);
+
 bool dw_hdmi_bus_fmt_is_420(struct dw_hdmi *hdmi);
 
 #endif /* __IMX_HDMI_H__ */

-- 
2.45.0


