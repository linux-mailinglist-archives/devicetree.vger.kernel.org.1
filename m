Return-Path: <devicetree+bounces-40453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC68985088B
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 10:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AA4B1C20D90
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 09:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF22259B7F;
	Sun, 11 Feb 2024 09:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="uNASvobR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9194A59B4F
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 09:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707645541; cv=none; b=P00RVECf5btYDvXd5g1jBG4lhlRxxsqwBKcaNXRLCNQtZbpYqiqSdOrpIY0mwpIMxieOfs5QVZb2i3TG90Duq5hs8SZzmnMPLTZhY/i1mPhVg8xGBUOH+g+5Yl4ZqS0WKKMK6FZFC8VUgPwwD8mMe7CGAFr9iep6R5YLoD7o4Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707645541; c=relaxed/simple;
	bh=FjwKCh0OyLcqGd/Zpf7X+z4QaZS2EBYoMaL17D9Z9KY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K/IaRJ4yRpozraJtTig0LRfrrExdKM2BXgkAJvSKjI6OJXPwM8RqfHF1bOzGtUYE6a5PNPv7EixZ856ROxw4T+HfViybBT6KIesYAMKLvcBRmjfzIc2Kc+ykPk9LFGg79Klxewk/8Vao67T1yMivK1OmwUPq0i2hqEwB+BOXyKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=uNASvobR; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 8109D6049B;
	Sun, 11 Feb 2024 09:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707645539;
	bh=FjwKCh0OyLcqGd/Zpf7X+z4QaZS2EBYoMaL17D9Z9KY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uNASvobR4cl32N2Nv1FTtBFECOowzRMHM4zzPTySu+3MbEQl6Hnn288Gpzdl2pKGt
	 omq/AHNAkpTmavgsUXBXQgIfaEvJmnlCgWvpLL+0EKtuPFP74K/xQ6a8WXLdAjsIGm
	 xSuOv9K6bbTkz3VAe9pg/17Tkh8/P3SuviIDf/QSPNGLSKQvGi24FeycNr4fEykp3n
	 wakBbzdIFfSNBjZa7mUJJfqIq3tyklTCide6Dbb79+9Q9RndF4iKrZNzuMyc/TgAj/
	 UDG/tg7IKt94BEFSYpOFw13cIZEwSacsVEYHbfviE3vQxg34z6WQkRUA3zmknRxHIp
	 3MWpY9NNzZIUQ==
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
Subject: [PATCH v3 08/10] drm/bridge: tc358775: Enable pre_enable_prev_first flag
Date: Sun, 11 Feb 2024 11:51:13 +0200
Message-ID: <20240211095144.2589-9-tony@atomide.com>
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

Set pre_enable_prev_first to ensure the previous bridge is enabled
first.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Michael Walle <mwalle@kernel.org>
Tested-by: Michael Walle <mwalle@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -680,6 +680,7 @@ static int tc_probe(struct i2c_client *client)
 
 	tc->bridge.funcs = &tc_bridge_funcs;
 	tc->bridge.of_node = dev->of_node;
+	tc->bridge.pre_enable_prev_first = true;
 	drm_bridge_add(&tc->bridge);
 
 	i2c_set_clientdata(client, tc);
-- 
2.43.0

