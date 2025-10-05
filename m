Return-Path: <devicetree+bounces-223725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C1DBBCE4B
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 01:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A27824E152F
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 23:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D19221704;
	Sun,  5 Oct 2025 23:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="LwZrDdVT"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADAB11D8DFB
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 23:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759708563; cv=none; b=BM5qjvl3xwYzy7ju/HZVBq9D8PCC1eVG0MTBKr72h+YtXtA5DDmAf6kteoJ9rNqQBJuTStNNl3i4UUYftRwLXT/rrNbstivgeOsYLgp7/ZeKJvtq5OkqWM2MOG+RfHtS6yicVBV5WhmHSNotZsxv1dBEeDvj+eJB8/OtLwRN7PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759708563; c=relaxed/simple;
	bh=mrjFBiOWM/ARdwktEQz4PKrFpJHCY4CsH6ebmFFT7PI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pzib48s1ReLkEW2Jivz1zWmmhSrV07ONerOXBWi9bsiIYtiJ9TdVqSgDrOI19g05ctW49RVV4jBF64e1YWaaWwUfrOQdDFdFWDh3mcQ3His1xDJf+2r/1gS73SBG+THMCSgBETdR3VaxF29GRM209MXiwowDaqNYRMXkbNfKcrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=LwZrDdVT; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 8AB691741;
	Mon,  6 Oct 2025 01:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759708461;
	bh=mrjFBiOWM/ARdwktEQz4PKrFpJHCY4CsH6ebmFFT7PI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LwZrDdVT2zm96djPONmUJ6bLe02p2GgNW+SbaIVMopw54ZCilN2DLDClBnC2rUKa6
	 kpsORch6aQEkfisKO/XeY4h5aoU2dG+o5x8DLuE2McD6gCeeaiypgUWbVQejwau1Vo
	 wSP2rskpllsvkJgbVviaZwo88fHedPSPsr4jCAAw=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Alexey Charkov <alchark@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v2 2/5] drm/rockchip: dw_hdmi_qp: Improve error handling with dev_err_probe()
Date: Mon,  6 Oct 2025 02:55:38 +0300
Message-ID: <20251005235542.1017-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

The error handling in dw_hdmi_qp_rockchip_bind() is quite inconsistent,
i.e. in some cases the error code is not included in the message, while
in some other cases there is no check for -EPROBE_DEFER.

Since this is part of the probe path, address the aforementioned issues
by switching to dev_err_probe(), which also reduces the code a bit.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 62 +++++++------------
 1 file changed, 24 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 7d531b6f4c09..4e7794aa2dde 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -457,10 +457,8 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 		return -ENODEV;
 
 	if (!cfg->ctrl_ops || !cfg->ctrl_ops->io_init ||
-	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback) {
-		dev_err(dev, "Missing platform ctrl ops\n");
-		return -ENODEV;
-	}
+	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback)
+		return dev_err_probe(dev, -ENODEV, "Missing platform ctrl ops\n");
 
 	hdmi->ctrl_ops = cfg->ctrl_ops;
 	hdmi->dev = &pdev->dev;
@@ -473,10 +471,9 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 			break;
 		}
 	}
-	if (hdmi->port_id < 0) {
-		dev_err(hdmi->dev, "Failed to match HDMI port ID\n");
-		return hdmi->port_id;
-	}
+	if (hdmi->port_id < 0)
+		return dev_err_probe(hdmi->dev, hdmi->port_id,
+				     "Failed to match HDMI port ID\n");
 
 	plat_data.phy_ops = cfg->phy_ops;
 	plat_data.phy_data = hdmi;
@@ -497,39 +494,30 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 
 	hdmi->regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
 						       "rockchip,grf");
-	if (IS_ERR(hdmi->regmap)) {
-		dev_err(hdmi->dev, "Unable to get rockchip,grf\n");
-		return PTR_ERR(hdmi->regmap);
-	}
+	if (IS_ERR(hdmi->regmap))
+		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->regmap),
+				     "Unable to get rockchip,grf\n");
 
 	hdmi->vo_regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
 							  "rockchip,vo-grf");
-	if (IS_ERR(hdmi->vo_regmap)) {
-		dev_err(hdmi->dev, "Unable to get rockchip,vo-grf\n");
-		return PTR_ERR(hdmi->vo_regmap);
-	}
+	if (IS_ERR(hdmi->vo_regmap))
+		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->vo_regmap),
+				     "Unable to get rockchip,vo-grf\n");
 
 	ret = devm_clk_bulk_get_all_enabled(hdmi->dev, &clks);
-	if (ret < 0) {
-		dev_err(hdmi->dev, "Failed to get clocks: %d\n", ret);
-		return ret;
-	}
+	if (ret < 0)
+		return dev_err_probe(hdmi->dev, ret, "Failed to get clocks\n");
 
 	hdmi->enable_gpio = devm_gpiod_get_optional(hdmi->dev, "enable",
 						    GPIOD_OUT_HIGH);
-	if (IS_ERR(hdmi->enable_gpio)) {
-		ret = PTR_ERR(hdmi->enable_gpio);
-		dev_err(hdmi->dev, "Failed to request enable GPIO: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(hdmi->enable_gpio))
+		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->enable_gpio),
+				     "Failed to request enable GPIO\n");
 
 	hdmi->phy = devm_of_phy_get_by_index(dev, dev->of_node, 0);
-	if (IS_ERR(hdmi->phy)) {
-		ret = PTR_ERR(hdmi->phy);
-		if (ret != -EPROBE_DEFER)
-			dev_err(hdmi->dev, "failed to get phy: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(hdmi->phy))
+		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->phy),
+				     "Failed to get phy\n");
 
 	cfg->ctrl_ops->io_init(hdmi);
 
@@ -558,17 +546,15 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 
 	hdmi->hdmi = dw_hdmi_qp_bind(pdev, encoder, &plat_data);
 	if (IS_ERR(hdmi->hdmi)) {
-		ret = PTR_ERR(hdmi->hdmi);
 		drm_encoder_cleanup(encoder);
-		return ret;
+		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->hdmi),
+				     "Failed to bind dw-hdmi-qp");
 	}
 
 	connector = drm_bridge_connector_init(drm, encoder);
-	if (IS_ERR(connector)) {
-		ret = PTR_ERR(connector);
-		dev_err(hdmi->dev, "failed to init bridge connector: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(connector))
+		return dev_err_probe(hdmi->dev, PTR_ERR(connector),
+				     "Failed to init bridge connector\n");
 
 	return drm_connector_attach_encoder(connector, encoder);
 }
-- 
Regards,

Laurent Pinchart


