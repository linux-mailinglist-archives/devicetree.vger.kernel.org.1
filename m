Return-Path: <devicetree+bounces-42093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C03856571
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 15:10:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D64C5289F03
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 14:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD195132C3A;
	Thu, 15 Feb 2024 14:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TvrTflDf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3A3132C24
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 14:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708006146; cv=none; b=bfhBNOqe2r7DeZ452OUC1ajptQqS19ykNf6BEm4UMyJH+Bkpjzqm9cWRCcCYykw4jk7P5ZAfLCZwjDysaETLYemk/BmOzuk5sFlQ4mgqfkhswNM+O2gF5fZdZvRpo8tf2dGhELkiB22F07pPIzI8Q9Zr7rmuIE5aNVPmvD6TgWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708006146; c=relaxed/simple;
	bh=hyVKl2QSRvDHAZPIbt4AQChYhnYDda13VJKQ99ZaAlg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aTvjjM9dP7Adzyx5aop6pXN4LSLi5DyM5LQf6DWskzTp00b7p+IqkxJJPfHj0s9A2RxE3wDzPSzgGxB/QzpQhZ+HIYHxNUUk4LPgj1al3OQTW6wR1tv3yEpxNCdTENYrjv5nyP/WxG7mj9z12Ho+Q+8FlzngIy5Kbz/ZWlxjIbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TvrTflDf; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4122acb7e56so2156365e9.2
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 06:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708006143; x=1708610943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+ZRYWMcZ6j5I/z8CW0C9Vfz1n7CKxPl7rUaYwU8m/8=;
        b=TvrTflDfih+lQFqvfH5rN87MSKJDw9yBqyYrf8K2xKixX9aep6P1MuqOzPM2OmSmA4
         mektWovrJJsbu1FeS3i0hzjtMXHrkswP1p0rFVuohtutXUS47lJ9lSbtwZ0d4eBhFNqk
         VCOu6c8mOrjCxPYbwzpFHL1IynPJh7mPXBIbcegmMzE5Ba2sHOmV2PARBygBt7prm6KF
         N8z3bxu5zRWwfkf8suSFjdMX2vQp7PIjR4KpA2gXFJabimswa1+3ssxFT0rY1jZi4ee5
         SMHvwMDl58VVVt+cQI3+vAfi7Tirb0ca2Jlbik/J2H97paO/Lvs8hgzXUdKOMHMk8UEI
         78IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708006143; x=1708610943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R+ZRYWMcZ6j5I/z8CW0C9Vfz1n7CKxPl7rUaYwU8m/8=;
        b=MTAVui79rKlB0isnG9sUO9aLErhoyMcNORx9JXMcT/SUS+Qo1CTBgi/QyuQNS7SB8T
         RxHBF3a4RcK5s+mMCzBeHTKE77IxfppBd5PqCm3qZA42fBu6bngHFSjyGEA64D7JoD2Q
         0snZW1YxIpwh8PZyeSV51dd/loq3xRI9NjTDeSozNX3uU/Yl8EweBvwb1ZH8dRZnX0aR
         NGsBP6krH3PeVyCJhrFzsLaeXnCCvYE5zcQ3uSvEELMqTwg3+KbDdFEzCKBJw+UmpO65
         vNKj1XJWS4o8AQmm9bsNfxvvcnSNBPQWQ8/33XZxSsqV3TcrmJSYSqbRar3anv4nsnju
         qyuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXw+hoXMPHKtlqkQxbK2jUk35EpSRGBDr98Pf2msKsDh4IXE1ukD+eMvJe7FkdToFVz3dzRHkO9i6oMn0qErXPkdMPqArRk0MXo1Q==
X-Gm-Message-State: AOJu0YwOoXpQ5GAaXpajslVMi9yxCys0EJMjF/xYmphrVU79ZuHoZqCE
	qsXUSFMPLUebNvyrF2b6BcG8TRI1k+8qAHxV7nQRdqHcVq/VtmbLi5rM8zt5oLQ=
X-Google-Smtp-Source: AGHT+IGKK4aLm724zjD5h0hPHGTanekepCurDQ4NYYTI7zWhPD5A+7l6CZM59nhOcWPW0ceiMMv3oA==
X-Received: by 2002:a05:600c:4fd5:b0:411:b834:9c79 with SMTP id o21-20020a05600c4fd500b00411b8349c79mr1481811wmq.13.1708006142845;
        Thu, 15 Feb 2024 06:09:02 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id h17-20020a05600c261100b0040fe4b733f4sm5120950wma.26.2024.02.15.06.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 06:09:02 -0800 (PST)
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
Subject: [PATCH v7 5/9] watchdog: rzg2l_wdt: Remove reset de-assert from probe
Date: Thu, 15 Feb 2024 16:08:37 +0200
Message-Id: <20240215140841.2278657-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215140841.2278657-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240215140841.2278657-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v7:
- none

Changes in v6:
- none

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


