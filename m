Return-Path: <devicetree+bounces-71469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AE58D700A
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 15:13:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1DAD4B21818
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 13:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A38F152169;
	Sat,  1 Jun 2024 13:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hHur09TU"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D571514C5;
	Sat,  1 Jun 2024 13:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717247590; cv=none; b=Yje30FzCCCyO9Cdf3EBUKEuKvDvUSr6wkOyMurB9m5S0ljip9SYj8gE85UjAU8pxeyMnZBhIEETiGTrIhVSS/t+7wZiTuxmsdIbb40c1cxDjDybC5nFh5qjQ9dtqEMJpWCUtnMAmOzeSjlnCny0rhGL6JXDnQnULW0lu3BUpct0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717247590; c=relaxed/simple;
	bh=+1+H1itjV3UR3Fw4Yh7rx2gqvEy9OFRsyg6/yt5V/lY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HaRMP8HRVuj4WroAEjoSYNB0+EhgkR4MFENCt8NHsF4QlGmtjCX6/Yjls0a3v9k8YNFMSGrAP0W4talFi3WBWl1av4fNdModiHm2l+upwJ9fboSbXxKQtrWjCk74wgpLBv5RyIHczgztgf97qaCZAoDe7hl7gEXzizLRY0R6Vg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hHur09TU; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247581;
	bh=+1+H1itjV3UR3Fw4Yh7rx2gqvEy9OFRsyg6/yt5V/lY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hHur09TUqKckQnc7S5hhyVmCTf0yJ4AYQLIRqYPJp0KFKXga8LUgiwDKYBtlVkqgP
	 kfvxUMhANWh+ZU3PJzvenO4Di4F4wU6JhX+y2zbNGcygXLUX8sA//Lzi3uEwQOxwnC
	 CDvimYRIIykjqIVGkiwP7gOiXCX5nQzZb6O0yiJHZwdG0jYL+XpN+4QZxqoo6/ydMx
	 /s2w/mH5NQsjq47EJw8K35a8/RXMiecbm+duGadabSdIL2XhoN050PQxZqc4k2TG4e
	 8tii+AxE3+mJP4+UiVTKz9Jyj0OgTF6Y75Uz7q+B3znd+BOIFVGHwSvmDM8iSIoIrH
	 VQO+Ltd2Hwblg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BF05437821EA;
	Sat,  1 Jun 2024 13:13:00 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:24 +0300
Subject: [PATCH 02/14] drm/bridge: dw-hdmi: Add dw-hdmi-common.h header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-2-f6203753232b@collabora.com>
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
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-Mailer: b4 0.14-dev-f7c49

In preparation to add support for the HDMI 2.1 Quad-Pixel TX Controller
and minimize code duplication as much as possible, export all reusable
functions and provide the related declarations and structs within a new
header file.

For consistency, ensure the newly exported symbols share the 'dw_'
prefix.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h | 167 ++++++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c        | 170 ++++-------------------
 2 files changed, 194 insertions(+), 143 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
new file mode 100644
index 000000000000..28e26ac142e6
--- /dev/null
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
@@ -0,0 +1,167 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef __DW_HDMI_COMMON_H__
+#define __DW_HDMI_COMMON_H__
+
+#include <linux/i2c.h>
+#include <linux/completion.h>
+#include <linux/mutex.h>
+#include <linux/spinlock_types.h>
+
+#include <drm/bridge/dw_hdmi.h>
+#include <drm/drm_connector.h>
+#include <drm/drm_bridge.h>
+#include <drm/drm_modes.h>
+
+#include <sound/hdmi-codec.h>
+
+struct cec_notifier;
+struct device;
+struct drm_bridge_state;
+struct drm_crtc_state;
+struct drm_edid;
+struct pinctrl;
+struct pinctrl_state;
+struct platform_device;
+struct regmap;
+
+#define DDC_CI_ADDR		0x37
+#define DDC_SEGMENT_ADDR	0x30
+
+#define HDMI_EDID_LEN		512
+
+/* DW-HDMI Controller >= 0x200a are at least compliant with SCDC version 1 */
+#define SCDC_MIN_SOURCE_VERSION	0x1
+
+#define HDMI14_MAX_TMDSCLK	340000000
+
+struct hdmi_vmode {
+	bool mdataenablepolarity;
+
+	unsigned int mpixelclock;
+	unsigned int mpixelrepetitioninput;
+	unsigned int mpixelrepetitionoutput;
+	unsigned int mtmdsclock;
+};
+
+struct hdmi_data_info {
+	unsigned int enc_in_bus_format;
+	unsigned int enc_out_bus_format;
+	unsigned int enc_in_encoding;
+	unsigned int enc_out_encoding;
+	unsigned int pix_repet_factor;
+	unsigned int hdcp_enable;
+	struct hdmi_vmode video_mode;
+	bool rgb_limited_range;
+};
+
+struct dw_hdmi_i2c {
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
+struct dw_hdmi_phy_data {
+	enum dw_hdmi_phy_type type;
+	const char *name;
+	unsigned int gen;
+	bool has_svsret;
+	int (*configure)(struct dw_hdmi *hdmi,
+			 const struct dw_hdmi_plat_data *pdata,
+			 unsigned long mpixelclock);
+};
+
+struct dw_hdmi {
+	struct drm_connector connector;
+	struct drm_bridge bridge;
+	struct drm_bridge *next_bridge;
+
+	unsigned int version;
+
+	struct platform_device *audio;
+	struct platform_device *cec;
+	struct device *dev;
+	struct dw_hdmi_i2c *i2c;
+
+	struct hdmi_data_info hdmi_data;
+	const struct dw_hdmi_plat_data *plat_data;
+
+	int vic;
+
+	u8 edid[HDMI_EDID_LEN];
+
+	struct {
+		const struct dw_hdmi_phy_ops *ops;
+		const char *name;
+		void *data;
+		bool enabled;
+	} phy;
+
+	struct drm_display_mode previous_mode;
+
+	struct i2c_adapter *ddc;
+	void __iomem *regs;
+	bool sink_is_hdmi;
+	bool sink_has_audio;
+
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *default_state;
+	struct pinctrl_state *unwedge_state;
+
+	struct mutex mutex;		/* for state below and previous_mode */
+	enum drm_connector_force force;	/* mutex-protected force state */
+	struct drm_connector *curr_conn;/* current connector (only valid when !disabled) */
+	bool disabled;			/* DRM has disabled our bridge */
+	bool bridge_is_on;		/* indicates the bridge is on */
+	bool rxsense;			/* rxsense state */
+	u8 phy_mask;			/* desired phy int mask settings */
+	u8 mc_clkdis;			/* clock disable register */
+
+	spinlock_t audio_lock;
+	struct mutex audio_mutex;
+	unsigned int sample_non_pcm;
+	unsigned int sample_width;
+	unsigned int sample_rate;
+	unsigned int channels;
+	unsigned int audio_cts;
+	unsigned int audio_n;
+	bool audio_enable;
+
+	unsigned int reg_shift;
+	struct regmap *regm;
+	void (*enable_audio)(struct dw_hdmi *hdmi);
+	void (*disable_audio)(struct dw_hdmi *hdmi);
+
+	struct mutex cec_notifier_mutex;
+	struct cec_notifier *cec_notifier;
+
+	hdmi_codec_plugged_cb plugged_cb;
+	struct device *codec_dev;
+	enum drm_connector_status last_connector_result;
+};
+
+void dw_handle_plugged_change(struct dw_hdmi *hdmi, bool plugged);
+bool dw_hdmi_support_scdc(struct dw_hdmi *hdmi,
+			  const struct drm_display_info *display);
+
+enum drm_connector_status
+dw_hdmi_connector_detect(struct drm_connector *connector, bool force);
+
+int dw_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
+				struct drm_bridge_state *bridge_state,
+				struct drm_crtc_state *crtc_state,
+				struct drm_connector_state *conn_state);
+void dw_hdmi_bridge_detach(struct drm_bridge *bridge);
+void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
+			     const struct drm_display_mode *orig_mode,
+			     const struct drm_display_mode *mode);
+enum drm_connector_status dw_hdmi_bridge_detect(struct drm_bridge *bridge);
+const struct drm_edid *
+dw_hdmi_bridge_edid_read(struct drm_bridge *bridge,
+			 struct drm_connector *connector);
+#endif /* __DW_HDMI_COMMON_H__ */
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 0031f3c54882..b66877771f56 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -10,10 +10,8 @@
 #include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/hdmi.h>
-#include <linux/i2c.h>
 #include <linux/irq.h>
 #include <linux/module.h>
-#include <linux/mutex.h>
 #include <linux/of.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/regmap.h>
@@ -25,12 +23,10 @@
 #include <uapi/linux/media-bus-format.h>
 #include <uapi/linux/videodev2.h>
 
-#include <drm/bridge/dw_hdmi.h>
 #include <drm/display/drm_hdmi_helper.h>
 #include <drm/display/drm_scdc_helper.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
-#include <drm/drm_bridge.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
@@ -38,18 +34,9 @@
 
 #include "dw-hdmi-audio.h"
 #include "dw-hdmi-cec.h"
+#include "dw-hdmi-common.h"
 #include "dw-hdmi.h"
 
-#define DDC_CI_ADDR		0x37
-#define DDC_SEGMENT_ADDR	0x30
-
-#define HDMI_EDID_LEN		512
-
-/* DW-HDMI Controller >= 0x200a are at least compliant with SCDC version 1 */
-#define SCDC_MIN_SOURCE_VERSION	0x1
-
-#define HDMI14_MAX_TMDSCLK	340000000
-
 static const u16 csc_coeff_default[3][4] = {
 	{ 0x2000, 0x0000, 0x0000, 0x0000 },
 	{ 0x0000, 0x2000, 0x0000, 0x0000 },
@@ -86,117 +73,6 @@ static const u16 csc_coeff_rgb_full_to_rgb_limited[3][4] = {
 	{ 0x0000, 0x0000, 0x1b7c, 0x0020 }
 };
 
-struct hdmi_vmode {
-	bool mdataenablepolarity;
-
-	unsigned int mpixelclock;
-	unsigned int mpixelrepetitioninput;
-	unsigned int mpixelrepetitionoutput;
-	unsigned int mtmdsclock;
-};
-
-struct hdmi_data_info {
-	unsigned int enc_in_bus_format;
-	unsigned int enc_out_bus_format;
-	unsigned int enc_in_encoding;
-	unsigned int enc_out_encoding;
-	unsigned int pix_repet_factor;
-	unsigned int hdcp_enable;
-	struct hdmi_vmode video_mode;
-	bool rgb_limited_range;
-};
-
-struct dw_hdmi_i2c {
-	struct i2c_adapter	adap;
-
-	struct mutex		lock;	/* used to serialize data transfers */
-	struct completion	cmp;
-	u8			stat;
-
-	u8			slave_reg;
-	bool			is_regaddr;
-	bool			is_segment;
-};
-
-struct dw_hdmi_phy_data {
-	enum dw_hdmi_phy_type type;
-	const char *name;
-	unsigned int gen;
-	bool has_svsret;
-	int (*configure)(struct dw_hdmi *hdmi,
-			 const struct dw_hdmi_plat_data *pdata,
-			 unsigned long mpixelclock);
-};
-
-struct dw_hdmi {
-	struct drm_connector connector;
-	struct drm_bridge bridge;
-	struct drm_bridge *next_bridge;
-
-	unsigned int version;
-
-	struct platform_device *audio;
-	struct platform_device *cec;
-	struct device *dev;
-	struct dw_hdmi_i2c *i2c;
-
-	struct hdmi_data_info hdmi_data;
-	const struct dw_hdmi_plat_data *plat_data;
-
-	int vic;
-
-	u8 edid[HDMI_EDID_LEN];
-
-	struct {
-		const struct dw_hdmi_phy_ops *ops;
-		const char *name;
-		void *data;
-		bool enabled;
-	} phy;
-
-	struct drm_display_mode previous_mode;
-
-	struct i2c_adapter *ddc;
-	void __iomem *regs;
-	bool sink_is_hdmi;
-	bool sink_has_audio;
-
-	struct pinctrl *pinctrl;
-	struct pinctrl_state *default_state;
-	struct pinctrl_state *unwedge_state;
-
-	struct mutex mutex;		/* for state below and previous_mode */
-	enum drm_connector_force force;	/* mutex-protected force state */
-	struct drm_connector *curr_conn;/* current connector (only valid when !disabled) */
-	bool disabled;			/* DRM has disabled our bridge */
-	bool bridge_is_on;		/* indicates the bridge is on */
-	bool rxsense;			/* rxsense state */
-	u8 phy_mask;			/* desired phy int mask settings */
-	u8 mc_clkdis;			/* clock disable register */
-
-	spinlock_t audio_lock;
-	struct mutex audio_mutex;
-	unsigned int sample_non_pcm;
-	unsigned int sample_width;
-	unsigned int sample_rate;
-	unsigned int channels;
-	unsigned int audio_cts;
-	unsigned int audio_n;
-	bool audio_enable;
-
-	unsigned int reg_shift;
-	struct regmap *regm;
-	void (*enable_audio)(struct dw_hdmi *hdmi);
-	void (*disable_audio)(struct dw_hdmi *hdmi);
-
-	struct mutex cec_notifier_mutex;
-	struct cec_notifier *cec_notifier;
-
-	hdmi_codec_plugged_cb plugged_cb;
-	struct device *codec_dev;
-	enum drm_connector_status last_connector_result;
-};
-
 #define HDMI_IH_PHY_STAT0_RX_SENSE \
 	(HDMI_IH_PHY_STAT0_RX_SENSE0 | HDMI_IH_PHY_STAT0_RX_SENSE1 | \
 	 HDMI_IH_PHY_STAT0_RX_SENSE2 | HDMI_IH_PHY_STAT0_RX_SENSE3)
@@ -219,11 +95,12 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
 	return val;
 }
 
-static void handle_plugged_change(struct dw_hdmi *hdmi, bool plugged)
+void dw_handle_plugged_change(struct dw_hdmi *hdmi, bool plugged)
 {
 	if (hdmi->plugged_cb && hdmi->codec_dev)
 		hdmi->plugged_cb(hdmi->codec_dev, plugged);
 }
+EXPORT_SYMBOL_GPL(dw_handle_plugged_change);
 
 int dw_hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn,
 			   struct device *codec_dev)
@@ -234,7 +111,7 @@ int dw_hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn,
 	hdmi->plugged_cb = fn;
 	hdmi->codec_dev = codec_dev;
 	plugged = hdmi->last_connector_result == connector_status_connected;
-	handle_plugged_change(hdmi, plugged);
+	dw_handle_plugged_change(hdmi, plugged);
 	mutex_unlock(&hdmi->mutex);
 
 	return 0;
@@ -1361,8 +1238,8 @@ void dw_hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
 EXPORT_SYMBOL_GPL(dw_hdmi_phy_i2c_write);
 
 /* Filter out invalid setups to avoid configuring SCDC and scrambling */
-static bool dw_hdmi_support_scdc(struct dw_hdmi *hdmi,
-				 const struct drm_display_info *display)
+bool dw_hdmi_support_scdc(struct dw_hdmi *hdmi,
+			  const struct drm_display_info *display)
 {
 	/* Completely disable SCDC support for older controllers */
 	if (hdmi->version < 0x200a)
@@ -1387,6 +1264,7 @@ static bool dw_hdmi_support_scdc(struct dw_hdmi *hdmi,
 
 	return true;
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_support_scdc);
 
 /*
  * HDMI2.0 Specifies the following procedure for High TMDS Bit Rates:
@@ -2486,13 +2364,14 @@ static const struct drm_edid *dw_hdmi_edid_read(struct dw_hdmi *hdmi,
  * DRM Connector Operations
  */
 
-static enum drm_connector_status
+enum drm_connector_status
 dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
 	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
 					     connector);
 	return dw_hdmi_detect(hdmi);
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_connector_detect);
 
 static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
 {
@@ -2868,10 +2747,10 @@ static u32 *dw_hdmi_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
 	return input_fmts;
 }
 
-static int dw_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
-				       struct drm_bridge_state *bridge_state,
-				       struct drm_crtc_state *crtc_state,
-				       struct drm_connector_state *conn_state)
+int dw_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
+				struct drm_bridge_state *bridge_state,
+				struct drm_crtc_state *crtc_state,
+				struct drm_connector_state *conn_state)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
@@ -2887,6 +2766,7 @@ static int dw_hdmi_bridge_atomic_check(struct drm_bridge *bridge,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_bridge_atomic_check);
 
 static int dw_hdmi_bridge_attach(struct drm_bridge *bridge,
 				 enum drm_bridge_attach_flags flags)
@@ -2900,7 +2780,7 @@ static int dw_hdmi_bridge_attach(struct drm_bridge *bridge,
 	return dw_hdmi_connector_create(hdmi);
 }
 
-static void dw_hdmi_bridge_detach(struct drm_bridge *bridge)
+void dw_hdmi_bridge_detach(struct drm_bridge *bridge)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
@@ -2909,6 +2789,7 @@ static void dw_hdmi_bridge_detach(struct drm_bridge *bridge)
 	hdmi->cec_notifier = NULL;
 	mutex_unlock(&hdmi->cec_notifier_mutex);
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_bridge_detach);
 
 static enum drm_mode_status
 dw_hdmi_bridge_mode_valid(struct drm_bridge *bridge,
@@ -2930,9 +2811,9 @@ dw_hdmi_bridge_mode_valid(struct drm_bridge *bridge,
 	return mode_status;
 }
 
-static void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
-				    const struct drm_display_mode *orig_mode,
-				    const struct drm_display_mode *mode)
+void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
+			     const struct drm_display_mode *orig_mode,
+			     const struct drm_display_mode *mode)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
@@ -2943,6 +2824,7 @@ static void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
 
 	mutex_unlock(&hdmi->mutex);
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_bridge_mode_set);
 
 static void dw_hdmi_bridge_atomic_disable(struct drm_bridge *bridge,
 					  struct drm_bridge_state *old_state)
@@ -2954,7 +2836,7 @@ static void dw_hdmi_bridge_atomic_disable(struct drm_bridge *bridge,
 	hdmi->curr_conn = NULL;
 	dw_hdmi_update_power(hdmi);
 	dw_hdmi_update_phy_mask(hdmi);
-	handle_plugged_change(hdmi, false);
+	dw_handle_plugged_change(hdmi, false);
 	mutex_unlock(&hdmi->mutex);
 }
 
@@ -2973,24 +2855,26 @@ static void dw_hdmi_bridge_atomic_enable(struct drm_bridge *bridge,
 	hdmi->curr_conn = connector;
 	dw_hdmi_update_power(hdmi);
 	dw_hdmi_update_phy_mask(hdmi);
-	handle_plugged_change(hdmi, true);
+	dw_handle_plugged_change(hdmi, true);
 	mutex_unlock(&hdmi->mutex);
 }
 
-static enum drm_connector_status dw_hdmi_bridge_detect(struct drm_bridge *bridge)
+enum drm_connector_status dw_hdmi_bridge_detect(struct drm_bridge *bridge)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
 	return dw_hdmi_detect(hdmi);
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_bridge_detect);
 
-static const struct drm_edid *dw_hdmi_bridge_edid_read(struct drm_bridge *bridge,
-						       struct drm_connector *connector)
+const struct drm_edid *dw_hdmi_bridge_edid_read(struct drm_bridge *bridge,
+						struct drm_connector *connector)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
 	return dw_hdmi_edid_read(hdmi, connector);
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_bridge_edid_read);
 
 static const struct drm_bridge_funcs dw_hdmi_bridge_funcs = {
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,

-- 
2.45.0


