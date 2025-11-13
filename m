Return-Path: <devicetree+bounces-238309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E477C59C38
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:33:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C8E2D4E5BCE
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE5A30B50B;
	Thu, 13 Nov 2025 19:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AxHwpp+K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 909883164B0
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 19:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062334; cv=none; b=UvydJiYzD4/aqkSref6Ca5kqGV6nWvwZC3iYq3M1otkvGfu/iOF2uMEcP4rwcNsykP9bx4WXf2STErbGB+K+kXm3xC/f0gFU0NqgZZ1AdXKhOIAIsEehhyBszSRD8M0Iw16f9s6ytY05gKk+EvM9RNpSZDvQR/TWMivot8kdfng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062334; c=relaxed/simple;
	bh=pw4rM1hbH1svM2eOS0CCYvMpBwj0W6JtdcOZj3yE3HA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EsUSjtS7hmgToNpzhCuS09XdJMRCLtc3vXN3nhhLolHRmY6f7oM0mMHgu0l+4LpdyQxZWSidLxyi8V/Xt/QHF0Ys1XCA4iUOQdbVBNdRVZsadDuJ8MkD4SEa09m8B0a4O/+1uWwGJbUXtTsOxaSTBEHMm1rdWaBE2cuNCOdb1uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AxHwpp+K; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7c70c718a3dso948418a34.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763062331; x=1763667131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WjY5bSDF/34na4x5qJa/vBhMjZyyo09Xbv/ulTjTfew=;
        b=AxHwpp+K+3LjeZbQfFChcvJxmmV9dkdrDDk5bFsvCedMiPEmauAWJ1QU5KKGa9QSlW
         k3PMLkmSpmRtS/2u/8l0GPSGlLVBwu2d2Aa2JQgYvzDZwKjk/3S1wlvPmcBpI5/UlGe5
         oSDlb5HkwbNqbtPEt8yrUZSppjN/pQBgxo5epy3KbLpcNYrJobdyEQnt2bxcrfRLw0FJ
         KUgM010J2CnldSm+1YQbiN+7Ox7ZCf55/DD6ELkFZffBfopRLIqe3ljJOcQhK3xmZ217
         hoHTaBQHzz6TWBDgenxKNVObMbXYkDAAjCm+z/Wj3O1i+jYFFxIoFrjqfofEFS1/MdJl
         tlMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062331; x=1763667131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WjY5bSDF/34na4x5qJa/vBhMjZyyo09Xbv/ulTjTfew=;
        b=ZwoyFmKN5WBJWzr51/WVb6FXXhrJ7KhyqKnwMVB1oI3QBiR6AEOUaBpWpqf9zUiLv3
         tCAepFYzv/oqjWusXAl85aPoyITwJ+aBG3Syp4OBnynUypwOEKObMEACHAOhqEiZVViG
         XmhiIBGT3XQ9Sopy6YEXCoDZY58LJPjcQ3PRmbZURfUkqqar/yoyjXZAKQwMOZVcVpsf
         7i5w1AB3aWVzezGtQZ6Hc7rVHqQjR+F71b/IjAhcNcH8DYgDOZjZGwA97q55zuc6XqVo
         xESCB9DN1pUCh0iolbhTDgf1ULUtVLjEYj4yA/lZPoIE5FHgyXIBp7rHisijlEewViNt
         AT4g==
X-Forwarded-Encrypted: i=1; AJvYcCXpGT4/qra3UcBivKl8fBfc4slZBMiF4ae12DEVC6vx8UtrLoN9xUyTa9DZ7EwveNFGn9lWVyMc4IHY@vger.kernel.org
X-Gm-Message-State: AOJu0YyZNn9gyyh05PTHIsx7MawkRVFSRf/VT1CcLVYZCaccRE32XZCU
	P+fbPG9ie9crCnGKupQ0iAta+ZeuCvsbddL3fkxVOcM5XmCHwsg7Joti
X-Gm-Gg: ASbGncubiSE6FXOmy+nuESTDpb/y3BXjvJbzWJx5Hlb+c8YqhMOKVEf5yI0JxSzaH8z
	t70lmz6PpVjyKBBoykkO/Da07s0+BLmaGD5WztQqkM/4B6v6RGIhO3VRLEu2Ck6iTg29iosVRm3
	Okmr73dl+fjbbO95XCcDvUO5PBqZAH4exmcd85JJyXJoJgt31THpK9Y7cE4z+e74a8lkCZcx20S
	rtIIJKkuberaZI7uohsefJfNUl4sPpbtF6Lpf1/eRF+F7EpgEVfu/3xjR95XoE2jTH4VYcDMzY1
	iy86XmtY9OnxByZP1890o5wGmv04pcvLtv3eQxBQ5fg0MJboFmBrQPNtL+lEwoVJlnvHJJE1Rd9
	kZ3ll4lwWbAZTdSXd5hMbe9hZNg+UFMYkEXf1cIY+9yud6pboueF7NQEL6wXpeVm0THmdenLADQ
	IYyFYd9md6
X-Google-Smtp-Source: AGHT+IEN0ly3jkiturhspnw+/Ap8OVCxuw6kbAXWdNt7i/HmMqvW9s6jce50wrIfcbraP1DJ8sELaQ==
X-Received: by 2002:a05:6830:3690:b0:7ae:dbc5:4705 with SMTP id 46e09a7af769-7c744505ddamr468309a34.27.1763062331474;
        Thu, 13 Nov 2025 11:32:11 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a392fa5sm1693527a34.19.2025.11.13.11.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 11:32:10 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
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
	Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Date: Thu, 13 Nov 2025 13:29:38 -0600
Message-ID: <20251113192939.30031-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113192939.30031-1-macroalpha82@gmail.com>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
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
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 32 +++++++++++++++++---
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index 39332c57f2c5..a2b1a4821714 100644
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
@@ -1074,12 +1095,15 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
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


