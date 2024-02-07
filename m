Return-Path: <devicetree+bounces-39445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F63B84CB19
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 14:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DEEA1C258F5
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 13:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988DE7C096;
	Wed,  7 Feb 2024 13:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IkRIiG9O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE9D7C6C1
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 13:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707311297; cv=none; b=XnEYgcTpp9z3qyfupTYqipHU2G8ka3JjxL8QE6Tqtqv/dMzDmGrtIl3+fI0rJwKLkRU5xc+MfLpzmM38CmL7bP/bTIWWebI0Wxk/PyOwJlDo01HSqpilyIBIGWYbAm/saq0PILluofQ/xP6mnlrxs7ECBHDINllUrwzzDhf2C98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707311297; c=relaxed/simple;
	bh=Jsakn6A7UKMfGVBLON3X5YZSna+0/BiSeUcjEEJh0TU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MN2pZxGSYXr/zraNcqYrIDb6eDyer5OZTd8xNBpuKoBs9z/9CXxZulQecmQ1Q0AWSnobxvahwcbiWwA/uAktX1gUhawSEyvZJMbGVdtjlEz0Vg2NEtTO1yDsGiVEjydk9aq9ThpB+B3JpYDQU2TDKpNckHpMqtsV+RkDcJY+Avk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IkRIiG9O; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-68ca3ab3358so3422106d6.2
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 05:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707311294; x=1707916094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mpquoA6MMqGx6uzsKq9/tx8DFlYrpZmyLYlIeMpPzbg=;
        b=IkRIiG9OlOVH/oUKl/0rl5H8HbQAPiGuNe7sRJf85FBIxec0eMEuKvUdBZTVEbXi1M
         1+dZgb0S0qHIFEbzOoNxlBsuYH899CCR0HX+IC6Hv/fEL5IBraOhpamRYaBEzoBTCA2g
         55sWP5Hn+KJ2K4oasW8mVoPctMzyJHVkGVSesQ7QNLRuFVLdhDwsjDULe59FOh9SqJyB
         t5/norTzULZV0mRDyxPKPTHO9J+FyFxR434NDK2uJLZbbc1Vx6RbqIbeZ75EN2B62E+v
         Tm402oSTbB96fgM5cFlXbNu1oX1mI981tvo2qdQnLT24A8RwkqQd+YoKOYgJr1aLkmfI
         rJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707311294; x=1707916094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mpquoA6MMqGx6uzsKq9/tx8DFlYrpZmyLYlIeMpPzbg=;
        b=NXra5F3TGgMyulgyJQd4QeYC6fBJjuvh/KiY15U3G7Gs18MDYbFeumBoPqlLU93lkn
         uy+5018bcFbmT/34NEw1cmKeWdyZ4/nYqYX80o0iLMQduikw1blFD8tR308I7fCilSb/
         f31HDCjhCud/6+1u1qAH8NJGjuJ2aQf4E5kqW2KmLJZuR6ZQGs21gfdf1ni8N5HENMK5
         1ke7LONzdApDhAAzWi3ApqdZS4+RHTXMTeJqYH0mgEuH0ACH4oeDEIeHfhIdWaokN6SX
         ih7MFda8oZXt/DgHhKcUeAs59lZ+8BkA2qbBhIOPJaFpK4mFzel0W6as+bicehr+QbUC
         lfsg==
X-Gm-Message-State: AOJu0Yx2ygijJhMAwgoL35boW+HMi2NfYeRw8DXymeX773xJWlcwj3fi
	5L5bhNY+50FS5pQffS4+SCvdmH4ICMnPtYuckvnwq8lCvXYaA1yMq+YP/dsDgA4=
X-Google-Smtp-Source: AGHT+IGNBPQhZVgcZadzHNPdKQ51/qkIAAFXZszCWdQraPwWOXN36LkkXg+MSc8HuHYhdss49CubVg==
X-Received: by 2002:a0c:f0cb:0:b0:68c:5cd9:8d85 with SMTP id d11-20020a0cf0cb000000b0068c5cd98d85mr4664556qvl.63.1707311294681;
        Wed, 07 Feb 2024 05:08:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWxdVaeLgth/oeTT1wHYtm/ZmyM3Ph8btp3EFM3P+U/2c6BCh3KrK8xF1Wph/GVd5NYOLWKUEqzLFKBj0R3ZFewrlkdBROJbHlqlvn/5nI0EsrgflXifcXA6cuGjWoBzykJyPujPHTf+OPSqbsXCAFWDaVI+8qTwNGQx8WX9HczFa7PlMXC0YkF0Zgoz+jbGggoPInmgvS0ls0NjmDosS46Eg6qb0OGpNlD3RLWxmDcuoRDhaa1KqUPtJWTFvkPDcFSOmloBHLUCh4V+zlYOs6t+jiXSy4imhyC31T3T/TizsPLvFLlkipe1ivZdw/NcnfaDLHCTUc7bR9U/pKk7ivMxYO/Ng4Fjo7HMioA6W7u8ubIE45sFTBTaqsoBYxwNzA7MAs2yC2gha3RXpz+sg+zYieJNMDSKAiE5VNribSo4lB9H0K8VxeWn3ucOF/73VIHw6fn5jroY1c1NavORiVa0sQr20JbF9pGODsE3OUA7nGDEf635xTGp8yVsJ1gC20R3Mwwh4rx8Q==
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.114])
        by smtp.gmail.com with ESMTPSA id a17-20020a0ca991000000b0068c9cd2cf88sm565455qvb.60.2024.02.07.05.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 05:08:14 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
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
Subject: [PATCH v5 5/9] watchdog: rzg2l_wdt: Remove reset de-assert from probe
Date: Wed,  7 Feb 2024 15:07:41 +0200
Message-Id: <20240207130745.1783198-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240207130745.1783198-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240207130745.1783198-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

There is no need to de-assert the reset signal on probe as the watchdog
is not used prior executing start. Also, the clocks are not enabled in
probe (pm_runtime_enable() doesn't do that), thus this is another indicator
that the watchdog wasn't used previously like this. Instead, keep the
watchdog hardware in its previous state at probe (by default it is in
reset state), enable it when it is started and move it to reset state
when it is stopped. This saves some extra power when the watchdog is
unused.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- update patch title

Changes in v4:
- none

Changes in v3:
- none

Changes in v2:
- none

 drivers/watchdog/rzg2l_wdt.c | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
index 7bce093316c4..93a49fd0c7aa 100644
--- a/drivers/watchdog/rzg2l_wdt.c
+++ b/drivers/watchdog/rzg2l_wdt.c
@@ -129,6 +129,10 @@ static int rzg2l_wdt_start(struct watchdog_device *wdev)
 	if (ret)
 		return ret;
 
+	ret = reset_control_deassert(priv->rstc);
+	if (ret)
+		return ret;
+
 	/* Initialize time out */
 	rzg2l_wdt_init_timeout(wdev);
 
@@ -146,7 +150,9 @@ static int rzg2l_wdt_stop(struct watchdog_device *wdev)
 	struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
 	int ret;
 
-	rzg2l_wdt_reset(priv);
+	ret = reset_control_assert(priv->rstc);
+	if (ret)
+		return ret;
 
 	ret = pm_runtime_put(wdev->parent);
 	if (ret < 0)
@@ -186,6 +192,12 @@ static int rzg2l_wdt_restart(struct watchdog_device *wdev,
 	clk_prepare_enable(priv->osc_clk);
 
 	if (priv->devtype == WDT_RZG2L) {
+		int ret;
+
+		ret = reset_control_deassert(priv->rstc);
+		if (ret)
+			return ret;
+
 		/* Generate Reset (WDTRSTB) Signal on parity error */
 		rzg2l_wdt_write(priv, 0, PECR);
 
@@ -236,13 +248,11 @@ static const struct watchdog_ops rzg2l_wdt_ops = {
 	.restart = rzg2l_wdt_restart,
 };
 
-static void rzg2l_wdt_reset_assert_pm_disable(void *data)
+static void rzg2l_wdt_pm_disable(void *data)
 {
 	struct watchdog_device *wdev = data;
-	struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
 
 	pm_runtime_disable(wdev->parent);
-	reset_control_assert(priv->rstc);
 }
 
 static int rzg2l_wdt_probe(struct platform_device *pdev)
@@ -285,10 +295,6 @@ static int rzg2l_wdt_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(priv->rstc),
 				     "failed to get cpg reset");
 
-	ret = reset_control_deassert(priv->rstc);
-	if (ret)
-		return dev_err_probe(dev, ret, "failed to deassert");
-
 	priv->devtype = (uintptr_t)of_device_get_match_data(dev);
 
 	if (priv->devtype == WDT_RZV2M) {
@@ -309,9 +315,7 @@ static int rzg2l_wdt_probe(struct platform_device *pdev)
 	priv->wdev.timeout = WDT_DEFAULT_TIMEOUT;
 
 	watchdog_set_drvdata(&priv->wdev, priv);
-	ret = devm_add_action_or_reset(&pdev->dev,
-				       rzg2l_wdt_reset_assert_pm_disable,
-				       &priv->wdev);
+	ret = devm_add_action_or_reset(&pdev->dev, rzg2l_wdt_pm_disable, &priv->wdev);
 	if (ret < 0)
 		return ret;
 
-- 
2.39.2


