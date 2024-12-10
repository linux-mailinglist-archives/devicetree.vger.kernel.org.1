Return-Path: <devicetree+bounces-129394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 236AD9EB7B5
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:12:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C50B71887E84
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50E2C226868;
	Tue, 10 Dec 2024 17:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EifxrIGK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9198633E
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850636; cv=none; b=kz7Wd7VpKwcP6paPfaja8jS1nnYn03DHC3K3soL82dijmPhp+Lu5WvFDM1tOKgRWKYxd09Az6Nvrn1E4rEOvmybpjIkYlxKk82ytT9L5pCSwqxOGgq9PULqixOCDURYAPgi+tbYuu5vHXNhHB3vuCt0bi6Rz59Fe9k4cn85SHpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850636; c=relaxed/simple;
	bh=k3Z7SepXf6kK0GBAAx+gh10sWRGIrQ/wXZMtZNGeO8k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nvihnXyUaODhxIi52FEcBBTyozAke8eCYYqE+ZfuuEkY3CBuPsrw9OxiStKJhOzaRx937AThPsqaxlgW4GHyt3aZzU4HSblq6fHURlD3sYfwwGEypCOdtWg42H0j0GZhzwvGCVzyV8R5s5h6ZasMRFM2SLJ5mfyffTvDqeepeQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EifxrIGK; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5cedf5fe237so9122026a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850630; x=1734455430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkl99V7JHk+PHmXk7Z/OM1i1KIFRiXSecR3DTIS4ac0=;
        b=EifxrIGKRKKCT49M/aXjayRDJzhSxZH6x3FgMANG6c67KCxirJVypeLjsfSunTf5sn
         1ZDKe0/WxuZlQzhv/V7y4gEHmsSvK94N4MlZDt2YEHiDU4izjX9IMY0SClxTrmDqw8vJ
         R3wxizzL5Beykl4gO4pR1qd0Y28z5EyiKC7JgC7T8HyEADhgsTCXgutOQ/jdfwUOfqib
         7/1USClPdI7H47lJObPoLt17aOq0rNkZVqEqHzm5WXACrQ9VKKeBSqjLeCJZWksI0kKa
         VnegIIA+w4KXZXfJd9ONJJjN0JtfXak0VJAgY8mzoK8l1QShqRXGdkIacM9c/1KXByIk
         3wBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850630; x=1734455430;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkl99V7JHk+PHmXk7Z/OM1i1KIFRiXSecR3DTIS4ac0=;
        b=MYsM9ZVi1nZ4hW0lL18Cef222AxMAI0BVfO00u/CbJY1E3fY2i8aEX9Z23BxemhXG3
         IXaVIwLzSUS+/0+Fa9OvVIZScNGsoCot9TZhG5nmD2Jt6iMWWopugwrZXxjvOStrDivH
         wEmAZ7zI4viML9xJYH+IEncouJBKdMADsrJDUm88GPb87Dmvpp75Bwd0wyzHEbo8uCtv
         DMmC+mIQSmBeOpPIv9wpETWVVojgGX1kJJM2rzlgYh7w3MQiiC/W3eKMZZHz5pBLl7AR
         1QXeUcNDF7JZjJHfSlRxt5EPw2J/cgqs6FIdthA6uNZVL37qXVAV+w3gMrI3SNwxwFuM
         qdjg==
X-Forwarded-Encrypted: i=1; AJvYcCVQH6Q/q5qoUt+1bJJDqIna1ROYnJgDB5s1ltWDQlNcyZM18opCRBb1Ajrr9gwirPO3xvr+gt6KgR6h@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa/ZSwyINUREBKNW+qo69v6xngdZDNiEwfTs8u9Yhx4KzMfSk+
	qQNNa9YzRStkqj8bCvjrB4zlgRupEVsMz7trv4Hh64fcCUy24Bcm3SMHt+1yUEE=
X-Gm-Gg: ASbGncu6lgp7dP6ddEoOh4YLKb8RgggNeZnJg3xRJ6uvQg4IXDiMS5b+cmoGHIgzSx2
	iETCfkWpNoEuVpZ0YMYKKQtPiHA+FkHskgcDi1WFPVuYxSirH5cbBaW9C9WzPCRAXd98Qnycjh9
	21pEy2mlniSLmBBaAUrlvvSrT2GJV7H9tt/MIlD3RO/U56It0nsTsWrwJ0kD/I+/r07yylF/ti9
	+iB7iJm/RmOfarjPoR16Aeb4gQPk7Chay6QV+4QeiNzEYj9SE+aOdTTtr7rJeFB+VmTgBNmm2EH
	smeIj9St
X-Google-Smtp-Source: AGHT+IGiyQL90tdiVNR8CEbdQwt+84VQwU+X2Ih+j4zZRGxrQOsXOlnJklGXo6a6srhL1lfK868Leg==
X-Received: by 2002:a05:6402:35c6:b0:5d0:e696:1bfc with SMTP id 4fb4d7f45d1cf-5d41856a3e0mr6960258a12.15.1733850630300;
        Tue, 10 Dec 2024 09:10:30 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:29 -0800 (PST)
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
Subject: [PATCH v4 11/24] ASoC: renesas: rz-ssi: Use temporary variable for struct device
Date: Tue, 10 Dec 2024 19:09:40 +0200
Message-Id: <20241210170953.2936724-12-claudiu.beznea.uj@bp.renesas.com>
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

Use a temporary variable for the struct device pointers to avoid
dereferencing.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 62 +++++++++++++++++++-------------------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 03d409d3070c..74632e2482f8 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -1021,36 +1021,37 @@ static const struct snd_soc_component_driver rz_ssi_soc_component = {
 
 static int rz_ssi_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct rz_ssi_priv *ssi;
 	struct clk *audio_clk;
 	struct resource *res;
 	int ret;
 
-	ssi = devm_kzalloc(&pdev->dev, sizeof(*ssi), GFP_KERNEL);
+	ssi = devm_kzalloc(dev, sizeof(*ssi), GFP_KERNEL);
 	if (!ssi)
 		return -ENOMEM;
 
-	ssi->dev = &pdev->dev;
+	ssi->dev = dev;
 	ssi->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(ssi->base))
 		return PTR_ERR(ssi->base);
 
 	ssi->phys = res->start;
-	ssi->clk = devm_clk_get(&pdev->dev, "ssi");
+	ssi->clk = devm_clk_get(dev, "ssi");
 	if (IS_ERR(ssi->clk))
 		return PTR_ERR(ssi->clk);
 
-	ssi->sfr_clk = devm_clk_get(&pdev->dev, "ssi_sfr");
+	ssi->sfr_clk = devm_clk_get(dev, "ssi_sfr");
 	if (IS_ERR(ssi->sfr_clk))
 		return PTR_ERR(ssi->sfr_clk);
 
-	audio_clk = devm_clk_get(&pdev->dev, "audio_clk1");
+	audio_clk = devm_clk_get(dev, "audio_clk1");
 	if (IS_ERR(audio_clk))
 		return dev_err_probe(&pdev->dev, PTR_ERR(audio_clk),
 				     "no audio clk1");
 
 	ssi->audio_clk_1 = clk_get_rate(audio_clk);
-	audio_clk = devm_clk_get(&pdev->dev, "audio_clk2");
+	audio_clk = devm_clk_get(dev, "audio_clk2");
 	if (IS_ERR(audio_clk))
 		return dev_err_probe(&pdev->dev, PTR_ERR(audio_clk),
 				     "no audio clk2");
@@ -1063,13 +1064,13 @@ static int rz_ssi_probe(struct platform_device *pdev)
 	ssi->audio_mck = ssi->audio_clk_1 ? ssi->audio_clk_1 : ssi->audio_clk_2;
 
 	/* Detect DMA support */
-	ret = rz_ssi_dma_request(ssi, &pdev->dev);
+	ret = rz_ssi_dma_request(ssi, dev);
 	if (ret < 0) {
-		dev_warn(&pdev->dev, "DMA not available, using PIO\n");
+		dev_warn(dev, "DMA not available, using PIO\n");
 		ssi->playback.transfer = rz_ssi_pio_send;
 		ssi->capture.transfer = rz_ssi_pio_recv;
 	} else {
-		dev_info(&pdev->dev, "DMA enabled");
+		dev_info(dev, "DMA enabled");
 		ssi->playback.transfer = rz_ssi_dma_transfer;
 		ssi->capture.transfer = rz_ssi_dma_transfer;
 	}
@@ -1078,7 +1079,7 @@ static int rz_ssi_probe(struct platform_device *pdev)
 	ssi->capture.priv = ssi;
 
 	spin_lock_init(&ssi->lock);
-	dev_set_drvdata(&pdev->dev, ssi);
+	dev_set_drvdata(dev, ssi);
 
 	/* Error Interrupt */
 	ssi->irq_int = platform_get_irq_byname(pdev, "int_req");
@@ -1087,12 +1088,11 @@ static int rz_ssi_probe(struct platform_device *pdev)
 		return ssi->irq_int;
 	}
 
-	ret = devm_request_irq(&pdev->dev, ssi->irq_int, &rz_ssi_interrupt,
-			       0, dev_name(&pdev->dev), ssi);
+	ret = devm_request_irq(dev, ssi->irq_int, &rz_ssi_interrupt,
+			       0, dev_name(dev), ssi);
 	if (ret < 0) {
 		rz_ssi_release_dma_channels(ssi);
-		return dev_err_probe(&pdev->dev, ret,
-				     "irq request error (int_req)\n");
+		return dev_err_probe(dev, ret, "irq request error (int_req)\n");
 	}
 
 	if (!rz_ssi_is_dma_enabled(ssi)) {
@@ -1104,11 +1104,11 @@ static int rz_ssi_probe(struct platform_device *pdev)
 			if (ssi->irq_rt < 0)
 				return ssi->irq_rt;
 
-			ret = devm_request_irq(&pdev->dev, ssi->irq_rt,
+			ret = devm_request_irq(dev, ssi->irq_rt,
 					       &rz_ssi_interrupt, 0,
-					       dev_name(&pdev->dev), ssi);
+					       dev_name(dev), ssi);
 			if (ret < 0)
-				return dev_err_probe(&pdev->dev, ret,
+				return dev_err_probe(dev, ret,
 						     "irq request error (dma_rt)\n");
 		} else {
 			if (ssi->irq_tx < 0)
@@ -1117,50 +1117,50 @@ static int rz_ssi_probe(struct platform_device *pdev)
 			if (ssi->irq_rx < 0)
 				return ssi->irq_rx;
 
-			ret = devm_request_irq(&pdev->dev, ssi->irq_tx,
+			ret = devm_request_irq(dev, ssi->irq_tx,
 					       &rz_ssi_interrupt, 0,
-					       dev_name(&pdev->dev), ssi);
+					       dev_name(dev), ssi);
 			if (ret < 0)
-				return dev_err_probe(&pdev->dev, ret,
+				return dev_err_probe(dev, ret,
 						"irq request error (dma_tx)\n");
 
-			ret = devm_request_irq(&pdev->dev, ssi->irq_rx,
+			ret = devm_request_irq(dev, ssi->irq_rx,
 					       &rz_ssi_interrupt, 0,
-					       dev_name(&pdev->dev), ssi);
+					       dev_name(dev), ssi);
 			if (ret < 0)
-				return dev_err_probe(&pdev->dev, ret,
+				return dev_err_probe(dev, ret,
 						"irq request error (dma_rx)\n");
 		}
 	}
 
-	ssi->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
+	ssi->rstc = devm_reset_control_get_exclusive(dev, NULL);
 	if (IS_ERR(ssi->rstc)) {
 		ret = PTR_ERR(ssi->rstc);
 		goto err_reset;
 	}
 
 	reset_control_deassert(ssi->rstc);
-	pm_runtime_enable(&pdev->dev);
-	ret = pm_runtime_resume_and_get(&pdev->dev);
+	pm_runtime_enable(dev);
+	ret = pm_runtime_resume_and_get(dev);
 	if (ret < 0) {
-		dev_err(&pdev->dev, "pm_runtime_resume_and_get failed\n");
+		dev_err(dev, "pm_runtime_resume_and_get failed\n");
 		goto err_pm;
 	}
 
-	ret = devm_snd_soc_register_component(&pdev->dev, &rz_ssi_soc_component,
+	ret = devm_snd_soc_register_component(dev, &rz_ssi_soc_component,
 					      rz_ssi_soc_dai,
 					      ARRAY_SIZE(rz_ssi_soc_dai));
 	if (ret < 0) {
-		dev_err(&pdev->dev, "failed to register snd component\n");
+		dev_err(dev, "failed to register snd component\n");
 		goto err_snd_soc;
 	}
 
 	return 0;
 
 err_snd_soc:
-	pm_runtime_put(ssi->dev);
+	pm_runtime_put(dev);
 err_pm:
-	pm_runtime_disable(ssi->dev);
+	pm_runtime_disable(dev);
 	reset_control_assert(ssi->rstc);
 err_reset:
 	rz_ssi_release_dma_channels(ssi);
-- 
2.39.2


