Return-Path: <devicetree+bounces-240460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9AFC71669
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 23:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 017722D5AC
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 22:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FB722D481F;
	Wed, 19 Nov 2025 22:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gBXO60Kd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0309A2FB988
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 22:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763593079; cv=none; b=GOVOT5JIYnD9PnfTfKT7c6Qw2KgVTFgRUJGMXqB6+SA3HZ3GjKx7H6Die+pXpIXyZ0XrO3u78vB7NqanTZmszsk6tjTdIpnQhRGfEb/UCJpFOn+QeG9EiYeHT+bLhmw0rGO7FQj1o+YnyzseV3GfJD0csT4o/bJJI8qjs9BoW7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763593079; c=relaxed/simple;
	bh=/bF8tOqrKKwoh47fMEwmiiiiYKPnw/fvBNPYnylKokE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YJgN+Fu+8GNealzwRYkLUC8zqugqQbWRlQFSKO2ZgKzZcBl2wyceeOoroU0SVNZDzdtyGLfVQZ7TM4MGYaDYQkyn3l+m9Cqgsz9azvnKpZZLiOA1n5RJOJbsG3ihgDEsx0dgLIHUqyRKUM7QqddNf4YozRse6nOfw0Ow/XpedyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gBXO60Kd; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-3e89d226c3aso105511fac.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763593077; x=1764197877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y6LGAGBP9c6FoKoEIEPE5MCGiUaAlb4W0quePS5bYZY=;
        b=gBXO60KdmWs2JO9NYybKI2YQAAj94NKpI7//3y/L8a+UBdwSOeQFkwAqc5VwEZ859g
         Vg55WfqLkUn2lXuFwrpJDugOWQ+yLZa7Q20reL/7SZuvyRYtg4UAakugTF6na8gVCkmS
         YC68uuWqX2HHMxHpBaS7J5SoZ4GiFEhCLoxZxA+13/KPCB/I9sRyzWAxwdm8xnyEzXRw
         HqY8mu9JV2CjWxm1su3by/FADDSWBhLBEOmnp3zyvQs5fBYftFMLOXSbl3ccXzkCQOLB
         /7ag7zmard/I7MjLeWWvlg/ym54eXI8eDNHBJ6zkE6Ddi7KCFW0ERX2GrcoI0eo0NKr9
         vkxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593077; x=1764197877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y6LGAGBP9c6FoKoEIEPE5MCGiUaAlb4W0quePS5bYZY=;
        b=sA64Dk3AkKpWw7+dCEwi+miD1ckMZpPdrTzrQ0MLDhPqhtnsanwzYYvLzdR8sPRh2H
         lNpWSuhP8aLie1uXPgY417U5Hv0KbUB2eCDLWsMwWXmgD9iDFdMBa/E3PSQsPRA7uVJs
         IZZRfZCa1WMt8qRtjVLKAzqkrS7fHaklqMaYFImDQ2/SKQzjh60TtWdn6p9HFWOh9EEQ
         GN8Zdr3yiZgZ720U1U84fsJD7nxGErMLRe/Sg+yzcNB+Jip7GLu5LaiuOfm8HgUFMAhE
         lxRxZ6aIBsXsWiK+F6GaiBH4ca67tgAhSEhMo9SQkggoUld7WaxhrVhaslptpRqLM5pd
         ufTA==
X-Forwarded-Encrypted: i=1; AJvYcCWFu2UGwWd5kafTFyhQeuE8FskEGHcsmQUSgVKh1vD3Yu2vJi4NOX4+XcHCXdtwB6UPUNekRbJrRTAY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/Yymakb3Z/62uYaZpED6+UNBKxuxPilZr0CA0kx3T7bLWODC0
	CiAZy4saccHl5ke7l5a9RiG/Sl+KIw/Lq+HDzp3Lj+fFurIQQfSMvTMK
X-Gm-Gg: ASbGncuj7nbXSsyPLAnTwV8hDiA3KIdTULqstQbERwPrx8nRKe6+FPdCiEnpRQMg7C1
	CnbRSyA7Q/3q7oSI6YB3MV+aze6YyR4NGlldnbQTkpT/MW7D5aCJ4bt6Yr7At7aBn5542WnD0Ai
	tHJCsTjwDxxQfQAZgDKXnpUo6JqQwTAmZoi5tnAUveNzK2XfZFNJmN0gXflQzNUYwufnsGexUAZ
	hoGEvhnVW1f1oGI7hBeFVzCQv8O+oUUdbLWxsTvOmaavCO0YObaLp6010Dr416seHAGpYZsjsWb
	Ty5VsPTTKGIhN5vPeJsu7nwzRHKUuQ5ON4gO72OPPJRSDAxs4gy15OvAYzIgos78waHgKx5nPd0
	QIGr60+EKcbEoE0IRWZMgiJraDlwJde5AJEYl3+vePXrekUJ2MYkqIaG3YdCYCC1dxeZ5z99TVp
	VcSQJK/rFXTix5K2o/Gkw=
X-Google-Smtp-Source: AGHT+IFytu07GZ0leAT27e/jZkgFSTcxqNaPPUdMxf5ufIH3je+/bC9NW+Gg2lNinpphG6lYgT/JCg==
X-Received: by 2002:a05:6870:80cb:b0:3ec:343c:8db7 with SMTP id 586e51a60fabf-3ec9a3332f7mr514455fac.5.1763593077107;
        Wed, 19 Nov 2025 14:57:57 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dcfe28csm346496fac.22.2025.11.19.14.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:57:56 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	cristian.ciocaltea@collabora.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Date: Wed, 19 Nov 2025 16:55:25 -0600
Message-ID: <20251119225526.70588-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119225526.70588-1-macroalpha82@gmail.com>
References: <20251119225526.70588-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the dw-hdmi-qp driver to handle devices with missing
HPD pins.

Since in this situation we are now polling for the EDID data via i2c
change the error message to a rate limited debug message when we are
unable to complete an i2c read, as a disconnected device would
otherwise fill dmesg with i2c read errors.

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 34 +++++++++++++++++---
 1 file changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 39332c57f2c5..929b2e95a5c5 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -145,6 +145,7 @@ struct dw_hdmi_qp {
 	struct regmap *regm;
 
 	unsigned long tmds_char_rate;
+	bool no_hpd;
 };
 
 static void dw_hdmi_qp_write(struct dw_hdmi_qp *hdmi, unsigned int val,
@@ -535,14 +536,22 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 
 		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
 		if (!stat) {
-			dev_err(hdmi->dev, "i2c read timed out\n");
+			if (hdmi->no_hpd)
+				dev_dbg_ratelimited(hdmi->dev,
+						    "i2c read timed out\n");
+			else
+				dev_err(hdmi->dev, "i2c read timed out\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EAGAIN;
 		}
 
 		/* Check for error condition on the bus */
 		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
-			dev_err(hdmi->dev, "i2c read error\n");
+			if (hdmi->no_hpd)
+				dev_dbg_ratelimited(hdmi->dev,
+						    "i2c read error\n");
+			else
+				dev_err(hdmi->dev, "i2c read error\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EIO;
 		}
@@ -879,6 +888,15 @@ static enum drm_connector_status
 dw_hdmi_qp_bridge_detect(struct drm_bridge *bridge, struct drm_connector *connector)
 {
 	struct dw_hdmi_qp *hdmi = bridge->driver_private;
+	const struct drm_edid *drm_edid;
+
+	if (hdmi->no_hpd) {
+		drm_edid = drm_edid_read_ddc(connector, bridge->ddc);
+		if (drm_edid)
+			return connector_status_connected;
+		else
+			return connector_status_disconnected;
+	}
 
 	return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
 }
@@ -904,6 +922,11 @@ dw_hdmi_qp_bridge_tmds_char_rate_valid(const struct drm_bridge *bridge,
 {
 	struct dw_hdmi_qp *hdmi = bridge->driver_private;
 
+	/*
+	 * TODO: when hdmi->no_hpd is 1 we must not support modes that
+	 * require scrambling, including every mode with a clock above
+	 * HDMI14_MAX_TMDSCLK.
+	 */
 	if (rate > HDMI14_MAX_TMDSCLK) {
 		dev_dbg(hdmi->dev, "Unsupported TMDS char rate: %lld\n", rate);
 		return MODE_CLOCK_HIGH;
@@ -1074,12 +1097,15 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
 	if (ret)
 		return ERR_PTR(ret);
 
+	hdmi->no_hpd = device_property_read_bool(dev, "no-hpd");
+
 	hdmi->bridge.driver_private = hdmi;
 	hdmi->bridge.ops = DRM_BRIDGE_OP_DETECT |
 			   DRM_BRIDGE_OP_EDID |
 			   DRM_BRIDGE_OP_HDMI |
-			   DRM_BRIDGE_OP_HDMI_AUDIO |
-			   DRM_BRIDGE_OP_HPD;
+			   DRM_BRIDGE_OP_HDMI_AUDIO;
+	if (!hdmi->no_hpd)
+		hdmi->bridge.ops |= DRM_BRIDGE_OP_HPD;
 	hdmi->bridge.of_node = pdev->dev.of_node;
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	hdmi->bridge.vendor = "Synopsys";
-- 
2.43.0


