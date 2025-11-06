Return-Path: <devicetree+bounces-235880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8E6C3DB84
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 00:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C6013A46DF
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 23:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF2043546EF;
	Thu,  6 Nov 2025 22:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ju36i+jW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605AE34F278
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 22:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762469984; cv=none; b=o4GKk9kSFll5MMU6Wkfr+BYg1n9kGLPw93yrmPhddAbHvAycwTwxvcbKGDnjs6Mpj+yeMWp7w1KJXhTO2J4RuYHGCv7iYA0TDqrKnk6qu1yKNPEna92ojQXxbqHVzCvQdBNH2NaFlgm4mdD91iF9CWV+7gEhBjor9Lk0PtEFZ+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762469984; c=relaxed/simple;
	bh=ov/G0hDuU0nQGs+JmamLVAzk9gma0Qv9zbfpoNew/Cs=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uMmAKJAgZR8JwwzBav/R1Fd/eoPA8jlJf1J/A8iIZgcTi9HJFIffyXfw2YDJ+ALv+SzyHpfcSbTTPBXLmW2s02gkOcRosMM+5BkfFhe6vENHMIJ6Yogo8M5wnb4octQegV/XNz2A8R8qBQ/5tEmMzG1rMxFz1t5Q8+JG+WoF2V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ju36i+jW; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4283be7df63so61253f8f.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 14:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762469980; x=1763074780; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7cVrYKCDf26X1CEz4gIXYqRKkJM6oG31pvZvMj/HDTc=;
        b=Ju36i+jWY2o0ujUWNVQD/KwGDxN/67Ih0ZnFQSyROePAi6Bk6T1qW+ePwsk944nvgP
         Cn8vDiSwlXBHQ9+JFnb8hoRpbUq8yhBMlRPuUJdktFXZArM2JBZyHCdUrlVcQw/cfqew
         v6Kgk27hyIXiTyIASVDjNvcZNgZ2KAHgqXPQXV6D6n7/4R04SQ8bgUadXk0/2AvgPWck
         Si7pBpcS9E2WKgsflH7acFpgiLqxZe/11PCR3AfQSrTVJ8I32YkJlQnvui27SVKnplJj
         9h4UV68bry8cPBMTLES6cJNTiEx5xuF0GWjUNyhjyxiM3Kis27qJJkPGVbuy/k7goVSD
         0o2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762469980; x=1763074780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7cVrYKCDf26X1CEz4gIXYqRKkJM6oG31pvZvMj/HDTc=;
        b=UmwbatugyLI52MrJdk+8ngJXogUENxmeNnCx/81hW49/YYJRPr+tbYtkXDqYr8pTlP
         5V3P+FT/8yqIJeLeBZGEDCe8iBKigHSkDMRF/LokmbIHNBTOPureFbUiqk4oUhW/sNph
         +QjeoL/ta2SAlp3k6nFrG/5qtZZ6XFo8j8kypRQ719p7PRKRsRMAEyTBByyIN/7tCEt9
         wTF3MdNpKlUaxjyQLJP8FbJry/yV8ujgS2F0X/tzL75D7gOIVkdDqwZ9jZpkb+B90hEe
         erxlfAYmRilSUo0HcrSYgaFT2/PvhQtsZoxD2Rv8I0UHUHdmcYfzgrSfU7r6TD+yEFKj
         OYDg==
X-Forwarded-Encrypted: i=1; AJvYcCUQeKFPMjBc67q9cCAEYmuuUQyv8mbqO2y/3j03r5779nZlrDNSCQyqmqmQ0rIwIFWj2Hxku3UZuSsw@vger.kernel.org
X-Gm-Message-State: AOJu0YwpprOJrJ/nM0TN9fazrJbl8gx3PDYKKdaPljG5VnyjzAnaEdXa
	FweVZiCGNrOqCR3ONFvYoN4KNzWi0OIjOo06rvtx2b8HIm+1fBW+GLJY
X-Gm-Gg: ASbGncumGb/k7dkM5hizr1sJfNgm78GQdn6osYPeoKJn/jU4cf7xOF3MKJtPvyyzrNs
	T1mYAH0lXzWm4vPpEzdkG8Kmg9CqbI2jHo2p7926zwJPhB6HqW4QUmFrZR2EvFa0wE0df27BizC
	0HyJwSwY2mUULxP9hb12WFVOThW2AqLSdA3YlN/pVdUTERbQj+ThZVOiHL0TQxVoiNFjSgJHAkT
	lrKiQ9tczE0QnVmEl++F6oRlxubTpOhKx2WUxGXv3QfNq075zM/zfPE4G/mNUBmjUUWDCDe7IUs
	KIVCkcFfwaSw3wR83Y2NfoVb805h8dWLOixmxCqIp8EJjDMF1X0qRixhZzAIKqK5BKK5SnZ+/+F
	9VKkmVy6s1BA7Ot6yGdqHcsSDUI7M1WV/ta48F+jvJTXJO10pxZmxgeOTaX4msQnBS2SEZ9XvQi
	r96jNthisqINJkNL/vAT5gzJwfZ2qpiQ==
X-Google-Smtp-Source: AGHT+IEYNkiROjyYi24J3DgMM8wSu9Ju/AT9fVlW79l7q+ZTlrVR2euaTguLNQt+vAS6VM2MZVpojQ==
X-Received: by 2002:a05:6000:2209:b0:429:c0f1:fd39 with SMTP id ffacd0b85a97d-42ae5af4c6bmr845703f8f.62.1762469979625;
        Thu, 06 Nov 2025 14:59:39 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42ac6794f63sm1640000f8f.42.2025.11.06.14.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 14:59:39 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 2/5] thermal/drivers: airoha: Generalize probe function
Date: Thu,  6 Nov 2025 23:59:11 +0100
Message-ID: <20251106225929.1778398-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251106225929.1778398-1-ansuelsmth@gmail.com>
References: <20251106225929.1778398-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In preparation for support of Airoha AN7583, generalize the probe
function to address for the 2 SoC differece.

Implement a match_data struct where it's possible to define a more
specific probe and post_probe function and specific thermal ops and
pllrg protect value.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/thermal/airoha_thermal.c | 102 +++++++++++++++++++++++--------
 1 file changed, 75 insertions(+), 27 deletions(-)

diff --git a/drivers/thermal/airoha_thermal.c b/drivers/thermal/airoha_thermal.c
index 01ed49a4887e..864a01fd8fd8 100644
--- a/drivers/thermal/airoha_thermal.c
+++ b/drivers/thermal/airoha_thermal.c
@@ -198,12 +198,23 @@ struct airoha_thermal_priv {
 	struct regmap *chip_scu;
 	struct resource scu_adc_res;
 
+	u32 pllrg_protect;
+
 	struct thermal_zone_device *tz;
 	int init_temp;
 	int default_slope;
 	int default_offset;
 };
 
+struct airoha_thermal_soc_data {
+	u32 pllrg_protect;
+
+	const struct thermal_zone_device_ops *thdev_ops;
+	int (*probe)(struct platform_device *pdev,
+		     struct airoha_thermal_priv *priv);
+	int (*post_probe)(struct platform_device *pdev);
+};
+
 static int airoha_get_thermal_ADC(struct airoha_thermal_priv *priv)
 {
 	u32 val;
@@ -220,7 +231,8 @@ static void airoha_init_thermal_ADC_mode(struct airoha_thermal_priv *priv)
 	regmap_read(priv->chip_scu, EN7581_PLLRG_PROTECT, &pllrg);
 
 	/* Give access to thermal regs */
-	regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT, EN7581_SCU_THERMAL_PROTECT_KEY);
+	regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT,
+		     priv->pllrg_protect);
 	adc_mux = FIELD_PREP(EN7581_MUX_TADC, EN7581_SCU_THERMAL_MUX_DIODE1);
 	regmap_write(priv->chip_scu, EN7581_PWD_TADC, adc_mux);
 
@@ -228,7 +240,7 @@ static void airoha_init_thermal_ADC_mode(struct airoha_thermal_priv *priv)
 	regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT, pllrg);
 }
 
-static int airoha_thermal_get_temp(struct thermal_zone_device *tz, int *temp)
+static int en7581_thermal_get_temp(struct thermal_zone_device *tz, int *temp)
 {
 	struct airoha_thermal_priv *priv = thermal_zone_device_priv(tz);
 	int min_value, max_value, avg_value, value;
@@ -253,7 +265,7 @@ static int airoha_thermal_get_temp(struct thermal_zone_device *tz, int *temp)
 	return 0;
 }
 
-static int airoha_thermal_set_trips(struct thermal_zone_device *tz, int low,
+static int en7581_thermal_set_trips(struct thermal_zone_device *tz, int low,
 				    int high)
 {
 	struct airoha_thermal_priv *priv = thermal_zone_device_priv(tz);
@@ -290,12 +302,12 @@ static int airoha_thermal_set_trips(struct thermal_zone_device *tz, int low,
 	return 0;
 }
 
-static const struct thermal_zone_device_ops thdev_ops = {
-	.get_temp = airoha_thermal_get_temp,
-	.set_trips = airoha_thermal_set_trips,
+static const struct thermal_zone_device_ops en7581_thdev_ops = {
+	.get_temp = en7581_thermal_get_temp,
+	.set_trips = en7581_thermal_set_trips,
 };
 
-static irqreturn_t airoha_thermal_irq(int irq, void *data)
+static irqreturn_t en7581_thermal_irq(int irq, void *data)
 {
 	struct airoha_thermal_priv *priv = data;
 	enum thermal_notify_event event;
@@ -326,7 +338,7 @@ static irqreturn_t airoha_thermal_irq(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
-static void airoha_thermal_setup_adc_val(struct device *dev,
+static void en7581_thermal_setup_adc_val(struct device *dev,
 					 struct airoha_thermal_priv *priv)
 {
 	u32 efuse_calib_info, cpu_sensor;
@@ -356,7 +368,7 @@ static void airoha_thermal_setup_adc_val(struct device *dev,
 	}
 }
 
-static void airoha_thermal_setup_monitor(struct airoha_thermal_priv *priv)
+static void en7581_thermal_setup_monitor(struct airoha_thermal_priv *priv)
 {
 	/* Set measure mode */
 	regmap_write(priv->map, EN7581_TEMPMSRCTL0,
@@ -411,30 +423,26 @@ static void airoha_thermal_setup_monitor(struct airoha_thermal_priv *priv)
 		     FIELD_PREP(EN7581_ADC_POLL_INTVL, 146));
 }
 
-static const struct regmap_config airoha_thermal_regmap_config = {
+static const struct regmap_config en7581_thermal_regmap_config = {
 	.reg_bits		= 32,
 	.reg_stride		= 4,
 	.val_bits		= 32,
 };
 
-static int airoha_thermal_probe(struct platform_device *pdev)
+static int en7581_thermal_probe(struct platform_device *pdev,
+				struct airoha_thermal_priv *priv)
 {
-	struct airoha_thermal_priv *priv;
 	struct device_node *chip_scu_np;
 	struct device *dev = &pdev->dev;
 	void __iomem *base;
 	int irq, ret;
 
-	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
 	priv->map = devm_regmap_init_mmio(dev, base,
-					  &airoha_thermal_regmap_config);
+					  &en7581_thermal_regmap_config);
 	if (IS_ERR(priv->map))
 		return PTR_ERR(priv->map);
 
@@ -454,18 +462,55 @@ static int airoha_thermal_probe(struct platform_device *pdev)
 		return irq;
 
 	ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
-					airoha_thermal_irq, IRQF_ONESHOT,
+					en7581_thermal_irq, IRQF_ONESHOT,
 					pdev->name, priv);
 	if (ret) {
 		dev_err(dev, "Can't get interrupt working.\n");
 		return ret;
 	}
 
-	airoha_thermal_setup_monitor(priv);
-	airoha_thermal_setup_adc_val(dev, priv);
+	en7581_thermal_setup_monitor(priv);
+	en7581_thermal_setup_adc_val(dev, priv);
+
+	return 0;
+}
+
+static int en7581_thermal_post_probe(struct platform_device *pdev)
+{
+	struct airoha_thermal_priv *priv = platform_get_drvdata(pdev);
+
+	/* Enable LOW and HIGH interrupt (if supported) */
+	regmap_write(priv->map, EN7581_TEMPMONINT,
+		     EN7581_HOFSINTEN0 | EN7581_LOFSINTEN0);
+
+	return 0;
+}
+
+static int airoha_thermal_probe(struct platform_device *pdev)
+{
+	const struct airoha_thermal_soc_data *soc_data;
+	struct airoha_thermal_priv *priv;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	soc_data = device_get_match_data(dev);
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->pllrg_protect = soc_data->pllrg_protect;
+
+	if (!soc_data->probe)
+		return -EINVAL;
+
+	ret = soc_data->probe(pdev, priv);
+	if (ret)
+		return ret;
 
 	/* register of thermal sensor and get info from DT */
-	priv->tz = devm_thermal_of_zone_register(dev, 0, priv, &thdev_ops);
+	priv->tz = devm_thermal_of_zone_register(dev, 0, priv,
+						 soc_data->thdev_ops);
 	if (IS_ERR(priv->tz)) {
 		dev_err(dev, "register thermal zone sensor failed\n");
 		return PTR_ERR(priv->tz);
@@ -473,15 +518,18 @@ static int airoha_thermal_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
-	/* Enable LOW and HIGH interrupt */
-	regmap_write(priv->map, EN7581_TEMPMONINT,
-		     EN7581_HOFSINTEN0 | EN7581_LOFSINTEN0);
-
-	return 0;
+	return soc_data->post_probe ? soc_data->post_probe(pdev) : 0;
 }
 
+static const struct airoha_thermal_soc_data en7581_data = {
+	.pllrg_protect = EN7581_SCU_THERMAL_PROTECT_KEY,
+	.thdev_ops = &en7581_thdev_ops,
+	.probe = &en7581_thermal_probe,
+	.post_probe = &en7581_thermal_post_probe,
+};
+
 static const struct of_device_id airoha_thermal_match[] = {
-	{ .compatible = "airoha,en7581-thermal" },
+	{ .compatible = "airoha,en7581-thermal", .data = &en7581_data },
 	{},
 };
 MODULE_DEVICE_TABLE(of, airoha_thermal_match);
-- 
2.51.0


