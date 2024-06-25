Return-Path: <devicetree+bounces-79680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0AB9166EF
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:06:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83F7E1F21ACB
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4F8F14D2B3;
	Tue, 25 Jun 2024 12:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="Vj3NETGU"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E609514BF8B
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317178; cv=none; b=hJIjK2e0MaIVWnCGTeZjF6rBIj0Jyr1lsi95NNuv50cw2RQIvYpw5KPKXVC/uOhOnPVEppsTfd5ATjOdMizk6A7UZNjlub4mtSRUS9oRU+PHdnu5VsMLg71wlQ4mIHmJCkO4jeTp3WhTCkq0xvCfurMEdqE09jh1gvq10HlzrxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317178; c=relaxed/simple;
	bh=pMUlmVTnh1IjVJjcMMiyjmNzcKhy3uw1xNm0y+yW214=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qUpwDO0piHqymcOILVyUxJMx1p/w+er12u/XPxm2uNG3wViifKlgyJF5PrWJmx8CZB1QhRyAktBfzFJFuBoJIZpnZl++doJ3H+2cnz72nT8LzpABGBbDaUDWnbN7Ly3u+uTei+h3RK50aNA8JjliuqnqhVjIIBjxJwXmGRTDcag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=Vj3NETGU; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 3C6828842C;
	Tue, 25 Jun 2024 14:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719317175;
	bh=CP2KpK42tVT2Wj44PINpvILxasfmUJo3YwIGAL76dEU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Vj3NETGU+fxh6Hk+VO/Whlge49AIWqnsiRXDnssvQ9SOhnpCYZz8NfpbdrsSbCBBJ
	 Eq10DiwNU/BY4HEwWiix+ArC1IufDgLsWjfiBammDm8SWT5E1Xn2QfTSaumDhsh1b2
	 ZZdm1QN9V7HrQibvOrMBwrhqZYeEV+3aGA9iLOZhmjoC9UDV8QOlH7/2EFcQrTwmxA
	 Fb1HYyeOIJahcH8dKdZSQjGJhtQnpKsr6Iise9Ygtg8/Gf4P+qPbgxrSBflCx7RYQT
	 Dz2tM0TG5q6MEdlsEscsQRIJww0W5j1fnmRUg8yte1uto9Cmvy2ToFk1qXi8dF0oqY
	 QUhPVzXzItunw==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: [PATCH v3 2/2] drm/bridge: tc358767: Add configurable default preemphasis
Date: Tue, 25 Jun 2024 14:05:15 +0200
Message-ID: <20240625120552.145389-2-marex@denx.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240625120552.145389-1-marex@denx.de>
References: <20240625120552.145389-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Make the default DP port preemphasis configurable via new DT property
"toshiba,pre-emphasis". This is useful in case the DP link properties
are known and starting link training from preemphasis setting of 0 dB
is not useful. The preemphasis can be set separately for both DP lanes
in range 0=0dB, 1=3.5dB, 2=6dB .

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: kernel@dh-electronics.com
---
V2: - Parse toshiba,pre-emphasis property out of an endpoint of port 2 (the DP port)
V3: - No change
---
 drivers/gpu/drm/bridge/tc358767.c | 45 ++++++++++++++++++++++++++-----
 1 file changed, 38 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tc358767.c b/drivers/gpu/drm/bridge/tc358767.c
index dde1b2734c98a..257fe15080099 100644
--- a/drivers/gpu/drm/bridge/tc358767.c
+++ b/drivers/gpu/drm/bridge/tc358767.c
@@ -241,6 +241,10 @@
 
 /* Link Training */
 #define DP0_SRCCTRL		0x06a0
+#define DP0_SRCCTRL_PRE1		GENMASK(29, 28)
+#define DP0_SRCCTRL_SWG1		GENMASK(25, 24)
+#define DP0_SRCCTRL_PRE0		GENMASK(21, 20)
+#define DP0_SRCCTRL_SWG0		GENMASK(17, 16)
 #define DP0_SRCCTRL_SCRMBLDIS		BIT(13)
 #define DP0_SRCCTRL_EN810B		BIT(12)
 #define DP0_SRCCTRL_NOTP		(0 << 8)
@@ -278,6 +282,8 @@
 #define AUDIFDATA6		0x0720	/* DP0 Audio Info Frame Bytes 27 to 24 */
 
 #define DP1_SRCCTRL		0x07a0	/* DP1 Control Register */
+#define DP1_SRCCTRL_PRE			GENMASK(21, 20)
+#define DP1_SRCCTRL_SWG			GENMASK(17, 16)
 
 /* PHY */
 #define DP_PHY_CTRL		0x0800
@@ -369,6 +375,7 @@ struct tc_data {
 
 	u32			rev;
 	u8			assr;
+	u8			pre_emphasis[2];
 
 	struct gpio_desc	*sd_gpio;
 	struct gpio_desc	*reset_gpio;
@@ -1090,13 +1097,17 @@ static int tc_main_link_enable(struct tc_data *tc)
 			return ret;
 	}
 
-	ret = regmap_write(tc->regmap, DP0_SRCCTRL, tc_srcctrl(tc));
+	ret = regmap_write(tc->regmap, DP0_SRCCTRL,
+			   tc_srcctrl(tc) |
+			   FIELD_PREP(DP0_SRCCTRL_PRE0, tc->pre_emphasis[0]) |
+			   FIELD_PREP(DP0_SRCCTRL_PRE1, tc->pre_emphasis[1]));
 	if (ret)
 		return ret;
 	/* SSCG and BW27 on DP1 must be set to the same as on DP0 */
 	ret = regmap_write(tc->regmap, DP1_SRCCTRL,
 		 (tc->link.spread ? DP0_SRCCTRL_SSCG : 0) |
-		 ((tc->link.rate != 162000) ? DP0_SRCCTRL_BW27 : 0));
+		 ((tc->link.rate != 162000) ? DP0_SRCCTRL_BW27 : 0) |
+		 FIELD_PREP(DP1_SRCCTRL_PRE, tc->pre_emphasis[1]));
 	if (ret)
 		return ret;
 
@@ -1188,8 +1199,10 @@ static int tc_main_link_enable(struct tc_data *tc)
 		goto err_dpcd_write;
 
 	/* Reset voltage-swing & pre-emphasis */
-	tmp[0] = tmp[1] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
-			  DP_TRAIN_PRE_EMPH_LEVEL_0;
+	tmp[0] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
+		 FIELD_PREP(DP_TRAIN_PRE_EMPHASIS_MASK, tc->pre_emphasis[0]);
+	tmp[1] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
+		 FIELD_PREP(DP_TRAIN_PRE_EMPHASIS_MASK, tc->pre_emphasis[1]);
 	ret = drm_dp_dpcd_write(aux, DP_TRAINING_LANE0_SET, tmp, 2);
 	if (ret < 0)
 		goto err_dpcd_write;
@@ -1213,7 +1226,9 @@ static int tc_main_link_enable(struct tc_data *tc)
 	ret = regmap_write(tc->regmap, DP0_SRCCTRL,
 			   tc_srcctrl(tc) | DP0_SRCCTRL_SCRMBLDIS |
 			   DP0_SRCCTRL_AUTOCORRECT |
-			   DP0_SRCCTRL_TP1);
+			   DP0_SRCCTRL_TP1 |
+			   FIELD_PREP(DP0_SRCCTRL_PRE0, tc->pre_emphasis[0]) |
+			   FIELD_PREP(DP0_SRCCTRL_PRE1, tc->pre_emphasis[1]));
 	if (ret)
 		return ret;
 
@@ -1248,7 +1263,9 @@ static int tc_main_link_enable(struct tc_data *tc)
 	ret = regmap_write(tc->regmap, DP0_SRCCTRL,
 			   tc_srcctrl(tc) | DP0_SRCCTRL_SCRMBLDIS |
 			   DP0_SRCCTRL_AUTOCORRECT |
-			   DP0_SRCCTRL_TP2);
+			   DP0_SRCCTRL_TP2 |
+			   FIELD_PREP(DP0_SRCCTRL_PRE0, tc->pre_emphasis[0]) |
+			   FIELD_PREP(DP0_SRCCTRL_PRE1, tc->pre_emphasis[1]));
 	if (ret)
 		return ret;
 
@@ -1274,7 +1291,9 @@ static int tc_main_link_enable(struct tc_data *tc)
 
 	/* Clear Training Pattern, set AutoCorrect Mode = 1 */
 	ret = regmap_write(tc->regmap, DP0_SRCCTRL, tc_srcctrl(tc) |
-			   DP0_SRCCTRL_AUTOCORRECT);
+			   DP0_SRCCTRL_AUTOCORRECT |
+			   FIELD_PREP(DP0_SRCCTRL_PRE0, tc->pre_emphasis[0]) |
+			   FIELD_PREP(DP0_SRCCTRL_PRE1, tc->pre_emphasis[1]));
 	if (ret)
 		return ret;
 
@@ -2435,6 +2454,18 @@ static int tc_probe_bridge_endpoint(struct tc_data *tc)
 			return -EINVAL;
 		}
 		mode |= BIT(endpoint.port);
+		if (endpoint.port != 2)
+			continue;
+
+		of_property_read_u8_array(node, "toshiba,pre-emphasis",
+					  tc->pre_emphasis,
+					  ARRAY_SIZE(tc->pre_emphasis));
+
+		if (tc->pre_emphasis[0] < 0 || tc->pre_emphasis[0] > 2 ||
+		    tc->pre_emphasis[1] < 0 || tc->pre_emphasis[1] > 2) {
+			dev_err(dev, "Incorrect Pre-Emphasis setting, use either 0=0dB 1=3.5dB 2=6dB\n");
+			return -EINVAL;
+		}
 	}
 
 	if (mode == mode_dpi_to_edp || mode == mode_dpi_to_dp) {
-- 
2.43.0


