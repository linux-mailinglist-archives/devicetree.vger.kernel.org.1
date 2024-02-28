Return-Path: <devicetree+bounces-46713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AE486AA09
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 09:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 003F6B2722E
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 08:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C6935F0C;
	Wed, 28 Feb 2024 08:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ImpNt0Hi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BDD2E84A
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 08:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709109203; cv=none; b=JulPwxW2KiW+FrFIaYB11++YAVJbClvqgl3o+Z3XN58YMrdNyfHnQhGSjwvUZUzmW86rMAhML7Gez5+9B+S3lr8r6gJVR88ZqgOd4N6FAVJzfpXE7kLzMIF8Dny0w1+OIfuK3i+RLhTgHzuNTtYEJZSnmrKyw2W4an/d+sV+w2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709109203; c=relaxed/simple;
	bh=Wr6oHFeer/nBk2CrajAUv1ACQwpXo37jKZZaaBfm3BU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Jftrvm829SwgHI1Ek7TvdQRNXy8QN5D1hz1jL7TqgIDkZL8IhVWlmR5/hvZqsF+N9CWFnE0/EEl8V36alKQiMv/bBzzaC1C1Aqkat7VfS85Zk1XTC1XQzS54rNL7/ej4OeHwNai1gErlIgUyLYtIFOVZY/LrZeiG4u0BVIO4iYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ImpNt0Hi; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a3122b70439so646795366b.3
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 00:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1709109200; x=1709714000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hqHO2GEYl7GxbzESdMYs5ztGHyZiF6bQIqtKeXOQESU=;
        b=ImpNt0HioA72dmVbpqrVPND82DcPcBgpGryo4zjMttgkfyZto8VOzU4o7wCaA36N44
         450EWwwUxaWKuERAZyhlUazxpbaNBetB3bmEu/AcOd21wiAzqOWoCHkMDwaYIpSXqX4R
         9aupuAPoEwqalGvNnys0N/LyZAn3zCtZUPH0/wgTxUp4KCyNiMUFgrZ3+AEipsyMqV1I
         FU3HjFhEEC/YdmKFsj+qRGG49D3WGbklv+ky1ueWWy/9T2jvmAFXX1qgFwtfT9/wuTKJ
         qXOLnZORwCl6drj3ZH1FpCkZUUbivDEnuy0zDjq5hvx5PbvuO+VwGizQeLVB10ebCaam
         zYGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709109200; x=1709714000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hqHO2GEYl7GxbzESdMYs5ztGHyZiF6bQIqtKeXOQESU=;
        b=NBkwvGhrciZHTCVqEB3X35KIGdIi9NUBBaIZy0CWbDzV3nSPPUpP4t/cCIWeJrGiiO
         1usVbct6CmAR51fob1NAtQmVFvy/ohDEsJ76uGXKZd2gv8U6cEtYCgSePU46v7vuGThb
         dIsNrW9hv2Y5npxWCcZJLvoXQT1I2hGM5RkV+l2Ayq+ArQzzebXGqzos9VjGQFi9luEo
         EXaECgXAGhc1FEck8eA0JgxN5euWX3Bxx4/WO1GoqES6zzuVybb7gIklhSPD1AOJhsiP
         mbf5YB02TLwN6kc5c2ANGFZ/ZCvVryniUmI3n2sTl6MARSw9e12oPs33ZWr/CPOPNMsM
         cuRw==
X-Forwarded-Encrypted: i=1; AJvYcCXEiwxmoMQfCqNxZ127R4B3T81sXLlzC6FIj4LLyRHMsg6U7L32w7jdRJ8OGVLm5Ubcgrt5j89puIqKPyDNO8ad6UvkaI72UXR3QQ==
X-Gm-Message-State: AOJu0YzdMyKw9mN8zbWYQt5DdDmFpf1FhQihTVdtNI6emSGc2/tWyny/
	6WHC6K9qFKNpUnLF/ZWEt0+jiFZ6VXpISUKDUzRjHw1E2njVvvvNi1k0qTEQiek=
X-Google-Smtp-Source: AGHT+IGOSeJAwELZZJWmAhtEP13RikQeKKORVyChkjapPU+WlizPFOOOEk6clMtIx16dkzWaa/zAuQ==
X-Received: by 2002:a17:906:38c2:b0:a43:2255:2241 with SMTP id r2-20020a17090638c200b00a4322552241mr6391339ejd.53.1709109200250;
        Wed, 28 Feb 2024 00:33:20 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id qh16-20020a170906ecb000b00a432777eb77sm1593987ejb.60.2024.02.28.00.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 00:33:19 -0800 (PST)
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
Subject: [PATCH v8 04/10] watchdog: rzg2l_wdt: Check return status of pm_runtime_put()
Date: Wed, 28 Feb 2024 10:32:47 +0200
Message-Id: <20240228083253.2640997-5-claudiu.beznea.uj@bp.renesas.com>
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

pm_runtime_put() may return an error code. Check its return status.

Along with it the rzg2l_wdt_set_timeout() function was updated to
propagate the result of rzg2l_wdt_stop() to its caller.

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


