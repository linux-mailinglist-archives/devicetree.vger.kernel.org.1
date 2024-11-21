Return-Path: <devicetree+bounces-123484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7CF9D4A97
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 11:18:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E4EB282FFA
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 10:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6961CD200;
	Thu, 21 Nov 2024 10:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mC/aZ5xE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFD81C9DD8
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 10:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732184310; cv=none; b=OOvABtpAeg7l6Dn+jcRf1XkD/LenvMIOtumc8uWte4zJe1JjA7mz7ZJ5PO3KJzqbqoATb13foP/3cL5qqtj0rTz3vfLB6yA/yUQW6bHt7Hp3NoGyd6LJwEILFye+GH+J2lcruqgwNLVy92v2MWV82x81xFHLAmkBL3ppg8R/GS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732184310; c=relaxed/simple;
	bh=PHTMCmT/JNZAJ8tBmAYl1/C8jdAsP/TB/pJeHR93ts4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VxQaE9d9DC2EXBkTdkgo6clEr3UD/xLNc5SMXT+7ljqnx6LjpO3XhLF5PBKagaVJ0Q/2b3dLL6EQxgJDM6QoC7rc9kr/UC19sfQYDzEe0DRGsSE1ZshI9YHIM25jmw33k1NSHfSe09sFePynxB5z9qeU2wM3AIWsPk54FW68fqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mC/aZ5xE; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3823eaad37aso1174086f8f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 02:18:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732184307; x=1732789107; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wTw0R04K1dGYu7GZvOewojhPzbOYqmqS+JgRfKTlmyU=;
        b=mC/aZ5xEZa5lpkmp0ufrWraHWE4t/8v2jtPhBx5AAKDKIs+HsYpcopOZc2ttfuqu6J
         lK6RvvTLT8YE2lbcWDQeIwlVIDa8he7TpOuJgQ34B9elowvT1KE+l5/vZ5I/6oUMG7jx
         emqppFjbriG4WKzVfCS8ed4nM0tGH1ozhYTM+2v8FzmH9Ldhal/LIP9e1epVckxseedz
         O25sUFT8JhJfjgvi8Kp5fwzfpWqCswZ/E/Vm2otaj+Rhj05fEvme4vJof9V2Yb595Cgs
         CsN8hVtfiSsnuo1UaaErE4GAOTxHzkzhMXGCwrxGx46j+ZVsy2+Y+7gymMHcS9mZOcuK
         rH+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732184307; x=1732789107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wTw0R04K1dGYu7GZvOewojhPzbOYqmqS+JgRfKTlmyU=;
        b=Ht5ZIouxmuPqvyorfK6xAutHSJeAfKPoJnjnkQQVqBhf7VASe9rd3ZTerde2Ktnlgl
         jr+PCXZfflDh9nALkv3PisvJkS+MFHlfxU7M9ZKXGIOAYFRKfkqMtxi1zjg4FZIJWaB0
         9gmFnpECdWcdHZ/3tsmtiBEEdj7StshUW50HtMCj3Ov4EZjpdNxt89Qbi6ElhKxHw2wL
         iVEpD1bh4yU7UFsrhnmEmYLwqrAj2dHbjPQG3nFuiYPqxPJW6OEfMiwPaMl2GFpVOrKm
         Pnc8CleCJTmEq+azm/8oBC0pe0KMfSjI1DZlHp4pNH//svJZDhpWe3PqgoqFvElbHsNN
         E23Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCq+0W4xZa55wqf/zrAmH1mZ2cK04c55XsXCnDRtHS140SeC7VvA9g34Ti2OvaR2TjootM2GRF5eOH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+ILsOuX6Rzinr1gj2lE7j1cZzwQvu5AhlR6h81SRHW1Qud5Z3
	kG2Y6WtMAFv9Fqz0UynN22bWPBeTQ0kz0MeRCb2ZbqX4li32vTzRZDK0PNOQAks=
X-Google-Smtp-Source: AGHT+IEg8IFzn3kj3RMQfK+MJs5HdLwVjqD+5w0EG73Mt48p4SY/LUesRPiI/nAD6+HIn5imewwmJA==
X-Received: by 2002:a5d:64a1:0:b0:382:2e9e:d695 with SMTP id ffacd0b85a97d-38259d257cdmr2408842f8f.24.1732184306398;
        Thu, 21 Nov 2024 02:18:26 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38254910796sm4598065f8f.47.2024.11.21.02.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 02:18:26 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Date: Thu, 21 Nov 2024 10:18:23 +0000
Subject: [PATCH 1/9] iio: adc: ad7606: Fix hardcoded offset in the ADC
 channels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241121-ad7606_add_iio_backend_software_mode-v1-1-8a693a5e3fa9@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732184304; l=7242;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=PHTMCmT/JNZAJ8tBmAYl1/C8jdAsP/TB/pJeHR93ts4=;
 b=ZmGA8QbDH3UwfSxgRpRSWkutaJ1SlCH/WmEyCZ3Z1k7EUK4FTc40yhCysNFl3infgFdAfMMqG
 +m25KauyEgeDygXSTxgTe3vXze7AWrrAbmaSsYl6KXCp8eZ2rp/jlNq
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

When introducing num_adc_channels, I overlooked some new functions
created in a meanwhile that had also the hardcoded offset. This commit
adds the new logic to these functions.

Fixes: 7a671afeb592 ("iio: adc: ad7606: Introduce num_adc_channels")
Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 48 ++++++++++++++++++++++++++++--------------------
 drivers/iio/adc/ad7606.h |  2 +-
 2 files changed, 29 insertions(+), 21 deletions(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 8b2046baaa3e..893b93b86aa7 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -175,17 +175,17 @@ static const struct iio_chan_spec ad7616_channels[] = {
 	AD7606_CHANNEL(15, 16),
 };
 
-static int ad7606c_18bit_chan_scale_setup(struct ad7606_state *st,
+static int ad7606c_18bit_chan_scale_setup(struct iio_dev *indio_dev,
 					  struct iio_chan_spec *chan, int ch);
-static int ad7606c_16bit_chan_scale_setup(struct ad7606_state *st,
+static int ad7606c_16bit_chan_scale_setup(struct iio_dev *indio_dev,
 					  struct iio_chan_spec *chan, int ch);
-static int ad7606_16bit_chan_scale_setup(struct ad7606_state *st,
+static int ad7606_16bit_chan_scale_setup(struct iio_dev *indio_dev,
 					 struct iio_chan_spec *chan, int ch);
-static int ad7607_chan_scale_setup(struct ad7606_state *st,
+static int ad7607_chan_scale_setup(struct iio_dev *indio_dev,
 				   struct iio_chan_spec *chan, int ch);
-static int ad7608_chan_scale_setup(struct ad7606_state *st,
+static int ad7608_chan_scale_setup(struct iio_dev *indio_dev,
 				   struct iio_chan_spec *chan, int ch);
-static int ad7609_chan_scale_setup(struct ad7606_state *st,
+static int ad7609_chan_scale_setup(struct iio_dev *indio_dev,
 				   struct iio_chan_spec *chan, int ch);
 
 const struct ad7606_chip_info ad7605_4_info = {
@@ -323,9 +323,10 @@ int ad7606_reset(struct ad7606_state *st)
 }
 EXPORT_SYMBOL_NS_GPL(ad7606_reset, IIO_AD7606);
 
-static int ad7606_16bit_chan_scale_setup(struct ad7606_state *st,
+static int ad7606_16bit_chan_scale_setup(struct iio_dev *indio_dev,
 					 struct iio_chan_spec *chan, int ch)
 {
+	struct ad7606_state *st = iio_priv(indio_dev);
 	struct ad7606_chan_scale *cs = &st->chan_scales[ch];
 
 	if (!st->sw_mode_en) {
@@ -345,10 +346,12 @@ static int ad7606_16bit_chan_scale_setup(struct ad7606_state *st,
 	return 0;
 }
 
-static int ad7606_get_chan_config(struct ad7606_state *st, int ch,
+static int ad7606_get_chan_config(struct iio_dev *indio_dev, int ch,
 				  bool *bipolar, bool *differential)
 {
-	unsigned int num_channels = st->chip_info->num_channels - 1;
+	struct ad7606_state *st = iio_priv(indio_dev);
+	unsigned int num_channels = st->chip_info->num_adc_channels;
+	unsigned int offset = indio_dev->num_channels - st->chip_info->num_adc_channels;
 	struct device *dev = st->dev;
 	int ret;
 
@@ -364,7 +367,7 @@ static int ad7606_get_chan_config(struct ad7606_state *st, int ch,
 			continue;
 
 		/* channel number (here) is from 1 to num_channels */
-		if (reg == 0 || reg > num_channels) {
+		if (reg < offset  || reg > num_channels) {
 			dev_warn(dev,
 				 "Invalid channel number (ignoring): %d\n", reg);
 			continue;
@@ -399,9 +402,10 @@ static int ad7606_get_chan_config(struct ad7606_state *st, int ch,
 	return 0;
 }
 
-static int ad7606c_18bit_chan_scale_setup(struct ad7606_state *st,
+static int ad7606c_18bit_chan_scale_setup(struct iio_dev *indio_dev,
 					  struct iio_chan_spec *chan, int ch)
 {
+	struct ad7606_state *st = iio_priv(indio_dev);
 	struct ad7606_chan_scale *cs = &st->chan_scales[ch];
 	bool bipolar, differential;
 	int ret;
@@ -413,7 +417,7 @@ static int ad7606c_18bit_chan_scale_setup(struct ad7606_state *st,
 		return 0;
 	}
 
-	ret = ad7606_get_chan_config(st, ch, &bipolar, &differential);
+	ret = ad7606_get_chan_config(indio_dev, ch, &bipolar, &differential);
 	if (ret)
 		return ret;
 
@@ -455,9 +459,10 @@ static int ad7606c_18bit_chan_scale_setup(struct ad7606_state *st,
 	return 0;
 }
 
-static int ad7606c_16bit_chan_scale_setup(struct ad7606_state *st,
+static int ad7606c_16bit_chan_scale_setup(struct iio_dev *indio_dev,
 					  struct iio_chan_spec *chan, int ch)
 {
+	struct ad7606_state *st = iio_priv(indio_dev);
 	struct ad7606_chan_scale *cs = &st->chan_scales[ch];
 	bool bipolar, differential;
 	int ret;
@@ -469,7 +474,7 @@ static int ad7606c_16bit_chan_scale_setup(struct ad7606_state *st,
 		return 0;
 	}
 
-	ret = ad7606_get_chan_config(st, ch, &bipolar, &differential);
+	ret = ad7606_get_chan_config(indio_dev, ch, &bipolar, &differential);
 	if (ret)
 		return ret;
 
@@ -512,9 +517,10 @@ static int ad7606c_16bit_chan_scale_setup(struct ad7606_state *st,
 	return 0;
 }
 
-static int ad7607_chan_scale_setup(struct ad7606_state *st,
+static int ad7607_chan_scale_setup(struct iio_dev *indio_dev,
 				   struct iio_chan_spec *chan, int ch)
 {
+	struct ad7606_state *st = iio_priv(indio_dev);
 	struct ad7606_chan_scale *cs = &st->chan_scales[ch];
 
 	cs->range = 0;
@@ -523,9 +529,10 @@ static int ad7607_chan_scale_setup(struct ad7606_state *st,
 	return 0;
 }
 
-static int ad7608_chan_scale_setup(struct ad7606_state *st,
+static int ad7608_chan_scale_setup(struct iio_dev *indio_dev,
 				   struct iio_chan_spec *chan, int ch)
 {
+	struct ad7606_state *st = iio_priv(indio_dev);
 	struct ad7606_chan_scale *cs = &st->chan_scales[ch];
 
 	cs->range = 0;
@@ -534,9 +541,10 @@ static int ad7608_chan_scale_setup(struct ad7606_state *st,
 	return 0;
 }
 
-static int ad7609_chan_scale_setup(struct ad7606_state *st,
+static int ad7609_chan_scale_setup(struct iio_dev *indio_dev,
 				   struct iio_chan_spec *chan, int ch)
 {
+	struct ad7606_state *st = iio_priv(indio_dev);
 	struct ad7606_chan_scale *cs = &st->chan_scales[ch];
 
 	cs->range = 0;
@@ -1146,8 +1154,8 @@ static int ad7606_sw_mode_setup(struct iio_dev *indio_dev)
 
 static int ad7606_chan_scales_setup(struct iio_dev *indio_dev)
 {
-	unsigned int num_channels = indio_dev->num_channels - 1;
 	struct ad7606_state *st = iio_priv(indio_dev);
+	unsigned int offset = indio_dev->num_channels - st->chip_info->num_adc_channels;
 	struct iio_chan_spec *chans;
 	size_t size;
 	int ch, ret;
@@ -1161,8 +1169,8 @@ static int ad7606_chan_scales_setup(struct iio_dev *indio_dev)
 	memcpy(chans, indio_dev->channels, size);
 	indio_dev->channels = chans;
 
-	for (ch = 0; ch < num_channels; ch++) {
-		ret = st->chip_info->scale_setup_cb(st, &chans[ch + 1], ch);
+	for (ch = 0; ch < st->chip_info->num_adc_channels; ch++) {
+		ret = st->chip_info->scale_setup_cb(indio_dev, &chans[ch + offset], ch);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index 998814a92b82..8778ffe515b3 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -69,7 +69,7 @@
 
 struct ad7606_state;
 
-typedef int (*ad7606_scale_setup_cb_t)(struct ad7606_state *st,
+typedef int (*ad7606_scale_setup_cb_t)(struct iio_dev *indio_dev,
 				       struct iio_chan_spec *chan, int ch);
 
 /**

-- 
2.34.1


