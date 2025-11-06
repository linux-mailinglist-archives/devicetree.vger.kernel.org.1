Return-Path: <devicetree+bounces-235802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AE26FC3D080
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 19:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2981C351D03
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 18:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D01C34F49F;
	Thu,  6 Nov 2025 18:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LHeVnypP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C72D280033
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 18:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762452702; cv=none; b=pHjCryITKyGTYSRJZXfLaHrRKfsXIhJJkI2QjynF01xR5fS8rUSvPNztrEXumj03yGfQ+ciLuV06F9d8e4T2n9kz+COjTe6dWvJFtmYVqPuhFAteb0+yz9ZJADFTlKMj2aXLxX23cw7GGuti7cqibPP37A0aBo5P6Z1UaX+1E+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762452702; c=relaxed/simple;
	bh=ru1jhenn57dzqU+707id03LVTJIlo9QDQ6V166y2Yd8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H6u534Ym6pnNpN3QmBhftE9jRjovUccH1+vthMwLMJzqIg029OBd/fRLcAYrYR5kE6VUZuV3iffGXBlYZ/RCACQlstn7SxUeO1pNHxnQlY5Tch3g/oqWHvYVLUjABwmFV9wKF2ZctFgRlWF/UIibW5JHkUvR5ptpNp2B29ShszY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LHeVnypP; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-3c9a42d6349so1630007fac.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762452699; x=1763057499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5NgunL5KwvJK+2gOf+mj57OQ2fhqgmw6auCXGkvoKy8=;
        b=LHeVnypPNEpXkfUBEm46sXfoDoE83WmadAQTqLPV8jgwsDnICAt26zvKzIsbY2ucUD
         o0vrGeIyo/82seDf81roU7H94SBI88p11Oz39vbyYO/Cl9a05JmpPPWciOv6kgumYSLG
         IUNa01OprlutovogQc15mcp4bkE0FMP3yYkIk6hYju0UD+kSz/4vGmaioGrAvLdtSzg1
         G6UtN/mdcP4e9c3CM+3Nk35Zs24u4p+DNsHGfgl08rq+llxfhFEGvqT1N3w/NCRJpd6F
         qtZKO9cP2duzH1axSUVOxiNKhYyKxSPF4WkaB8KZrhJTdm9vLC7wWgjX3ybvZU2t5fSS
         qFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762452699; x=1763057499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5NgunL5KwvJK+2gOf+mj57OQ2fhqgmw6auCXGkvoKy8=;
        b=dAiS/tS08IUu1hyR+SVe4RdjYAJJ4ib6ZiWlDz42KrMqvVeruzQNSUTOJrcGJaCGJ6
         Q79tSi2zK0Vx7xwtPi60YOUEe+5LWIY6a1p3FHDtvMkqRW15R2ezG28VvOf7HJVNEoxc
         EHqufG27izceDaTMcu03XkEEGZWsBZu0kzNDExrJ5jiMSt8qSDNG+iEZWGYNyA2UdU5t
         4U4v0TNgd9WRiNCVx23eya2fuAXkGpVwVq4deXlxyExhmVtlbTE5Ts+KGbFfNpU9q4w3
         65osbKQ5155QHjxKImFD4SKM9OX7gKg8RsVsVMc0NLXh5Rnavx1TSJdS2ZoPT8YbR5e8
         3dpQ==
X-Gm-Message-State: AOJu0YynMQlEWx3M0p+t8624iFWbK2x9xjTjVQ6vuHSA5rg6vWS8bDc7
	7mfqpYPi3wKON4VQJlf9HAMRcVzaPzMSEWeNGDxZHDKJH2sfTL37lZnn
X-Gm-Gg: ASbGncvug66Y7jScckIUuCgT5KbZ1i5ne1ZknbO2m0rQ0pwRZh9/WFb5PguATc6c/ez
	3t7Pi92o9MuouNJN5+Qo5PDIY0ybvZ8IFOgVodapvwKybTWRfvJr1jplGC0hp6YcjaFH3YiM49e
	tnqpCtlTKIT/Om4Ld4YeUglmQhNrtgC+bLskYe+XLjAsRikGx5uh2EY6pM9ZVdhqgJEOIL2qhMJ
	kagKU//0tyIhVjBAECQMBTRZ+McFsu/0XdktOR9qO64cLBEZlTvjqN00e3KDunfGFj1Dm0Ygxqd
	H1Jxv/9tPG33epoqMeakMRbc/0JV/TFeGwZa6vCL57AzmvKDpPgxfGEacMcOFiMMOi8T10XdoZl
	JBo/pP7dIiyGQyElefXqX4JiM+J5X9KiChnenXwVWlRLXL0hmL+5NFrW2ihNmuve5HDXc6fdvMh
	9yOvT5yXr8Yqj8LrwqJq4=
X-Google-Smtp-Source: AGHT+IHma/9oT2QhA0Uh2NSevURHZ6LEIHNkUwqOc+ooh6n5wL5HT6VMsKbcFKmAmJ5kNfBQsS2VOA==
X-Received: by 2002:a05:6871:5b0c:b0:3d9:2fe2:f5c8 with SMTP id 586e51a60fabf-3e41e608999mr373400fac.32.1762452699528;
        Thu, 06 Nov 2025 10:11:39 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e41ed0aa06sm137739fac.8.2025.11.06.10.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:11:39 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	Laurent.pinchart@ideasonboard.com,
	rfoss@kernel.org,
	neil.armstrong@linaro.org,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	andy.yan@rock-chips.com,
	heiko@sntech.de,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Date: Thu,  6 Nov 2025 12:09:13 -0600
Message-ID: <20251106180914.768502-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251106180914.768502-1-macroalpha82@gmail.com>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
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
change the error message to a debug message when we are unable to
complete an i2c read, as a disconnected device would otherwise fill
dmesg with i2c read errors.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 35 +++++++++++++++++---
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 39332c57f2c5..b221f797de3d 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -145,6 +145,7 @@ struct dw_hdmi_qp {
 	struct regmap *regm;
 
 	unsigned long tmds_char_rate;
+	bool no_hpd;
 };
 
 static void dw_hdmi_qp_write(struct dw_hdmi_qp *hdmi, unsigned int val,
@@ -520,6 +521,11 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 		i2c->is_regaddr = true;
 	}
 
+	/*
+	 * Mark errors as debug messages when using no_hpd so no device
+	 * attached does not fill up dmesg.
+	 */
+
 	while (length--) {
 		reinit_completion(&i2c->cmp);
 
@@ -535,14 +541,20 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
 
 		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
 		if (!stat) {
-			dev_err(hdmi->dev, "i2c read timed out\n");
+			if (hdmi->no_hpd)
+				dev_dbg(hdmi->dev, "i2c read timed out\n");
+			else
+				dev_err(hdmi->dev, "i2c read timed out\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EAGAIN;
 		}
 
 		/* Check for error condition on the bus */
 		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
-			dev_err(hdmi->dev, "i2c read error\n");
+			if (hdmi->no_hpd)
+				dev_dbg(hdmi->dev, "i2c read error\n");
+			else
+				dev_err(hdmi->dev, "i2c read error\n");
 			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
 			return -EIO;
 		}
@@ -879,6 +891,15 @@ static enum drm_connector_status
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
@@ -1074,12 +1095,18 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
 	if (ret)
 		return ERR_PTR(ret);
 
+	if (of_property_present(pdev->dev.of_node, "no-hpd"))
+		hdmi->no_hpd = 1;
+	else
+		hdmi->no_hpd = 0;
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


