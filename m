Return-Path: <devicetree+bounces-123487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF34C9D4A9F
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 11:18:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 28ADDB21CDB
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 10:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50F4D1D0F4D;
	Thu, 21 Nov 2024 10:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="V9f9Ww4t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415F61CD1F3
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 10:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732184312; cv=none; b=uP4mVo58yeupEBAvkPLAr6sRuUtjrJXqgMmSL9iJKEV24ug3eqRnSQsoC6j3cwP9B0fFYCPHWudQPCYk2cwMAo2O2WloKYraORLEYXP1a3EMDpOIq3GmWy7pQ36B1MoGBVLsNDfoloUzOzvXUxNxfW6ZKglySFU+zbfoxaFTPBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732184312; c=relaxed/simple;
	bh=2RdUP0opgSj121kEt066DF0V8khGTWZlShuPPaqbCi8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EzSToxqSkk54G0KCVA1sRguvwhU17a3koRPJYA+HfOezeDxy/yERslmyowtw/MrqmsHRxQ7cq430NyLBjoYOnMTWOphIF7bCFbF42WHMOTtbkU7EpVi/u7+mF6YsHmXwHZ8rjC0sAk81/vVNlKiE37eKWZhRWJ+xugoRwiElj4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=V9f9Ww4t; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-382588b7a5cso497419f8f.3
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 02:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732184308; x=1732789108; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NnR4UV0w6VSKY/f8yPux4iBG+LYvQ7mliatLzcIQdBM=;
        b=V9f9Ww4tyqz0n6oEURYAOXPqlup7oxzLucuhvRjX7zp8pg++J8yL+0m1GTFaovql9z
         pnn3q+m1b51pvbxWMx417U8Cex3FTpH/Wwm3TZm+LM+WD8wUfIb4dHPfn6V1Lbnt2woh
         DbaX+bmgzdjv1OH/DNKcUK0Q1ICwF0CMTvW+Lq8N3pOexhQ+Ge/uaAfStM8UiHfDHUvi
         8b9HzmgyHgcmUOTHrVs3Vo9x4jsQigvk6BvZXHKRTntZMK3xJpBq71W2f0HM/0JRETbi
         lo8ssBhimOLRDWKY6pLx7njwM6qbdP4I1aurmw/zXvhtMFP9+aJecXNbyDhBVoqEA95F
         pfdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732184308; x=1732789108;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NnR4UV0w6VSKY/f8yPux4iBG+LYvQ7mliatLzcIQdBM=;
        b=BpUa9/OycmsePSAnqgOe4FY3Kt2AAvj4ksBSeY15KR1g3TgQgKZaGEFtoKI918FVG1
         cnqTVSm/KSv8CAYxBzJ752LIS+/MWSJCXlHgsjD7fJ1AfmqkKjH2GryMRjCir3pOJwWm
         C583HaEVy81lMtNF1Qh4bHdXlX1abO3YNmdbaowJYXeZaNXOskrq27+jrHuBxjBs/mcn
         ypWX9I7+hJPp8Osfuekdpyos1j0TNpeeRJ6T123olVXuCMcFutejn71HDWHBqfgCNi2u
         JP3d7zfn8DJZEDt1lXc+QqwaTEZeUOjkV83G/5UnU/vcwBjqUqIO2XAfergyhY4iDrG0
         adBw==
X-Forwarded-Encrypted: i=1; AJvYcCXsbkGqUeN1nWE7jwn8VlYHrpKsh7Iirj66hRUvgIOxGehf3FjzuJ7wIGEaVBBoZt5L9ndpJQjaA6+k@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5FnMtU8RN/ITtBIGwjyMG7tL0wEFPfD7OFpEEtwZJE3DBZFz+
	DTv2WLUioLoB3lv1jVNMV+E/VyB0Sge4QM3VLExANJqFwf+sF1D8/xGIOYUPn9E=
X-Gm-Gg: ASbGncvwGyyd0XEEI5ZR9WwMtBG4WMt1du3zEi7usuhI3o6NblKRSpTSKJl8sMLOfrG
	pAjunCd2crCnIccSiTfDv5GV7vLnBwes7Y7hDDfBY6bGqUtYMwthvz1aUvjeGUak3lFZ5DkecEJ
	OLrUkuNj8lCY2oFuUksgIsbTl5/S+vcuC5GnKH7w3DmFbkEuAoa65D5WIcrISEGkq+s2ysTZXOh
	vYCLcOft+z7F5fg4q2isD2Xd5LDhWer1ffyurKu2H/X26Woczknw25tt+N3Ms+0ZbMZ8/yCng==
X-Google-Smtp-Source: AGHT+IEFrv/RthM6qz+7szeDYPM6+coRBlRKnKO/IHtuqFfBkoi0rE1EWyE4uO8xzlFLoYrtCCfo9w==
X-Received: by 2002:a05:6000:144d:b0:382:397f:3df5 with SMTP id ffacd0b85a97d-38254b21914mr4328291f8f.38.1732184308058;
        Thu, 21 Nov 2024 02:18:28 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38254910796sm4598065f8f.47.2024.11.21.02.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 02:18:27 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Date: Thu, 21 Nov 2024 10:18:25 +0000
Subject: [PATCH 3/9] iio:adc: ad7606: Move the software mode configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241121-ad7606_add_iio_backend_software_mode-v1-3-8a693a5e3fa9@baylibre.com>
References: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
In-Reply-To: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, dlechner@baylibre.com, jstephan@baylibre.com, 
 aardelean@baylibre.com, adureghello@baylibre.com, 
 Guillaume Stols <gstols@baylibre.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732184304; l=2020;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=2RdUP0opgSj121kEt066DF0V8khGTWZlShuPPaqbCi8=;
 b=h2ujr71zPBn32R8QCoM2rO5GdcOeQwiHdz8qEQORU/AXJdpiejQlKCfEYCdxWP2UUsq8DD6jk
 ldIWgG6+mHBBDZzv5osKXZMHnV4EXY0SlPnf0jydyZi25SVnsOFQAeO
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

This is a preparation for the intoduction of the sofware functions in
the iio backend version of the driver.
The software mode configuration must be executed once the channels are
configured, and the number of channels is known. This is not the case
before iio-backend's configuration is called, and iio backend version of
the driver does not have a timestamp channel.
Also the sw_mode_config callback is configured during the
iio-backend configuration.
For clarity purpose, I moved the entire block instead of just the
concerned function calls.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 893b93b86aa7..828603ed18f6 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -1246,17 +1246,6 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 			return -ERESTARTSYS;
 	}
 
-	st->write_scale = ad7606_write_scale_hw;
-	st->write_os = ad7606_write_os_hw;
-
-	ret = ad7606_sw_mode_setup(indio_dev);
-	if (ret)
-		return ret;
-
-	ret = ad7606_chan_scales_setup(indio_dev);
-	if (ret)
-		return ret;
-
 	/* If convst pin is not defined, setup PWM. */
 	if (!st->gpio_convst) {
 		st->cnvst_pwm = devm_pwm_get(dev, NULL);
@@ -1334,6 +1323,20 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 			return ret;
 	}
 
+	st->write_scale = ad7606_write_scale_hw;
+	st->write_os = ad7606_write_os_hw;
+
+	st->sw_mode_en = st->chip_info->sw_setup_cb &&
+			 device_property_present(st->dev, "adi,sw-mode");
+	if (st->sw_mode_en) {
+		indio_dev->info = &ad7606_info_sw_mode;
+		st->chip_info->sw_setup_cb(indio_dev);
+	}
+
+	ret = ad7606_chan_scales_setup(indio_dev);
+	if (ret)
+		return ret;
+
 	return devm_iio_device_register(dev, indio_dev);
 }
 EXPORT_SYMBOL_NS_GPL(ad7606_probe, IIO_AD7606);

-- 
2.34.1


