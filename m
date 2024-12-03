Return-Path: <devicetree+bounces-126535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6645F9E1A34
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:02:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0BD01673AA
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DBFB1E3780;
	Tue,  3 Dec 2024 11:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="i4FxtLLZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B818D1E3772
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223695; cv=none; b=ZKIac03CpIeHO/0XwOOvKHPAelRFgnIoVR3IjmvKZVwPrqHkt2fAPInrw+4A6RbJ2jBnEW4bYDToLtREV3gOymC1r1c++RnXZ0qzqop8GnrZuUiLOKmh1Vr0L8URxA5ToolgnnK8fSV9lChz84xrOBUb6njMHkk32kd7L+XYn8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223695; c=relaxed/simple;
	bh=he0cVYfpQa7wau1Twc6qaQz5l4LmLSj99huWty3K/Cw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=L33XZAULFs4A94PZXj3DR9QMm0lYTC3gQjCpQtMItT8CwmUMmyz8puB2uK4WkgTH6EIZ6mmSilwwU1amuYDzdXu7atVKZscS6BMbjXqWB7pDG2pPOJJqUa9qYuyYLZRpYVGw9QiKmkc7tq3v1rjFg2d+1KCuSxFicNskgoENiRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=i4FxtLLZ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-432d86a3085so44964895e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733223691; x=1733828491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CAPSxJRsat27AY9i39eot3picgBFBz4qPGxgGT/SB/k=;
        b=i4FxtLLZfjJvbDoZqKG6Ziosj9lvXZyJ/UF+UjoiQZ4eiq/M2TxUcRIs1w6L3R6Y5m
         KLh3paYXGYshg0qCc8aKv2u6tofxPr6uDcvsaxSkIUz1EdCTscD2oA1cHHue4JjXAa3t
         ULdPF8YbwzDPDiN8EB5hEnprApVsCkDMfoO/nceueVftiEv3XSZm3s1iD6o/PzjJBQ2Y
         1tzdXPlJ79KLqT2hHG/sfJh7tMF640DMnNl+DJws47+hPpKP3B9prXqU/6LGyJGelq9R
         vFxy6bGWZPlYkgXkDBdt0laHHAZADaOLdexmh9WF7qHYETNf4SwlgcLmWovfHBlPXPfI
         7SjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223691; x=1733828491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CAPSxJRsat27AY9i39eot3picgBFBz4qPGxgGT/SB/k=;
        b=pL89wb8wDNZ2W5yjpvQ1T0zAmzg8yh9hvTYgs+JOKGp6kavn9pyaYIS51k3lA09U90
         dFw7wkCkiEWdYRxL9i7L3CvCKDg/cxgVEStom/rH+z5vp9VO2L4SUSOESEyzNKBgq+i5
         l8asDu2uH8eG43x/bOIGy3mLSNZKCoLBNLJtEoXGxmsf3IyymxsJqVc5dgSGOkZ1MrzB
         V9ljl+e96KH/Ebgb6MFFAVEKAgQk1FU8cQ7q+Jm/WaVj0wUSmez8Ggp6tFkr2bwQTa7U
         aWxNd57ESkhlX76YWdRFHykxMMtbmhQkKJnPmWI8zSPpVmd5i0rMK9ErQf4BhpFGO8Ko
         puCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAQFkIO+RKkqj2bV1K1DSVv9rw35AewVKi8hvcLqR/zR8+Uh9jwI9MO8fzSUj1cNtxYhe2fPmnJPTp@vger.kernel.org
X-Gm-Message-State: AOJu0YzMmAfdI9jyq+G/nJZmCVd7y18Rk4cQIMqnLXB5+WzUa0vbua+G
	/pkkBnUZS3t4Q6z0vgaJPHRd5wjbTss/ZseSX4cSKf5awBqZooZ0cV3Wto6qD14=
X-Gm-Gg: ASbGncuWQPNZThKt5V1WfpaeLoYTgiZx7Jkr1ExQ9ZWUKaMvum4IM3EEIeSjIMgu3XC
	Sm4fsq1jEMV7WVcDexmGSlZjxJq7vqVNIesFae/IGjovg+qdnVd5K8BJPX499WaOOLpKUkJ106N
	3SxPEMsdh/XD6i/Yu+ndk+XdwA7sKadnauiG76nfnjqccf9EeqSMutjoIfqw3MDpstxh59wPtmh
	emy/qWukkGPmjxV8jv7hA7gGSTje7FlsMXGTqat/2mnJKOcobUt2XVcVqoUQQCnQpQ7H0Az8nkL
	SmuPJ9uOc1NvGoEVe0Zm9xuY/gd/1q6aEMFks4U=
X-Google-Smtp-Source: AGHT+IFEJsYsYdux6mhCaE37wdpAJDggu6sQhGj817bafGfcjjCLQ4j+iwrB9dOfbcPr2R/2g1vzeQ==
X-Received: by 2002:a5d:6dae:0:b0:385:e013:73f6 with SMTP id ffacd0b85a97d-385fd4358aemr1548302f8f.50.1733223691039;
        Tue, 03 Dec 2024 03:01:31 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e038fd96sm11631001f8f.99.2024.12.03.03.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:01:30 -0800 (PST)
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
Subject: [PATCH v5 08/10] iio: adc: ad_sigma_delta: Check for previous ready signals
Date: Tue,  3 Dec 2024 12:00:28 +0100
Message-ID: <20241203110019.1520071-20-u.kleine-koenig@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4681; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=he0cVYfpQa7wau1Twc6qaQz5l4LmLSj99huWty3K/Cw=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnTuTdf05eTNCYKfIAfYuGAzAtKhzuaX0MxXuXC 7TzctAPdvCJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ07k3QAKCRCPgPtYfRL+ TgezB/wK5Rl6LOswxnyfRkwy8hZVuQQJ6LH03eZKcdabo5tOR9K6yv8k4vLq3eU53XN8iI3mrNq puVR56fxnZZMKP8tqCbLlM2aO9eqI0ANEcmRNx3K8+MU0Lz6E6+gljPN1uGVctD27EDJjl+Mc8B 6jxn1Rx0SCEY5lYxbIlwjgexRYdlIEWyTkZoCwqb6XsnaBBqURuzASe1PQ0prrorEi+r9rFKupd 4wYPWBLDZ1jVr0yhoi1LQDtuXNjqKWQvkr9DcekwyMvFJiTV3NLfTJua43q8UD28Jp4VJK44nte ZRd9dXZuz5fpWznRxW+txHjZnbU28DD1GP1TEzEY2K+jLK9O
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

It can happen if a previous conversion was aborted the ADC pulls down
the ̅R̅D̅Y line but the event wasn't handled before. In that case enabling
the irq might immediately fire (depending on the irq controller's
capabilities) and even with a rdy-gpio isn't identified as an unrelated
one.

To cure that problem check for a pending event before the measurement is
started and clear it if needed.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad_sigma_delta.c | 95 ++++++++++++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index 9891346c2d73..308e24dbfd16 100644
--- a/drivers/iio/adc/ad_sigma_delta.c
+++ b/drivers/iio/adc/ad_sigma_delta.c
@@ -29,8 +29,11 @@
 #define AD_SD_COMM_CHAN_MASK	0x3
 
 #define AD_SD_REG_COMM		0x00
+#define AD_SD_REG_STATUS	0x00
 #define AD_SD_REG_DATA		0x03
 
+#define AD_SD_REG_STATUS_RDY	0x80
+
 /**
  * ad_sd_set_comm() - Set communications register
  *
@@ -222,6 +225,86 @@ static void ad_sd_enable_irq(struct ad_sigma_delta *sigma_delta)
 	enable_irq(sigma_delta->irq_line);
 }
 
+#define AD_SD_CLEAR_DATA_BUFLEN 9
+
+/* Called with `sigma_delta->bus_locked == true` only. */
+static int ad_sigma_delta_clear_pending_event(struct ad_sigma_delta *sigma_delta)
+{
+	bool pending_event;
+	unsigned int data_read_len = BITS_TO_BYTES(sigma_delta->info->num_resetclks);
+	u8 *data;
+	struct spi_transfer t[] = {
+		{
+			.len = 1,
+		}, {
+			.len = data_read_len,
+		}
+	};
+	struct spi_message m;
+	int ret;
+
+	/*
+	 * Read RDY pin (if possible) or status register to check if there is an
+	 * old event.
+	 */
+	if (sigma_delta->rdy_gpiod) {
+		pending_event = gpiod_get_value(sigma_delta->rdy_gpiod);
+	} else {
+		unsigned status_reg;
+
+		ret = ad_sd_read_reg(sigma_delta, AD_SD_REG_STATUS, 1, &status_reg);
+		if (ret)
+			return ret;
+
+		pending_event = !(status_reg & AD_SD_REG_STATUS_RDY);
+	}
+
+	if (!pending_event)
+		return 0;
+
+	/*
+	 * In general the size of the data register is unknown. It varies from
+	 * device to device, might be one byte longer if CONTROL.DATA_STATUS is
+	 * set and even varies on some devices depending on which input is
+	 * selected. So send one byte to start reading the data register and
+	 * then just clock for some bytes with DIN (aka MOSI) high to not
+	 * confuse the register access state machine after the data register was
+	 * completely read. Note however that the sequence length must be
+	 * shorter than the reset procedure.
+	 */
+
+	data = kzalloc(data_read_len + 1, GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	spi_message_init(&m);
+	if (sigma_delta->info->has_registers) {
+		unsigned int data_reg = sigma_delta->info->data_reg ?: AD_SD_REG_DATA;
+
+		data[0] = data_reg << sigma_delta->info->addr_shift;
+		data[0] |= sigma_delta->info->read_mask;
+		data[0] |= sigma_delta->comm;
+		t[0].tx_buf = data;
+		spi_message_add_tail(&t[0], &m);
+	}
+
+	/*
+	 * The first transferred byte is part of the real data register,
+	 * so this doesn't need to be 0xff. In the remaining
+	 * `data_read_len - 1` bytes are less than $num_resetclks ones.
+	 */
+	t[1].tx_buf = data + 1;
+	data[1] = 0x00;
+	memset(data + 2, 0xff, data_read_len - 1);
+	spi_message_add_tail(&t[1], &m);
+
+	ret = spi_sync_locked(sigma_delta->spi, &m);
+
+	kfree(data);
+
+	return ret;
+}
+
 int ad_sd_calibrate(struct ad_sigma_delta *sigma_delta,
 	unsigned int mode, unsigned int channel)
 {
@@ -237,6 +320,10 @@ int ad_sd_calibrate(struct ad_sigma_delta *sigma_delta,
 	sigma_delta->keep_cs_asserted = true;
 	reinit_completion(&sigma_delta->completion);
 
+	ret = ad_sigma_delta_clear_pending_event(sigma_delta);
+	if (ret)
+		return ret;
+
 	ret = ad_sigma_delta_set_mode(sigma_delta, mode);
 	if (ret < 0)
 		goto out;
@@ -310,6 +397,10 @@ int ad_sigma_delta_single_conversion(struct iio_dev *indio_dev,
 	sigma_delta->keep_cs_asserted = true;
 	reinit_completion(&sigma_delta->completion);
 
+	ret = ad_sigma_delta_clear_pending_event(sigma_delta);
+	if (ret)
+		return ret;
+
 	ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_SINGLE);
 
 	ad_sd_enable_irq(sigma_delta);
@@ -406,6 +497,10 @@ static int ad_sd_buffer_postenable(struct iio_dev *indio_dev)
 	sigma_delta->bus_locked = true;
 	sigma_delta->keep_cs_asserted = true;
 
+	ret = ad_sigma_delta_clear_pending_event(sigma_delta);
+	if (ret)
+		return ret;
+
 	ret = ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_CONTINUOUS);
 	if (ret)
 		goto err_unlock;
-- 
2.45.2


