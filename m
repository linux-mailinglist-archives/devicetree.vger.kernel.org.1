Return-Path: <devicetree+bounces-45644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C16686295A
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 07:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B77DA1F2179E
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 06:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CB40C157;
	Sun, 25 Feb 2024 06:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="aTFT+MVw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBDB2F58
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 06:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708842418; cv=none; b=skbRdcpKAUNhbT1WTuo1nFc3hOLWg6BNMYbojs8KOrF4+tACapdRYzlchiJKYqwQXGRXJgXVqaSZFfjh4+imH6TuxXE7h0xh165HccX6EIGVdEER7hCtAmAJmJ4s4M9Yo29FsmXiuuSH1he5GvsEDJwCBbQsi50mfmB4v88Deqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708842418; c=relaxed/simple;
	bh=62ixwlg4iV01reNSkMHqs5+wysAaMhHEA/y/f3xMgdQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FN3eZ5cSDNag4JW2ljz+bnS7BMGyKGtLqgkwaWFBj2fFjrvE7zbeVcdTQemmx7BB96GGUgwucqV9WfWBVMRjhm3teDc484qAKKfgHSn/VBk36jGFiFxAnV3MPe1549iZIypG6desgexHyqE9wFHYy7p05V2AVhEKM2zQN9wkxw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=aTFT+MVw; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id F22A06058D;
	Sun, 25 Feb 2024 06:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708842416;
	bh=62ixwlg4iV01reNSkMHqs5+wysAaMhHEA/y/f3xMgdQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aTFT+MVw7EnM+wzNxJD79b16Kxlap5Skc4rfABThxbZ7DDEKlWim/NToZRwjZY0Dk
	 Hm7h0l8F0MWlM7zB4/xB5lsl9aIm9+WcPh7JZuy21JlWhCexfSiUOQCaXMhTwUQw47
	 UHjvW+SeVrdj4ARdPAssYLLNZetp1PaZqitAeZXLiB2X86q3elUi6Mfvl8nBjRwEDn
	 +WIepk/VA28pA93pzpXFweLksE7PjZgZ9Bgnv4um8pWClfm2g5FZltcrw2/ZoG0PBj
	 RoXqkBiyZVnYOzIDN1RCE+X2H7hTHTku/opyNRPxDbaQVWZFtSAdA/PKDEqMWQPYD3
	 OlrTgfO7j4IcQ==
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
Subject: [PATCH v5 07/10] drm/bridge: tc358775: Add burst and low-power modes
Date: Sun, 25 Feb 2024 08:19:36 +0200
Message-ID: <20240225062008.33191-8-tony@atomide.com>
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
2.43.1

