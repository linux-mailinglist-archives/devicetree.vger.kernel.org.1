Return-Path: <devicetree+bounces-71076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D51C38D5AFC
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 08:58:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74B681F24B13
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 06:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25A0382498;
	Fri, 31 May 2024 06:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EVTqdvM4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5CF823A3
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717138678; cv=none; b=EuxtyR3RVAMCQQB44pWcwDiizVUZ5VUa3mtqjdi9TVDtO4yyXuygmA7DBtwZJp2IeSh9c9xtjntfpprDxY6Gh8abfz+vf+sE2jHEbsA4xwR73YrP3gcU/+RA8eDVE//KY7i1NifTz52Hb9EaeKchYUSiyWQygTwNXW9xig5wGng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717138678; c=relaxed/simple;
	bh=0UGwaZRK6aHwnL5LePxRIXYhV7NVtqBcmBMKQs+sdqw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=btfb9h1lA9TLNq3cfzZswQfOwDTEAxyngrshFpO3bB0aSvcJM2QCoC6wMVcsj+kVwv4iqRMK7WuGoVUKf2K6V2IK5efK9A5rv0zJnapDOWktzca+jA35JMYs6tc3cGmnaFK8nN+fbhOhjpWxSk24fSxrwCVR/c8y0+NOJ7nkI4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EVTqdvM4; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52b7ebb2668so1897879e87.2
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 23:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1717138674; x=1717743474; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x0Eevik2IYxzref1KJgFO0IRFSiURPphRwX/prtBFDU=;
        b=EVTqdvM4tB4S/tCSPct7qRJUmLanwHxlA8sllUaEjhfZjDlOzzIENv432puIi3ykdc
         xOYuuQKwf5Tz9oiwzzgkjjEh8H1KicyrrclWpG74ECMWncnBC8uII2XVk2O/5lCJRCMf
         RU4I7FG3f7YKZWo8EJy2N+VraPSA+lfdFm8nKkcxS+2TzYhKq394fK/Km6bgnJ9zQcEY
         e1o0/7uQmqvmpA3uG0zvsURTgRhZ8rd7fNDckuG9wh+4J3Lls4YGS+rrjoPRe2f27TEq
         CYUGFqvr2Q4wA5Ycca7+72wZYSX//GBSPwho6Sow6Md8LtWSalrC4VlTP7gLMzPbjzKe
         mM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717138674; x=1717743474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x0Eevik2IYxzref1KJgFO0IRFSiURPphRwX/prtBFDU=;
        b=jRKzw2SGAcs6kO0SKICx3qw6G6dS/tzyBkCVjjFG+ZwBqM7fsTSxGjuRsQUSCcUA/r
         2w7+acs9stFEYxK6rT6qgMMNYLNBcnYLHuK+cSj7uV3yezsVqddXgYKhAVuXVXGioMev
         KcNeHEIIg4ufoTDaHjUSKP+gIWdVQmTLd32RgPOzhJEalXwzmyDEH3K1GLJ/uOnNTx31
         QGQXTeJhVQR8vu0nw6++iQ3/bUKP2NXr3jKGaiGlCAdUDGKc/SlKiZmgAwTEZp3R/UW6
         ZEb5bmuRws0ruqkYJFJ1WGROVexVetNT7s28rqBwJvRV2/QoMKM0+mOel6p4vKIIFYpo
         RW0w==
X-Forwarded-Encrypted: i=1; AJvYcCVuBMzxeswel+5PXZzBuBtoQGVg6uyVEOMiC2vmi89UyxYf44uYlwz1ual2dLcA9DXxlVzpq5yAnWlpt2g1Hd8jhFLsRiDIy4X4rg==
X-Gm-Message-State: AOJu0Yw1Fe+g7USsgQqQVRblZX3gCAJriZqG56KLEADcegmHS9yGR9X/
	XnMTfF1+8ZdtXdseRbnxT+fy45JNxp67mTZ7Pg0b65Y9ULOaZLsKEJcFBeRS0D8=
X-Google-Smtp-Source: AGHT+IETnb0Kj+EFXgL7RYZwX/GlYv8v0juRmpEXlA06XJZHXRniKf5+iMbZTU0Be7ft6mXo/Hb6TQ==
X-Received: by 2002:a05:6512:485a:b0:52b:86ad:26f0 with SMTP id 2adb3069b0e04-52b896b857fmr582996e87.67.1717138674499;
        Thu, 30 May 2024 23:57:54 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73fc1a5sm54205566b.53.2024.05.30.23.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 23:57:54 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: biju.das.jz@bp.renesas.com,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	claudiu.beznea.uj@bp.renesas.com
Subject: [PATCH v9 4/9] watchdog: rzg2l_wdt: Check return status of pm_runtime_put()
Date: Fri, 31 May 2024 09:57:18 +0300
Message-Id: <20240531065723.1085423-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240531065723.1085423-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240531065723.1085423-1-claudiu.beznea.uj@bp.renesas.com>
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
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
---

Changes in v9:
- collected Guenter's Rb tag

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


