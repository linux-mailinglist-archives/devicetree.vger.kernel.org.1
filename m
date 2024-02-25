Return-Path: <devicetree+bounces-45642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9A4862956
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 07:25:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 784EC281CE0
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 06:25:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F5462F58;
	Sun, 25 Feb 2024 06:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="OvibfOf9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25448C157
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 06:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708842313; cv=none; b=hDzwGbXS+LuTo2bdjoajAsCIJ0TJFh9jBY6TDw0YiEKzj9pv/8Q8of0Vr/dM8X52VHSZi2jGDkt6Tv+dMX8+4p4SCYUskTFa8r49k+DYcI9nhD2rHr+bUhLytnO/Q5dXpIvFOtxWqHNxvlqK7gE3og5TjePZ82f2C7RueQSM/ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708842313; c=relaxed/simple;
	bh=V2mEp9oEvcmr4hMbt6NFHaZLrPOvc7ilqQ9ACpZGNbk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CWE8kiEKbzJFs+JVq+ezI38zrCNwu7JwCJMKn2jSIaYpNWFS5qNpHwiQYW8rmXb0S0BmcVlQML61x5GK6BMzL6jzlKR8Ib0DngGTe+cyhUPSgbYjPnV72yc5FrFjfYB5h/6Ehk6P35ZKKcP0qjwcQukAm6ekDc0h+vlbL08IPKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=OvibfOf9; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id E9BCC6058D;
	Sun, 25 Feb 2024 06:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708842311;
	bh=V2mEp9oEvcmr4hMbt6NFHaZLrPOvc7ilqQ9ACpZGNbk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OvibfOf9eoDkW3/MBgNdOBYlZ7Rr/pfdpjhqcsHEGWatMVthIHlkQ3PrKFcKP3qov
	 9jmC7vCpU3W7yq1XyCPgqAhHv+oI846QhN6m3au4w3xXQ9pTPKR4veui7WflLxEpDa
	 Z/nUxFwKciRkMs0spy3yIsByguI+YXpaIDbXrU82nbSnEYI4/3u0Cs+wQRJbKIkpGq
	 STh09/EPs4GY6o/0/ivVs9OBfZHT00Hc37m99zd/fOjWnpifhrXNXDwUUH95WDtMaX
	 rSFgwzHuhFr/n1/BHWdwahynnE04yFWA3kO7SPxBd4aOlIhARnqIDV21x3GSTGAZ9A
	 C+C7rNFt3WIDg==
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
Cc: Michael Walle <mwalle@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 05/10] drm/bridge: tc358775: make standby GPIO optional
Date: Sun, 25 Feb 2024 08:19:34 +0200
Message-ID: <20240225062008.33191-6-tony@atomide.com>
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

From: Michael Walle <mwalle@kernel.org>

The stby pin is optional. It is only needed for power-up and down
sequencing. It is not needed, if the power rails cannot by dynamically
enabled.

Because the GPIO is now optional, remove the error message.

Signed-off-by: Michael Walle <mwalle@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
2.43.1

