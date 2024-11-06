Return-Path: <devicetree+bounces-119349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0222F9BE092
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2215C1C2338F
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49C6C1DE889;
	Wed,  6 Nov 2024 08:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Gny/M7HW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C3E1DE4E0
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881197; cv=none; b=L0cmChcBdoBzxFl8r4tjoao+lRGfXPlGEKQwpYsM1oiX9ir8M3GmLIfVDkAE1oTFCv90RJV8gh8p7b/Hh/5/7Opl71d2jGeBgXg/NsKyG7BZoCE2Wp14BkoCN+D4KDYl8fuRgHbq5DRZT1vjXz0oPXnAAHOBWfhMZy6BMK0FkGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881197; c=relaxed/simple;
	bh=vcuxRNbvNHFXIJ12LMc8mO5giKBAKMkgkoqT7f2OQBk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CeiONsOzH4Ww0PlniYZVe8Bbs8OEm3LDr/2NCCepbgVXdAPDGbfbP+2r7Q7KvR7K5OliYCWK7tJtFBhRFAX/t3TXR92xwTTfy39SX4RxCJYOdDP9ooMa/P+td1jpBNj0z5sqFmgg739O54f98y56DcbN+UM+u6oaPZ+0XTLHvJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Gny/M7HW; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a99f3a5a44cso850361266b.3
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881194; x=1731485994; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KJSsIgMTNdT8sJbYVvXU1xDsTjBwGMjS4qJNOYo0+mE=;
        b=Gny/M7HWzmlcsJNDoAgQEFaxtLFBkUjNMhp6PEh3oBey4D4ZCfzHbhA7xfH7Du/Vlu
         5NxniWsNeyysGN2yZDxRqSJsoj7b1l5wRZBrAWEjQhmka/M/JAwWnRP5GcSWh6PT/Pxf
         MCxvThNo6sLkBSa1Aqcjb0mt4Qjj2P7r14y6BL/NMTrxLN5yuz3PTkZItFa8BsMkWvn4
         k4q2aaallNg52giFp/zwCwU14laDpHw6yWyjLb9qWPQErNMxCkxBQ6XteYie/8Yo5ege
         F+S98lqIQ3d/tCYIdJUCo8MlanqBE1d8RBjIk8O84bsfpDXTPmA/lZ9YqOCb/nYATJpR
         b0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881194; x=1731485994;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KJSsIgMTNdT8sJbYVvXU1xDsTjBwGMjS4qJNOYo0+mE=;
        b=cQKJABHDoKfXiSL0NwvaB01OP2W8Vbf+3cMSDAvdNMHOzNqmCTCGrFqtIzB/ic2Dtf
         T3bNfuvJIYMPTp84tC/abs5vX8+UA1lDeDupdTWng7B04mXxXDAw17MSBn2LAN+qmxMq
         xgqou0Rur4TtvEQ+RvFpX3UGBsmKSkOUliVzLKVlDM2AdtxzUbxmd0UeTpNJR+T3tzgE
         aGr7vB0smAN6qbKM7wBOB80356q8YjOSzFaYvz9hP7ZK8VNv5OIu0qXQgz7asnAuh/LU
         uiaITrQak5y8NgSrfFTA/R633gHcDJI4+TaC8UsnczrKzfjTpkq2SlCJVR5gQwjcEPdQ
         lpQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxyyFK9AlwmzNTMvD3lWgeyOz/teqeL8+4dZeSyRewTDGe+eRQGcB4dIHA3AOrB+082F1Vnl3FDJg6@vger.kernel.org
X-Gm-Message-State: AOJu0YwP9NpCNDFfura4F84tvP4j9bwjE2ddzLbVAvgnC/3cWACXE/eu
	On/yW5f8oB5nytnW8/HfhW5/RihL23iFYhJiKr/0/G+AYEmGWQU3c+rCm0FWYJk=
X-Google-Smtp-Source: AGHT+IHA6GZ3mGvsNrJNfACEgxPKeSILQc0Ff23Q+aU/bmIy1rxj/og4ekfVRW6dsilLNwV9naTmNQ==
X-Received: by 2002:a17:906:f5a8:b0:a99:f0cf:f571 with SMTP id a640c23a62f3a-a9de5f6ddb5mr3756022266b.33.1730881193710;
        Wed, 06 Nov 2024 00:19:53 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:19:53 -0800 (PST)
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
Subject: [PATCH 18/31] ASoC: sh: rz-ssi: Add runtime PM support
Date: Wed,  6 Nov 2024 10:18:13 +0200
Message-Id: <20241106081826.1211088-19-claudiu.beznea.uj@bp.renesas.com>
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

Add runtime PM support to the ssi driver. This assert/de-assert the
reset lines on runtime suspend/resume. Along with it the de-assertion of
the reset line from probe function was removed as it is not necessary
anymore.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 sound/soc/renesas/rz-ssi.c | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index be96376dcd0f..16bca493a254 100644
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


