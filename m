Return-Path: <devicetree+bounces-123755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC019D5E26
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 12:34:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ACC66B25042
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F011DE4D8;
	Fri, 22 Nov 2024 11:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0cYh1XQi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57626171E6E
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 11:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732275242; cv=none; b=WSKN8FGtAUzqEfys/ykjJij8rG5VqR9tgqefAC64MRMHk9QjRWjlKwC7KqstI1JxnuJWkmOmhvaiTJWpwbaFF8/jAz2d0JO/qriCD86+hd8qd6beVEy82DAVzS0H9dU4pmbixpkhx33WLgmi1sloyUW11tXhbmAr6wmZ9Iz9MRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732275242; c=relaxed/simple;
	bh=zn8zvV9Mo4O2rpc8Z3avU2Iyc7Z00tacRFBEl6WqSmQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gaV51gK1DvWZZQqdTfjotH/12xGRsRqSWnN3typf6SsT8fsQIgI2gWmQ565Saw6LIptQ8XBbEHTTw/Lhqs+g2qLAh4xTl+DC+dN0jU1EvaaJjSJCKjYi5+wCfhAYFzGrQ22bYVS1Ihm2PAhhRyaxmEH0ivj0WjuZD9v8ouH0ZX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0cYh1XQi; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3823cf963f1so1194934f8f.1
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 03:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732275238; x=1732880038; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoPQYGtC/ppQEZ9aVkh2TLcv9C9qeXCGvY95zPdobik=;
        b=0cYh1XQiPrctRR6K7pJbWVxRWVV39t2BbFGOQmWbuRrdYc8aP4AL272IPRkQy6yLAK
         tHpdpwMTBsSBMU51CZBJDuCjUsQ9gaSIgG8Dz3QJnu089TYj4dizxlcL12KAHo+Hg75i
         E9nidG4Q/lWYhil2HbocybEoiibJSYfEkmgtJsJRYvjVgDkb1yeLTT/5cgHpXdAxuxwO
         dTFrRP+fQPgKM8tBBSd9aAJt1Cxrmy4w3F2igwHdOZFG2TXRPNNxo0pvJBgKTo7HaXm6
         VfIamD7hWS+HF4zAtAa9TNQDeQobQr9BVgraClxETqJJpEMF5YgOnYqwDVcLv5ncEhMH
         tqjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732275238; x=1732880038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EoPQYGtC/ppQEZ9aVkh2TLcv9C9qeXCGvY95zPdobik=;
        b=ikvH6eCOnJHONiOVOCGjyMGLKD/YM8ZXKc2J0W6YJyFG+ZQeJk2XXsCRaJyON1VKUO
         CyatINW2aSi3rpDXzS2qk3BH5HkZU6e2nwSxndehcEUROO+JWy2oJ44worWUak+KC0to
         SOx8E9dWVYD34qAuilxWSH+0QJYhZFq3ZzaP7mSESSDMohsA3lV/NArtaf6Fsm6XLR3I
         hcifGKIQwOhu/Q5m2yHK6oE/rd872Pyybke3XCIypb8Pb1TlM91qubt+hvl/7uqMDW5x
         xyc8t7vlXUIVlzEHAVc/kGBBPRgQlRGfm9RpP4hMg61UVAjVneft8yM3bHdt9nXo6cLG
         9PZQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+uY+BKnqGoh+BSpqox7ZtdOON+R8dnbN3hXNC20pDfnT6LLhHaODa0ES1JYvIYLLgfwUPf8L7jymv@vger.kernel.org
X-Gm-Message-State: AOJu0YyvymVyQwme4ZojYAauiCCu0ZVkWo4Qktpa6/m61gzwp2CAVbyI
	MfJpOT9hWg9Gs9XL+1L2icy3jdzDykRLMlwK7ERsH+sY8r0s1QXtSFVdciLHRjQ=
X-Gm-Gg: ASbGnct3BRwZzRWqCryY5bnD958i7R8rwIaLu8HZ+ALCNK7my8IQ9+i3AVhB9Axe9Vk
	VsA+AgpLkAM/SBiAJzUVFBKpixD/Ge2MiczPLUMR7SnoEY/bWvHICcLz+U3cLkXsH8TcwmH5Lt2
	TCqdb7IHrvOtjWsl2A0LTydTjNF7q3EJp9WNjHJM2GniYraGFyaF57Gl3WIe/P2x5XjuDS2k/H7
	BrRwfa3TLvz/fr0SpGqwuBCJESuk4z3VoMmN0c2q97mcYAL43xRahuz8rxhfwxGfTJXIiy61XD+
	ubo=
X-Google-Smtp-Source: AGHT+IFAFQljimeVjqw4v2+A2bwugBOINom79VdY/2/axQBoUoV9Q5ZfAKgSxtyk+H/KgWcl2L5ZGA==
X-Received: by 2002:a05:6000:2ad:b0:382:4a4e:25bb with SMTP id ffacd0b85a97d-38260bcc4fdmr2264111f8f.46.1732275237540;
        Fri, 22 Nov 2024 03:33:57 -0800 (PST)
Received: from localhost (p509159f1.dip0.t-ipconnect.de. [80.145.89.241])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbedf63sm2151095f8f.102.2024.11.22.03.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 03:33:57 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 01/10] iio: adc: ad7124: Don't create more channels than the driver can handle
Date: Fri, 22 Nov 2024 12:33:20 +0100
Message-ID: <20241122113322.242875-13-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1454; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=zn8zvV9Mo4O2rpc8Z3avU2Iyc7Z00tacRFBEl6WqSmQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnQGwFdZucAX2c0f4j3lwLFQfEx4Ynwm9Zsma60 WqCqNIV1u+JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ0BsBQAKCRCPgPtYfRL+ TqowB/92c27FdrHVsaMkzSVvM/75ogPI76TKY+Fck42/nyak/0MB5xhqAVN2YJMG0FokNJV9MzY SEDtU7+h1v5z9i9ZBQLDLpbD6AdyipPFBY4Gi6GzjWP/vO/4i7E2m+EcWu188GqwiF1CxD6bu/B TZeRtUjhE4OdiIeDm7iywuJIiWOYsbVco0+qZAVMogRxEeJvL+4uLu1g7TERZg2KUc1YRPLCw8B tGIyVJrK7SKkBPXxrbsTzOAJN2q63JiOPJtd/pAzjp+1OWg4zozDSo2z/T/0/R3feqDevh6ZgKW YuA75Hz1LXj1PJ8cxwlGhul91KZSiXpiflNmGuto6S+c8b9P
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The ad7124-4 and ad7124-8 both support 16 channel registers and assigns
each channel defined in dt statically such a register. While the driver
could be a bit more clever about this, it currently isn't and specifying
more than 16 channels yields broken behaviour. So just refuse to bind in
this situation.

Fixes: b3af341bbd96 ("iio: adc: Add ad7124 support")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad7124.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index 8d94bc2b1cac..5352b26bb391 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -821,6 +821,16 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 	if (!st->num_channels)
 		return dev_err_probe(dev, -ENODEV, "no channel children\n");
 
+	/*
+	 * The driver assigns each logical channel defined in the device tree
+	 * statically one channel register. So only accept 16 such logical
+	 * channels to not treat CONFIG_0 (i.e. the register following
+	 * CHANNEL_15) as an additional channel register. The driver could be
+	 * improved to lift this limitation.
+	 */
+	if (st->num_channels > AD7124_MAX_CHANNELS)
+		return dev_err_probe(dev, -EINVAL, "Too many channels defined\n");
+
 	chan = devm_kcalloc(indio_dev->dev.parent, st->num_channels,
 			    sizeof(*chan), GFP_KERNEL);
 	if (!chan)
-- 
2.45.2


