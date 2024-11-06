Return-Path: <devicetree+bounces-119347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB68C9BE08C
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:23:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D3552845BE
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4451DE4C4;
	Wed,  6 Nov 2024 08:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kVTvMCGR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385391DE3A4
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881194; cv=none; b=TVT+Xq4DVNUO6SNZjMEGF15c2FlILUDBOdpA/f182jcEQghd1TtpQM6/6W8L0Aqyhy5ZiHxpgM9Y9bHJoJE/Z9cGoX+1JA9F+Yy3NucF9RQ4nR7u19B7+bek0c/8ZrLGZN2DsyKwY7szyx1POzLrMnT652I1ODAQNFgLuidEJEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881194; c=relaxed/simple;
	bh=GNrMQn8178EytGdl7pjUVheH4uZYUZPy0HC7gNQDh3s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WuoWnOXgwUmu4BUhYjUfhIqaEFUM6sKHkXNAqGKLrUsappr6Uy/pmozU+trKCAyxt4dAUpxU1VQ4LCiZyFRF1eF3NoJo+iHBbGjIqy/zDn0IMoFkrDxBCdMUus3B8FIHiYNgvukLF3fjnCt0KLbm5ckLXlZhkq62GGE0QwSxOTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kVTvMCGR; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5cedf5fe237so3276228a12.3
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881190; x=1731485990; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xuqFmMFP2h44iVQoH+wAGC8bpvXlLb/oCAVNPJuBEFs=;
        b=kVTvMCGRmmdrnblfrbcG0udNF5cI3q/0a77A9oOQqIke9ZbpJ9DDDjhJbDuMBPhwyh
         y0DkVpszRQcl3WycsXfUfCHrUaYmh+xd/G2ja6XtOKL/zGk7tCC/DP+8jEZo0yXUlrvY
         UQ7Pe/UEUecet0HK/TrZmGQ6HEdZ0qxjU6mqYaEFijoqoA3ZHcSt45MHh3NuHkyYdBgQ
         vneGsUV5pOpNYKiJXWUOV+eBzE476wlLV0+hVIbPttlIKPB2Pyajv7ac70sgE3NMYBSi
         jWL7ZUNBKdSoB9waYnXNjGIiBM48BBTcVJ2AbXzbYmNx38TF+giwJ5zOQUITadIw5jOS
         oH3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881190; x=1731485990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xuqFmMFP2h44iVQoH+wAGC8bpvXlLb/oCAVNPJuBEFs=;
        b=c6L3XLJXg20QwqcOKP6iNyJCXIpZ/QrGiMLnnJ4S+/iQnVf6Ud+hxkqt0EruTMY4e7
         zRA2dHDxSqGGKa1wKWF7cc7UMoBL1jiYbrQUFMqKrt8ObBgG4xdpFT/lnJHCiKMyjCyN
         9SchZtv6mo3ejjpnj1q6HniVqQNF7hSFxfclEHMjWoPvjC8Nk/A6yiUbiZyeVjnZWs99
         A3xchkq+QwVqw1BSrHjNsICQu/thdCkv9BV1fe94G3UNoR80slyM3aqgLby6/LuB8Zir
         V9gmWVFljlQ7PWXYBzrwg4xRemh3zVQ/Lo4mxQf+0yHFB/p/JhVaFrQYrrwZAm9PspKM
         rxFA==
X-Forwarded-Encrypted: i=1; AJvYcCVHCtViGAQG5woTYhs8Jhguj7qX9plU1RstkNXa8FlpTOXAk/EF2wcGo6UgLJT5vV4/Pu6Jr2/HMy1v@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4DVyTh3hXLD8CJj+ztz/LijtMexhofGU82Sw+GMBownUeSedV
	+YgZ5kOUGFMODyP2cHOgQ4hqatIXpTwcKjeQzUVD+POv54izgeoicQ1x9HMjAss=
X-Google-Smtp-Source: AGHT+IEKO/HigzXXUDReGUUShgBaOFIT+zemoAkWfLBBzhSQxLIrKg1/Spb6Z+HseC4GZ0DjysWjmQ==
X-Received: by 2002:a17:907:961c:b0:a89:f5f6:395 with SMTP id a640c23a62f3a-a9e6553c120mr1747810766b.1.1730881189491;
        Wed, 06 Nov 2024 00:19:49 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.19.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:19:49 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	support.opensource@diasemi.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	Adam.Thomson.Opensource@diasemi.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 16/31] ASoC: sh: rz-ssi: Rely on the ASoC subsystem to runtime resume/suspend the SSI
Date: Wed,  6 Nov 2024 10:18:11 +0200
Message-Id: <20241106081826.1211088-17-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The ASoC subsystem takes care of runtime resume/suspend the audio
devices when needed. Just enable the runtime PM on the SSI driver and
let the subsystem runtime resume/suspend it. While at it use directly
the devm_pm_runtime_enable().

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 sound/soc/renesas/rz-ssi.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 468fefdaa9c6..e17dc1c0bd47 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -1140,11 +1140,10 @@ static int rz_ssi_probe(struct platform_device *pdev)
 	}
 
 	reset_control_deassert(ssi->rstc);
-	pm_runtime_enable(dev);
-	ret = pm_runtime_resume_and_get(dev);
+	ret = devm_pm_runtime_enable(dev);
 	if (ret < 0) {
-		dev_err(dev, "pm_runtime_resume_and_get failed\n");
-		goto err_pm;
+		dev_err(dev, "Failed to enable runtime PM!\n");
+		goto err_reset;
 	}
 
 	ret = devm_snd_soc_register_component(dev, &rz_ssi_soc_component,
@@ -1152,15 +1151,12 @@ static int rz_ssi_probe(struct platform_device *pdev)
 					      ARRAY_SIZE(rz_ssi_soc_dai));
 	if (ret < 0) {
 		dev_err(dev, "failed to register snd component\n");
-		goto err_pm_put;
+		goto err_reset;
 	}
 
 	return 0;
 
-err_pm_put:
-	pm_runtime_put(dev);
-err_pm:
-	pm_runtime_disable(dev);
+err_reset:
 	reset_control_assert(ssi->rstc);
 err_release_dma_chs:
 	rz_ssi_release_dma_channels(ssi);
@@ -1174,8 +1170,6 @@ static void rz_ssi_remove(struct platform_device *pdev)
 
 	rz_ssi_release_dma_channels(ssi);
 
-	pm_runtime_put(ssi->dev);
-	pm_runtime_disable(ssi->dev);
 	reset_control_assert(ssi->rstc);
 }
 
-- 
2.39.2


