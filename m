Return-Path: <devicetree+bounces-126545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC319E1A7E
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D24EA2838BC
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11F3E1E490B;
	Tue,  3 Dec 2024 11:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="HPpgfi2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D781E3799
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733224418; cv=none; b=I8i2SsmmdNJN6qom3yCcPSvq83VPD+shlZk4+LCiSBAUNiid9R93N8pOaQ7nA6OOc1z7aTdrkda+GxwWLJF8DonPHl+HIlJ37B5i1QmHQ3TRU7ww8NZE+Gz7mKMRLdOuYNukU5oKMIz2A9smnQToZNFW3paMOm8uJRtuReWnEA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733224418; c=relaxed/simple;
	bh=ff34cQFPgG3xPGj+0bvlWg/J2lBiYjm/GyMhI0szKWA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bWnkb3Kz9gSzCZ8xkEC/0wWDg9eVWMrkngjYpTZeUVPFrNRoSyxQLRNxIvPIV/iBr144dMTLBbB+zoCYnSPTQ2ElTqHdpzLxZP6GCCIGJdydo3cDJaorP+d9qVAvUXHTvY8GIahphm9juT7zO3oBeSd3l2J0C7IRY8aMv5yS7ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=HPpgfi2L; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-385dece873cso2073544f8f.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733224415; x=1733829215; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tpsUCVbg51wgZ+ljmc9sIjByzc7EQ21C5U8Di0xfO6M=;
        b=HPpgfi2Lj4nvdW+jiF3V2WGOw6DDfambGucJKXzTI96kfvdvAostI/XZOLwDsqtY5o
         v5Q0DKLPBlL2q97tUAtBiOrwqrRutZOTLoUflBp3TiDSfJ9ru0AHKyHnqyUW8RG4+8Gm
         HwI7tUmWZPLudGh+sTf+P4bF8ogz6D8Wwvv/r82TY/tVVixi+F4GZWM/PtZtMa7n7zc7
         pwOjWHNaR8dWWB0CIlWXD4/7OxIuLN7rdywkhpJRbWCPKsjnnAJy+EU1GQOq48ooMB88
         4vuyKtq6qxZed6phqs9h5CU/UGYnkLOVlwsjt8GsH9JQd6r4vALFpE48K0vyWz1jdJug
         u9ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733224415; x=1733829215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tpsUCVbg51wgZ+ljmc9sIjByzc7EQ21C5U8Di0xfO6M=;
        b=DHto9FFCdR++wrXOo1sYpv5sJh0B70PTq+MSPAYGRmSvf2DCQVvvb7W6yP1UsHemZ6
         Qp+ML+mJV9NxPNFkpVokI0328c2h6K9Za0AOgK/gI97cALLOn3W/+9nThOi1eISjBJ3a
         kkNqY/oFYJEkxUnuy6F0WYqQgcY00IudF+yR0qQskPl81RAqE9xWMjeu10Du6RYutf9f
         ND89XJLqwZznz1lpWS/+nAcfRhtR/wisrSFF8cVsqld3PrFxsm2Q1652SPBr2KHsww8M
         EowSBZOgqajz5LwKyLCHEPIC/LdGdZ8XTMUa2TIob6tUVfTsYtRrTDkCs8oGH4NCyWkh
         ElgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGzlG+8/OMrqDuJ3z6oTDuLhW2bDhV8Lx9UVrOVmSPSS6xpIxHwzfwb7wYuUEJiLBcKebzTYOPSFPd@vger.kernel.org
X-Gm-Message-State: AOJu0YwNIR1QTOsE7EyPh8srnSsXIwDDUG+E2rVP5JiUf/LeSdk5DOiO
	n3OgQUFjJBCh+m3PpiuaB0VKhrzwuVIVdlIyfraDfA+3miOKJQJOIkXB8UgN80I=
X-Gm-Gg: ASbGncurkSgOOGCtwvyBzVjCuAKTQPfyMjQrxn+GwCeM2qA66dklZETKILO4s9YbFPb
	gn03UmbrbVM39LwPCZm63nu8aC39MXD0Ig2nficopQHjJOjyhEe3IJWnB8hQdf/CzBdZe6NTscu
	p0Vi4BUj2nYYLR2xglOzfLSG9a0cUpywp5TUprKkvGtwmXQMnM/49eBXR5aDXssnxUewNaYoR8x
	u8XMogt0K7So9KnW859aTgP03j7+QL+HzD3YreaBi06yYPP2RHbCwbqUrj97veuJN3GVlo1gV3w
	zd6H
X-Google-Smtp-Source: AGHT+IHMg3Nkv4CHCpsOjSMzRZr8TqzGyHtSpdM+SvKAVByMGT347C2accU1yqJXA260QixDrRIIVQ==
X-Received: by 2002:a05:6000:1ac7:b0:385:f44a:a64 with SMTP id ffacd0b85a97d-385fd3d0816mr1770078f8f.24.1733224415144;
        Tue, 03 Dec 2024 03:13:35 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e0117069sm11794315f8f.60.2024.12.03.03.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:13:34 -0800 (PST)
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
Subject: [PATCH 03/14] iio: adc: rzg2l_adc: Simplify the runtime PM code
Date: Tue,  3 Dec 2024 13:13:03 +0200
Message-Id: <20241203111314.2420473-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

All Renesas SoCs using the rzg2l_adc driver manage ADC clocks through PM
domains. Calling pm_runtime_{resume_and_get, put_sync}() implicitly sets
the state of the clocks. As a result, the code in the rzg2l_adc driver that
explicitly manages ADC clocks can be removed, leading to simpler and
cleaner implementation.

Additionally, replace the use of rzg2l_adc_set_power() with direct PM
runtime API calls to further simplify and clean up the code.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/iio/adc/rzg2l_adc.c | 100 ++++++++----------------------------
 1 file changed, 20 insertions(+), 80 deletions(-)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index 7039949a7554..a17690ecbdc3 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -8,7 +8,6 @@
  */
 
 #include <linux/bitfield.h>
-#include <linux/clk.h>
 #include <linux/completion.h>
 #include <linux/delay.h>
 #include <linux/iio/iio.h>
@@ -69,8 +68,6 @@ struct rzg2l_adc_data {
 
 struct rzg2l_adc {
 	void __iomem *base;
-	struct clk *pclk;
-	struct clk *adclk;
 	struct reset_control *presetn;
 	struct reset_control *adrstn;
 	struct completion completion;
@@ -188,29 +185,18 @@ static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch)
 	return 0;
 }
 
-static int rzg2l_adc_set_power(struct iio_dev *indio_dev, bool on)
-{
-	struct device *dev = indio_dev->dev.parent;
-
-	if (on)
-		return pm_runtime_resume_and_get(dev);
-
-	return pm_runtime_put_sync(dev);
-}
-
 static int rzg2l_adc_conversion(struct iio_dev *indio_dev, struct rzg2l_adc *adc, u8 ch)
 {
+	struct device *dev = indio_dev->dev.parent;
 	int ret;
 
-	ret = rzg2l_adc_set_power(indio_dev, true);
+	ret = pm_runtime_resume_and_get(dev);
 	if (ret)
 		return ret;
 
 	ret = rzg2l_adc_conversion_setup(adc, ch);
-	if (ret) {
-		rzg2l_adc_set_power(indio_dev, false);
-		return ret;
-	}
+	if (ret)
+		goto rpm_put;
 
 	reinit_completion(&adc->completion);
 
@@ -219,12 +205,14 @@ static int rzg2l_adc_conversion(struct iio_dev *indio_dev, struct rzg2l_adc *adc
 	if (!wait_for_completion_timeout(&adc->completion, RZG2L_ADC_TIMEOUT)) {
 		rzg2l_adc_writel(adc, RZG2L_ADINT,
 				 rzg2l_adc_readl(adc, RZG2L_ADINT) & ~RZG2L_ADINT_INTEN_MASK);
-		rzg2l_adc_start_stop(adc, false);
-		rzg2l_adc_set_power(indio_dev, false);
-		return -ETIMEDOUT;
+		ret = -ETIMEDOUT;
 	}
 
-	return rzg2l_adc_set_power(indio_dev, false);
+	rzg2l_adc_start_stop(adc, false);
+
+rpm_put:
+	pm_runtime_put_sync(dev);
+	return ret;
 }
 
 static int rzg2l_adc_read_raw(struct iio_dev *indio_dev,
@@ -352,13 +340,13 @@ static int rzg2l_adc_parse_properties(struct platform_device *pdev, struct rzg2l
 	return 0;
 }
 
-static int rzg2l_adc_hw_init(struct rzg2l_adc *adc)
+static int rzg2l_adc_hw_init(struct device *dev, struct rzg2l_adc *adc)
 {
 	int timeout = 5;
 	u32 reg;
 	int ret;
 
-	ret = clk_prepare_enable(adc->pclk);
+	ret = pm_runtime_resume_and_get(dev);
 	if (ret)
 		return ret;
 
@@ -396,25 +384,10 @@ static int rzg2l_adc_hw_init(struct rzg2l_adc *adc)
 	rzg2l_adc_writel(adc, RZG2L_ADM(3), reg);
 
 exit_hw_init:
-	clk_disable_unprepare(adc->pclk);
-
+	pm_runtime_put_sync(dev);
 	return ret;
 }
 
-static void rzg2l_adc_pm_runtime_disable(void *data)
-{
-	struct device *dev = data;
-
-	pm_runtime_disable(dev->parent);
-}
-
-static void rzg2l_adc_pm_runtime_set_suspended(void *data)
-{
-	struct device *dev = data;
-
-	pm_runtime_set_suspended(dev->parent);
-}
-
 static int rzg2l_adc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -439,18 +412,6 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
 	if (IS_ERR(adc->base))
 		return PTR_ERR(adc->base);
 
-	adc->pclk = devm_clk_get(dev, "pclk");
-	if (IS_ERR(adc->pclk)) {
-		dev_err(dev, "Failed to get pclk");
-		return PTR_ERR(adc->pclk);
-	}
-
-	adc->adclk = devm_clk_get(dev, "adclk");
-	if (IS_ERR(adc->adclk)) {
-		dev_err(dev, "Failed to get adclk");
-		return PTR_ERR(adc->adclk);
-	}
-
 	adc->adrstn = devm_reset_control_get_exclusive_deasserted(dev, "adrst-n");
 	if (IS_ERR(adc->adrstn)) {
 		dev_err(dev, "failed to get adrstn\n");
@@ -463,7 +424,13 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
 		return PTR_ERR(adc->presetn);
 	}
 
-	ret = rzg2l_adc_hw_init(adc);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+
+	platform_set_drvdata(pdev, indio_dev);
+
+	ret = rzg2l_adc_hw_init(dev, adc);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to initialize ADC HW, %d\n", ret);
 		return ret;
@@ -480,26 +447,12 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
 
 	init_completion(&adc->completion);
 
-	platform_set_drvdata(pdev, indio_dev);
-
 	indio_dev->name = DRIVER_NAME;
 	indio_dev->info = &rzg2l_adc_iio_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = adc->data->channels;
 	indio_dev->num_channels = adc->data->num_channels;
 
-	pm_runtime_set_suspended(dev);
-	ret = devm_add_action_or_reset(&pdev->dev,
-				       rzg2l_adc_pm_runtime_set_suspended, &indio_dev->dev);
-	if (ret)
-		return ret;
-
-	pm_runtime_enable(dev);
-	ret = devm_add_action_or_reset(&pdev->dev,
-				       rzg2l_adc_pm_runtime_disable, &indio_dev->dev);
-	if (ret)
-		return ret;
-
 	return devm_iio_device_register(dev, indio_dev);
 }
 
@@ -515,8 +468,6 @@ static int __maybe_unused rzg2l_adc_pm_runtime_suspend(struct device *dev)
 	struct rzg2l_adc *adc = iio_priv(indio_dev);
 
 	rzg2l_adc_pwr(adc, false);
-	clk_disable_unprepare(adc->adclk);
-	clk_disable_unprepare(adc->pclk);
 
 	return 0;
 }
@@ -525,17 +476,6 @@ static int __maybe_unused rzg2l_adc_pm_runtime_resume(struct device *dev)
 {
 	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct rzg2l_adc *adc = iio_priv(indio_dev);
-	int ret;
-
-	ret = clk_prepare_enable(adc->pclk);
-	if (ret)
-		return ret;
-
-	ret = clk_prepare_enable(adc->adclk);
-	if (ret) {
-		clk_disable_unprepare(adc->pclk);
-		return ret;
-	}
 
 	rzg2l_adc_pwr(adc, true);
 
-- 
2.39.2


