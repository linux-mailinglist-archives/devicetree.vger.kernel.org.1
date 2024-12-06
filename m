Return-Path: <devicetree+bounces-127961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F229E6CFE
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:15:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5B98282C6B
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE978201269;
	Fri,  6 Dec 2024 11:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Prgt81NJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87512010EA
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483653; cv=none; b=SjXaoSBYwFWJs7E4a3RIVac7rd+DFXrvKE3Vj2GcvmUhnwmRuJ1AtGyWVN5Z4ulx1MkG1lEvrn4tt58EJrqnRXUmb+SrEThZx8lJg8ax6m1Eo+LMuSZwfe/aKyhns9xaKNx+d/5fEqX3U9hiJ4HvopUGISEGehMCAZoGYXMh3io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483653; c=relaxed/simple;
	bh=3izqxQ+NZjrnOnaD5puhvQqvQxGAUEQY7C3PoRFd4nQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GCYrFazZmDcKZItC+oia93Lmq79NCf0dWtepOJXtWRqv8e7O/nUDMNGqQlLQhFDfUdvE0I5If05BciOuStDB0chZnmEhM8G106OgpkK0Qsf18qsePaPags2AlI6TzO46dEfOBJcSe8rLgMK8bj6D7IX3MjJV7ELZwXRHnPj9uQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Prgt81NJ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa55171d73cso565990866b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483650; x=1734088450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4RlfVyA4yTuL34Q4V63SBVMJhYDPRvRou52ECLwTzII=;
        b=Prgt81NJvfhsD+YSAHZBq7FL4/40hho+5QD1gkJq7tCp5KC0ZX7tQTWr2jt9tbBREX
         6HpWWQWCpbF5oKmnvj2Z7FPRYVOdYNxHt4r4NPzp2Ud7JzSFLtEnWqoecffSKa2fM2z/
         fKfTXxbKpd96VENuqCdKjfR9nDBB+RGcXgedBWuarzKWIoeHcBXyKk2H8LcVuuRmYRwK
         MnVIEAh8KKLkDUk+oLKuhWoq6/JtbfR2ehLyKZpNJjkHiJ+Z+WBlF0TXNu4v/BDQifMN
         rYNQRp9549xpZ7+6IY2+lmw9Fo6R6SvHaYegvKplUiaEE9RG7FBo1XncLbjFBa3R5ruv
         ijNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483650; x=1734088450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4RlfVyA4yTuL34Q4V63SBVMJhYDPRvRou52ECLwTzII=;
        b=c9zbm596mltuaQXiurAIlUmbBRiv/XGYE3W6pw3/vhXMXubsfBxmu1Nykvk8HOM4pz
         saEiwbs1LxTfYebnFYBLJfnj0yUDnR+MUaZiPZABBfVWD8CNnLl7NUWMoCxPKMqNUDOi
         t8OIwU3If+3L6DTjlOscmlz+kM9JsXL8wI1u+SL1cf7UoVglo1/QStqJuvaFzxKB2H0/
         wyhAlwmDqqPew3im9CYaW8XBLC6r+JJ3btgzHvHjv8FydmYM6+i3fOFk6om4n8Eb5f2H
         TXje/JU2w+TSEGeMCqTXa7mbcmmvQ5lC6h5TepOQlViDUiJ0pu2ELfaqelxqSJVMdv84
         uJhA==
X-Forwarded-Encrypted: i=1; AJvYcCWkGTZV3vA2nnGISGox4iuO+gGp/idAiEGeM28xdMnoCeiq2/1PJKcgUrA0oOoM0U1PJeq8CY4clITX@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc1s2Px8YRjUGn2qrN+dfkTJOYT/rJzLHIdd5D+7d0J5H0DoV8
	mutXhsythDuPYW/iYqFyAxqJL4g5tJAH5VyDxdCxGPv2TL7+QAsB7E4Tczjbf0E=
X-Gm-Gg: ASbGncuTQQxVw6KPJ8bRJaWYz8o/ZrxfKNb3Ed+OF3y51dekjrCtvKl6qMI3jLkPqU+
	mRYFOUuWB0zagnOiI5JiBHTMf2oS6892JiEWLi9Ex6ZTS/rRVufGPxOaPFutiAT5Bna5naLodfS
	J8eMhgAWT/gl1gW4DXTnjRTUokvk9ojzT1pwC+EcusnzzdUW6yzlmdwSRphpoNU35emmN8Kl3k5
	zTv7BwDRw30U/mMusK4EGgIpvBL93yYLhXaIPf5GZq4qviL+DEHgFibn4W3NFeO0Xom7/qhgn7o
	M2pZ
X-Google-Smtp-Source: AGHT+IGRWEyrB/Y2BmAZc/VqaxiX9x6nR7lPRyQ/O4QYP0ll8ebgAqvzWLGzM2XwBxu7jgcrnJYLzg==
X-Received: by 2002:a17:907:7da4:b0:a9a:6c41:50a8 with SMTP id a640c23a62f3a-aa621892191mr682905766b.17.1733483649971;
        Fri, 06 Dec 2024 03:14:09 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:14:09 -0800 (PST)
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
Subject: [PATCH v2 09/15] iio: adc: rzg2l_adc: Prepare for the addition of RZ/G3S support
Date: Fri,  6 Dec 2024 13:13:31 +0200
Message-Id: <20241206111337.726244-10-claudiu.beznea.uj@bp.renesas.com>
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

The ADC IP available on the RZ/G3S differs slightly from the one found on
the RZ/G2L. The identified differences are as follows:
- different number of channels (one being used for temperature conversion);
  consequently, various registers differ
- different default sampling periods
- the RZ/G3S variant lacks the ADVIC register.

To accommodate these differences, the rzg2l_adc driver has been updated by
introducing the struct rzg2l_adc_hw_params, which encapsulates the
hardware-specific differences between the IP variants. A pointer to an
object of type struct rzg2l_adc_hw_params is embedded in
struct rzg2l_adc_data.

Additionally, the completion member of struct rzg2l_adc_data was relocated
to avoid potential padding, if any.

The code has been adjusted to utilize hardware-specific parameters stored
in the new structure instead of relying on plain macros.

The check of chan->channel in rzg2l_adc_read_raw() function, against the
driver specific mask was removed as the subsystem should have already
been done this before reaching the rzg2l_adc_read_raw() function. Along
with it the local variable ch was dropped as chan->channel could be used
instead.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- kept the RZG2L_ADC_MAX_CHANNELS as suggested in the review process;
  along with it, last_val[] is now again statically alocated; code
  from v1 around last_val has been adjusted to align with the new
  approach
- dropped ch variable from rzg2l_adc_read_raw() and adjusted the
  patch description to reflect it.

 drivers/iio/adc/rzg2l_adc.c | 87 +++++++++++++++++++++++++------------
 1 file changed, 59 insertions(+), 28 deletions(-)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index c3f9f95cdbba..6740912f83c5 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -33,20 +33,15 @@
 #define RZG2L_ADM1_MS			BIT(2)
 #define RZG2L_ADM1_BS			BIT(4)
 #define RZG2L_ADM1_EGA_MASK		GENMASK(13, 12)
-#define RZG2L_ADM2_CHSEL_MASK		GENMASK(7, 0)
 #define RZG2L_ADM3_ADIL_MASK		GENMASK(31, 24)
 #define RZG2L_ADM3_ADCMP_MASK		GENMASK(23, 16)
-#define RZG2L_ADM3_ADCMP_E		FIELD_PREP(RZG2L_ADM3_ADCMP_MASK, 0xe)
-#define RZG2L_ADM3_ADSMP_MASK		GENMASK(15, 0)
 
 #define RZG2L_ADINT			0x20
-#define RZG2L_ADINT_INTEN_MASK		GENMASK(7, 0)
 #define RZG2L_ADINT_CSEEN		BIT(16)
 #define RZG2L_ADINT_INTS		BIT(31)
 
 #define RZG2L_ADSTS			0x24
 #define RZG2L_ADSTS_CSEST		BIT(16)
-#define RZG2L_ADSTS_INTST_MASK		GENMASK(7, 0)
 
 #define RZG2L_ADIVC			0x28
 #define RZG2L_ADIVC_DIVADC_MASK		GENMASK(8, 0)
@@ -57,12 +52,27 @@
 #define RZG2L_ADCR(n)			(0x30 + ((n) * 0x4))
 #define RZG2L_ADCR_AD_MASK		GENMASK(11, 0)
 
-#define RZG2L_ADSMP_DEFAULT_SAMPLING	0x578
-
 #define RZG2L_ADC_MAX_CHANNELS		8
-#define RZG2L_ADC_CHN_MASK		0x7
 #define RZG2L_ADC_TIMEOUT		usecs_to_jiffies(1 * 4)
 
+/**
+ * struct rzg2l_adc_hw_params - ADC hardware specific parameters
+ * @default_adsmp: default ADC sampling period (see ADM3 register)
+ * @adsmp_mask: ADC sampling period mask (see ADM3 register)
+ * @adint_inten_mask: conversion end interrupt mask (see ADINT register)
+ * @default_adcmp: default ADC cmp (see ADM3 register)
+ * @num_channels: number of supported channels
+ * @adivc: specifies if ADVIC register is available
+ */
+struct rzg2l_adc_hw_params {
+	u16 default_adsmp;
+	u16 adsmp_mask;
+	u16 adint_inten_mask;
+	u8 default_adcmp;
+	u8 num_channels;
+	bool adivc;
+};
+
 struct rzg2l_adc_data {
 	const struct iio_chan_spec *channels;
 	u8 num_channels;
@@ -72,8 +82,9 @@ struct rzg2l_adc {
 	void __iomem *base;
 	struct reset_control *presetn;
 	struct reset_control *adrstn;
-	struct completion completion;
 	const struct rzg2l_adc_data *data;
+	const struct rzg2l_adc_hw_params *hw_params;
+	struct completion completion;
 	struct mutex lock;
 	u16 last_val[RZG2L_ADC_MAX_CHANNELS];
 };
@@ -154,6 +165,7 @@ static void rzg2l_set_trigger(struct rzg2l_adc *adc)
 
 static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch)
 {
+	const struct rzg2l_adc_hw_params *hw_params = adc->hw_params;
 	u32 reg;
 
 	if (rzg2l_adc_readl(adc, RZG2L_ADM(0)) & RZG2L_ADM0_ADBSY)
@@ -163,7 +175,7 @@ static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch)
 
 	/* Select analog input channel subjected to conversion. */
 	reg = rzg2l_adc_readl(adc, RZG2L_ADM(2));
-	reg &= ~RZG2L_ADM2_CHSEL_MASK;
+	reg &= ~GENMASK(hw_params->num_channels - 1, 0);
 	reg |= BIT(ch);
 	rzg2l_adc_writel(adc, RZG2L_ADM(2), reg);
 
@@ -175,7 +187,7 @@ static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch)
 	 */
 	reg = rzg2l_adc_readl(adc, RZG2L_ADINT);
 	reg &= ~RZG2L_ADINT_INTS;
-	reg &= ~RZG2L_ADINT_INTEN_MASK;
+	reg &= ~hw_params->adint_inten_mask;
 	reg |= (RZG2L_ADINT_CSEEN | BIT(ch));
 	rzg2l_adc_writel(adc, RZG2L_ADINT, reg);
 
@@ -184,6 +196,7 @@ static int rzg2l_adc_conversion_setup(struct rzg2l_adc *adc, u8 ch)
 
 static int rzg2l_adc_conversion(struct iio_dev *indio_dev, struct rzg2l_adc *adc, u8 ch)
 {
+	const struct rzg2l_adc_hw_params *hw_params = adc->hw_params;
 	struct device *dev = indio_dev->dev.parent;
 	int ret;
 
@@ -201,7 +214,7 @@ static int rzg2l_adc_conversion(struct iio_dev *indio_dev, struct rzg2l_adc *adc
 
 	if (!wait_for_completion_timeout(&adc->completion, RZG2L_ADC_TIMEOUT)) {
 		rzg2l_adc_writel(adc, RZG2L_ADINT,
-				 rzg2l_adc_readl(adc, RZG2L_ADINT) & ~RZG2L_ADINT_INTEN_MASK);
+				 rzg2l_adc_readl(adc, RZG2L_ADINT) & ~hw_params->adint_inten_mask);
 		ret = -ETIMEDOUT;
 	}
 
@@ -219,7 +232,6 @@ static int rzg2l_adc_read_raw(struct iio_dev *indio_dev,
 {
 	struct rzg2l_adc *adc = iio_priv(indio_dev);
 	int ret;
-	u8 ch;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_RAW: {
@@ -228,12 +240,11 @@ static int rzg2l_adc_read_raw(struct iio_dev *indio_dev,
 
 		guard(mutex)(&adc->lock);
 
-		ch = chan->channel & RZG2L_ADC_CHN_MASK;
-		ret = rzg2l_adc_conversion(indio_dev, adc, ch);
+		ret = rzg2l_adc_conversion(indio_dev, adc, chan->channel);
 		if (ret)
 			return ret;
 
-		*val = adc->last_val[ch];
+		*val = adc->last_val[chan->channel];
 
 		return IIO_VAL_INT;
 	}
@@ -258,6 +269,7 @@ static const struct iio_info rzg2l_adc_iio_info = {
 static irqreturn_t rzg2l_adc_isr(int irq, void *dev_id)
 {
 	struct rzg2l_adc *adc = dev_id;
+	const struct rzg2l_adc_hw_params *hw_params = adc->hw_params;
 	unsigned long intst;
 	u32 reg;
 	int ch;
@@ -270,11 +282,11 @@ static irqreturn_t rzg2l_adc_isr(int irq, void *dev_id)
 		return IRQ_HANDLED;
 	}
 
-	intst = reg & RZG2L_ADSTS_INTST_MASK;
+	intst = reg & GENMASK(hw_params->num_channels - 1, 0);
 	if (!intst)
 		return IRQ_NONE;
 
-	for_each_set_bit(ch, &intst, RZG2L_ADC_MAX_CHANNELS)
+	for_each_set_bit(ch, &intst, hw_params->num_channels)
 		adc->last_val[ch] = rzg2l_adc_readl(adc, RZG2L_ADCR(ch)) & RZG2L_ADCR_AD_MASK;
 
 	/* clear the channel interrupt */
@@ -287,6 +299,7 @@ static irqreturn_t rzg2l_adc_isr(int irq, void *dev_id)
 
 static int rzg2l_adc_parse_properties(struct platform_device *pdev, struct rzg2l_adc *adc)
 {
+	const struct rzg2l_adc_hw_params *hw_params = adc->hw_params;
 	struct iio_chan_spec *chan_array;
 	struct rzg2l_adc_data *data;
 	unsigned int channel;
@@ -302,7 +315,7 @@ static int rzg2l_adc_parse_properties(struct platform_device *pdev, struct rzg2l
 	if (!num_channels)
 		return dev_err_probe(&pdev->dev, -ENODEV, "no channel children\n");
 
-	if (num_channels > RZG2L_ADC_MAX_CHANNELS)
+	if (num_channels > hw_params->num_channels)
 		return dev_err_probe(&pdev->dev, -EINVAL, "num of channel children out of range\n");
 
 	chan_array = devm_kcalloc(&pdev->dev, num_channels, sizeof(*chan_array),
@@ -316,7 +329,7 @@ static int rzg2l_adc_parse_properties(struct platform_device *pdev, struct rzg2l
 		if (ret)
 			return ret;
 
-		if (channel >= RZG2L_ADC_MAX_CHANNELS)
+		if (channel >= hw_params->num_channels)
 			return -EINVAL;
 
 		chan_array[i].type = IIO_VOLTAGE;
@@ -336,6 +349,7 @@ static int rzg2l_adc_parse_properties(struct platform_device *pdev, struct rzg2l
 
 static int rzg2l_adc_hw_init(struct device *dev, struct rzg2l_adc *adc)
 {
+	const struct rzg2l_adc_hw_params *hw_params = adc->hw_params;
 	u32 reg;
 	int ret;
 
@@ -353,11 +367,13 @@ static int rzg2l_adc_hw_init(struct device *dev, struct rzg2l_adc *adc)
 	if (ret)
 		goto exit_hw_init;
 
-	/* Only division by 4 can be set */
-	reg = rzg2l_adc_readl(adc, RZG2L_ADIVC);
-	reg &= ~RZG2L_ADIVC_DIVADC_MASK;
-	reg |= RZG2L_ADIVC_DIVADC_4;
-	rzg2l_adc_writel(adc, RZG2L_ADIVC, reg);
+	if (hw_params->adivc) {
+		/* Only division by 4 can be set */
+		reg = rzg2l_adc_readl(adc, RZG2L_ADIVC);
+		reg &= ~RZG2L_ADIVC_DIVADC_MASK;
+		reg |= RZG2L_ADIVC_DIVADC_4;
+		rzg2l_adc_writel(adc, RZG2L_ADIVC, reg);
+	}
 
 	/*
 	 * Setup AMD3
@@ -368,8 +384,10 @@ static int rzg2l_adc_hw_init(struct device *dev, struct rzg2l_adc *adc)
 	reg = rzg2l_adc_readl(adc, RZG2L_ADM(3));
 	reg &= ~RZG2L_ADM3_ADIL_MASK;
 	reg &= ~RZG2L_ADM3_ADCMP_MASK;
-	reg &= ~RZG2L_ADM3_ADSMP_MASK;
-	reg |= (RZG2L_ADM3_ADCMP_E | RZG2L_ADSMP_DEFAULT_SAMPLING);
+	reg &= ~hw_params->adsmp_mask;
+	reg |= FIELD_PREP(RZG2L_ADM3_ADCMP_MASK, hw_params->default_adcmp) |
+	       hw_params->default_adsmp;
+
 	rzg2l_adc_writel(adc, RZG2L_ADM(3), reg);
 
 exit_hw_init:
@@ -392,6 +410,10 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
 
 	adc = iio_priv(indio_dev);
 
+	adc->hw_params = device_get_match_data(dev);
+	if (!adc->hw_params || adc->hw_params->num_channels > RZG2L_ADC_MAX_CHANNELS)
+		return -EINVAL;
+
 	ret = rzg2l_adc_parse_properties(pdev, adc);
 	if (ret)
 		return ret;
@@ -444,8 +466,17 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
 	return devm_iio_device_register(dev, indio_dev);
 }
 
+static const struct rzg2l_adc_hw_params rzg2l_hw_params = {
+	.num_channels = 8,
+	.default_adcmp = 0xe,
+	.default_adsmp = 0x578,
+	.adsmp_mask = GENMASK(15, 0),
+	.adint_inten_mask = GENMASK(7, 0),
+	.adivc = true
+};
+
 static const struct of_device_id rzg2l_adc_match[] = {
-	{ .compatible = "renesas,rzg2l-adc",},
+	{ .compatible = "renesas,rzg2l-adc", .data = &rzg2l_hw_params },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_adc_match);
-- 
2.39.2


