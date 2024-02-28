Return-Path: <devicetree+bounces-46718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 362A386AA1E
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 09:35:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63F271C2613E
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 08:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B591438394;
	Wed, 28 Feb 2024 08:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IQcs0ODK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE593381AA
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 08:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709109210; cv=none; b=nv+bTPsJug8BZBhTBt1zdLhWl99OSnnFpn1wzKOHgNQQZC1FWqLw2HtNeLBoIVCZc10kaoFcdpPE4kMGVCsFu1SrQmKDV0uwTqCoG3LUt6lRRgCKUStmeA74nencoHg2Rs0DBXx+nLMY8WMFpuRnaVgiPXyhiMEIRivTZyBivcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709109210; c=relaxed/simple;
	bh=CJ5Yg4Su25upi9PiRBilKHZBgxfV1yi9eo8lCkVdx7g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=r+9E3OeF5h+ziNFxxhYcGVUkBRf2oUpljE/XTlDqHhqEz8NuGkCAlKbdRKBYIFx8ewqrt/k6Z+AkdpvYSgwmMEH0dG+4W5+v2SHX1gF/L1E+ZXDGOjjSSnu+hmg+M8qnUZ4Xpb3PPxM0vy7QhXl/pbZLd3Te96BNCP8U9fe/I0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IQcs0ODK; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-565a3910f86so5851603a12.3
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 00:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1709109207; x=1709714007; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfpDELhZMXS3a+UUIPdr1Q+y0EuPmA52WesKgXwm+Ms=;
        b=IQcs0ODKBBlEqzcRUnMR3PphfLdpm8uFtq6t6DplJCVhjYQyfNKbjPiB40fZPqwWOA
         aH2gMx1WBfmZGxKnhVFXzVDhIjHuAAdxDX1+xl/Z9a1dd4sM9Jibl7oWNPz2v0w3g6Mz
         jHH6BYUQh/tsMxeYXOzzX5RxoHDEXa9lervrxlDVMR7felSsHXMjowU3gjy2VNzDevpJ
         cAbD7kFHwMegwkaL4VfLF23a/c0uHyEwImKp9aAnjXl2bXJtQp8nVZNQRc7DzRV0wYua
         sv0S6P4gIyx94Js/x6cEs4kvRwpWFSNq3CnGaqH2I6+QcmVhSx/cMArAxM5y/1Tb+y4N
         8F+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709109207; x=1709714007;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bfpDELhZMXS3a+UUIPdr1Q+y0EuPmA52WesKgXwm+Ms=;
        b=NXAqa/+2yX7ODByFGiRuZVmTCQXusD6vXPF15MbtChHfeUwfojQxEEslx2dxxLcjX2
         tPsxFzaUUCwwuKPMOP5GhBtVee88RgxZYKnLwOe9C7acTnWiat6ZVWOdoJYJVGJr6kQV
         hEnu21lWDQKNwlcJ85TnJBtuHDwft31/bN1a5a/rjydzsehZNsGY7YCbGejOWFzHYz+Q
         ODInMB2asUiw7Fkychn1PsOtw/WreiQV9VH1EKRLjIkCtA7E6+yflho/8XX2l4qZpyyo
         jxTpq45j8D+60CPFzOOug1y0i6mHXTZzpLLeWv6PqE6z/3znY+Ms7aDqsv3VmpHgGJpk
         BoGA==
X-Forwarded-Encrypted: i=1; AJvYcCW8vIiIo+j9QTg09gsqtpqn8c3/gV5gXTcf+t33Tk/90lGo4iSDPZTJH6uyK74no6OYw7Khxw1ElHkmpY6Om4tpSixDo9bM/5OWAA==
X-Gm-Message-State: AOJu0Yx3fGPw/vRiHCFhawaOMNVb0UZSay4EGA8Es9a6R4RRvlEkcio1
	UA8HWeSe36OBGi0IHyuP6i3tT8bhkP5nXFVTKBa76USUI0l9JKUTgjxrLZFTVo0=
X-Google-Smtp-Source: AGHT+IGVVBh76BlS6liS9PDo7mLAsRf+sVHtC7tI2oBIVN1ieLuWPc+n2F2m8l4L1gFDZlotviz4cQ==
X-Received: by 2002:a17:906:384f:b0:a3f:2d9c:c66b with SMTP id w15-20020a170906384f00b00a3f2d9cc66bmr8289281ejc.22.1709109207332;
        Wed, 28 Feb 2024 00:33:27 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id qh16-20020a170906ecb000b00a432777eb77sm1593987ejb.60.2024.02.28.00.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 00:33:26 -0800 (PST)
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
Subject: [PATCH v8 09/10] watchdog: rzg2l_wdt: Power on the PM domain in rzg2l_wdt_restart()
Date: Wed, 28 Feb 2024 10:32:52 +0200
Message-Id: <20240228083253.2640997-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240228083253.2640997-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240228083253.2640997-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The rzg2l_wdt_restart() is called from atomic context. Calling
pm_runtime_{get_sync, resume_and_get}() or any other runtime PM resume
APIs is not an option as it may lead to issues as described in commit
e4cf89596c1f ("watchdog: rzg2l_wdt: Fix 'BUG: Invalid wait context'")
that removed the pm_runtime_get_sync() and used directly the
clk_prepare_enable() APIs.

Starting with RZ/G3S the watchdog could be part of its own software
controlled power domain (see the initial implementation in Link section).
In case the watchdog is not used the power domain is off and accessing
watchdog registers leads to aborts.

To solve this the patch powers on the power domain using
dev_pm_genpd_resume() API before enabling its clock. This is not
sleeping or taking any other locks as the power domain will not be
registered with GENPD_FLAG_IRQ_SAFE flags.

Link: https://lore.kernel.org/all/20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none, this patch is new

 drivers/watchdog/rzg2l_wdt.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
index c8c20cfb97a3..98e5e9914a5d 100644
--- a/drivers/watchdog/rzg2l_wdt.c
+++ b/drivers/watchdog/rzg2l_wdt.c
@@ -12,6 +12,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <linux/units.h>
@@ -164,6 +165,17 @@ static int rzg2l_wdt_restart(struct watchdog_device *wdev,
 	struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
 	int ret;
 
+	/*
+	 * The device may be part of a power domain that is currently
+	 * powered off. We need to power it up before accessing registers.
+	 * We don't undo the dev_pm_genpd_resume() as the device need to
+	 * be up for the reboot to happen. Also, as we are in atomic context
+	 * here there is no need to increment PM runtime usage counter
+	 * (to make sure pm_runtime_active() doesn't return wrong code).
+	 */
+	if (!pm_runtime_active(wdev->parent))
+		dev_pm_genpd_resume(wdev->parent);
+
 	clk_prepare_enable(priv->pclk);
 	clk_prepare_enable(priv->osc_clk);
 
-- 
2.39.2


