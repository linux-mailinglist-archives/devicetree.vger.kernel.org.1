Return-Path: <devicetree+bounces-84988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BB492E777
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 13:52:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 746ED1F2436C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 11:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B261515B137;
	Thu, 11 Jul 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="cOU4GvdU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4C315A868
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 11:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720698743; cv=none; b=V+CIi1/zOHSPm7LFngI8/OC6plTQ3NA1aYfdUWcBhzYF95gc9EAtgr1OlGAVliK1XPKHs6WzayZf5dmKa8a8vfRvjZ06EUqard73F6WKHPZXY90ReYN1o5vw6D8i1v5wG7MPPqJteCDxuSf0MEkb5Xh/AxDhMMk2Y0lyFH71KOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720698743; c=relaxed/simple;
	bh=4/8laDCZCwWFkc55ouE/GKAFhC3Dm2EGZfE+N8yJvwI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PnctPOfJqKSHPCC9tWDzulMMewN2bAwYx2n/mjkTyd913SGpfAe26AZfYqfQhk04Np+vjU0QdMsoY8Txrzvz3T4oZJMkvpJh73zPaAp8WoV+pv9NPhcKKbb7L84ok4/ItlBGDC6I1V5qJd0WOOP+bioe8pX41oCsa9apM6mgTEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=cOU4GvdU; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-367963ea053so517197f8f.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 04:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720698740; x=1721303540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6LxcUvQiXjcv0LfFKPGnybRUGvVKVZzLE6knP0XxWVg=;
        b=cOU4GvdUNW4+Nb0QeHb3o1koV0KiEzNFPt/CZUPn3pbtQiDO8h+y2s2xAnZeC4iPjh
         XL7rimYv992w/60KzUPTvnEXgbbS79wonlF8nNaNNGVF0fsK+mySgR6hEj1TSZ/BwD8m
         oDJsAheBYQIYvhyp3ZpeCddYGBKFIgrds2lt91DFrZhVbHh/ik1mc8jk6TBvcW1EQrwQ
         6yZE3SAjObllpZUy7bSPBeYbD3IJHLtCiE/oJ8XdtQ1vfJjRu/yiX5JxEWYGLTy4SIOk
         Ob0AboQkk/WM1oNqqO+hyk0L3N0DOQ/PPJtY5LrUUE5KJZixaCyfjC+dXw4agSSrUQ7w
         bbNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720698740; x=1721303540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6LxcUvQiXjcv0LfFKPGnybRUGvVKVZzLE6knP0XxWVg=;
        b=iM4Ni2LvSiF+sGSx85E2zhKgHFeo31iofW4va9hQGHXD6bY8Xt/3HUTvcsHNsJax/u
         0489ywS4IN/Seo25OIHSUNm3WWL80lQuhTTH/CidumUjL6YtOU28Zawlm4jT4hfPBFW4
         JsdBiDRS8XRrUhNl2wR/yCjOrVufuMsUQXuhfh+A37156Ua/uQdKrPMOz2S72nlL7YtM
         VgJVtHQX44uz113zwSRYsZF/AVCclCP/tAFmMOG5YN8/1eYT1iF/i8PmdbOQjYHiZouc
         7By3Xj3RaRpRDeuI9ZKC3uUm3XwEMtTWd+ZPsZLqUG0CkmGu74TVHz/awPcr2k1FYyXE
         8FzQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5JgluZtacQ/KXW7guk1kIjiDMsecQ6ZKXy1JlT/tYh2z1/KFOz6EFXha6saTYTPADHfm3l+VODuvpAgxC8BvsLStBpEYIXV7D8g==
X-Gm-Message-State: AOJu0YyS2wRvLD4lnfgkmng2V8ozWDjUgI9k71BBMRV7XL2wMHh3rUd/
	LCVuqGfmlmDM74kwd5n9C6WmR0NLywOmP/fSfPegAKwJ2+bvxoofdIeVL12wGWQ=
X-Google-Smtp-Source: AGHT+IHq2L+7/TwlM++ghXVKIQ6okXHiosxk1PO8ayrR3E/n1Xhy3g7djhdAaqlqnWHbkZxXbMo4oA==
X-Received: by 2002:a5d:4c4e:0:b0:367:8a2f:a6db with SMTP id ffacd0b85a97d-367ceadc786mr6276256f8f.58.1720698740293;
        Thu, 11 Jul 2024 04:52:20 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde891cesm7615728f8f.62.2024.07.11.04.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 04:52:19 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 01/11] i2c: riic: Use temporary variable for struct device
Date: Thu, 11 Jul 2024 14:51:57 +0300
Message-Id: <20240711115207.2843133-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- dropped updates around &riic->adapter.dev introduced in v2; with
  this restored commit description from v1

Changes in v2:
- updated commit description to reflect all the changes done

 drivers/i2c/busses/i2c-riic.c | 49 +++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 23 deletions(-)

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index f608b1838cad..c742ab6106b9 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -131,11 +131,12 @@ static inline void riic_clear_set_bit(struct riic_dev *riic, u8 clear, u8 set, u
 static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 {
 	struct riic_dev *riic = i2c_get_adapdata(adap);
+	struct device *dev = adap->dev.parent;
 	unsigned long time_left;
 	int i;
 	u8 start_bit;
 
-	pm_runtime_get_sync(adap->dev.parent);
+	pm_runtime_get_sync(dev);
 
 	if (riic_readb(riic, RIIC_ICCR2) & ICCR2_BBSY) {
 		riic->err = -EBUSY;
@@ -168,7 +169,7 @@ static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
 	}
 
  out:
-	pm_runtime_put(adap->dev.parent);
+	pm_runtime_put(dev);
 
 	return riic->err ?: num;
 }
@@ -303,8 +304,9 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 	int ret = 0;
 	unsigned long rate;
 	int total_ticks, cks, brl, brh;
+	struct device *dev = riic->adapter.dev.parent;
 
-	pm_runtime_get_sync(riic->adapter.dev.parent);
+	pm_runtime_get_sync(dev);
 
 	if (t->bus_freq_hz > I2C_MAX_FAST_MODE_FREQ) {
 		dev_err(&riic->adapter.dev,
@@ -396,7 +398,7 @@ static int riic_init_hw(struct riic_dev *riic, struct i2c_timings *t)
 	riic_clear_set_bit(riic, ICCR1_IICRST, 0, RIIC_ICCR1);
 
 out:
-	pm_runtime_put(riic->adapter.dev.parent);
+	pm_runtime_put(dev);
 	return ret;
 }
 
@@ -415,13 +417,14 @@ static void riic_reset_control_assert(void *data)
 
 static int riic_i2c_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct riic_dev *riic;
 	struct i2c_adapter *adap;
 	struct i2c_timings i2c_t;
 	struct reset_control *rstc;
 	int i, ret;
 
-	riic = devm_kzalloc(&pdev->dev, sizeof(*riic), GFP_KERNEL);
+	riic = devm_kzalloc(dev, sizeof(*riic), GFP_KERNEL);
 	if (!riic)
 		return -ENOMEM;
 
@@ -429,22 +432,22 @@ static int riic_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(riic->base))
 		return PTR_ERR(riic->base);
 
-	riic->clk = devm_clk_get(&pdev->dev, NULL);
+	riic->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(riic->clk)) {
-		dev_err(&pdev->dev, "missing controller clock");
+		dev_err(dev, "missing controller clock");
 		return PTR_ERR(riic->clk);
 	}
 
-	rstc = devm_reset_control_get_optional_exclusive(&pdev->dev, NULL);
+	rstc = devm_reset_control_get_optional_exclusive(dev, NULL);
 	if (IS_ERR(rstc))
-		return dev_err_probe(&pdev->dev, PTR_ERR(rstc),
+		return dev_err_probe(dev, PTR_ERR(rstc),
 				     "Error: missing reset ctrl\n");
 
 	ret = reset_control_deassert(rstc);
 	if (ret)
 		return ret;
 
-	ret = devm_add_action_or_reset(&pdev->dev, riic_reset_control_assert, rstc);
+	ret = devm_add_action_or_reset(dev, riic_reset_control_assert, rstc);
 	if (ret)
 		return ret;
 
@@ -453,29 +456,29 @@ static int riic_i2c_probe(struct platform_device *pdev)
 		if (ret < 0)
 			return ret;
 
-		ret = devm_request_irq(&pdev->dev, ret, riic_irqs[i].isr,
+		ret = devm_request_irq(dev, ret, riic_irqs[i].isr,
 				       0, riic_irqs[i].name, riic);
 		if (ret) {
-			dev_err(&pdev->dev, "failed to request irq %s\n", riic_irqs[i].name);
+			dev_err(dev, "failed to request irq %s\n", riic_irqs[i].name);
 			return ret;
 		}
 	}
 
-	riic->info = of_device_get_match_data(&pdev->dev);
+	riic->info = of_device_get_match_data(dev);
 
 	adap = &riic->adapter;
 	i2c_set_adapdata(adap, riic);
 	strscpy(adap->name, "Renesas RIIC adapter", sizeof(adap->name));
 	adap->owner = THIS_MODULE;
 	adap->algo = &riic_algo;
-	adap->dev.parent = &pdev->dev;
-	adap->dev.of_node = pdev->dev.of_node;
+	adap->dev.parent = dev;
+	adap->dev.of_node = dev->of_node;
 
 	init_completion(&riic->msg_done);
 
-	i2c_parse_fw_timings(&pdev->dev, &i2c_t, true);
+	i2c_parse_fw_timings(dev, &i2c_t, true);
 
-	pm_runtime_enable(&pdev->dev);
+	pm_runtime_enable(dev);
 
 	ret = riic_init_hw(riic, &i2c_t);
 	if (ret)
@@ -487,24 +490,24 @@ static int riic_i2c_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, riic);
 
-	dev_info(&pdev->dev, "registered with %dHz bus speed\n",
-		 i2c_t.bus_freq_hz);
+	dev_info(dev, "registered with %dHz bus speed\n", i2c_t.bus_freq_hz);
 	return 0;
 
 out:
-	pm_runtime_disable(&pdev->dev);
+	pm_runtime_disable(dev);
 	return ret;
 }
 
 static void riic_i2c_remove(struct platform_device *pdev)
 {
 	struct riic_dev *riic = platform_get_drvdata(pdev);
+	struct device *dev = &pdev->dev;
 
-	pm_runtime_get_sync(&pdev->dev);
+	pm_runtime_get_sync(dev);
 	riic_writeb(riic, 0, RIIC_ICIER);
-	pm_runtime_put(&pdev->dev);
+	pm_runtime_put(dev);
 	i2c_del_adapter(&riic->adapter);
-	pm_runtime_disable(&pdev->dev);
+	pm_runtime_disable(dev);
 }
 
 static const struct riic_of_data riic_rz_a_info = {
-- 
2.39.2


