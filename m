Return-Path: <devicetree+bounces-129399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4A49EB7C0
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:13:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBAC5282247
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F53B22FAFC;
	Tue, 10 Dec 2024 17:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="JqwHzBsB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE09232374
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850644; cv=none; b=rzXXsanKU1cGPS8WJcO9nTw9ur+77LmGLKh+yedoY9mQ0sRHk9WXHVtTzkLN63KFoUVEC2jbdxD0Ad54tv1N0lTNAGNbcnu8UOUOqd1qIQPC/mxRJnyecpyAhfSENcCJR++hGH271lECEetENntwULzpyOscq7NMrhzPydtekIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850644; c=relaxed/simple;
	bh=QfMAQ3ObJOM7gWSlinrrpwhjt1hderzxfmdZZzAXUok=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VzpivkZW7JVXP4TmovMN9y4KWbczBVk/q1NlW0xOQBDvXcW4vq66KqMxYYVo8re3nfAbYW7rPHIvZSwbog6RM7ZUCFMPsXBzJB4Lcrv28ta/GDnNa5hNc3I2r8g6NRb6JfMf4p1GzICy5Oc3hNE1Ud+echEH+WH3O9WjEKrweQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=JqwHzBsB; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d3e9f60bf4so4671038a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850641; x=1734455441; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6UysEDL+tYPOXb/CerEK2e/yd8/mnBKQO5ExCdaAA4A=;
        b=JqwHzBsBEtd6G7nP26tKtUetS/eenZbMMrUCRVLkWx99zAOMVKHQFyp8iaVQCf8OyC
         pK0H6wj5Qz2eWGxAGNMG82okQscg8tl5fVDnO55YWDbGhrh/K1+YOykOomQREU8H9yHs
         PTSEEQV+ewrbVQFglz+GYna9/XyO6nmPvpQmYCHLs9smQM+ayP85EAhIQlNgmOM2oGSY
         EUUVRaFxjvpyaDHkAdpcrzmXnvOi+QwqCiU0SxGsaOnTJ1xh7gN9LN+ugcGDiIKJap8t
         LRbpYIWSPUtH8TcB1Ly1vA2Bk6FHKxqZnE1DZBOe0TyasfNUoUm1xQ31sRez2CrvhUGB
         hrPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850641; x=1734455441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6UysEDL+tYPOXb/CerEK2e/yd8/mnBKQO5ExCdaAA4A=;
        b=XCugIm1sr3JP2N5e5IlTJrx7x7UoIa+rLTvhGB9Mhae8PvBsSeJB3LyVOwNvHEHRcr
         FgvB0fRiy82UpuGoyNwOq0h25gEnh/yog3Ay1ZIPoizgg8KQGwCeqGuQJXudrMYklcCM
         abetO3Qrw29R3MuOlZ//X/BTee8yjVivYFj4tJBqknXcl3oOcCpEsF87SoDrj/R9kCE3
         +kdSDjN0u8+9AdSEDInBsXDG8cneoN0sPBj6bZtv6aeQDOd3OdGDk5NXVHgcwYh9g2n1
         Kn1Sy/G02BTCl74/PxGiQC0LQeahHQU0IOUoolMYO7rxmR3wyfxuWyW8TIWsiiXg6QDq
         TiWg==
X-Forwarded-Encrypted: i=1; AJvYcCU+tvU9LUfKcwazze0S+h08atBBD7jGKjcNQB9x7wRwLWW1g6+QvJlm+ssSPG7riykHTXIYJtW38+IE@vger.kernel.org
X-Gm-Message-State: AOJu0YyTt1GSr4CS2gEPF6a/8G3CPStU0FGi07/DaAjmC8IQ8QCG/vlT
	rhwnkASvt1ULN9+RxE0a7xV7cB9gBQ8OzqxlFzjndnVE+YRzBycF/8K64hQxihA=
X-Gm-Gg: ASbGncu73bRkFJ0U1oZtrTKrz9FvkzSzw35zPXgJiKlZzbNJrrczcUm0lwHiBvqVwDb
	eYBPBCOvh6FvvNLvP+uiomVtu7Doh7g5qDD1fdNjogtHHuwVdGT1/Md5FeCclU3QkLi3pmFOQGf
	GdS59g0WFEYfSgToe1ADaL1LWVCJKVzsv8QMqfgoNaSIHmtWxar2VLRc8adsfYVKyK+NMWYgG6/
	I6EYXiHHjaC93Ub9yIHkWj1CLUekxz1eQNl5asqgwFNweveBEsUbCse/2aSu+OMJNZ2LNLBt7HP
	y4STNX+Z
X-Google-Smtp-Source: AGHT+IGDKksFRS7v8EJ79Qo0q8lVB55Bo0RkH6EDk6sqVxrrszOEC3HW/n36JzbvJ+iqRQS48HVTZQ==
X-Received: by 2002:a05:6402:35d1:b0:5d0:a80d:bce9 with SMTP id 4fb4d7f45d1cf-5d3be71c114mr15442107a12.20.1733850640930;
        Tue, 10 Dec 2024 09:10:40 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:40 -0800 (PST)
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
Subject: [PATCH v4 15/24] ASoC: renesas: rz-ssi: Add runtime PM support
Date: Tue, 10 Dec 2024 19:09:44 +0200
Message-Id: <20241210170953.2936724-16-claudiu.beznea.uj@bp.renesas.com>
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

Add runtime PM support to the ssi driver. This assert/de-assert the
reset lines on runtime suspend/resume. Along with it the de-assertion of
the reset line from probe function was removed as it is not necessary
anymore.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index eebf2d647ef2..34c2e22b5a67 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -1139,14 +1139,13 @@ static int rz_ssi_probe(struct platform_device *pdev)
 		goto err_release_dma_chs;
 	}
 
-	reset_control_deassert(ssi->rstc);
 	/* Default 0 for power saving. Can be overridden via sysfs. */
 	pm_runtime_set_autosuspend_delay(dev, 0);
 	pm_runtime_use_autosuspend(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret < 0) {
 		dev_err(dev, "Failed to enable runtime PM!\n");
-		goto err_reset;
+		goto err_release_dma_chs;
 	}
 
 	ret = devm_snd_soc_register_component(dev, &rz_ssi_soc_component,
@@ -1154,13 +1153,11 @@ static int rz_ssi_probe(struct platform_device *pdev)
 					      ARRAY_SIZE(rz_ssi_soc_dai));
 	if (ret < 0) {
 		dev_err(dev, "failed to register snd component\n");
-		goto err_reset;
+		goto err_release_dma_chs;
 	}
 
 	return 0;
 
-err_reset:
-	reset_control_assert(ssi->rstc);
 err_release_dma_chs:
 	rz_ssi_release_dma_channels(ssi);
 
@@ -1182,10 +1179,29 @@ static const struct of_device_id rz_ssi_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, rz_ssi_of_match);
 
+static int rz_ssi_runtime_suspend(struct device *dev)
+{
+	struct rz_ssi_priv *ssi = dev_get_drvdata(dev);
+
+	return reset_control_assert(ssi->rstc);
+}
+
+static int rz_ssi_runtime_resume(struct device *dev)
+{
+	struct rz_ssi_priv *ssi = dev_get_drvdata(dev);
+
+	return reset_control_deassert(ssi->rstc);
+}
+
+static const struct dev_pm_ops rz_ssi_pm_ops = {
+	RUNTIME_PM_OPS(rz_ssi_runtime_suspend, rz_ssi_runtime_resume, NULL)
+};
+
 static struct platform_driver rz_ssi_driver = {
 	.driver	= {
 		.name	= "rz-ssi-pcm-audio",
 		.of_match_table = rz_ssi_of_match,
+		.pm = pm_ptr(&rz_ssi_pm_ops),
 	},
 	.probe		= rz_ssi_probe,
 	.remove		= rz_ssi_remove,
-- 
2.39.2


