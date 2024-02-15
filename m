Return-Path: <devicetree+bounces-42049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA842856368
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:39:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0952E1C23248
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCAEA7869B;
	Thu, 15 Feb 2024 12:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="gNP0Kdyc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7540312CD84
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 12:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708000788; cv=none; b=p2i9JQKJIPR3ytb9S6DTgciB+wEyUeSxPv6/JIKAb7amCpqsmLnXEzJ23N5+/K+n7AlOCsp8gVm7l5rPfByHoHCnjRwBpOLoCrM9Lw4RrLjqnBkYpch9IxWNvXOhECN3F3EQmPaMSWWxkw+pbMYP4H7VlrryLkjv5Jwrql1z5QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708000788; c=relaxed/simple;
	bh=iIJvn+BTCwLpyPd1iD4wRftor0jq12kCKD4Ngzd6vkU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T1+frtGDjc6IfLQjZWmtoZowaQGvYL9KqN61JEkMVmGjDxBgG6Mb3NoEl4+5h8HEeeSnl1IAm1u8GHj8MLwPgm5DIIDYl6elpulctL/foPyeYQXmj2N2qy3l8imlErYLHUzqST3XPbjNUZkHAb0KhVFyayPlHnq+FVpxqmFnglA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=gNP0Kdyc; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 3A564603EE;
	Thu, 15 Feb 2024 12:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708000786;
	bh=iIJvn+BTCwLpyPd1iD4wRftor0jq12kCKD4Ngzd6vkU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gNP0Kdyc6DvS/fSVQyydqaWu34LSkTpSorou8Sir1M+lVL0F3zc5Lll6vsGK+v/JV
	 1e94QWkTNGPFsNkWoHy82/CEYC0Pjr+jV47nkv+KKZB8wtA3uDf9Oav3KmF7Lv1myP
	 5meWEhsuE1xKJl5wJBB7UjWXRIZJFasjwcGIWCN5wmslfzDUXKo2Ku/ubRlsWoV5vW
	 1GFpJR1z52GAp1/MUO0Dp2P/41whgwZtN1mQLFM1hgfRqQ+lrGv8dRIplWmUovo+hm
	 juHdF203afvCkj/8OM/uUdRZOb2nZhY+bR+Q3qgTvoRc2cOjg8QPpEl6WgZ7QqsrDi
	 Az+n7WSEn5Fmg==
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
Subject: [PATCH v4 08/10] drm/bridge: tc358775: Enable pre_enable_prev_first flag
Date: Thu, 15 Feb 2024 14:31:51 +0200
Message-ID: <20240215123222.42609-9-tony@atomide.com>
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
2.43.1

