Return-Path: <devicetree+bounces-100494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F9796DDD7
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:20:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B5701C239D3
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5512B19C561;
	Thu,  5 Sep 2024 15:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="in0EtCpH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7646E194A61
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725549550; cv=none; b=mPxE369NyTotU+Z6Ce9iuOsl2332879XVJac5hDRFF7ecEYiW1hxQyRHkT2Y9xTVe5k87GqwFjzsuKT/yH2hNyFdfd7j3r0tiFhSahncaNkfZBNDO6vosOfZyIiVwA5i2XrzNttN1w9gywoWezf2y6tVEsMYlt2zbDzpkQ43Wgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725549550; c=relaxed/simple;
	bh=Rdl1xXj7ZbflufQp/lw7xY4gYzEtySEFO1gNKT4EeBE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lj6EcJ8Bql2H3lsAnLOuwTxpcG2K0yKHsSCMop72xBzPcqj1k/DGfc2xDQLYbYv6aryx4Pg06Pi2nk9YtqsRf4XkmgggIgsXzzlDsNKnkOu8HQd7LOyLCH3dwyc4xXq3aOyD2ld8O6WRl0W6dffjym97+5ocDzcqxKn7zE7Subg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=in0EtCpH; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-371941bbfb0so620477f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725549547; x=1726154347; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6pxcjcnGUFkl/bUYlUeEUYB7gqM62d8PVJakM9XYciY=;
        b=in0EtCpHE//eOaqzz5mfjL/3GNaXzGElZYyJOwBHTvhzaBcEEhhmtS9P7HyOTJD9MP
         3nq2xP3ntQY1FUHGdcriaoqZRxR3ruDEW76uMLXeeC+jEQTmeSll1kipS2nekpvudI72
         RIS5TSEDpZyHJTPpOMgwLLoHRxHWBM4z15c43IqGeYAq2kfbjwE8rUISnjZ03dWDvq5A
         TEKrGKelDPgiQ7VPSF8m15vvvpueuL6j5ECaKvN4c7SGcnoCcl1v9rAme8EtMVpMNu8Y
         pEwUoLDiStwpy36WTeYiQf8QOhKnlyJL0OcmtE4lYxGXzsYMSdyAT3ptlivgkS4KQHuU
         PqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725549547; x=1726154347;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6pxcjcnGUFkl/bUYlUeEUYB7gqM62d8PVJakM9XYciY=;
        b=tPLzC7n1wy+vkQ0l9daaf9+3mOmsxFwGMdFxCR/mrdYSfE6TfMDRJ96aXWalF4kugg
         CptU/ymavyf5UFLxdprApmULTc27Zi8DythtemdT1XEm+rz+tBxVIm5BlaxKMGxAYyyB
         jICFIxj/aHDvWMhuU0BipywwF605/jXQGWB4W+HQ4ZJPzWrxV1Jnz8N0bRuHauamoYSj
         YPFDzEp7FqVZpc9IXOpa5aCM7S5FHfYikUHwrsjKF7JzDGRzMZpeCvG5io67m3j+5vw6
         c9rNailEP4YlzIQ23/QzDIhMWOwZ6phJQ8wI4HL+BciUNHdWY/5j6QgCzQ7qWME8C9Lh
         n6Cg==
X-Forwarded-Encrypted: i=1; AJvYcCUbftrH2rKgKCEsx6A42F55evLZGf5Dx8qJpQ4N/E/9hA6v5qjR+5pXKrHrDLnONx2xC9w7znzsaTQD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7XkROhye8jmDqqyNWSMvD4hOyUFovs1WM/o/ndLBE59fbn4EL
	shKgIh9+gBUfuoOB5PFAxxl98Tg5I9jq0/1ujCn80ZXClYYsDl1khs5PbrKf5cbbP+c8YKC+jcJ
	G
X-Google-Smtp-Source: AGHT+IEsOJBJQ2XzcKuflH1vmokodyjc4mYJVysXSAQR0oPY3PxZcq1kr+FWnfbpBldo0aOaDbs7Mw==
X-Received: by 2002:a5d:6043:0:b0:374:c79b:ca5f with SMTP id ffacd0b85a97d-374c79bcc0amr9725069f8f.46.1725549546767;
        Thu, 05 Sep 2024 08:19:06 -0700 (PDT)
Received: from [127.0.1.1] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374c1de81b2sm14031076f8f.30.2024.09.05.08.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:19:00 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 05 Sep 2024 17:17:36 +0200
Subject: [PATCH v2 6/9] iio: dac: ad3552r: changes to use FIELD_PREP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-6-87d669674c00@baylibre.com>
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
In-Reply-To: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Changes to use FIELD_PREP, so that driver-specific ad3552r_field_prep
is removed. Variables (arrays) that was used to call ad3552r_field_prep
are removed too.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/dac/ad3552r.c | 126 ++++++++++++++++++----------------------------
 1 file changed, 49 insertions(+), 77 deletions(-)

diff --git a/drivers/iio/dac/ad3552r.c b/drivers/iio/dac/ad3552r.c
index bd37d304ca70..d867de7c90d1 100644
--- a/drivers/iio/dac/ad3552r.c
+++ b/drivers/iio/dac/ad3552r.c
@@ -285,45 +285,6 @@ struct ad3552r_desc {
 	unsigned int		num_ch;
 };
 
-static const u16 addr_mask_map[][2] = {
-	[AD3552R_ADDR_ASCENSION] = {
-			AD3552R_REG_ADDR_INTERFACE_CONFIG_A,
-			AD3552R_MASK_ADDR_ASCENSION
-	},
-	[AD3552R_SDO_DRIVE_STRENGTH] = {
-			AD3552R_REG_ADDR_INTERFACE_CONFIG_D,
-			AD3552R_MASK_SDO_DRIVE_STRENGTH
-	},
-	[AD3552R_VREF_SELECT] = {
-			AD3552R_REG_ADDR_SH_REFERENCE_CONFIG,
-			AD3552R_MASK_REFERENCE_VOLTAGE_SEL
-	},
-};
-
-/* 0 -> reg addr, 1->ch0 mask, 2->ch1 mask */
-static const u16 addr_mask_map_ch[][3] = {
-	[AD3552R_CH_DAC_POWERDOWN] = {
-			AD3552R_REG_ADDR_POWERDOWN_CONFIG,
-			AD3552R_MASK_CH_DAC_POWERDOWN(0),
-			AD3552R_MASK_CH_DAC_POWERDOWN(1)
-	},
-	[AD3552R_CH_AMPLIFIER_POWERDOWN] = {
-			AD3552R_REG_ADDR_POWERDOWN_CONFIG,
-			AD3552R_MASK_CH_AMPLIFIER_POWERDOWN(0),
-			AD3552R_MASK_CH_AMPLIFIER_POWERDOWN(1)
-	},
-	[AD3552R_CH_OUTPUT_RANGE_SEL] = {
-			AD3552R_REG_ADDR_CH0_CH1_OUTPUT_RANGE,
-			AD3552R_MASK_CH_OUTPUT_RANGE_SEL(0),
-			AD3552R_MASK_CH_OUTPUT_RANGE_SEL(1)
-	},
-	[AD3552R_CH_SELECT] = {
-			AD3552R_REG_ADDR_CH_SELECT_16B,
-			AD3552R_MASK_CH(0),
-			AD3552R_MASK_CH(1)
-	}
-};
-
 static u8 _ad3552r_reg_len(u8 addr)
 {
 	switch (addr) {
@@ -399,11 +360,6 @@ static int ad3552r_read_reg(struct ad3552r_desc *dac, u8 addr, u16 *val)
 	return 0;
 }
 
-static u16 ad3552r_field_prep(u16 val, u16 mask)
-{
-	return (val << __ffs(mask)) & mask;
-}
-
 /* Update field of a register, shift val if needed */
 static int ad3552r_update_reg_field(struct ad3552r_desc *dac, u8 addr, u16 mask,
 				    u16 val)
@@ -416,21 +372,11 @@ static int ad3552r_update_reg_field(struct ad3552r_desc *dac, u8 addr, u16 mask,
 		return ret;
 
 	reg &= ~mask;
-	reg |= ad3552r_field_prep(val, mask);
+	reg |= val;
 
 	return ad3552r_write_reg(dac, addr, reg);
 }
 
-static int ad3552r_set_ch_value(struct ad3552r_desc *dac,
-				enum ad3552r_ch_attributes attr,
-				u8 ch,
-				u16 val)
-{
-	/* Update register related to attributes in chip */
-	return ad3552r_update_reg_field(dac, addr_mask_map_ch[attr][0],
-				       addr_mask_map_ch[attr][ch + 1], val);
-}
-
 #define AD3552R_CH_DAC(_idx) ((struct iio_chan_spec) {		\
 	.type = IIO_VOLTAGE,					\
 	.output = true,						\
@@ -510,8 +456,14 @@ static int ad3552r_write_raw(struct iio_dev *indio_dev,
 					val);
 		break;
 	case IIO_CHAN_INFO_ENABLE:
-		err = ad3552r_set_ch_value(dac, AD3552R_CH_DAC_POWERDOWN,
-					   chan->channel, !val);
+		if (chan->channel == 0)
+			val = FIELD_PREP(AD3552R_MASK_CH_DAC_POWERDOWN(0), !val);
+		else
+			val = FIELD_PREP(AD3552R_MASK_CH_DAC_POWERDOWN(1), !val);
+
+		err = ad3552r_update_reg_field(dac, AD3552R_REG_ADDR_POWERDOWN_CONFIG,
+					       AD3552R_MASK_CH_DAC_POWERDOWN(chan->channel),
+					       val);
 		break;
 	default:
 		err = -EINVAL;
@@ -715,9 +667,9 @@ static int ad3552r_reset(struct ad3552r_desc *dac)
 	}
 
 	return ad3552r_update_reg_field(dac,
-					addr_mask_map[AD3552R_ADDR_ASCENSION][0],
-					addr_mask_map[AD3552R_ADDR_ASCENSION][1],
-					val);
+					AD3552R_REG_ADDR_INTERFACE_CONFIG_A,
+					AD3552R_MASK_ADDR_ASCENSION,
+					FIELD_PREP(AD3552R_MASK_ADDR_ASCENSION, val));
 }
 
 static void ad3552r_get_custom_range(struct ad3552r_desc *dac, s32 i, s32 *v_min,
@@ -812,20 +764,20 @@ static int ad3552r_configure_custom_gain(struct ad3552r_desc *dac,
 				     "mandatory custom-output-range-config property missing\n");
 
 	dac->ch_data[ch].range_override = 1;
-	reg |= ad3552r_field_prep(1, AD3552R_MASK_CH_RANGE_OVERRIDE);
+	reg |= FIELD_PREP(AD3552R_MASK_CH_RANGE_OVERRIDE, 1);
 
 	err = fwnode_property_read_u32(gain_child, "adi,gain-scaling-p", &val);
 	if (err)
 		return dev_err_probe(dev, err,
 				     "mandatory adi,gain-scaling-p property missing\n");
-	reg |= ad3552r_field_prep(val, AD3552R_MASK_CH_GAIN_SCALING_P);
+	reg |= FIELD_PREP(AD3552R_MASK_CH_GAIN_SCALING_P, val);
 	dac->ch_data[ch].p = val;
 
 	err = fwnode_property_read_u32(gain_child, "adi,gain-scaling-n", &val);
 	if (err)
 		return dev_err_probe(dev, err,
 				     "mandatory adi,gain-scaling-n property missing\n");
-	reg |= ad3552r_field_prep(val, AD3552R_MASK_CH_GAIN_SCALING_N);
+	reg |= FIELD_PREP(AD3552R_MASK_CH_GAIN_SCALING_N, val);
 	dac->ch_data[ch].n = val;
 
 	err = fwnode_property_read_u32(gain_child, "adi,rfb-ohms", &val);
@@ -841,9 +793,9 @@ static int ad3552r_configure_custom_gain(struct ad3552r_desc *dac,
 	dac->ch_data[ch].gain_offset = val;
 
 	offset = abs((s32)val);
-	reg |= ad3552r_field_prep((offset >> 8), AD3552R_MASK_CH_OFFSET_BIT_8);
+	reg |= FIELD_PREP(AD3552R_MASK_CH_OFFSET_BIT_8, (offset >> 8));
 
-	reg |= ad3552r_field_prep((s32)val < 0, AD3552R_MASK_CH_OFFSET_POLARITY);
+	reg |= FIELD_PREP(AD3552R_MASK_CH_OFFSET_POLARITY, (s32)val < 0);
 	addr = AD3552R_REG_ADDR_CH_GAIN(ch);
 	err = ad3552r_write_reg(dac, addr,
 				offset & AD3552R_MASK_CH_OFFSET_BITS_0_7);
@@ -886,9 +838,9 @@ static int ad3552r_configure_device(struct ad3552r_desc *dac)
 	}
 
 	err = ad3552r_update_reg_field(dac,
-				       addr_mask_map[AD3552R_VREF_SELECT][0],
-				       addr_mask_map[AD3552R_VREF_SELECT][1],
-				       val);
+				       AD3552R_REG_ADDR_SH_REFERENCE_CONFIG,
+				       AD3552R_MASK_REFERENCE_VOLTAGE_SEL,
+				       FIELD_PREP(AD3552R_MASK_REFERENCE_VOLTAGE_SEL, val));
 	if (err)
 		return err;
 
@@ -900,9 +852,9 @@ static int ad3552r_configure_device(struct ad3552r_desc *dac)
 		}
 
 		err = ad3552r_update_reg_field(dac,
-					       addr_mask_map[AD3552R_SDO_DRIVE_STRENGTH][0],
-					       addr_mask_map[AD3552R_SDO_DRIVE_STRENGTH][1],
-					       val);
+					       AD3552R_REG_ADDR_INTERFACE_CONFIG_D,
+					       AD3552R_MASK_SDO_DRIVE_STRENGTH,
+					       FIELD_PREP(AD3552R_MASK_SDO_DRIVE_STRENGTH, val));
 		if (err)
 			return err;
 	}
@@ -938,9 +890,15 @@ static int ad3552r_configure_device(struct ad3552r_desc *dac)
 						     "Invalid adi,output-range-microvolt value\n");
 
 			val = err;
-			err = ad3552r_set_ch_value(dac,
-						   AD3552R_CH_OUTPUT_RANGE_SEL,
-						   ch, val);
+			if (ch == 0)
+				val = FIELD_PREP(AD3552R_MASK_CH_OUTPUT_RANGE_SEL(0), val);
+			else
+				val = FIELD_PREP(AD3552R_MASK_CH_OUTPUT_RANGE_SEL(1), val);
+
+			err = ad3552r_update_reg_field(dac,
+						       AD3552R_REG_ADDR_CH0_CH1_OUTPUT_RANGE,
+						       AD3552R_MASK_CH_OUTPUT_RANGE_SEL(ch),
+						       val);
 			if (err)
 				return err;
 
@@ -958,7 +916,14 @@ static int ad3552r_configure_device(struct ad3552r_desc *dac)
 		ad3552r_calc_gain_and_offset(dac, ch);
 		dac->enabled_ch |= BIT(ch);
 
-		err = ad3552r_set_ch_value(dac, AD3552R_CH_SELECT, ch, 1);
+		if (ch == 0)
+			val = FIELD_PREP(AD3552R_MASK_CH(0), 1);
+		else
+			val = FIELD_PREP(AD3552R_MASK_CH(1), 1);
+
+		err = ad3552r_update_reg_field(dac,
+					       AD3552R_REG_ADDR_CH_SELECT_16B,
+					       AD3552R_MASK_CH(ch), val);
 		if (err < 0)
 			return err;
 
@@ -970,8 +935,15 @@ static int ad3552r_configure_device(struct ad3552r_desc *dac)
 	/* Disable unused channels */
 	for_each_clear_bit(ch, &dac->enabled_ch,
 			   dac->model_data->num_hw_channels) {
-		err = ad3552r_set_ch_value(dac, AD3552R_CH_AMPLIFIER_POWERDOWN,
-					   ch, 1);
+		if (ch == 0)
+			val = FIELD_PREP(AD3552R_MASK_CH_OUTPUT_RANGE_SEL(0), 1);
+		else
+			val = FIELD_PREP(AD3552R_MASK_CH_OUTPUT_RANGE_SEL(1), 1);
+
+		err = ad3552r_update_reg_field(dac,
+					       AD3552R_REG_ADDR_POWERDOWN_CONFIG,
+					       AD3552R_MASK_CH_OUTPUT_RANGE_SEL(ch),
+					       val);
 		if (err)
 			return err;
 	}

-- 
2.45.0.rc1


