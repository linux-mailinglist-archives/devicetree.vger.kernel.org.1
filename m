Return-Path: <devicetree+bounces-39702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B9184DF3C
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 12:06:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4EB228D3A0
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4937879951;
	Thu,  8 Feb 2024 10:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RaRK7Y5/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B59D78B75
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389918; cv=none; b=D12S+jCLxzKFHtvbs85pOe8pQ03yYQbipOKmx0ITf0dtHz9cfxGvI6k9BLUBEpkJ3FgErEFy6VzfoHr3omihVWm/2CpqPdxbCJzmvL5QhyhGrxdm2NwtOdphcRk0V9MPgsv0y0TD4j7oANY9f/MemTTnh9hNH9wVvfTnnvvnlx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389918; c=relaxed/simple;
	bh=MXG1y8PfM5IXzSZkb/NwZc6HuMvBHL04QNzISCsR8ak=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=A17cZG1SJLdgY1KT5rm8/AIvzM1391iTe4wGcWZ7LeOi2XNUOs80eb7ptOM9xfQiRM+UEMUZfyo8DxEvXPOB2O2Zs1qvI0a7ygxJOqDxQEqO8L4skuCOZTxjb7mW8C0/x4Xz8FqG6A+Rm+q8GpHD1l8BRXaPsq8DpIP7Kk7kP90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RaRK7Y5/; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3394b892691so456554f8f.1
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707389915; x=1707994715; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ImoQ02P0Si8qV/A28I2lyqywOWzgxBkR3jS/ih8KYo=;
        b=RaRK7Y5/YmSGbP+97NunLzKgkiHPSR+ar3obtcSqtPvJhT5eR+V40uyb99kYYkkHm4
         b1LaNAsgXVKgpBg1JKVO7L2f4sAAFJ275PYH3HTbEnUig+JV5FisRUjT+9wWyhwt7KF9
         QYujZlHlrmn2B4G1/VrdcvvF3BSlSdH/55D3e9jyMtO46DjpYNLgWrB3A9rZD2dSDesK
         ETCT+KqBW3MogqV6GfvwlxF72AmXiv0ZrBGBhNgWQeid4GJXcTm5dDRbTd+vEPQGDHw+
         PFI/3MOY3Y1cvwC4eY1X9UWOIPanRd7UP0Q6HVIZ5XKzMFXvrf74x/xXq0CRTnxRMsUc
         +FiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389915; x=1707994715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ImoQ02P0Si8qV/A28I2lyqywOWzgxBkR3jS/ih8KYo=;
        b=NbKK37kSNljby8bRwCctIVdcUqrq9P0YPues2CdcZQzK+B3stRki7i3E5Yl7rfIO0Q
         N5qohV10QDS82fmn5Tza2AZ2JA/yO9QzcRcnQmycprOmvTY+DVuOvkJthLR5kLXzha8v
         Xci/AEAvibgJRy+1SjL1G++i257FiWoTzxMgbqZ1+G8csTM34VvLlZweTeJpgx+Nals4
         3/iERBUZWRcdHKpCjVvaHb+BxxTcuP+VKaIjIGtIsxZTCgGrsUxnbhssXLh8MbqbhmYG
         hQJlP0Kfr5rKTh33MJZas7RwRzLgJPPG/oLPpHTYZT0TppHpKhkcNfj41mtZ1Fk/o75T
         I13w==
X-Forwarded-Encrypted: i=1; AJvYcCXK5MHSh2GO+ZczastgctJ1OHC2HNGIuqf2hkOGSAsmx26OMOwVNlMWbqdl8Vq6c50x3zSFvsyCpIi5y2mA57RPwQoqTDmK7OYlnw==
X-Gm-Message-State: AOJu0YyDrmwkUgZdKU9Pp1Os3fKiayiI4ssLRc2+OzySG/amXAxkjbVq
	776TAG454CGDCJi/OHf35QYi4H9UMtcDWTUltcmHdqZS5AIdBZi4xIV3t8jdj8o=
X-Google-Smtp-Source: AGHT+IEK1MF1/8hHsbMU13XizYDSH9I2mgQstC7me03pDcwbFlU+oScQ3D9IlvlmfhmijIxoR1IQ0g==
X-Received: by 2002:adf:ce88:0:b0:33b:58e1:d281 with SMTP id r8-20020adfce88000000b0033b58e1d281mr1081502wrn.32.1707389914893;
        Thu, 08 Feb 2024 02:58:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUVwm68MRi6LNIQPvqHGwzlyGaD1JahBgHFCGWgmNkqsoImd+jOjc2WzQRwgu+ItcZ+Yy31ESVGz3jf2dY+2wsG+DQTCRJDgI1O5QBwdHfysC3m0b5389D2gUexfgzsI90x5MO6CfubnIf0yOjr2r+cSRTv0KTL7LS4FYpA5lVLTLae+DiwI8QyqLr3G/7vo3xoI4S+m6XWNw+H6T8GEAMYRJ+42rHG+9dcotI1koo8m6VAqiaQFVVv/fP+jVkR/XQ8N9J6N3LOrgWjlaRk+2NOiul7w/TorTy/uwvmkNO/zVeLZqHy71A6/G25YNuktvqb7iRy9L45+p+ZGUEP6GCnKO2mtaAHS0rqC9E3b+b2loCxPs8lK1VxvlEtanmXgDykDxH7NsJyRel91Ty4fLfWG72JsxnUT7R63qTdKyoGBUAwJoEEz0qBLwJV/RghwIkKPue5RRflRXRyM6HVXxxdXyPYwlKgXt4NA4LfwlbSTmukENzpLkZKedgYRuKFHFjMOJgHyYMwNQ==
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.45])
        by smtp.gmail.com with ESMTPSA id a6-20020adffac6000000b0033b4a52bfbfsm3344153wrs.57.2024.02.08.02.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:58:34 -0800 (PST)
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
Subject: [PATCH v6 7/9] watchdog: rzg2l_wdt: Rely on the reset driver for doing proper reset
Date: Thu,  8 Feb 2024 12:58:15 +0200
Message-Id: <20240208105817.2619703-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240208105817.2619703-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240208105817.2619703-1-claudiu.beznea.uj@bp.renesas.com>
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
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---

Changes in v6:
- none

Changes in v5:
- none

Changes in v4:
- collected tag

Changes in v3:
- none

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


