Return-Path: <devicetree+bounces-127954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 967139E6CE0
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 357A1167744
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CDD91FCF4A;
	Fri,  6 Dec 2024 11:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Tpf7fTGG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE24A1FCFC5
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483641; cv=none; b=nv5SxvcLEafaDIxWFjVvyk4WlMgXWQDjDqguPC+rz3+JGCS7Xc5m5upgm+V0/g6hn2YcAY34B6Sa3zxtSbqJEAvk5h6RZZD6743+DVnXdJiPKhCGNwY9yfAZXR1+E8nH3k+WXxD9QK9FZUe06McBQiNjJqzOeu563A8O9+aAmqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483641; c=relaxed/simple;
	bh=SIi46sAJ3akHceZIRoH2XmfFqxFkyS3eT+KqHD6fe7k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gkm7B6hwXv5zXttNoMJ9/5sjOl7RuLfx74KvY5voVzfwewxk8WiL7yQJxDExqmHukM4xrmHlm6kfAc31fwxGWZEg1cApyDIa+ubyF+Y2aZFXMnvLTEzJh4xZdzgbAGCQtSbnVTaBHocS0RuS6jPzmpemAjjtOqG0Gb96N5o7OWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Tpf7fTGG; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa543c4db92so385751566b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483637; x=1734088437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r3NK3+VvNXvn4/X99VXMNRx8LERvbPVlsDcIxAPbW7c=;
        b=Tpf7fTGGqWRvvVKmxhqZPhxTHemi3z83lVgludb3y7timQBHx47S1IFFBreNwj8a+/
         hw3hJ4Fk8wtWmIhzg23F6roQOzgpFQKBPldF2BJ4LGVWMpYkwWY3sOy/pe5yfmrZq9Q1
         cpJtjp/fyCa9TZsRgm1oLmLdL1ve/mDRycnBifJDdc25pdsPwyWfJFCKewHMI0BDVdxj
         wjiMZIW5E3u0p/J1pcRYD84XwRr8H4awCv1nl0mTkr6pa1PVJ0EG+U0aIl8r3X66V9fc
         +B1+oPJBfY9viAL65b7No+0gswkJj2RYF4kKzoClpb5oYtGn1wjPtvpwaJN1ASkoJSYA
         2Ngw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483637; x=1734088437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r3NK3+VvNXvn4/X99VXMNRx8LERvbPVlsDcIxAPbW7c=;
        b=YYIxpI7zuN6ODnLRMPmDzeTeSdPVJBwLXLNvkleV8OGcfxHNma1HreSpdEa5e4FTVx
         QWLBQmJLfASBm3qfvMMV9MRWmTdqq7LXdQw5vR7DQw5xHbV6QjCWEWaxJSYKUI4Jlkgg
         66KQmTdevX1m3kwoT1iUsGADaJ70ezdjKAV0O/lYlk/xe+v4jqtZOMsD3mMCdLa1xy32
         +Z+UhNMyCVfOgakx55na01ZSeiH+ugEtoLzoTVqYAfdQ6dVx/dmBlVi25DQ6f/SdGRoZ
         rIJu4qqKTTLaKTOYTAdzb1nhX7fFxR3tVdyy/YxioUX2rVkl6YxAVg2/QSB08vh7lpB8
         G8Gw==
X-Forwarded-Encrypted: i=1; AJvYcCVDmfESDWWn/Pd8X5ONUj2hmPIAbyh1IhfEMHPJNGc9qhVzYYYteFfiwUmUzH7PcSsmwHvVLgMDHKB1@vger.kernel.org
X-Gm-Message-State: AOJu0YwY0U4QccQ/77NCqxg6XFpYTgwymzZupnRjrxKgT+NcGD/cU/UQ
	KiEfWA6CaJ/mtHeY5V+2pP/dPE+IvsTEWSAVsPurjK3u9rpa0Lo2dfBShE+P4LI=
X-Gm-Gg: ASbGncvOA3NVMpDgKMnVyr9+wmkux/UZktdfmRRoDHKdX39nAmZmCnqCwaSxNqdfx8E
	J5DCrK/ssf/aSrsHgkadI+DowjDnwFGuqOb+KwiDp7zFX7RgxLKH/Pr4NnYb1oenFWgzNVhfIUc
	fq/XRZosz/DibH0PC5GJR+jeJZ8Uhhj5OotE/Jw/XZDd6HtffADs161KyOUwJJ9j9RLuRzVH4Xi
	rIkCrdrRVC8kLLx2OMuC5RSJJYwRq/XDg7tO73qQovISkDKDuQUwcx6uIWZ/bC9qPxktK/BGyKh
	UgqS
X-Google-Smtp-Source: AGHT+IG5ns28LlIO5EKzt3jy9KG0NXWjALwAdfE48ssUd8bpZB71xSWH7xVctc2Y/hSvsPovXL1IRQ==
X-Received: by 2002:a17:906:3292:b0:aa6:4494:e354 with SMTP id a640c23a62f3a-aa64494e742mr62432466b.42.1733483637032;
        Fri, 06 Dec 2024 03:13:57 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:13:56 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-iio@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 02/15] iio: adc: rzg2l_adc: Convert dev_err() to dev_err_probe()
Date: Fri,  6 Dec 2024 13:13:24 +0200
Message-Id: <20241206111337.726244-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Convert all occurrences of dev_err() in the probe path to dev_err_probe().
This improves readability and simplifies the code.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none, this patch is new

 drivers/iio/adc/rzg2l_adc.c | 64 +++++++++++++------------------------
 1 file changed, 22 insertions(+), 42 deletions(-)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index cd3a7e46ea53..8a804f81c04b 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -313,15 +313,11 @@ static int rzg2l_adc_parse_properties(struct platform_device *pdev, struct rzg2l
 		return -ENOMEM;
 
 	num_channels = device_get_child_node_count(&pdev->dev);
-	if (!num_channels) {
-		dev_err(&pdev->dev, "no channel children\n");
-		return -ENODEV;
-	}
+	if (!num_channels)
+		return dev_err_probe(&pdev->dev, -ENODEV, "no channel children\n");
 
-	if (num_channels > RZG2L_ADC_MAX_CHANNELS) {
-		dev_err(&pdev->dev, "num of channel children out of range\n");
-		return -EINVAL;
-	}
+	if (num_channels > RZG2L_ADC_MAX_CHANNELS)
+		return dev_err_probe(&pdev->dev, -EINVAL, "num of channel children out of range\n");
 
 	chan_array = devm_kcalloc(&pdev->dev, num_channels, sizeof(*chan_array),
 				  GFP_KERNEL);
@@ -445,62 +441,46 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
 		return PTR_ERR(adc->base);
 
 	adc->pclk = devm_clk_get(dev, "pclk");
-	if (IS_ERR(adc->pclk)) {
-		dev_err(dev, "Failed to get pclk");
-		return PTR_ERR(adc->pclk);
-	}
+	if (IS_ERR(adc->pclk))
+		return dev_err_probe(dev, PTR_ERR(adc->pclk), "Failed to get pclk");
 
 	adc->adclk = devm_clk_get(dev, "adclk");
-	if (IS_ERR(adc->adclk)) {
-		dev_err(dev, "Failed to get adclk");
-		return PTR_ERR(adc->adclk);
-	}
+	if (IS_ERR(adc->adclk))
+		return dev_err_probe(dev, PTR_ERR(adc->adclk), "Failed to get adclk");
 
 	adc->adrstn = devm_reset_control_get_exclusive(dev, "adrst-n");
-	if (IS_ERR(adc->adrstn)) {
-		dev_err(dev, "failed to get adrstn\n");
-		return PTR_ERR(adc->adrstn);
-	}
+	if (IS_ERR(adc->adrstn))
+		return dev_err_probe(dev, PTR_ERR(adc->adrstn), "failed to get adrstn\n");
 
 	adc->presetn = devm_reset_control_get_exclusive(dev, "presetn");
-	if (IS_ERR(adc->presetn)) {
-		dev_err(dev, "failed to get presetn\n");
-		return PTR_ERR(adc->presetn);
-	}
+	if (IS_ERR(adc->presetn))
+		return dev_err_probe(dev, PTR_ERR(adc->presetn), "failed to get presetn\n");
 
 	ret = reset_control_deassert(adc->adrstn);
-	if (ret) {
-		dev_err(&pdev->dev, "failed to deassert adrstn pin, %d\n", ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret, "failed to deassert adrstn pin, %d\n", ret);
 
 	ret = devm_add_action_or_reset(&pdev->dev,
 				       rzg2l_adc_reset_assert, adc->adrstn);
 	if (ret) {
-		dev_err(&pdev->dev, "failed to register adrstn assert devm action, %d\n",
-			ret);
-		return ret;
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to register adrstn assert devm action, %d\n", ret);
 	}
 
 	ret = reset_control_deassert(adc->presetn);
-	if (ret) {
-		dev_err(&pdev->dev, "failed to deassert presetn pin, %d\n", ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret, "failed to deassert presetn pin, %d\n", ret);
 
 	ret = devm_add_action_or_reset(&pdev->dev,
 				       rzg2l_adc_reset_assert, adc->presetn);
 	if (ret) {
-		dev_err(&pdev->dev, "failed to register presetn assert devm action, %d\n",
-			ret);
-		return ret;
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to register presetn assert devm action, %d\n", ret);
 	}
 
 	ret = rzg2l_adc_hw_init(adc);
-	if (ret) {
-		dev_err(&pdev->dev, "failed to initialize ADC HW, %d\n", ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret, "failed to initialize ADC HW, %d\n", ret);
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
-- 
2.39.2


