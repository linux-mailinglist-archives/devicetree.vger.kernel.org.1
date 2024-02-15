Return-Path: <devicetree+bounces-42050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B22CD85636C
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:40:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E42B41C2292A
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:40:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45C5E12CDAC;
	Thu, 15 Feb 2024 12:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="qQrBoauw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE83812CDA9
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 12:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708000838; cv=none; b=MiGvmtEDjmB54qxut9sEpxTOfvieHkAD2VXosk4jrOefx2i86XhmyEplw+owd9noES3j7uygoGn0Zs3iAukOT4+RKMqxTMsD+176w7a00qNBlR3/r3EzLfL0DsrO/eufQ9bbvG48L4k9bs3KfoQJmxhtbu01HWRsO9RLW1t/sdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708000838; c=relaxed/simple;
	bh=869ARxb/lQtJWYF/G/YbdD+II5wfq7rb9YW7zhMHzYU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sDjpmC8KHEY4IjN09WX1qJFoaY65Moq7NtXZ9RCswbnLU5nZ4RsVZPgCJiDCSj8iOYhewtCKw0N1N6zl5IrmVlN8qqi/kBySbIcvdF07LqkXsNaxf2NmaqAEuC4uahE4dE25kJ4RBHR0c2GrOdfICx5LZIRtR2w86B/eQhmbGek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=qQrBoauw; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 1EDFB603EE;
	Thu, 15 Feb 2024 12:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708000836;
	bh=869ARxb/lQtJWYF/G/YbdD+II5wfq7rb9YW7zhMHzYU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qQrBoauwbLf/pSfkG3HEhN6Z3K1gGHYMkifvrVKR6pajo0IGvOZ11PixZf/FQjDLL
	 t0UPlsA1BPwxJohH7+aJhood5CVTQw1zFvvF3e0uh0eohg1Y4R6pWDDrbucTM0DHSJ
	 UlFCmVXW6fCnLTBfulYSPPbdaeEwBxLn8uFjHu75Zjw0ONzvxokJo0a353CyWupcMz
	 y+7s9SXKRs+QX0d9g9vtkfXD/EUPSydXRoHlLE4Mj/HWwmfDffO5LWomqI78w8COvr
	 +/LqKSaipB+hZhB5QApMSXY/kWY2oUoInIOkkxBOUwLhoxU+aQ7x9FgxkZvCnL2Qf6
	 1sTI30pe+UMjg==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 09/10] drm/bridge: tc358775: Add support for tc358765
Date: Thu, 15 Feb 2024 14:31:52 +0200
Message-ID: <20240215123222.42609-10-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240215123222.42609-1-tony@atomide.com>
References: <20240215123222.42609-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tc358775 bridge is pin compatible with earlier tc358765 according to
the tc358774xbg_datasheet_en_20190118.pdf documentation. Compared to the
tc358765, the tc358775 supports a STBY GPIO and higher data rates.

The tc358765 has a register bit for video event mode vs video pulse mode.
We must set it to video event mode for the LCD output to work, and on the
tc358775, this bit no longer exists.

Looks like the registers seem to match otherwise based on a quick glance
comparing the defines to the earlier Android kernel tc358765 driver.

Reviewed-by: Michael Walle <mwalle@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -15,6 +15,7 @@
 #include <linux/kernel.h>
 #include <linux/media-bus-format.h>
 #include <linux/module.h>
+#include <linux/of_device.h>
 #include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 
@@ -107,6 +108,7 @@
 #define RDPKTLN         0x0404  /* Command Read Packet Length */
 
 #define VPCTRL          0x0450  /* Video Path Control */
+#define EVTMODE		BIT(5)  /* Video event mode enable, tc35876x only */
 #define HTIM1           0x0454  /* Horizontal Timing Control 1 */
 #define HTIM2           0x0458  /* Horizontal Timing Control 2 */
 #define VTIM1           0x045C  /* Vertical Timing Control 1 */
@@ -254,6 +256,11 @@ enum tc358775_ports {
 	TC358775_LVDS_OUT1,
 };
 
+enum tc3587x5_type {
+	TC358765 = 0x65,
+	TC358775 = 0x75,
+};
+
 struct tc_data {
 	struct i2c_client	*i2c;
 	struct device		*dev;
@@ -271,6 +278,8 @@ struct tc_data {
 	struct gpio_desc	*stby_gpio;
 	u8			lvds_link; /* single-link or dual-link */
 	u8			bpc;
+
+	enum tc3587x5_type	type;
 };
 
 static inline struct tc_data *bridge_to_tc(struct drm_bridge *b)
@@ -424,10 +433,16 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
 	d2l_write(tc->i2c, PPI_STARTPPI, PPI_START_FUNCTION);
 	d2l_write(tc->i2c, DSI_STARTDSI, DSI_RX_START);
 
+	/* Video event mode vs pulse mode bit, does not exist for tc358775 */
+	if (tc->type == TC358765)
+		val = EVTMODE;
+	else
+		val = 0;
+
 	if (tc->bpc == 8)
-		val = TC358775_VPCTRL_OPXLFMT(1);
+		val |= TC358775_VPCTRL_OPXLFMT(1);
 	else /* bpc = 6; */
-		val = TC358775_VPCTRL_MSF(1);
+		val |= TC358775_VPCTRL_MSF(1);
 
 	dsiclk = mode->crtc_clock * 3 * tc->bpc / tc->num_dsi_lanes / 1000;
 	clkdiv = dsiclk / (tc->lvds_link == DUAL_LINK ? DIVIDE_BY_6 : DIVIDE_BY_3);
@@ -643,6 +658,7 @@ static int tc_probe(struct i2c_client *client)
 
 	tc->dev = dev;
 	tc->i2c = client;
+	tc->type = (enum tc3587x5_type)(unsigned long)of_device_get_match_data(dev);
 
 	tc->panel_bridge = devm_drm_of_get_bridge(dev, dev->of_node,
 						  TC358775_LVDS_OUT0, 0);
@@ -704,13 +720,15 @@ static void tc_remove(struct i2c_client *client)
 }
 
 static const struct i2c_device_id tc358775_i2c_ids[] = {
-	{ "tc358775", 0 },
+	{ "tc358765", TC358765, },
+	{ "tc358775", TC358775, },
 	{ }
 };
 MODULE_DEVICE_TABLE(i2c, tc358775_i2c_ids);
 
 static const struct of_device_id tc358775_of_ids[] = {
-	{ .compatible = "toshiba,tc358775", },
+	{ .compatible = "toshiba,tc358765", .data = (void *)TC358765, },
+	{ .compatible = "toshiba,tc358775", .data = (void *)TC358775, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, tc358775_of_ids);
-- 
2.43.1

