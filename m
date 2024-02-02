Return-Path: <devicetree+bounces-37880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD294846A00
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 09:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 527881F295F9
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 08:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 569D317C6E;
	Fri,  2 Feb 2024 07:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hbW7ZCsg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4176918E0E
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 07:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706860752; cv=none; b=T7+Vzus9VlA459CT3OaGp85FEGKLq4XL9xWm1BNLKH3R/UcOsB3EpCckDOw8LRGhHNMudMZhX6FR+WBlKOnzU1JYnJHJpBP0fGGRCdi9m5n8ZUQqsHh/pz4sNRhXwkVZ8EfA/Vxt5Lk8qZ3zuucI6ssghIvSvGlmKL+187fOYrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706860752; c=relaxed/simple;
	bh=YT9kMKNvkBf7Q0GF0hJ2XHgXoQLtF/WQFWX8if27yXM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Gzgx+i9vNBaQDRX0egEe8MCaugm7J/bhyBO4YRqbsNPMhXcrrDxj9S2aMMA/+cWBTw3dR21HW6BeFUGgtq5PC6yVsjMw3c1ILUTTvRsya4snhevetXrOhJS6I3t9f1ifkY5rfzNR8s7k0Q/kKs7o6INO+WOcl//lN3M/AFe65SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hbW7ZCsg; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a354408e6bfso495068566b.1
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 23:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1706860748; x=1707465548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=afgPC/1Qd2anwjUfxalCjRHvn48KWLJjo9fZSR1GECE=;
        b=hbW7ZCsgSK7k38ZOBb5IIh7wbpSEGc7Le1Wtvx5tV22tUq8lMFttBLZgTwEy/GwyzY
         9P3WzdPbjDXJwzXu08DWeMHrtPiaDFUKd8chWuukFmtYO5axkRczziBEY16XdKdmgPb5
         9/6OZUsslud3eVGXuo01lPtZs3VlteVSiEFZFGpWqgQXHMK3jYjq/O+0PgBYrgFft8oN
         1PF5cKOej2fJwLhnzcP/UulSz+cwsuoFND7HS5PO6jojX2CGKGJQuiA0MxcfvbKgYL/m
         K2iHz7R7/ed0yzvNH7EP9mcDYpzvKJuAHPDAH9Saju5jbYkd9R5rD17VBekrJ/edIclu
         ZdCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706860748; x=1707465548;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=afgPC/1Qd2anwjUfxalCjRHvn48KWLJjo9fZSR1GECE=;
        b=eIw1Ga2v5+GwkzRxh/KMP744g4xZn8SWOxccM/DJAZ0n+YwRZL3kDIwR0roEyRN6q8
         Yj/RUysKVWJHim5rHlyHkdUu83JDowV4d6wVi/08sshJr5WwCORXUxU9UjLt/MT5rL8u
         82Ng6d4peESFPnkV7VzYsC+jqRKLOFq5rd19rOTH2ecT5uKFHG9bikpi74/IaAFhpDYC
         Q+Zr1ni3U0pkRMuq1ZobLxSJoZR590fEOAGyA/aWE/Ev8/5VV/exDTeL/mndbhq6P3Up
         V2QPxrPKLS4KyN89WxGtFRNoc3aXLrmbP4K8M2YB60H/FVjf+YXrETmFj6TamQSI7wEp
         UFXg==
X-Gm-Message-State: AOJu0Yy3V1hs8C2kBjlleLP/I164+DKNILJetdjbgDDqMFDixuGvd088
	/2j1fMngB1xeGrdQFEniRqouEhGQln3hTRqu/3JoHpakRezMTPZkbRjgXl8nLsk=
X-Google-Smtp-Source: AGHT+IHfTsczEOdIEyMJXr8ow2x0hK/BWpYJ+AXUqezT96VmDEjUEZI0DZBoR2CH/8qYrFVKpvBSPQ==
X-Received: by 2002:a17:906:d10e:b0:a36:5924:77e0 with SMTP id b14-20020a170906d10e00b00a36592477e0mr1116105ejz.10.1706860748423;
        Thu, 01 Feb 2024 23:59:08 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX3Zyc9a/vBUQgysq5isBBnJXbx6TtlNdkkx/mGepeKtFas8mjwhl45ff6Ac/Il2wdVvfK8BTxmkg8T4yKVbWpApFLLXTpjplcp4lA/NmbXXTqY8u/4ZPl2HTyStcexFDE8VPmvd2YMgf7m6UGbwq4g2J2pn/08d474n4/PLnzOu1n+9c4vd4bu7P+yufqPuJRhJ0u54jGFh+kuKQdIyDi6ejF1/ajbnNsDfX8TVGJFm/CI3a9tpMf/ktRDZHDSAMzfhQpSUUG9PJYofg2ISaldpcUmdYcV9P+GGnn16mN5jW5a4n4u7JLyoCujqTss+yu0bURp6virXfh4/wnXjJ5hWzMrCttTjI/gLtQzGf6HNSUuoRfasVKdY+BehzUwA4erM+d4j0LlORM0H5fEwKARKNCJTOWAq4t/NFELIyePlq5Wy19/BKf1sCAJxILO/CkWwwJZpZU3sXVLirUL3Ia2hDoDjhA2HUj0H0qviBrHQixylu15EuNft5PId7VdCGSJv9pFKqsN7A==
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.87])
        by smtp.gmail.com with ESMTPSA id ty13-20020a170907c70d00b00a3715be38c4sm185544ejc.210.2024.02.01.23.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 23:59:08 -0800 (PST)
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
Subject: [PATCH v3 6/8] watchdog: rzg2l_wdt: Rely on the reset driver for doing proper reset
Date: Fri,  2 Feb 2024 09:58:47 +0200
Message-Id: <20240202075849.3422380-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240202075849.3422380-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240202075849.3422380-1-claudiu.beznea.uj@bp.renesas.com>
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


