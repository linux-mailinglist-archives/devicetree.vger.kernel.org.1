Return-Path: <devicetree+bounces-37130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41457843C2C
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 11:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB2601F2EF05
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ED6E6EB66;
	Wed, 31 Jan 2024 10:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="cIRbSaQr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB026BB26
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 10:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706696437; cv=none; b=gn0mELJrasUnTqVcR4qwKQ9hCpUC99sMzE8ckgZy4g6DsebGmAPUqFJUWfsVv8oivHuChyiLKw7sd+q66g4+oaFMD9lFwPCztdtOxSS7PWHXF3IviACoa9FjA1gpyPU0wd5Enzlxynue6xqKZ/S2Qn4mi18Es8x4fSnK/HY7KNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706696437; c=relaxed/simple;
	bh=MgFJpUbvEVQLvjB4o3otMQmxO0bDiV3ePLWOTxj5V98=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Qm+kGLJEIdlSLIBaFdjvOXPEQgx48zdGZmZKhABREgqF2wGUTD0loDxsD/IcZOf0I1m+keSb8DFvjVAKJD694/iKh8CGF19UH2JTk54+9GioNf+RMBOhwjGhZljxTgHI2xQ4KnkmymL4yDGO1aWhAqLKyhgksREl/pn0qIRgL3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=cIRbSaQr; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a30e445602cso161811966b.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 02:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1706696434; x=1707301234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pjn1b7iVWG/Dzeqv8I89FpnvUEwnwwybhoCYxf02VwU=;
        b=cIRbSaQrPMsqjN2PW72K7GHlHTT1dBisTXfg6YPtGREJNKVNr442ql3N1XDg0LJ4Pn
         CjxcpvfgrCateO9+Si7WUFN0qzOvTdoo5Kbzz5uydRTMsW+emmzci3ul68PU3Vwy5+rp
         ZVHGfGJyFLKOM/tVYcMkuzg8CB29hF0S/1KtLkXvA28SBPaDE3EOyOD7tKOgkLy+tXiG
         X2F1yOLCnrz3UZth+Yn8uOjYWj6TamJJL+TmnyczRvRF8RwHA+weck8fpBNg1qIDxRKx
         cWX6h9V3kcOU7alXIQiNWATT1oqjCDeSBDWbWAoHbD4bMd8y0e08iNmEW3CjR71QszVD
         vIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706696434; x=1707301234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pjn1b7iVWG/Dzeqv8I89FpnvUEwnwwybhoCYxf02VwU=;
        b=X9QT6F82G0XumxhBwCfH828OAYj0Yx0R/f96zd0CNBRO6zkHxz44O/cMDNDlTTT1sd
         thgRoF8oSG3JU7+f+IcIEZ7qPD/0VFCCgLeDcurMnmMc9A70BmeWBuL3LskoX/YLhQYo
         cr2YxaSzOdlu/mshwuf/znVbOkT64i8Ln6tltdmj1uY9OmNf7cWTsu3kmiq+efduAgpw
         P+QI72Hjw7mRQi5Yzr0njHv+bc6JcEK90SSqvw+NAQezuzrq/qzpfRm0Eqk/G1bpHv7/
         2Nms6G7qUzRcYlOZGg4VTuK+UvxBNehic7txWMdA2v6JZyRQI+qZUx+HWw4MimTmd14e
         oS7g==
X-Gm-Message-State: AOJu0YxwM0w1Fk9gT0WZDGRpQJi9gO7QYwvi1AR8fN5vvcOJvjTiqK6k
	5WV2PuzSDSHQOOawSyjRvxve5UD4pBj+pwHkjre3O7r+/Dh18MZlbmNqvUj8qDU=
X-Google-Smtp-Source: AGHT+IG+eOp30gtNaX+htNFsrhr7HfwkQ/jQilxw4Lgk8ccm9txX2BL9vh+6gRnwuRIVSGBqWFWh5g==
X-Received: by 2002:a17:906:7192:b0:a35:3faf:c8d1 with SMTP id h18-20020a170906719200b00a353fafc8d1mr1208954ejk.22.1706696433795;
        Wed, 31 Jan 2024 02:20:33 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVdsfWILXBviMW9OR93BKPBurDeJwQf6Oui9NzsTpZNfcE3wC8/qMTH4nNhWGnLKAz0s3W5ZoCN+QoAvaniaKgj5e4ewMU0trSGK+HQzaeqoyHC3vT78T3r3SGyUEpVPvuW9MemSpjjbqjHGaUUop3csxowBP44acauzGdUDesn5dubiD+z3LV5kGziv954qiZgrqlNUW5Gy1q4cC3TCDbUfOK/d0tzrYPoKJS7o/tCIz8dhimL5UpsZfYxLe6EB6h2K5bsHuE97qzwE5IF+zkJY7X+K+wDePZe+MpMK866N7f1IzgZ6osQSKXv/11bn/hw5NcwkmrWCb7qkCpJ2eRcPKT5oF50J3RcULP5TMZoiTS1pdJxPLwd4xdIHBUjyyOdIXVMa7mCXlBDVNwE8W5Yexl8zfraiG4fM+cxqi5RITojecESa1qmy4kYYlz6hDD222JBDd6OKqG06L92hBdVv86RyWCtoDoV7dEaDVVUf/J/WoMXAtxkhvY1WoHKobq6eW7leO9ExBkb/pLwrenIeLzNq0LQ+4R45ra/nCiJBvIOWJxOMYcT5o/AFmuB7WRl8Rh5hnQlNIZv21WnfmeW2feF/tZSu/sL5jm+KgkR0eM=
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.87])
        by smtp.gmail.com with ESMTPSA id vk6-20020a170907cbc600b00a3524be5a86sm5212966ejc.103.2024.01.31.02.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 02:20:33 -0800 (PST)
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
Subject: [PATCH v2 04/11] watchdog: rzg2l_wdt: Check return status of pm_runtime_put()
Date: Wed, 31 Jan 2024 12:20:10 +0200
Message-Id: <20240131102017.1841495-5-claudiu.beznea.uj@bp.renesas.com>
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

pm_runtime_put() may return an error code. Check its return status.

Along with it the rzg2l_wdt_set_timeout() function was updated to
propagate the result of rzg2l_wdt_stop() to its caller.

Fixes: 2cbc5cd0b55f ("watchdog: Add Watchdog Timer driver for RZ/G2L")
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- propagate the return code of rzg2l_wdt_stop() to it's callers

 drivers/watchdog/rzg2l_wdt.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
index d87d4f50180c..7bce093316c4 100644
--- a/drivers/watchdog/rzg2l_wdt.c
+++ b/drivers/watchdog/rzg2l_wdt.c
@@ -144,9 +144,13 @@ static int rzg2l_wdt_start(struct watchdog_device *wdev)
 static int rzg2l_wdt_stop(struct watchdog_device *wdev)
 {
 	struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
+	int ret;
 
 	rzg2l_wdt_reset(priv);
-	pm_runtime_put(wdev->parent);
+
+	ret = pm_runtime_put(wdev->parent);
+	if (ret < 0)
+		return ret;
 
 	return 0;
 }
@@ -163,7 +167,10 @@ static int rzg2l_wdt_set_timeout(struct watchdog_device *wdev, unsigned int time
 	 * to reset the module) so that it is updated with new timeout values.
 	 */
 	if (watchdog_active(wdev)) {
-		rzg2l_wdt_stop(wdev);
+		ret = rzg2l_wdt_stop(wdev);
+		if (ret)
+			return ret;
+
 		ret = rzg2l_wdt_start(wdev);
 	}
 
-- 
2.39.2


