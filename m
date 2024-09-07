Return-Path: <devicetree+bounces-101019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C785497006C
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 08:51:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2CFB1C20A6E
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 06:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3031547C9;
	Sat,  7 Sep 2024 06:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EeRVgSeC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1EF14A4F0
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 06:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725691858; cv=none; b=QqG74nZQOufz5WrVHZ7v+zJpHw3mGPNY/ClzH9WgI0UN2CzJ+LMeMv0ivYkNTwtkuqmXOvrNjYb8ZArI8UVbcKw2tUbSxZ7u9xzTCO6CBYOuLpP+8AU4Fs7KO03J1gfhi6jkRgxgdr/2OHUJy3i3pUCQcnRwoK/vjVOXb9HUI48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725691858; c=relaxed/simple;
	bh=upn2kbj2uSiQQ0mLh63/viN7iiey7yEDDGSNyPdk+iA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ooPuca/PU/DDnLwUZLUj7D2NCUQHRjf2UYSeoFz1R93zoTjwC/zLbKpIf3c8dnYunLEOvRmLsgkP26vc5LvE1N0nu3yzp/gC0kV/VNct/KFMh9zGyJO91xPGFjgDeoxszagQT6w5xMF3tphN/aYoRabwch/1IisyQ4UD8jhROc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EeRVgSeC; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a8a7cdfdd80so56094466b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 23:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725691855; x=1726296655; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zk+bvTvfw/Rnr5cxB/BtoOVKrkN1O+3CMaqpAJ2Bql0=;
        b=EeRVgSeC6rjCGfVbzc6kmT3i9+TfFJuBszDX+3NyjsAbvwiKctLiWNHs+4TyS7VdTQ
         KtZf28jczsKG0FQc0PtTS0+vbleY4x1Zi0cOs1ckjivimk4/aLFwgsLCje6VaUnwLQTX
         zk5D4nNVuCB1Pxehg6Q0oB+zcM89nCS9yml4AJpbc5g9va5dvRxkOOadhBAlBL/7LMPb
         fAwniAbMiEjlwhURB2hjnWItbH+JKgo3zN63NxgDvICq2dARiCWEr88dlZ9BMyIRvxln
         xkVmbt9PYAY1gWWoTzYsrCf2aYlqCUjZ+fAgvuvTYNhxycZ4BObwo3eGJZnuS3rwg8dd
         MChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725691855; x=1726296655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zk+bvTvfw/Rnr5cxB/BtoOVKrkN1O+3CMaqpAJ2Bql0=;
        b=f1Xs8w2NpTHPQSMVWuaXDuNlfaZWfGyQ81Tyg0oKgsuzNpWG0aWMlw1mUgK5WscWpJ
         Vq0fq7KjnFHzNFSee96qmSlvXVC0kIOujoBVOiw6Ob15vUr1vJSusMPNbnA0+TFpo1ss
         SKI4KfjPdziRCVbUsRpf3VYm/1deXMLIbpEg1n4umtEsjXam8pusNLuFaJwZMNGPw9IE
         sGQ7nZWE1giiH8jAjY4BApIi3FFAHZwtWyFTJXpqkKC8uuzbLIGdXsEjJWxC4IchRmDf
         Dsr/ZEqQfEoq4b1/k1znIuwQZ6xF3RePQ8MEuNZhiXuLDmedQlOB6vYJnEwLsTYl79du
         c8Dg==
X-Forwarded-Encrypted: i=1; AJvYcCU4hpRG7tMaLh2EcddoRcG5UDzP8VN6fCtmtZ/zBjWYXjks45YWuKSCpLVE83Bpi5VKcezgYQEeiFXg@vger.kernel.org
X-Gm-Message-State: AOJu0YzaA/Dts+PdvAjDpD9yj8JfFvUUN69YNrP+TZC1lGUolOWSStQi
	tyqqRL7SilMGfTG9qbaDnB7q/PbW+EsrYRq0Xs8UCGqy6WFkcjHl3fp87pMHR5M=
X-Google-Smtp-Source: AGHT+IHFHrh/1Zp+2+jx9LNCihhk323IDLbTIeCG9ZU0+CmNaKrot4eRu64BfYQoQiyCyAXrmfauRw==
X-Received: by 2002:a17:906:da85:b0:a7a:9f0f:ab2c with SMTP id a640c23a62f3a-a8a8866090amr444973666b.29.1725691855268;
        Fri, 06 Sep 2024 23:50:55 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25835a76sm36539266b.39.2024.09.06.23.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 23:50:54 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v5 4/9] iio: adc: ad7606: split a 'ad7606_sw_mode_setup()' from probe
Date: Sat,  7 Sep 2024 09:50:37 +0300
Message-ID: <20240907065043.771364-5-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240907065043.771364-1-aardelean@baylibre.com>
References: <20240907065043.771364-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This change moves the logic for setting up SW mode (during probe) into it's
own function.

With the addition of some newer parts, the SW-mode part can get a little
more complicated.
So it's a bit better to have a separate function for this.

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 43 ++++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 17 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index fec728f5b3e9..5d92463abf8c 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -521,6 +521,29 @@ static const struct iio_trigger_ops ad7606_trigger_ops = {
 	.validate_device = iio_trigger_validate_own_device,
 };
 
+static int ad7606_sw_mode_setup(struct iio_dev *indio_dev)
+{
+	struct ad7606_state *st = iio_priv(indio_dev);
+
+	if (!st->bops->sw_mode_config)
+		return 0;
+
+	st->sw_mode_en = device_property_present(st->dev, "adi,sw-mode");
+	if (!st->sw_mode_en)
+		return 0;
+
+	indio_dev->info = &ad7606_info_os_range_and_debug;
+
+	/* Scale of 0.076293 is only available in sw mode */
+	st->scale_avail = ad7616_sw_scale_avail;
+	st->num_scales = ARRAY_SIZE(ad7616_sw_scale_avail);
+
+	/* After reset, in software mode, ±10 V is set by default */
+	memset32(st->range, 2, ARRAY_SIZE(st->range));
+
+	return st->bops->sw_mode_config(indio_dev);
+}
+
 int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 		 const char *name, unsigned int id,
 		 const struct ad7606_bus_ops *bops)
@@ -593,23 +616,9 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 	st->write_scale = ad7606_write_scale_hw;
 	st->write_os = ad7606_write_os_hw;
 
-	if (st->bops->sw_mode_config)
-		st->sw_mode_en = device_property_present(st->dev,
-							 "adi,sw-mode");
-
-	if (st->sw_mode_en) {
-		/* Scale of 0.076293 is only available in sw mode */
-		st->scale_avail = ad7616_sw_scale_avail;
-		st->num_scales = ARRAY_SIZE(ad7616_sw_scale_avail);
-
-		/* After reset, in software mode, ±10 V is set by default */
-		memset32(st->range, 2, ARRAY_SIZE(st->range));
-		indio_dev->info = &ad7606_info_os_range_and_debug;
-
-		ret = st->bops->sw_mode_config(indio_dev);
-		if (ret < 0)
-			return ret;
-	}
+	ret = ad7606_sw_mode_setup(indio_dev);
+	if (ret)
+		return ret;
 
 	st->trig = devm_iio_trigger_alloc(dev, "%s-dev%d",
 					  indio_dev->name,
-- 
2.46.0


