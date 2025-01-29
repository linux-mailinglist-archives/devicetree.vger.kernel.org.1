Return-Path: <devicetree+bounces-141639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1A6A21BBC
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:05:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 422A31884375
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 11:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 514D81DA100;
	Wed, 29 Jan 2025 11:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Bz4/49AJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A671DA60B
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 11:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738148710; cv=none; b=TFVAmSBM2XgKCTzkW7CYiE4phx0c74ABhABpEkMqXqNFMxGlOuwp2+lXjLlKZjZF9XyJJo5vy6bDir+r9hJVFtkZzBnzzQJhdu8i7xUYTrPISxau2RpyPoqpGmU7TsaKMjZIH44ltHFAg0CT+artuoGTil/HaDFuifWUchjNOUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738148710; c=relaxed/simple;
	bh=dioqZv2txBsr2G2NsI3KTjuvSsHBK1WMQvxJwpSgCpc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PppkdLH4hDa6JRqI7ureRTS6wo/5W+DGDBwH8pqAkvoTJAqEcSyDNHKRMcZjjLS9X25ywUDm6wbDU2nb5iMBKfuTHzK18r/IOe9KnITR1XPbmnBL3DwYUBHqkKAZJ5Of1Az5HxQESmN4Bn7NTUyerM5PkTw2065phx7XvUxjUaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Bz4/49AJ; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-385e1fcb0e1so3505696f8f.2
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 03:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738148707; x=1738753507; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wlrP600R/ci5wFmyR+m1ecPzb5qUkdneDDlwcUEYxOc=;
        b=Bz4/49AJauD3c1+DEMoSQiC3Xk7fs9jDbGBSu3wh7rpGRxNCqMJwGm7ju8Uh9SYXDR
         kEbg/tC1MnZZJWPFYjIMzyaoS0yhHrhy1TSjyg+BhZCGCwta12lRMEBtKkFP3T2FbDBw
         jfaEFSG6A1jYqCPOK587causGRetL2/mhatMG4uRoaQJizw4olV2GlrkoCkgad+PqfhM
         h6DK0uXNCF/nMUaXrMdCIUbB/MduVNd+F/bGbLI67v0xV5O1J/IYyNfuRxwumu45YH7+
         MBcMC5NtFm1dunSlK9+99ugEgMDi3QSN7BqtXtKK9ljl2m5Q+CaVUiWOoxfzu250Rk4I
         PMiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738148707; x=1738753507;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wlrP600R/ci5wFmyR+m1ecPzb5qUkdneDDlwcUEYxOc=;
        b=N6w156vFx0aDlP5iuoI3Swrx+ttR8JP5Qm/PtidTSO1GWI/68Kdw6vNy40mdne/MQY
         KXFjsI7lVeQHYwz6wqR9lRAJmb0D8Qg8XGdt+VK1ZqxyaM5Rmeckzx/v8xBUwaJrQFuE
         /QfvbQ+FTCfH7foEGXddNTyvli0ttLor1kVOwnzi7Dq2YPXjPGxBc/spxfQXYWv8DERL
         3nqPnPHFt+zm/E2u5pPZZDT+ynOn1LoUdJiHWwpmTF/g14wuNH4lpj8KIZ2YLwb/iHiY
         QKRyRLF5Q1kwqORfHu7u0xryWgWqMYLIkWJGmjLUcK+zhzr3+qucl4Bi5NvrTG700hSe
         +lqg==
X-Forwarded-Encrypted: i=1; AJvYcCUmEDoEerzbnG+eAxQC72RG1u2eIGecwuBgb2WFzUiFXzojBCt/+aE4guilwRPvUYM+hTyEJLwlgg8p@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9DhrsheVH//QypN3hcOFnGUsiaMQly0Fy0EdGzI3QIGYhNiii
	EdqimkTX8zwtPH0ace9eGH0t2m5UFkIdWon9bHD+pxHY645fkjG9l0CHLKBZQ4k=
X-Gm-Gg: ASbGncvTkHQSAmV3nd3vuCbTyc56sfbm/FYokJFVQPFVNug/ypvZ03B8zwLZzd97mcr
	lNsgcVHmcZdG0ElyL8+vg0C6BEmEs3OIlOxUTU6Z+dS1iv5p1LqgT5/dyT5GgfvHQHoMjbsg+ik
	zj7G+krbctPhGSOQWE7+Xmr/Lkq2rgR3C1hhR1MUacWZDPgba053meOOy8r9SR44t+4alQgUk5E
	Mkus/+RG+G8SwZvBpX20dN2cmnUhhd5JYk1M28uv+wB9TJ0uOaWy4QVVfY0/foNYtHa470wS28a
	cfJfDiUDWwQ9MpcmWXpUOyMDMdSb6M0pfe4c4T9QwrUcniIs9wamFw+8ieWsGTdwbnzegkw=
X-Google-Smtp-Source: AGHT+IE2sAMHKOfuQ1fuQ2nuVuYnw/aDn5EAlessm0idPWhiV/TrPf3r9aU7XQvRQSZJ/cTuX/bYWw==
X-Received: by 2002:a5d:6149:0:b0:386:373f:47c4 with SMTP id ffacd0b85a97d-38c520b0473mr1757557f8f.49.1738148706878;
        Wed, 29 Jan 2025 03:05:06 -0800 (PST)
Received: from [127.0.1.1] (host-95-245-235-245.retail.telecomitalia.it. [95.245.235.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d7a7sm17107364f8f.32.2025.01.29.03.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 03:05:05 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Wed, 29 Jan 2025 12:03:05 +0100
Subject: [PATCH v3 04/10] iio: adc: ad7606: move the software mode
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-4-c3aec77c0ab7@baylibre.com>
References: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
In-Reply-To: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandru Ardelean <aardelean@baylibre.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Guillaume Stols <gstols@baylibre.com>

This is a preparation for the intoduction of the sofware functions in
the iio backend version of the driver.
The software mode configuration must be executed once the channels are
configured, and the number of channels is known. This is not the case
before iio-backend's configuration is called, and iio backend version of
the driver does not have a timestamp channel.
Also the sw_mode_config callback is configured during the iio-backend
configuration.
For clarity purpose, I moved the entire block instead of just the
concerned function calls.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index d39354afd539..376c808df11c 100644
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
@@ -1334,6 +1323,17 @@ int ad7606_probe(struct device *dev, int irq, void __iomem *base_address,
 			return ret;
 	}
 
+	st->write_scale = ad7606_write_scale_hw;
+	st->write_os = ad7606_write_os_hw;
+
+	ret = ad7606_sw_mode_setup(indio_dev);
+	if (ret)
+		return ret;
+
+	ret = ad7606_chan_scales_setup(indio_dev);
+	if (ret)
+		return ret;
+
 	return devm_iio_device_register(dev, indio_dev);
 }
 EXPORT_SYMBOL_NS_GPL(ad7606_probe, "IIO_AD7606");

-- 
2.47.0


