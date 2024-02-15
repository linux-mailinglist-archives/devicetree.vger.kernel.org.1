Return-Path: <devicetree+bounces-42051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EB185636E
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0AA3281430
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA8C12CDBE;
	Thu, 15 Feb 2024 12:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="DgPcLvTj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C4512AACB
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 12:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708000885; cv=none; b=Vk+41KUww/Yjpwu52RgMN4uLwg8OsjjtagDaSp7d4ihjwJIxh+diFyax7JNq1Iw60Az5a2r6R9cPdAgJJO8t4CemcZdND4xmpvOnq60KsV0rzLBgPdBYxfrGdoLc47prZVYpTlFlTH0n6DN4xzkcHHvjETirLClwk/lddiS+5Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708000885; c=relaxed/simple;
	bh=VERCIMMDwj5lwKKcADSnyxcjQigwJ3k/cdfbfunsFPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=plGp1Xss47qTWvawJMLyn3vwLKtvT6AA4uRGhiX0N44xdJn0Pwlmd2uKzywXA9Ivvq4LztRlIkybEIY8JRVQTcZ8bL/Da2ljaGf3a2+ojdwpYRZS4Pd/7qE7HHXteb/reSDZVfajP1bJ3Cbi51eO+v+El1r3reNetfDO4AxVZO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=DgPcLvTj; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 7D68660333;
	Thu, 15 Feb 2024 12:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708000883;
	bh=VERCIMMDwj5lwKKcADSnyxcjQigwJ3k/cdfbfunsFPQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DgPcLvTjJGxq+IXNCQCYs1LxVECVbuw4ttf0+ed72NdtX7wL4fBM7rZ7jmbqTv/gP
	 dVW+vPUJ4Ld2L3NyEZ2Hivro3JoHmdQrYuFQrx0ziR8Qmxfiygun2UMoMiorY42w1i
	 5xBwWsRBCVwzTFKMf/UbGCa79vwwh18+c3Tj2JglTeLMUdnYrv+qiMAQAAW9EPFt8p
	 d8ks5hpHfSLtrmYAum+tL7yZ4vnsWesKW1R09vnzmGkiLXQutvVY/T8XpzuqLbyhbO
	 wwim89SzZSlKU5QQoDwJDKYLPoWA8cBnXw3T7/GdTBvfyAz29KqvjPuLtsVd2hRbi9
	 sYMalts6I4vcQ==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
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
Subject: [PATCH v4 10/10] drm/bridge: tc358775: Configure hs_rate and lp_rate
Date: Thu, 15 Feb 2024 14:31:53 +0200
Message-ID: <20240215123222.42609-11-tony@atomide.com>
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

The hs_rate and lp_rate may be used by the dsi host for timing
calculations. The tc358775 has a maximum bit rate of 1 Gbps/lane,
tc358765 has maximurate of 800 Mbps per lane.

Reviewed-by: Michael Walle <mwalle@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -637,6 +637,19 @@ static int tc_attach_host(struct tc_data *tc)
 	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
 			  MIPI_DSI_MODE_LPM;
 
+	/*
+	 * The hs_rate and lp_rate are data rate values. The HS mode is
+	 * differential, while the LP mode is single ended. As the HS mode
+	 * uses DDR, the DSI clock frequency is half the hs_rate. The 10 Mbs
+	 * data rate for LP mode is not specified in the bridge data sheet,
+	 * but seems to be part of the MIPI DSI spec.
+	 */
+	if (tc->type == TC358765)
+		dsi->hs_rate = 800000000;
+	else
+		dsi->hs_rate = 1000000000;
+	dsi->lp_rate = 10000000;
+
 	ret = devm_mipi_dsi_attach(dev, dsi);
 	if (ret < 0) {
 		dev_err(dev, "failed to attach dsi to host\n");
-- 
2.43.1

