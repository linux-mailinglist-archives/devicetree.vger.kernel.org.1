Return-Path: <devicetree+bounces-40455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9987850890
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 11:00:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 077271C20C53
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 10:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C86D459B40;
	Sun, 11 Feb 2024 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="VYsyooBc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DFD5917F
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 10:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707645634; cv=none; b=MOm1pmejssuuZkQEJDtN4b0BlWyCDVkl+1I+KjVCEAbYcjpoLvVqc7nfQdZKrG8ULo/chCOGuEzW14YbJbrspt/hs/xpNm2WbSB+FUvYkvIXkVew0vCBT1ZWsuK6/jOv9bU82IjrliLRQbYoAXLs2Z32U4p+/xkOg9ycC7N9DsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707645634; c=relaxed/simple;
	bh=z77kUUxPWALrfsKKAEPCPtQ6fzajT+5D56pYe6z494c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aC6YsnOQPU587Yp3rcVgljIIVD7PxojtumXWLiyl+oLnlq9n1avWHxhHO87YZe2p6dSpwy9GF7TqjRgcIvfRBUFAVhVU65RVu9QMLIwbVAsFgIuROOO8BnL92FHXF58hlVDylIJqTwP38Mb+LIcAToonfNUp+Qs8a4/+N5iaZas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=VYsyooBc; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 61CCD6049B;
	Sun, 11 Feb 2024 09:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707645631;
	bh=z77kUUxPWALrfsKKAEPCPtQ6fzajT+5D56pYe6z494c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VYsyooBchSHu4xNsPxcmZx6jIy9z/i+kD39f1I/TiQ39fofbwfZJ3kWQNySbqVB9H
	 JqTNrvTE6C0UPRW5FYEmaXrHDYoLzwyIwCUADYOz2ZX02w7hKGNYeTGjueyGlFbhNR
	 AZIv4tKqwEvs02jlxEFciw9ogA02npE/nrzsVffuXxVRwnACHhQIAcdEVr6H3bVia4
	 pU/uIHwVkFrpLYYSWD+Pae/7PI70o2F8kz81vdlRaDYwWAuTk1dmPegCc6lEttekk7
	 H7JgdBhxM89oBIykNkSs93uCwDM+9yGerWqm109OK4KSKow6/f/h9cbwMPGmQXpk6k
	 4QieNyO1FeliQ==
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
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 10/10] drm/bridge: tc358775: Configure hs_rate and lp_rate
Date: Sun, 11 Feb 2024 11:51:15 +0200
Message-ID: <20240211095144.2589-11-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240211095144.2589-1-tony@atomide.com>
References: <20240211095144.2589-1-tony@atomide.com>
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
2.43.0

