Return-Path: <devicetree+bounces-57921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 737E189F8B3
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 15:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 037781F22947
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 13:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2884216F0D1;
	Wed, 10 Apr 2024 13:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="caoRt37Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FC416EC08
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 13:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712756473; cv=none; b=fJqvz3s/0YxbHxZ83PbZ78UgHx5gyOPT/zVvnfCPVXDVdtrIaH8Sf68Bi41lGpvxjXc4eZZNHGwQMidCyQzygQLG/vvXTZ5pIoP07A2yvudWBJXESEVNNcRK9GM2ChtGLUwHQmFEXgGRG6Ezz1SlT3Al+PcNSN2CUwD0KmxhgfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712756473; c=relaxed/simple;
	bh=2iaYjthGV+4YN90lhEWZi3Roao8D27ZIeW/fg1E7/vQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=b9RMP2p+pIiz7dxIzWakvnQUeBsCq23g4xz3xPua66QHVqyeK45VRsytuk3uCBbaoz2QeK2LskNag2YGBap8JzM8JckonfUOXpl2cUt8p6tf8BusNJXXmcbsLiyn3dKuuTZc9k1XSuXOe6QPVuJPOS/T4gDo0PKrIS5+UtMEWX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=caoRt37Z; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-516c97ddcd1so8108036e87.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 06:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712756469; x=1713361269; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EJkLrfz+B+TwXIL3E5Ouq4pIOb3ww8iGVXCK/i9BddI=;
        b=caoRt37Z0djF8KfUzlX902SDNH6iaLMT/OtD8W8Ux4RehUn1Rwuoc24qdWA02FCMQ9
         0M8sT+CVwuWpr2K/ka7GIY+pLaBdBo35zYFFNSlD0W38GUEtzkVrVB/SB8EyLVF4Gjsr
         YEw7b7SFlg8h1REdt0UGAPzDEABUMYW7qhv/riX+hotCwPYW3pNoNrfNuoOuNK/ZTirn
         2xnhB2F1zdoB6hPZ7PcMMF2Ql5ICtuJcHngmXBGw3ujhw2D02lVlCX1QsysnrYzRYv6H
         lbI70w4Soh9sOHBca8NCUICct5IwVC+MF09KZS2Y2IJzEEQ+L5D4/eIVBKaWALZEFcYP
         LBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712756469; x=1713361269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EJkLrfz+B+TwXIL3E5Ouq4pIOb3ww8iGVXCK/i9BddI=;
        b=T5iyn3G4sQAJpnjBCGuMJcxIXJIfLPldgpyRiZyv5ZeFgh4q3dVonTOdr2dBBcfhZd
         leuzRfYUhh9UB2RcRWA0578eTp5Evul+ghqfVatG9jrtBrr4t4MJ4Wwp5heDiX4Z2ls8
         gTtIMm5mMsNWBBZKS4ws4B2TA115s0d7unu/xnVI4YsAyH2GVs6xiGJzh6LXZv3SlNDD
         ymXN8U2rosU2eMp9QY3JZYmlGVa1bXX6pyWuDu20Y8nDJMCvcysdPKKJ2bYsi+u10mfD
         4bTXkzUw2Big9XX6qviQakF640N9Oy/7o9yzv4UQGKqIQI3FF+MWdzxY4NCoLDbaDjRx
         O1Cg==
X-Forwarded-Encrypted: i=1; AJvYcCXKdFLS42VPTddRrJwSJLkOJaZqRtJQ/PZhTkeACNsuGtvqLpY86oOeqv2UUoXFPTgLkkszV+Wrh4A01pxeEhG+9BI7KttbXOXMvQ==
X-Gm-Message-State: AOJu0Yzop4evCvK6x0l7A/pAlqv1ZUfnjVXKTL0F9HofUCMqKxt4/3K6
	YshBE9C9EYg1gotsrha+QkNuqUlKIDypkEQFyuEmElfDfxBypOzmYwKU1JS/GCs=
X-Google-Smtp-Source: AGHT+IFw3OPj12yQhGQYtGjHjUJu+zlht0FnITQUI9YuzbYxpNGRAMoUxZ9v7Lyr4jpHJCf2By7hqw==
X-Received: by 2002:a19:3847:0:b0:513:23be:e924 with SMTP id d7-20020a193847000000b0051323bee924mr1631343lfj.59.1712756469308;
        Wed, 10 Apr 2024 06:41:09 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id n15-20020a05600c500f00b00417c0fa4b82sm872528wmr.25.2024.04.10.06.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 06:41:08 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH RESEND v8 03/10] watchdog: rzg2l_wdt: Use pm_runtime_resume_and_get()
Date: Wed, 10 Apr 2024 16:40:37 +0300
Message-Id: <20240410134044.2138310-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

pm_runtime_get_sync() may return with error. In case it returns with error
dev->power.usage_count needs to be decremented. pm_runtime_resume_and_get()
takes care of this. Thus use it.

Along with it the rzg2l_wdt_set_timeout() function was updated to
propagate the result of rzg2l_wdt_start() to its caller.

Fixes: 2cbc5cd0b55f ("watchdog: Add Watchdog Timer driver for RZ/G2L")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- none

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none

Changes in v2:
- propagate the return code of rzg2l_wdt_start() to it's callers


 drivers/watchdog/rzg2l_wdt.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
index 1741f98ca67c..d87d4f50180c 100644
--- a/drivers/watchdog/rzg2l_wdt.c
+++ b/drivers/watchdog/rzg2l_wdt.c
@@ -123,8 +123,11 @@ static void rzg2l_wdt_init_timeout(struct watchdog_device *wdev)
 static int rzg2l_wdt_start(struct watchdog_device *wdev)
 {
 	struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
+	int ret;
 
-	pm_runtime_get_sync(wdev->parent);
+	ret = pm_runtime_resume_and_get(wdev->parent);
+	if (ret)
+		return ret;
 
 	/* Initialize time out */
 	rzg2l_wdt_init_timeout(wdev);
@@ -150,6 +153,8 @@ static int rzg2l_wdt_stop(struct watchdog_device *wdev)
 
 static int rzg2l_wdt_set_timeout(struct watchdog_device *wdev, unsigned int timeout)
 {
+	int ret = 0;
+
 	wdev->timeout = timeout;
 
 	/*
@@ -159,10 +164,10 @@ static int rzg2l_wdt_set_timeout(struct watchdog_device *wdev, unsigned int time
 	 */
 	if (watchdog_active(wdev)) {
 		rzg2l_wdt_stop(wdev);
-		rzg2l_wdt_start(wdev);
+		ret = rzg2l_wdt_start(wdev);
 	}
 
-	return 0;
+	return ret;
 }
 
 static int rzg2l_wdt_restart(struct watchdog_device *wdev,
-- 
2.39.2


