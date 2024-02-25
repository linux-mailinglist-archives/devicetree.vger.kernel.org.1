Return-Path: <devicetree+bounces-45647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 77816862960
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 07:29:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08070B20F4E
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 06:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D57FC8C4;
	Sun, 25 Feb 2024 06:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="jFki21+n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAEB2F58
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 06:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708842562; cv=none; b=W3KS8E+EIAKmcWLDDy3TUK96BUOD3xOCtwJA4z9WObFibr23SkBh7C60xnhadpOaNjZu893a2Sy5FlnbztsZAVXassUiVdkWPcLrHZIFo8Li/4SD/ZGD6cJwZRGA1hqjdwhfRDCnQWmlRQ94tQ2QDxbhm4d2mQ2KC9YoefL/f0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708842562; c=relaxed/simple;
	bh=VERCIMMDwj5lwKKcADSnyxcjQigwJ3k/cdfbfunsFPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JAaowAAGNw3vA0Kt7K+ve3eVX3Q0TqiVfU1B51C/rXiT/XR2NUJESLt/HmQcNLbMvAk12Ikt7vi0j3mBQ3lMJrRKzDwbHe9iZyy3BXAJkNkzNKA6utBl/rW6T5GHbohK+h8HKodSWdmppdyl4vLMkLJJwgm0PS1gbUNaEHwtCG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=jFki21+n; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id BC6626058D;
	Sun, 25 Feb 2024 06:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708842560;
	bh=VERCIMMDwj5lwKKcADSnyxcjQigwJ3k/cdfbfunsFPQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jFki21+nM/4h9YcgPTCs3+gS3/dLXKuPuMiSxI8kuOiAIyqcoY48O+Zil2nRgDbHK
	 q8A+2GHh/P3fyfKZ1YLkLL90AeNQo8kmZF+msKVPdXwfiM8i1AeUo7nubqrbhU9MVo
	 acuwIWRo7GTNTMuOzbWAk9EG3K29I241CMOqpwEWQ3rbzDQMjdkkjLjk5JF9SMugBU
	 DvJGXp1vjCbojDb3G68m77ZgjTYqKCwRVoWd+Qe2Dv1Fv9uS4kYoyoDzD6J6GYKsd7
	 fyMz5Q1/lEq5H7brY+oblijxmUgf5DS8U2+XTyUeioA0Wls3SOexfew+gUaFyqLHuP
	 ebTy9UOHSvjIA==
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
Subject: [PATCH v5 10/10] drm/bridge: tc358775: Configure hs_rate and lp_rate
Date: Sun, 25 Feb 2024 08:19:39 +0200
Message-ID: <20240225062008.33191-11-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240225062008.33191-1-tony@atomide.com>
References: <20240225062008.33191-1-tony@atomide.com>
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

