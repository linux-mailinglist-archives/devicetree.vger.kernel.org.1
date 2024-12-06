Return-Path: <devicetree+bounces-127959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 924CA9E6CF8
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:15:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E7E4167FE8
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA866201010;
	Fri,  6 Dec 2024 11:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="imMOzar5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCAF0200BA4
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483649; cv=none; b=BednZktX94xXqWVScqy9nOXj39zAH32NiJHdYIpImta+M1Z6m9slIlYETKMJ/vczdrhj5zmqhM58FPAS2lh6niIIIt4q7FUJyXE88et860q1g6V6VBB5Touiy6loyrJ9s0Ff4PORzA0VYB4Vt8ZE/vrDnjt/AhG1CBWFK8HII3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483649; c=relaxed/simple;
	bh=dEqGILe6UUa2QV4lg2cHxtBVoCG04Pl16cd95wtxMm8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SC7SZ9O64Oh8CB/ZLLE3JCFaUIlNGlCFtu0rkvMRs76SnfNyvldBqA6jCy+sCmvjG7YtqVsemZzSsvKfvekA2FyLQCkPKabFTvhVROGf0axrVjSoXmmK2+I+h0mM4lKgmE1MXwD5B2ieN8iR+YdBZvXbA9qnSRUHBohEYvpCWpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=imMOzar5; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa6332dde13so636866b.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483646; x=1734088446; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WhaQ2fSroT77bogvtIM7JXpl0W5k90kfLSeiQn1uD6k=;
        b=imMOzar5XjEWVg6mv/DR06oioKCfIvh6QHLnxG6xky10HI3yEYK6Dl1YYfPAQrzrTd
         CCZrbF3MUOWlC2tRox/eu/Z+Rkydjplxdew0FPz2yyLF+OfkBxrKLhUWh0j8Mh831xHb
         8ZVZf/UhbVeVApC2w9Wct2YQtvfmek9JBly6lOfBCbmpc+LlR86knIUGGOGDixaSe7A8
         iZp3XvqrApAGMz8fdtAFjF/5H9zpw87d2YZCZl+2d4oCfsiupkTbZegbYLrXaVObhRPw
         Q4V9hG4+2U+icNDTpWi69vhqFm9bSi2d5q4X/qyRsIMuIJiNyKQDdwayFsxJfBIcdbNi
         9zDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483646; x=1734088446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WhaQ2fSroT77bogvtIM7JXpl0W5k90kfLSeiQn1uD6k=;
        b=DZ+zsWAmpm//aIBmxXmegeoBdZYDcQJVtJHYUePSV89rcF6OBS7FepKjB7I4KZhVE+
         3lxLhDkLaPwJlDR+YLmEvbkbbFTKItig8e3rCP7ToDJDhi7pW/nXZIr7bjtPd+40JR5r
         xRD1jVG2LDQpSB7r9rYiEiyUHepuJ1R23rff9oaxP55N1ZpTTB5AAenY5dtIbn0GpC3e
         jSLR/h1J01Kiog7pvQpHBpUSyE0TsaEc4UvGVS6OW61rnk/hh3o0aV8P1uKGEDm9qr8V
         HCZScYWHgukFUVPnIKF0JLhem42WVK62BR0mdKWIKdb6cRSd7bW6LKUCjR6SrtMiyr/b
         tbiA==
X-Forwarded-Encrypted: i=1; AJvYcCVVAGWSXV7ihH6jiJr+3/CGz1sL1YtA1WY+Eatwlet+0uf4jGtSEE3RCQfvJH4FKg3h8hTn9wGBIxes@vger.kernel.org
X-Gm-Message-State: AOJu0YxZaIN69dDyEPhY0MvqXlQkgW3J9yaP05oFlIadAxNU27wpRAgG
	+fjM8wm7aP80nMrTUIZbsPITvlInKSwXHS0veFgCGNEtec0ZvG+U5VlQ0J6GGJA=
X-Gm-Gg: ASbGncsIT8ySixqSjby5xTQjvJeErWqXjlr6JIauun3VXKkaY0fnUFM+yEMIZr8E2Xc
	58RlxEZxES/0ye1rLgEZIy/otiKzXABbIfrAspY4P3KCC1cfKQqO6sUX5cHpJXKJRecixmIbrsM
	OWHM20rqUxYGYzcKq9R3P77FOXkDP313QUHOWUUFxJGXd8IX9ZehtVrk+ihO+9sp1OqEESWIF2R
	Difz4B/CIcQMH5Xmm2DOmMuoISDHhC5MwBl3kUirhK2p1/YKzE7RnlutpIWdC3bFMm99DG/XeDp
	4Lsp
X-Google-Smtp-Source: AGHT+IEde3hbpI6Dn8f4HHeLFJDahnLdyyCKzWeVkTOjBA3NVheYqHyT2l/Eb2Ag14Vr/Xb63k1GrQ==
X-Received: by 2002:a17:906:2922:b0:aa5:4ea6:fcae with SMTP id a640c23a62f3a-aa63a073542mr216321466b.28.1733483646108;
        Fri, 06 Dec 2024 03:14:06 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:14:05 -0800 (PST)
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
Subject: [PATCH v2 07/15] iio: adc: rzg2l_adc: Simplify the locking scheme in rzg2l_adc_read_raw()
Date: Fri,  6 Dec 2024 13:13:29 +0200
Message-Id: <20241206111337.726244-8-claudiu.beznea.uj@bp.renesas.com>
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

Simplify the locking scheme in rzg2l_adc_read_raw() by using
guard(mutex)().

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- used guard(mutex)()
- adjusted the patch description

 drivers/iio/adc/rzg2l_adc.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index 38d4fb014847..953511191eac 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/bitfield.h>
+#include <linux/cleanup.h>
 #include <linux/completion.h>
 #include <linux/delay.h>
 #include <linux/iio/iio.h>
@@ -220,21 +221,21 @@ static int rzg2l_adc_read_raw(struct iio_dev *indio_dev,
 	u8 ch;
 
 	switch (mask) {
-	case IIO_CHAN_INFO_RAW:
+	case IIO_CHAN_INFO_RAW: {
 		if (chan->type != IIO_VOLTAGE)
 			return -EINVAL;
 
-		mutex_lock(&adc->lock);
+		guard(mutex)(&adc->lock);
+
 		ch = chan->channel & RZG2L_ADC_CHN_MASK;
 		ret = rzg2l_adc_conversion(indio_dev, adc, ch);
-		if (ret) {
-			mutex_unlock(&adc->lock);
+		if (ret)
 			return ret;
-		}
+
 		*val = adc->last_val[ch];
-		mutex_unlock(&adc->lock);
 
 		return IIO_VAL_INT;
+	}
 
 	default:
 		return -EINVAL;
-- 
2.39.2


