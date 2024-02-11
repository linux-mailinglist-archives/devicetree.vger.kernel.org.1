Return-Path: <devicetree+bounces-40452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF03A850888
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 10:58:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7DB361F22DC6
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 09:58:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC1545917D;
	Sun, 11 Feb 2024 09:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="ZVQ8Xbu/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858D25917C
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 09:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707645495; cv=none; b=UPAzO9Qr4ulNhR7OGzBOHDdF65wog0jLPcc9v2D5OnueRgGxnCCIjpBR0g6vjZyj6JVDaDcVQtQA+bt1/lozWUSYH1Fn3z2MohA/yJ+P0gjik+FOL1nluCre3/axioegomreusZeejJJ/1Sx54lj0r2eavxXsgM8G7yz0CGkao4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707645495; c=relaxed/simple;
	bh=kd+zRSEdG8aMisnDVG+UHDjKLo4GnG1aATMM7BrtpSk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=quXfqEiRxYfkE/FO1qQfIbIs3CwUC7A0TN3gjqHcBREH+B1FUtHG+cEq6g2r5X2mxftMF0w9sbLDRXWCWVOVAizBDpaUkTx4iq37X9QC6WD3/N5MjRlkCOWy1R/WGxHKTNGns/0+KHhCpw0diNufoYoqDD/wrI2HawaSP3bQ8Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=ZVQ8Xbu/; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id C6A0F6049B;
	Sun, 11 Feb 2024 09:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707645494;
	bh=kd+zRSEdG8aMisnDVG+UHDjKLo4GnG1aATMM7BrtpSk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZVQ8Xbu/Xd3yksbOywtrud8j0RGxm7UlDLaW1KIf278Idnptbf0JiChkQhwj5wRIE
	 hB/vy90xPQtm9alNzXV99f2xPRU2F3LEJX2HPsokMVicklCpBLwPpG28R5D6u2cS40
	 ySJ9MUtm3ch48lgI02Sqp8P8sb4wRyNXJEhO9jJ1JnmvNQWPO6GBY4mPLQTTAo5W3s
	 WBHEun/Kl+yNZia+nJz8SfvckbzsbrALGQN/mJuGeNEr3hX1EUVqDGtsEpBcFWTESr
	 3eRDIGXs1IbA34uXtmfCasgXM0bwSNfpY4cfNqCjtn5b+vdQ91PQy0nEwGAl0YJfQ+
	 qQAGUkRY2nGZA==
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
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 07/10] drm/bridge: tc358775: Add burst and low-power modes
Date: Sun, 11 Feb 2024 11:51:12 +0200
Message-ID: <20240211095144.2589-8-tony@atomide.com>
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

Burst and low-power modes are supported both for tc358765 and tc358775.

Reviewed-by: Michael Walle <mwalle@kernel.org>
Tested-by: Michael Walle <mwalle@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -619,7 +619,8 @@ static int tc_attach_host(struct tc_data *tc)
 
 	dsi->lanes = tc->num_dsi_lanes;
 	dsi->format = MIPI_DSI_FMT_RGB888;
-	dsi->mode_flags = MIPI_DSI_MODE_VIDEO;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+			  MIPI_DSI_MODE_LPM;
 
 	ret = devm_mipi_dsi_attach(dev, dsi);
 	if (ret < 0) {
-- 
2.43.0

