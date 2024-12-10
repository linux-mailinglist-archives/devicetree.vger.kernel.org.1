Return-Path: <devicetree+bounces-129395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E71789EB7B4
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:12:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B9512838F9
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA29222687E;
	Tue, 10 Dec 2024 17:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Fo1i+w3T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AED237A27
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850636; cv=none; b=JWu3aaqJnxkjn3PPTiJ2HiJ4sw3ShE4P1NoAapYPEsB82hJidnxM7U75pmugAn7Crcyzuy8nFB1VVoh11ybi/Ak9tKjhtbypbjPNv+k1aEz+/EPKTtYZ8LonVaAzSTcm+Vrq8EkTksNwSrRgIn7SBglnvDiBEZ1iFe2T69WbOMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850636; c=relaxed/simple;
	bh=nYG4Bh/KOUygEwsE3gKVUjg9VDgkI5hhLIDAicMnjio=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=suRznR1wrqWVLkrC3PGgsvJZo3WCUYy6wuZ50Qt1vy0isYoJs773BFhcrqzRltjotZ7VwfwC522RjVAwu2hVt6gzXKM3cLkWvbpK1WtbfmptEYuCXJMnOh2hbKQWyREYLMe1FPPJIvycZp+HKx5chlBNg2BVkLYHCLUNBAvDRHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Fo1i+w3T; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5d122cf8e52so9171033a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850633; x=1734455433; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A+Q7Wyi2VpUxYoA4m3KALmoe6y3o5M1OmNQXa4v/tj4=;
        b=Fo1i+w3TJi+119cQoeOTad7/37hS8TCOsKVxQ5/NPLbmUw7h0HJt9tPJdTQTMgMwqC
         9bOctIBCN4I/yOX51anVUxQBNwSYrOAp2lHKXA52MzkPGScd+bT06LA3c3Q9/kJqmWG0
         0LTIG1fpZzhfZryQGu290Cd/XIFbr5VHjzkS8roXYYCJ7I+yvg8hqJ2dFshuNWql2Qrt
         nhtVcvtkIMrX9DAxFsbiTbDOb+TtbYW+Pj9oPYtksfxu2px7ltzB8Li54IJ5ij0lYEF2
         gkJJtQNG8OkUSSYPyxsChtGMK6HSrNCiYluQmDmrXmrlNi9RaDi++XA7cFA2g/HD5m6P
         gcdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850633; x=1734455433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A+Q7Wyi2VpUxYoA4m3KALmoe6y3o5M1OmNQXa4v/tj4=;
        b=jRt67U69zGnDHR9PIWeo3GOO5+FZDLOL3HZ4WHVWp1kMZgjzKCKM9iS+xTlPO0jFkE
         zP3R9nvXXqZSOBTCh5F5ps8D19BgksfBx222H76eo1gSmsPF5cGtMOUJRxGxWJzcQdsZ
         PAYZzd+iXzMm/od0zWaSMknmDr8WvNyiwA2dCPGS5KgfkNuB4yFQHl0cKq8a8tz4RMpr
         bMytJbp2qLvCXPkHm82XFtjtstvLm6k55QT0ZF7Ild9Ze7+RiLceCVrxUlxyvetyCT6H
         yy/f4QS1xqmC5TEVnmZ5sJJDiGqVe4tdbVsFfCE508roZ2nnj7Q9GVKCysOfBJaEtwJg
         qDZA==
X-Forwarded-Encrypted: i=1; AJvYcCXXUriRygMXMav0hOpp7vCQwuVuAPs8uj98OD+oyXUiDYQY9c6gOPsf5jFA52gWgcMfj5PIlaDN6tyK@vger.kernel.org
X-Gm-Message-State: AOJu0YyoB6dX7C472rCsHcHbuvhNfDcvdtzsnqvAJiiIuhulo7MtZSWv
	SPzH5hfZwk1VCITpQAynapHXktJAXtn03ZW5FSjtIaQBPrK87L9D4fxhfK2cEVE=
X-Gm-Gg: ASbGnctmhX2AAzb6d8Z0gHoHfCfcCyLulokrG0YHbRSZiyZCHAa/LrirQjm0xmiwHmR
	FCK6/iacHwNnZFVZBYIsIy/KXdouNft7qOrZDGaTJbKHueIWDx82dkejhDQWQHdhNYaDDnciDho
	qVr/3cNWHY16osumHmuyFUEsEjVFELx8836Upwvq/JJY0/z9l6N88qGBhsm8cuW0CTAM3ugmgNA
	aqrGmq/Wm7uW/rtcjRdZY6e+aekvGNr6ggPYqS0rCug+37wpxrm6RHvK/Z4ySFPsFppd6Ue9Wzg
	6vSco6nV
X-Google-Smtp-Source: AGHT+IEBCVJ5ksFpp4FwClVaCrJfMHHPabOYnva4BY/zYpG72K/0Fg/nCKLr56XOe4brB+WYlaK2nA==
X-Received: by 2002:a05:6402:2688:b0:5d2:7199:ae6 with SMTP id 4fb4d7f45d1cf-5d41852f3dcmr6281078a12.9.1733850632877;
        Tue, 10 Dec 2024 09:10:32 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:32 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 12/24] ASoC: renesas: rz-ssi: Use goto label names that specify their actions
Date: Tue, 10 Dec 2024 19:09:41 +0200
Message-Id: <20241210170953.2936724-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Use goto label names that specify their action. In this way we can have
a better understanding of what is the action associated with the label
by just reading the label name.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 74632e2482f8..209b5b8827e5 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -1084,15 +1084,15 @@ static int rz_ssi_probe(struct platform_device *pdev)
 	/* Error Interrupt */
 	ssi->irq_int = platform_get_irq_byname(pdev, "int_req");
 	if (ssi->irq_int < 0) {
-		rz_ssi_release_dma_channels(ssi);
-		return ssi->irq_int;
+		ret = ssi->irq_int;
+		goto err_release_dma_chs;
 	}
 
 	ret = devm_request_irq(dev, ssi->irq_int, &rz_ssi_interrupt,
 			       0, dev_name(dev), ssi);
 	if (ret < 0) {
-		rz_ssi_release_dma_channels(ssi);
-		return dev_err_probe(dev, ret, "irq request error (int_req)\n");
+		dev_err_probe(dev, ret, "irq request error (int_req)\n");
+		goto err_release_dma_chs;
 	}
 
 	if (!rz_ssi_is_dma_enabled(ssi)) {
@@ -1136,7 +1136,7 @@ static int rz_ssi_probe(struct platform_device *pdev)
 	ssi->rstc = devm_reset_control_get_exclusive(dev, NULL);
 	if (IS_ERR(ssi->rstc)) {
 		ret = PTR_ERR(ssi->rstc);
-		goto err_reset;
+		goto err_release_dma_chs;
 	}
 
 	reset_control_deassert(ssi->rstc);
@@ -1152,17 +1152,17 @@ static int rz_ssi_probe(struct platform_device *pdev)
 					      ARRAY_SIZE(rz_ssi_soc_dai));
 	if (ret < 0) {
 		dev_err(dev, "failed to register snd component\n");
-		goto err_snd_soc;
+		goto err_pm_put;
 	}
 
 	return 0;
 
-err_snd_soc:
+err_pm_put:
 	pm_runtime_put(dev);
 err_pm:
 	pm_runtime_disable(dev);
 	reset_control_assert(ssi->rstc);
-err_reset:
+err_release_dma_chs:
 	rz_ssi_release_dma_channels(ssi);
 
 	return ret;
-- 
2.39.2


