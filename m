Return-Path: <devicetree+bounces-40450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B87F850884
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 10:56:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C54F22825E0
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 09:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C352F524BF;
	Sun, 11 Feb 2024 09:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="obL4SbQ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DEF59148
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 09:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707645403; cv=none; b=E2gM7VpzpOiJquiluy7tRdiUdbq+AE49Va8YxB65MezsUkxN+PUQZq1JyJ0qvq2Nr9IbrmVhfwpBV8P5Md6+ZwQpw9+Ruv6BAi28vX2sVJgwhVbOlrCC3JUPHsZesMKCgRxk6puN1s/+8ZRdODYOteMq28SgBVblnyKUFR+AUnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707645403; c=relaxed/simple;
	bh=xLOuawYpSL0d3xPlxGBTBHtotXeP+nFeuod/CO/MGDQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FTv2w6+FZFEriOj8GMvll1fsm8QDHC62Z1GDCwXzCJJtlPDTsXYaT+SquOElhUh7TjGIk2aXfYKtDUXQWO8z4JRxxEh1O+buFSW2W179TybHTpyzR05EMv10zhpxk57hTIgzkno5rgt4ixkxeXKZb7szd2r1YLXXLP3N5QmuD9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=obL4SbQ+; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 6C6BF6049B;
	Sun, 11 Feb 2024 09:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707645401;
	bh=xLOuawYpSL0d3xPlxGBTBHtotXeP+nFeuod/CO/MGDQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=obL4SbQ+2Z5h2SCMhbHOvC1xUFzBehzK7R+/agxRnSMV1QK6ahBsS8TQy3rOH8u4S
	 +2LAECmR9LI0onGZn3vFIdbrQluHh8LnyDBp8b2Bp3mAOZekLXV1IqLO/54sRXZGPM
	 +p0NQ+vvh9qS5ZkOU9RKghNZsbukTg7PJP6JCBX3fRU/Q0d7gjeJxU8jjHtS7vbckc
	 ZLS3KBJcaXomUwkQw/GswNeCtzE2tBmfWjyXziLSSrpYUBA0pGbqMFhR956t7bISqj
	 ioVxMmGzlcVcqVijB5i7FZlwjUfPOn/OqnGya7BsQgQk4p0IPGRlsJPFXzkRLQaGZO
	 RvcfKEzroCSMg==
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
Cc: Michael Walle <mwalle@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 05/10] drm/bridge: tc358775: make standby GPIO optional
Date: Sun, 11 Feb 2024 11:51:10 +0200
Message-ID: <20240211095144.2589-6-tony@atomide.com>
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

From: Michael Walle <mwalle@kernel.org>

The stby pin is optional. It is only needed for power-up and down
sequencing. It is not needed, if the power rails cannot by dynamically
enabled.

Because the GPIO is now optional, remove the error message.

Signed-off-by: Michael Walle <mwalle@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -669,12 +669,9 @@ static int tc_probe(struct i2c_client *client)
 		return ret;
 	}
 
-	tc->stby_gpio = devm_gpiod_get(dev, "stby", GPIOD_OUT_HIGH);
-	if (IS_ERR(tc->stby_gpio)) {
-		ret = PTR_ERR(tc->stby_gpio);
-		dev_err(dev, "cannot get stby-gpio %d\n", ret);
-		return ret;
-	}
+	tc->stby_gpio = devm_gpiod_get_optional(dev, "stby", GPIOD_OUT_HIGH);
+	if (IS_ERR(tc->stby_gpio))
+		return PTR_ERR(tc->stby_gpio);
 
 	tc->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(tc->reset_gpio)) {
-- 
2.43.0

