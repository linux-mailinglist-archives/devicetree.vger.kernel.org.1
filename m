Return-Path: <devicetree+bounces-127957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3089E6CEB
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 222E628264F
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C275200B86;
	Fri,  6 Dec 2024 11:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="In2/7Xdf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65626200114
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483646; cv=none; b=GwVA4NZn+lP6h2G6gGHQLV8VwaP6b1rbKr5gfSs8gg42kCIewepFmudT6RYPFdUC/n9TNMzVUjKeysmvO4xm++z3kWCYKkuFqT6/h1o49Y+86PnC397IlzldyiMq4gqZE5+RYSrarsosAWDW90anxK6K9ZtlwEFb/NwlehvMaEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483646; c=relaxed/simple;
	bh=Dwmv4o74khoBQdkptuvQ4q7nGic6CB59TAj8g4R5I2A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kuA0Vr/rjxNqZN7x6yVNdALycgBsQYckK31UW0+YqcOSQHAdtOKelBO47A593WqXCRQxU8OZgycvGBWI4JM9qBP7hEPd5SHIFZCJZyAgggrPQQz7OquJU9LtlOtN1DTqCoVLz5YtSPnZHBUtjb1bCgRyN/w120YWp4Tvx7yMiaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=In2/7Xdf; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa63dbda904so107698366b.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483643; x=1734088443; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MNUU76506eldJbwNztMYjCQxf0w88SMXCYz1DW5xFro=;
        b=In2/7XdfuJQ+VvilHhtkD7O+e9S05Cfhzi+R9SmGf/eoYLhLxcRfqJ9RKkZG8CNXnB
         Jbql9fJNzGnWpQlCbPvbLy/tp3Vvk3L+vUBAqRb036S88aluvlxP3qTYTVTxghQuyziZ
         gHJnbYsb2Mk4II6juQZ+pgwZO2LH70WG5lIwUmoCGOpLo2pSqr4j8zrvpToNRb8E8hC/
         It8F/dCDIP5mqhtkjQoqCGlYb8nY1Sqljddtk/PMwoWnpEdBPO5kKVWCkpVtSZxvhMf0
         FBbJQPanKxlJmrvSKE6knIj3C21w5yH61mz+Ld+YUTUTmGGIztH9Xn8mpjmDccbencqa
         /1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483643; x=1734088443;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MNUU76506eldJbwNztMYjCQxf0w88SMXCYz1DW5xFro=;
        b=AvhNC0MGvZ7++S2NpPulkJVLfKSAElTqAkZlsn2lD4nl3VFVCxdS2zsCyQiDuxPnq0
         ahBvhBpbWRhDLVGJbrmZWSY5Fs64ftCkFs+D8jxm3gT44zEZ6JBqGDcN42NrVdvnVs9J
         JJcnzNqBJn6+e9v+VjyskcOkDfNTDewcNxd3swZYd1etRBvyKSrLLUkM49+b5/OUTSqE
         cEt2n6Cq7l6zRWCs1KVnPYmBids3oA0tUm5QcwHak+ojotgsHh0cEQGC1qWzeyUkOeXG
         MJtTwXAfJWlFtxLcDf+CKxp4XC8zoZEsi1aS5NCskheFOArqOjX3l1CXUlkPAKCN4hQa
         /4xA==
X-Forwarded-Encrypted: i=1; AJvYcCVwId5qO01smeuIOTyPbKMu4YgTKhx85EtSMBBB1U48qzxsRq5UXJNVxJNrOOCJYTEofz/nvOjgyCbb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx0BvlFEBh2YzmuxuQa3bFBeU+VWDV5XK+EGEUXlMf27pOWE2d
	pEWbBCrcOLcNIYTyL+7C2UvCQG4s1NuP2xRW18gIV0rCX0sHQuctIWstSOdgS+s=
X-Gm-Gg: ASbGnctqT5fIAxUiAKF5PSlQxPD8Gfn/G+1ckhxOMITBjQtv+aUmuD4R4mkdhUbysIz
	oIe5X2D1ZteZXLPnutFT2uaJzSfM3tK2JDFb+Vwgc2wdUM5oI0PW4/HrUlzIHQva0HK1yvGBz2v
	Q9nN/TRFr1YFu2psVpWrG8DEJZlNcuCtrKEF0OtTUiUTk+HFZgLTntjKs0Au7UvnCO8ZrANjkCr
	Gv9gAaPSsK7urT6EJy3uUlVe7Es3Ky/poJaTDjTOCjIL96CHOk92HJ43UFVFtcxWO08ztwpAfQ3
	Frgy
X-Google-Smtp-Source: AGHT+IH6Yt9ImiRFWWuZjkCgbEGYygXRPHwjAYhKDD1eg/rWy5S/tL1CQg/zDPDowgi1wK/HCr+qTA==
X-Received: by 2002:a17:907:75d8:b0:aa6:2867:4dc5 with SMTP id a640c23a62f3a-aa63a285650mr203661266b.49.1733483642631;
        Fri, 06 Dec 2024 03:14:02 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:14:02 -0800 (PST)
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
Subject: [PATCH v2 05/15] iio: adc: rzg2l_adc: Switch to RUNTIME_PM_OPS() and pm_ptr()
Date: Fri,  6 Dec 2024 13:13:27 +0200
Message-Id: <20241206111337.726244-6-claudiu.beznea.uj@bp.renesas.com>
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

The use of SET_RUNTIME_PM_OPS() is now deprecated and requires
__maybe_unused annotations to avoid warnings about unused functions.
Switching to RUNTIME_PM_OPS() and pm_ptr() eliminates the need for such
annotations because the compiler can directly reference the runtime PM
functions, thereby suppressing the warnings. As a result, the
__maybe_unused markings can be removed.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 drivers/iio/adc/rzg2l_adc.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index 780cb927eab1..482da6dcf174 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -454,7 +454,7 @@ static const struct of_device_id rzg2l_adc_match[] = {
 };
 MODULE_DEVICE_TABLE(of, rzg2l_adc_match);
 
-static int __maybe_unused rzg2l_adc_pm_runtime_suspend(struct device *dev)
+static int rzg2l_adc_pm_runtime_suspend(struct device *dev)
 {
 	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct rzg2l_adc *adc = iio_priv(indio_dev);
@@ -464,7 +464,7 @@ static int __maybe_unused rzg2l_adc_pm_runtime_suspend(struct device *dev)
 	return 0;
 }
 
-static int __maybe_unused rzg2l_adc_pm_runtime_resume(struct device *dev)
+static int rzg2l_adc_pm_runtime_resume(struct device *dev)
 {
 	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct rzg2l_adc *adc = iio_priv(indio_dev);
@@ -475,9 +475,7 @@ static int __maybe_unused rzg2l_adc_pm_runtime_resume(struct device *dev)
 }
 
 static const struct dev_pm_ops rzg2l_adc_pm_ops = {
-	SET_RUNTIME_PM_OPS(rzg2l_adc_pm_runtime_suspend,
-			   rzg2l_adc_pm_runtime_resume,
-			   NULL)
+	RUNTIME_PM_OPS(rzg2l_adc_pm_runtime_suspend, rzg2l_adc_pm_runtime_resume, NULL)
 };
 
 static struct platform_driver rzg2l_adc_driver = {
@@ -485,7 +483,7 @@ static struct platform_driver rzg2l_adc_driver = {
 	.driver		= {
 		.name		= DRIVER_NAME,
 		.of_match_table = rzg2l_adc_match,
-		.pm		= &rzg2l_adc_pm_ops,
+		.pm		= pm_ptr(&rzg2l_adc_pm_ops),
 	},
 };
 
-- 
2.39.2


