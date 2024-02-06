Return-Path: <devicetree+bounces-38941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F00784AF48
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:52:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFE7F1F23587
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 07:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E46812B169;
	Tue,  6 Feb 2024 07:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="cw0/9nYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0A012B148
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 07:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707205935; cv=none; b=nbvM88vr5MIGUaqLGn+1bZ8S6SDSYaHSNaD/gGJW+VtSE6y/WTYZkvhgKDXJueiTowuTMIITMsVrhnePTSjWP2FWTZRJ4wOmofekIblPfJo3y0s6LXLQkPrhJEy5Hlt5v4Zraq6PlyjICyN0OHiufu7bDewBM+EiHQK4y6Aigvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707205935; c=relaxed/simple;
	bh=iY4Nq0gmeNoMpaiXAPg8UyiEeagDbHOfI4LQk9pKbUk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i5aEYWlwvebMi6JD5kjEfLCK8er9J2gPqV/kcUStvV82pkAkE7X6SPuRm+y7BtIodAnUp2VPu0a/MR6FECgiXal9fg1GeG681D5A5K4Bi/daLNY5KKno0LFURaDgmdqPrOL1gwrQQyBCEa6vWlEfsOLHp7s7TuT6Od/PJYGKtRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=cw0/9nYB; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40fe32fcbdaso1819835e9.3
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 23:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707205931; x=1707810731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Re6g7QbwuG7CNxQRWc79B5kKgna8Uj7zWIgOl3cniuA=;
        b=cw0/9nYB6Rfto3zX2hu8hJXLdICVs2i/t5e6PmwC7rJJX4kyZMOenC/u3NTw3TXmzd
         2Fo9coEi9cQtnsdW7dY13PVyjJ8ldEdkAK+JKVZECBJ4nm4TA8AykNe9nuFnu2JPKzDh
         KCJgMTAPfM1Bps+fWP5li08CY3EJhlxNYMLMf34254PWo2DqY4NmKkAHGyfNVONLIY/b
         hblMY6LMwN+smpMuHNySVMpxEUz/PWAZ2j6WU0SsdeqXz+W/bWTVIlMQz9cNRtA1NHOQ
         fL9MXWZumfzMyz8nx3qyEYPlArgQ/aVt0wUHfXnYOLn3xH6if5uFyM/iTb5G5dK46/+K
         ExMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707205931; x=1707810731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Re6g7QbwuG7CNxQRWc79B5kKgna8Uj7zWIgOl3cniuA=;
        b=kX78/ZP9QlyAX96IChdDCV7gt36kVxFOR52p9LRcRLhOZ9QZA1iGvAEXqTJ5gzeBZg
         HNmE3xY9aktkl3NVmJ3Rf3jzVWWJQx1uqQzMjGzpZjOkG9kXUztO6W3LUwc/5l18nZLd
         Ws4xOwlnoucTKXEpH4V6QuaJIfFZZaToa5/5fDiTrjweYlnC9QRUraJRDIIvfNp0QST4
         nslTa2uMG50bPYNLluey3usbVPWqqNI5DCIEyLuKdmY+7wBxLUWuiML8/Uct0ZBuPBYh
         Z9yHul2ai6pW6nvo0OUwbYZhVJQVbnLkKJT52bB7cFk/OkGM9Vy1ytm28rPx5rdpnrr0
         SF5A==
X-Gm-Message-State: AOJu0YxUDMV1wE7VzvW3FOX0EWDNekrnHhqTu+cDorx2uOw5M5YA0har
	UQWRoO8d2k++yc8MvPyhThRMySB1hkH2+dAtLs1MnscuVBf8jCLllmJFSXOqlv4=
X-Google-Smtp-Source: AGHT+IFUwO5jVJRIRFN3OtH6ZcdLi45uIOaSjs6QmpuzZuPbtPalHg0jI02tYrQQJSgPijB7h9Exng==
X-Received: by 2002:a05:600c:3c97:b0:40f:cb0d:a44e with SMTP id bg23-20020a05600c3c9700b0040fcb0da44emr1034104wmb.9.1707205931238;
        Mon, 05 Feb 2024 23:52:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWoSIcqKjoanSWxwphMlxu7ln46eqk3ZHWmxw5kPc0ytMMrDj+G1cvjlpMW2WUZIONlpZR/K/et1+AFj2qjFc/eQgpImL6b+QnuA5cEKWB3RctoRIxxIOx3UrwqWVuwS26Q727uwOtVH4iYXd7VLVpcBuOp+z+nN00Veb74MnqJr7BybLLxb3vloETJMbb6R/lkqxQnMD6fqFsyCDNGMi0TmIHCAeW7G66sXigDahSIEaDE5zLLA1/LxpQs6s5sQL2+5Vjx+Kb1yLmUCSOgLBBwUldO7EgcCA8/qBXoQtuqlIqTnqpr9VT+yPNkKRhoXZrfMKpSa85WMZ0gx8crtbT4ZazCl91bh+MN3ofHl4xpc4ZCA3ndyHBEsHy9bKHpWgV36hoKI6kRukQmDmZSBCadvVFaI0rG4ZPJq1J6ckY++80T1RSlPC9XT5FDL0mLMOh4O5IKyr6MnvvdWHtvLM/O0d/gkLslCzdMizm8osF9ApW3CYmJ1GpBzGMtIUoZm/zGjpPLLicpYQ==
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.154])
        by smtp.gmail.com with ESMTPSA id j32-20020a05600c1c2000b0040fbad272f6sm1106843wms.46.2024.02.05.23.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 23:52:10 -0800 (PST)
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
Subject: [PATCH v4 3/9] watchdog: rzg2l_wdt: Use pm_runtime_resume_and_get()
Date: Tue,  6 Feb 2024 09:51:43 +0200
Message-Id: <20240206075149.864996-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240206075149.864996-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240206075149.864996-1-claudiu.beznea.uj@bp.renesas.com>
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


