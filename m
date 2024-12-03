Return-Path: <devicetree+bounces-126530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 701499E1A29
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD3131673FD
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:01:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94C2E1E3785;
	Tue,  3 Dec 2024 11:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Yf9MrkiH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885D71E376B
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223682; cv=none; b=PSEocngZ1W8T8pKOf/4K0SlMXnVfTpIScEjxAmQ9lyHZqjmIjDZXmx0u9NE7TF8uKUlwHnu5ObKQletCSrkciqYSmHH4qKEC2WXYq5Tj68PJ/veiUN6CcFqoPUSStgHfEHKUC7SGo1s4kbh/CALlW/fr6hJlTsOh65GOxxbBfic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223682; c=relaxed/simple;
	bh=3VYK2lqcXHXpyUFZjq+zgESMLPVepCyq2JNbLTqaCCM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nR8AmTMc7eP1qWX3q4maO/xpCzmaP+CYVPr1fWo2lUh3HPIGHweBFoaDfxn8urgRYdlLFqAlFhddi5Q2OiAqJLdFZ8VxEVC459U0ClhQtC7CxfrK33I+Mxkb34xZ+93jhCnCwBrjnz38kmpWwmZNYTjnHp27ShAwL9xp/87ZfSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Yf9MrkiH; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43497839b80so34411465e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:01:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733223678; x=1733828478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lXqiwyOCn9KgPUbNo99Xcjj0+MMaaSIu7O76gHJWUsY=;
        b=Yf9MrkiHRxbGYQkISlZYnSHCdVYQxUsWVin3BbretVg2In2KHnMJpgg6niitHtj8XV
         xh33dVIJPQs7SjhreBERn8D7Cubi4xMFKkEqnwzb37tPEnGKFT2lXu84dSlDkY9tHe7F
         K20umvaVa+bPc9VhBSNM7T47mIUEhK7NEywNJYBBysRvQeVGXHSDYw190jX9UtOxlU8V
         bpSoKnSm0wd6HMauif2+o2krO6feA5bxPmJgG49edqzDuMnX69G/gmiDxgXMLK6Ut0GE
         iIV3TndDPepOGVLd2IpeAVkqAMwkiMw+LB03w8qdn2NBGV5ndAvOrIvRYU/aEa3WLM8h
         oSKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223678; x=1733828478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lXqiwyOCn9KgPUbNo99Xcjj0+MMaaSIu7O76gHJWUsY=;
        b=LLz1ulybHjcmUElpfGmB4RCPOx2mPAw5ZJ7lYshN7fyNCw3nGCeTN6rOLCyENftpTJ
         9XZ95jXczcTPZNmgkZuiiS3zY7XlT8fNFgYlR936Rnzf2/ifYdJuWGQBm9HEtW7Yi7Ij
         zbrsrDPX22rmRzkb+BFO+CAQYaOT9ITRrlKWfIlLA0S1Mr6ET4FWtXZbRzsSGZ/hRumh
         7jINLNgZavztARC/U5SL1P0CjLcLvfL3NKhiiwh4o4BXeOjqSeAgfxvHIODRY1U/VCSY
         iw3JJT2zPm/RdXOlM7ABuNP76knKwTU7EyVYd9OpfNyWzDYlPkspTV99uZ94hOABEfH7
         /ZmA==
X-Forwarded-Encrypted: i=1; AJvYcCUgjBiRQSmOpvxC6iveBOe4P3q8pmiT30tlpclZTkeHyQYpN1v/grjjSdc02kEGfS1m/w7x8fdxHgCO@vger.kernel.org
X-Gm-Message-State: AOJu0YyNssDwpnnMaMmEH1y/omu8buR22MuRsgfQgciMTRw5wGcM8JD7
	gXo+6d03pL51/G5sQo9OuPNs+bFZmRVWQxi3PiNrXtEkLh3xGdtXFDJOplsz5Bo=
X-Gm-Gg: ASbGncu6enUNN3kwu3dwNgb/SerSc94e67y+0Ujnw237yZjzYX3FAo9NwU5uOiZC4PN
	JF62VCkU4M0XYw5KAjQthvo8fcw2/7tOG0ppwzWhaY98U5psGyfn5WWH0gtza98qd29gaiI3jJT
	sBnbaOpwVclK+GWe+usP8JibwdwUiYfZ7kf1fdxvr3O3zPhEHcI/NqUGpLIMohjWwFYKlWD7M2d
	iF/JjZ4UEHqvEse8VYMutx0pP6FFHl1eNGBQTQmgGYx/B0MxAlWEE+MDRPjGbm5BnmEjz1Lehcx
	fAudIb6oWQ90BbshZmcBSpgyjSSrn0DNN/J9/dQ=
X-Google-Smtp-Source: AGHT+IHtSclrp3QC7hjpPABWd7OdpU4+C8YWTztDnBjYkXuNC1kbZIKah2nxUaR+7LG2SVctavsyLA==
X-Received: by 2002:a05:6000:2b0b:b0:385:fc70:832 with SMTP id ffacd0b85a97d-385fd3cb127mr1095643f8f.16.1733223677951;
        Tue, 03 Dec 2024 03:01:17 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7e5e59sm220478035e9.44.2024.12.03.03.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:01:17 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-iio@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	devicetree@vger.kernel.org,
	Nuno Sa <nuno.sa@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v5 04/10] iio: adc: ad_sigma_delta: Add support for reading irq status using a GPIO
Date: Tue,  3 Dec 2024 12:00:24 +0100
Message-ID: <20241203110019.1520071-16-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
References: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4052; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=3VYK2lqcXHXpyUFZjq+zgESMLPVepCyq2JNbLTqaCCM=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnTuTQPIMxf/kANGRxUASya61ZjKGNpN0xlaFan tfW8FmkCwmJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ07k0AAKCRCPgPtYfRL+ TsttB/9AxvdY4SibFdPk0V+GqGCMwPDmRD/tV/YO8VOYatnpwO6Pm/l2ReN2/xEMb/5rlX9NQj2 CuiK3EuWFzm7czonfdaguVtujaYHUnbFdgaQyyt7qF+IEB4/tqoVymhk0/61an7u9GdB7eqJpLv GuT9jH9X7iKFsIYso2FYbjYkD9iuqRz0htyrlxOIU7QlArzdqvcUQyLEPPgylS/mkW1NVJrxDQz AoEFHj8+K9B0V3omseG6KKnHZyq8V/zv70Rl9ESlsYOVS4ebnzpL6wwUhmAflJwpoZJUuzAQI25 CnAXaeZKcAw4yPEL+y17+z0ENj8UsZuFlcur1uI+c7GnynP+
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Some of the ADCs by Analog signal their irq condition on the MISO line.
So typically that line is connected to an SPI controller and a GPIO. The
GPIO is used as input and the respective interrupt is enabled when the
last SPI transfer is completed.

Depending on the GPIO controller the toggling MISO line might make the
interrupt pending even while it's masked. In that case the irq handler
is called immediately after irq_enable() and so before the device
actually pulls that line low which results in non-sense values being
reported to the upper layers.

The only way to find out if the line was actually pulled low is to read
the GPIO. (There is a flag in AD7124's status register that also signals
if an interrupt was asserted, but reading that register toggles the MISO
line and so might trigger another spurious interrupt.)

Add the possibility to specify an interrupt GPIO in the machine
description in addition to the plain interrupt. This GPIO is used then
to check if the irq line is actually active in the irq handler.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad_sigma_delta.c       | 38 ++++++++++++++++++++++----
 include/linux/iio/adc/ad_sigma_delta.h |  2 ++
 2 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index ea4aabd3960a..7f4eae5244dc 100644
--- a/drivers/iio/adc/ad_sigma_delta.c
+++ b/drivers/iio/adc/ad_sigma_delta.c
@@ -539,12 +539,29 @@ static irqreturn_t ad_sd_data_rdy_trig_poll(int irq, void *private)
 {
 	struct ad_sigma_delta *sigma_delta = private;
 
-	complete(&sigma_delta->completion);
-	disable_irq_nosync(irq);
-	sigma_delta->irq_dis = true;
-	iio_trigger_poll(sigma_delta->trig);
+	/*
+	 * AD7124 and a few others use the same physical line for interrupt
+	 * reporting (nRDY) and MISO.
+	 * As MISO toggles when reading a register, this likely results in a
+	 * pending interrupt. This has two consequences: a) The irq might
+	 * trigger immediately after it's enabled even though the conversion
+	 * isn't done yet; and b) checking the STATUS register's nRDY flag is
+	 * off-limits as reading that would trigger another irq event.
+	 *
+	 * So read the MOSI line as GPIO (if available) and only trigger the irq
+	 * if the line is active. Without such a GPIO assume this is a valid
+	 * interrupt.
+	 */
+	if (!sigma_delta->rdy_gpiod || gpiod_get_value(sigma_delta->rdy_gpiod)) {
+		complete(&sigma_delta->completion);
+		disable_irq_nosync(irq);
+		sigma_delta->irq_dis = true;
+		iio_trigger_poll(sigma_delta->trig);
 
-	return IRQ_HANDLED;
+		return IRQ_HANDLED;
+	}
+
+	return IRQ_NONE;
 }
 
 /**
@@ -679,6 +696,17 @@ int ad_sd_init(struct ad_sigma_delta *sigma_delta, struct iio_dev *indio_dev,
 	else
 		sigma_delta->irq_line = spi->irq;
 
+	sigma_delta->rdy_gpiod = devm_gpiod_get_optional(&spi->dev, "rdy", GPIOD_IN);
+	if (IS_ERR(sigma_delta->rdy_gpiod))
+		return dev_err_probe(&spi->dev, PTR_ERR(sigma_delta->rdy_gpiod),
+				     "Failed to find rdy gpio\n");
+
+	if (sigma_delta->rdy_gpiod && !sigma_delta->irq_line) {
+		sigma_delta->irq_line = gpiod_to_irq(sigma_delta->rdy_gpiod);
+		if (sigma_delta->irq_line < 0)
+			return sigma_delta->irq_line;
+	}
+
 	iio_device_set_drvdata(indio_dev, sigma_delta);
 
 	return 0;
diff --git a/include/linux/iio/adc/ad_sigma_delta.h b/include/linux/iio/adc/ad_sigma_delta.h
index f8c1d2505940..126b187d70e9 100644
--- a/include/linux/iio/adc/ad_sigma_delta.h
+++ b/include/linux/iio/adc/ad_sigma_delta.h
@@ -29,6 +29,7 @@ struct ad_sd_calib_data {
 
 struct ad_sigma_delta;
 struct device;
+struct gpio_desc;
 struct iio_dev;
 
 /**
@@ -96,6 +97,7 @@ struct ad_sigma_delta {
 	unsigned int		active_slots;
 	unsigned int		current_slot;
 	unsigned int		num_slots;
+	struct gpio_desc	*rdy_gpiod;
 	int		irq_line;
 	bool			status_appended;
 	/* map slots to channels in order to know what to expect from devices */
-- 
2.45.2


