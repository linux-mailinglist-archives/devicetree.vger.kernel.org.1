Return-Path: <devicetree+bounces-19225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FAE7FA0FE
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 013151C20C42
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C3A2EAE6;
	Mon, 27 Nov 2023 13:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbCCcEDe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F691096D
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 13:25:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C93D0C433C7;
	Mon, 27 Nov 2023 13:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091544;
	bh=Umygg2yHRdjm+EZVjaEnqKXeTQXJLjvWgCeoV3Q0X1k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NbCCcEDeYKgeOSSEh+j9VE8puG3hnVMHs37nBertaUtwAbRna82aXErSIsj0PuKzq
	 I2xLL0Vibg9XO4VDMp44YWRf0GeSwor8DZpkdAk2mr4Pi9AqrOjuIfC1OrSEo9HYH9
	 IEg4J4Fk3uhzreUvXOn74UbJs0nyT6OApg3p+3t9/Yh1COJZ0FmjvA2RwOIwvorcVM
	 C5pEn+qi8galpFbtiBrAedApvV8kQMgPot+IubxT6cLOG/BHF15Qi9OSi/kqi6kAGr
	 84bimbC4v7GlZ/6Lj3j0r4D9LNf/oqNcFh70OVFUEz/G1l+pof4x1AIZqqdDc6Aec7
	 tGiI7cqoR5LZg==
From: Michael Walle <mwalle@kernel.org>
To: tony@atomide.com
Cc: Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	maarten.lankhorst@linux.intel.com,
	merlijn@wizzup.org,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	pavel@ucw.cz,
	philipp@uvos.xyz,
	rfoss@kernel.org,
	sam@ravnborg.org,
	simhavcs@gmail.com,
	sre@kernel.org,
	tzimmermann@suse.de,
	Michael Walle <mwalle@kernel.org>
Subject: Re: [PATCH 3/6] drm/bridge: tc358775: Add jeida-24 support
Date: Mon, 27 Nov 2023 14:25:25 +0100
Message-Id: <20231127132525.2156089-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231126171837.GK5169@atomide.com>
References: <20231126171837.GK5169@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

> The jeida-24 register values are the default hardware settings, but they
> not listed in the driver. Let's add them.

jeida-24 and jeida-18 should have the same mapping, jeida-18 is broken in
this driver. could you test this patch:

--snip--

From 46da1d76d4908e5879ed746cce1faeacd69c432e Mon Sep 17 00:00:00 2001
From: Michael Walle <mwalle@kernel.org>
Date: Wed, 4 Oct 2023 13:52:57 +0200
Subject: [PATCH] drm/bridge: tc358775: fix support for jeida-18 and jeida-24

The bridge always uses 24bpp internally. Therefore, for jeida-18
mapping we need to discard the lowest two bits for each channel and thus
starting with LV_[RGB]2. jeida-24 has the same mapping but uses four
lanes instead of three, with the forth pair transmitting the lowest two
bits of each channel. Thus, the mapping between jeida-18 and jeida-24
is actually the same, except that one channel is turned off (by
selecting the RGB666 format in VPCTRL).

While at it, remove the bogus comment about the hardware default because
the default is overwritten in any case.

Tested with a jeida-18 display (Evervision VGG644804).

Fixes: b26975593b17 ("display/drm/bridge: TC358775 DSI/LVDS driver")
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 drivers/gpu/drm/bridge/tc358775.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
index 90a89d70d832..592c69c2aedc 100644
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -454,10 +454,6 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
 	dev_dbg(tc->dev, "bus_formats %04x bpc %d\n",
 		connector->display_info.bus_formats[0],
 		tc->bpc);
-	/*
-	 * Default hardware register settings of tc358775 configured
-	 * with MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA jeida-24 format
-	 */
 	if (connector->display_info.bus_formats[0] ==
 		MEDIA_BUS_FMT_RGB888_1X7X4_SPWG) {
 		/* VESA-24 */
@@ -468,14 +464,15 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
 		d2l_write(tc->i2c, LV_MX1619, LV_MX(LVI_B6, LVI_B7, LVI_B1, LVI_B2));
 		d2l_write(tc->i2c, LV_MX2023, LV_MX(LVI_B3, LVI_B4, LVI_B5, LVI_L0));
 		d2l_write(tc->i2c, LV_MX2427, LV_MX(LVI_HS, LVI_VS, LVI_DE, LVI_R6));
-	} else { /*  MEDIA_BUS_FMT_RGB666_1X7X3_SPWG - JEIDA-18 */
-		d2l_write(tc->i2c, LV_MX0003, LV_MX(LVI_R0, LVI_R1, LVI_R2, LVI_R3));
-		d2l_write(tc->i2c, LV_MX0407, LV_MX(LVI_R4, LVI_L0, LVI_R5, LVI_G0));
-		d2l_write(tc->i2c, LV_MX0811, LV_MX(LVI_G1, LVI_G2, LVI_L0, LVI_L0));
-		d2l_write(tc->i2c, LV_MX1215, LV_MX(LVI_G3, LVI_G4, LVI_G5, LVI_B0));
-		d2l_write(tc->i2c, LV_MX1619, LV_MX(LVI_L0, LVI_L0, LVI_B1, LVI_B2));
-		d2l_write(tc->i2c, LV_MX2023, LV_MX(LVI_B3, LVI_B4, LVI_B5, LVI_L0));
-		d2l_write(tc->i2c, LV_MX2427, LV_MX(LVI_HS, LVI_VS, LVI_DE, LVI_L0));
+	} else {
+		/* JEIDA-18 and JEIDA-24 */
+		d2l_write(tc->i2c, LV_MX0003, LV_MX(LVI_R2, LVI_R3, LVI_R4, LVI_R5));
+		d2l_write(tc->i2c, LV_MX0407, LV_MX(LVI_R6, LVI_R1, LVI_R7, LVI_G2));
+		d2l_write(tc->i2c, LV_MX0811, LV_MX(LVI_G3, LVI_G4, LVI_G0, LVI_G1));
+		d2l_write(tc->i2c, LV_MX1215, LV_MX(LVI_G5, LVI_G6, LVI_G7, LVI_B2));
+		d2l_write(tc->i2c, LV_MX1619, LV_MX(LVI_B0, LVI_B1, LVI_B3, LVI_B4));
+		d2l_write(tc->i2c, LV_MX2023, LV_MX(LVI_B5, LVI_B6, LVI_B7, LVI_L0));
+		d2l_write(tc->i2c, LV_MX2427, LV_MX(LVI_HS, LVI_VS, LVI_DE, LVI_R0));
 	}
 
 	d2l_write(tc->i2c, VFUEN, VFUEN_EN);
-- 
2.39.2


