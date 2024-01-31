Return-Path: <devicetree+bounces-37133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF7D843C3D
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 11:22:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68E34284960
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B1C78679;
	Wed, 31 Jan 2024 10:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KoCg8CDe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2670768FA
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 10:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706696443; cv=none; b=Pb+hKHaxKItGku08cg94CQhhYfucIWo/p9/9O9eH9YLFHFcPHHlFB1z0lT9KdoQ47WM5AHX4e8Nyh2os2JpN4DzBwSDVP/o8tHfJUCOw8ksXYMBL8dOt7KQGukVsERcsjpUcKDj8GzfPDYT0LDLHnDvEjBGQYuereVYMVYSeAwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706696443; c=relaxed/simple;
	bh=AZzVusD5nkVLXNJ6AXM1LOfhGZ6jvjtVIAV7p2+5XX4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gIBeGu0vzAT4iZaEdtYa1n1Y78Rpw8/sFhXYJCVv5BvRBGrqw0bu28NU8IPtXV0RKWzyd/n1Mbl2NWd7gV4wEHlZfPuj/2jgDiVXsbp0cyC0hBc4gFu1OXgyXJRcJfoWR8VKx39JlKPfjhgEqzeHHJU8EmStPaVCXMG75AuGexM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KoCg8CDe; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a271a28aeb4so634343566b.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 02:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1706696439; x=1707301239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ylOo2w4JpdKbsiv3eDKS5wBqJdTApoM6QjMPUaO7jbM=;
        b=KoCg8CDeY6M0vq6Ak+MusTWawpG2HgLjNIjD8TBF96P8/PhKgs4+mOlabbghnHZIXR
         iKthIaQSNmBO8aBTwiLXflcso8UznBmIeFNrgJ+2RQ9c9kz6wP91iwZMkMh8I5LX1jPO
         HmJKen9M3coBPlAxGWCSPSTQShpQrxJMdSGk7gE1zBzn/ax4IbOTX//7dmHMIrK1Tu4T
         72DcmywcKYy8a58jSinalCwfJlRSpUDcHOnGg92KKp9CN6E9Fq/IKyqS4T2tyDF3cKJ7
         hUJhQgxTOnmKW/tSytspRoCRM0WDk6qOgBw5wuUwDn0P3MZ/hivLsIJS3mo9Nvs0VKoH
         tcMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706696439; x=1707301239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ylOo2w4JpdKbsiv3eDKS5wBqJdTApoM6QjMPUaO7jbM=;
        b=VZHGX6UMfmjVJhaegAF6zN5oZVGverSE7suytcUvok7Xf35uQnO7b/Y5S+BuSnrp9u
         UkAb6hGmJ78pI43/EhipGc/govrSLWKTzobknwVJUfRR0QEJHbfoLzTG9v5xRMn0VXtX
         x10CduSSYQggxyDo1F6xiEaAXmbuFCqu1G54F4H4vwYJcZSTT7D6J8wBUCs25qKxVObe
         SV2Ta3ToN2UfuId2f98+QwgMWARrRKw5F+RY9gycjQRZwqFXYDn3H9xWYdenU0SfwwaS
         sSZaChfuxN/+RnZOYGD+fLnXSUSYLO30baUNNNReMJDD/Hgr+brj9Sm4kTInpnUSBrYe
         M0Fw==
X-Gm-Message-State: AOJu0YyafaUqgm+ZNzwp5UOnnm8ead9wN8pZ3ipMp4lXRCrB4A8Vxn6E
	Wh5ux00Bn2pxA7n5qaAqgmBJ7AKAO5yMJwXMnsKXIZmN4vT5E36NN+m5kZVTX3I=
X-Google-Smtp-Source: AGHT+IH2u/BJ8PiBkXfGsaTbe4MZau6HbAbTIcgK4OYU/qpTUaMC3DmClgoGbos43t5ckGZct6CLfg==
X-Received: by 2002:a17:906:e2cd:b0:a26:90a0:696e with SMTP id gr13-20020a170906e2cd00b00a2690a0696emr882233ejb.41.1706696439265;
        Wed, 31 Jan 2024 02:20:39 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVqSMxnOg7rmUg9Vvs+B2+6H9Rx95Ptd2+rLciAEOGtGb3DAYzL2mnycXNxSk1jupqtYtAzopyJmYh47A55nHukdtrhGZ9azudVEnDykUI99cT2TpvkprNATyZSxU9q8Qfiam/sgRBW4Cb3SY1dCb+WChl/t1CDik0E//GYlFQ38clHPWwOc0shexSD8PK0tXDEDG/MwbSBx34RDZAW5fr+xJ6RSO/wd626wKY4/DvRsasm5713bciIoZC9EUt7wrWVz7FHKPvSBhFpo4d6mIQudzqRFaST7m8QXp+Nemma7k2XQ4wXivairTKCAHEEjf9U9HRyzB6RLlZp5hr21uaDlvMJBG/aUmm6CAPU/mL+7FaEVqaUww6mJjPZTaujcYbbIle1ajWl5hKI6YgQhZ6S7zzFk7McEFTqKA3pXuIRILAis3b2gRdBNnwyrS8ykiSKKMA53cVBX5YfBdbvQA5aGpS7DsCW/5AGyCp1+JgE56Cn14YiFY2SR/YrJHOqdVHtkVYPHLFfM+iQo19MIHEzrzn7vIcjbdsn3VhDmEFYZPiSjVvAy9zhb+tCZFxFSxJjpoeyIlsKo8i9MXhXyPvoSQxDH70EzJGxPF4Xgwn7uUU=
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.87])
        by smtp.gmail.com with ESMTPSA id vk6-20020a170907cbc600b00a3524be5a86sm5212966ejc.103.2024.01.31.02.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 02:20:38 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 07/11] watchdog: rzg2l_wdt: Rely on the reset driver for doing proper reset
Date: Wed, 31 Jan 2024 12:20:13 +0200
Message-Id: <20240131102017.1841495-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131102017.1841495-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240131102017.1841495-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The reset driver has been adapted in commit da235d2fac21
("clk: renesas: rzg2l: Check reset monitor registers") to check the reset
monitor bits before declaring reset asserts/de-asserts as
successful/failure operations. With that, there is no need to keep the
reset workaround for RZ/V2M in place in the watchdog driver.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 drivers/watchdog/rzg2l_wdt.c | 39 ++++--------------------------------
 1 file changed, 4 insertions(+), 35 deletions(-)

diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
index 29eb47bcf984..42f1d5d6f07e 100644
--- a/drivers/watchdog/rzg2l_wdt.c
+++ b/drivers/watchdog/rzg2l_wdt.c
@@ -8,7 +8,6 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/io.h>
-#include <linux/iopoll.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -54,35 +53,11 @@ struct rzg2l_wdt_priv {
 	struct reset_control *rstc;
 	unsigned long osc_clk_rate;
 	unsigned long delay;
-	unsigned long minimum_assertion_period;
 	struct clk *pclk;
 	struct clk *osc_clk;
 	enum rz_wdt_type devtype;
 };
 
-static int rzg2l_wdt_reset(struct rzg2l_wdt_priv *priv)
-{
-	int err, status;
-
-	if (priv->devtype == WDT_RZV2M) {
-		/* WDT needs TYPE-B reset control */
-		err = reset_control_assert(priv->rstc);
-		if (err)
-			return err;
-		ndelay(priv->minimum_assertion_period);
-		err = reset_control_deassert(priv->rstc);
-		if (err)
-			return err;
-		err = read_poll_timeout(reset_control_status, status,
-					status != 1, 0, 1000, false,
-					priv->rstc);
-	} else {
-		err = reset_control_reset(priv->rstc);
-	}
-
-	return err;
-}
-
 static void rzg2l_wdt_wait_delay(struct rzg2l_wdt_priv *priv)
 {
 	/* delay timer when change the setting register */
@@ -187,13 +162,12 @@ static int rzg2l_wdt_restart(struct watchdog_device *wdev,
 			     unsigned long action, void *data)
 {
 	struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
+	int ret;
 
 	clk_prepare_enable(priv->pclk);
 	clk_prepare_enable(priv->osc_clk);
 
 	if (priv->devtype == WDT_RZG2L) {
-		int ret;
-
 		ret = reset_control_deassert(priv->rstc);
 		if (ret)
 			return ret;
@@ -205,7 +179,9 @@ static int rzg2l_wdt_restart(struct watchdog_device *wdev,
 		rzg2l_wdt_write(priv, PEEN_FORCE, PEEN);
 	} else {
 		/* RZ/V2M doesn't have parity error registers */
-		rzg2l_wdt_reset(priv);
+		ret = reset_control_reset(priv->rstc);
+		if (ret)
+			return ret;
 
 		wdev->timeout = 0;
 
@@ -297,13 +273,6 @@ static int rzg2l_wdt_probe(struct platform_device *pdev)
 
 	priv->devtype = (uintptr_t)of_device_get_match_data(dev);
 
-	if (priv->devtype == WDT_RZV2M) {
-		priv->minimum_assertion_period = RZV2M_A_NSEC +
-			3 * F2CYCLE_NSEC(pclk_rate) + 5 *
-			max(F2CYCLE_NSEC(priv->osc_clk_rate),
-			    F2CYCLE_NSEC(pclk_rate));
-	}
-
 	pm_runtime_enable(&pdev->dev);
 
 	priv->wdev.info = &rzg2l_wdt_ident;
-- 
2.39.2


