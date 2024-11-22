Return-Path: <devicetree+bounces-123762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D039D5E33
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 12:34:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 567C3281564
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B111DEFD8;
	Fri, 22 Nov 2024 11:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ueVN1zcI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265791DE4C5
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 11:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732275251; cv=none; b=n1AEVzugsmF9zmhO8qczwc8tEBEU/iAQD6VP8CPtVwruF4+PLpms8/xGPiIM/qGOTZdXqd+3BsnZbR3VBRxiHFvapQCdu19zZrbI9voG25bd6DuyCfZ1DLbYVSTtj762tjGd12RhAp8UUr/tBNmgjueS9rSq0eRArvTwYJuTBoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732275251; c=relaxed/simple;
	bh=SBgp/ABTYxk+qV+nwz/VSGkPh5JOuikR+B/LV0eJ0E8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uSRoe0Z1T8jwOwE7semcDD/tY8Y3spdDK9O4e5lIvQCBdtjrIUaTb4E6LE1fNoWk5X5/WU4XPusoiU9Sc89lot5TRWhNvDsxWrLSzrI5nFOJyu1Q5FvsOm3sU3zLA0ph6n2/vNd3iWLh3rrDYDJn9G6Z4VhK2vM33aUD+lPevjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ueVN1zcI; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3824a8a5c56so1308793f8f.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 03:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732275248; x=1732880048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rPMi+9tgXxLof1o1SgxfdNx0aQiFAp3/iUhEKOQFEfY=;
        b=ueVN1zcI8nWduJNUajwFPI2UhBRxzO6c6ZBO4D6v86jormBwQlDcQb9TR4SH/P3Zv+
         rZ7yACpghMoy47Qen7dvcP2eL/SNUuiB0SpSI8gf2vakgpPLodi4UNGTxlT0whe2vvqB
         gI8Adr7UXwfHKmzzgfPzM77X8yIH5xQb0Jxgk5p27s/3EqEGvtrlA0yXc9mMTrR9G/Hq
         pq/c8l6xavjIhJt5H/xbO3YXtjcxX8KsPmMkdtyQ58MQZ1ppSe6oidR3bUsK74CoaQ/Y
         pX5vYAw7/2231kyEhsQGM8aTYzlWryD0kU+YDCQiGINPpMKQISb6Pp/5bV6RuZsHle5j
         1J7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732275248; x=1732880048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rPMi+9tgXxLof1o1SgxfdNx0aQiFAp3/iUhEKOQFEfY=;
        b=tdcO/bKUy0XzERiaj2VVTML0gITMp0W5l6oFl5FtAjrp/9BpF6HQ2XqSvDDVPoRxI4
         1hF19rUmhUrgF2SAyMMh+a2ynsnVpc9q2gS3urgje2xadmnUfZjIisDG5MSqZqD36O4q
         qZtYlzR5wCGH8jMVr/LBr6xPuci3j2yeDquR00On5q/iLRKiQNues/3hiCZDGIFlvWeE
         0m0etDvMZ4OUuDxP+ID5aa3d852p/9bn13Qpt5BDWBWAfAGDlhXTMKnN9rBD9GdkiaxZ
         5EgmRfj/E+ylNMMjkhv+Z1U/tORQbWhR2IkObniY+9t9XG34UjGMSC+mXPHSfaOmAftb
         vJgA==
X-Forwarded-Encrypted: i=1; AJvYcCVNPdeLSpvjhdHPKjDpjNhAHrn8MjI78ZaEXzBXkw9LTl3S7VxUwCiafqOnWDCxFbXhrQowdiO+n/yf@vger.kernel.org
X-Gm-Message-State: AOJu0YwSG4A/b4aJAsJmyO1t+khsp6LS+S40psS8LnCHGDSJK3qHX6Xg
	TwedmEmpD2yzjLphcaNOB3F1Y4flwFAEgl5s0zxEkwDLkOCLKVyHlbSi0S4uiwI=
X-Gm-Gg: ASbGnct5aq3LIZKooLZjfHa6JJMh//zYpLvHn6Ep06Oc7me1m4mXbeWjMLcNL6IgtAW
	nLPxryExOewA9zcMr7Ahu27TKTbRPLZjrOp+snC6kcb4uMuJq1ZFbExNxqMVHjWBLn+k9b5X0Zc
	HSvSzNIH+jHuju6fN02jqd6Xf6nw4C8Gb0+qxZ6iFOqL7uRfXHi6HJcV6eY6HncB32r5ODns9f7
	2LtEAcmciGUHv606NDa5r+jwzkk54ClLXRgb3TS/JDU66vDrEhBe++1JnPUi+SxUY453a8rSKFo
	T1E=
X-Google-Smtp-Source: AGHT+IFxoHZHZMl48K+u3YOsQKV6ZrXJG6+RtyQoe48KJlLp9mnvEHw+4H6bx9CP4fOKzkRIAbvhbA==
X-Received: by 2002:a5d:5985:0:b0:382:5010:c8cd with SMTP id ffacd0b85a97d-38260bcc640mr2048501f8f.44.1732275248594;
        Fri, 22 Nov 2024 03:34:08 -0800 (PST)
Received: from localhost (p509159f1.dip0.t-ipconnect.de. [80.145.89.241])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbed99dsm2111241f8f.94.2024.11.22.03.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 03:34:08 -0800 (PST)
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
Subject: [PATCH v3 08/10] iio: adc: ad_sigma_delta: Check for previous ready signals
Date: Fri, 22 Nov 2024 12:33:27 +0100
Message-ID: <20241122113322.242875-20-u.kleine-koenig@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4698; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=SBgp/ABTYxk+qV+nwz/VSGkPh5JOuikR+B/LV0eJ0E8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnQGwWTMKLY4vNh0+ORZ+7HMixLfb6SjqViRpX4 zllCNwdf7OJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ0BsFgAKCRCPgPtYfRL+ TtHeCACeSvHzlotmyz7yTcDdyUfB0wDhMWapQsRukaKDm/ZyUuzc+BfW2iIjlNM9ZEu6Q0lLOYV Lm0vbuFYbJvmPC1CVpagU1/tRXUdgx0e2iTPrLq8bn2edVqyBICTrZmy84yrjte08txX2MK9Ywf G3S5uLv0TrVSsLng2H257ncRXOsofkTTCCjGodPTLhvd4MLZE4LxRw2atlUzHwuIxz8b2cv3NVf Pu9xRxbp2o52TPmDOcR8wCsUBQA01yZocsjHgPGcqA/9XrhI4fsd4+gSLC7LzFO7JC3W0zWQeZ9 ofeOFDXymM2ovJFVe43684ufVV1Rx8tDWVHB529Z8WbUfWAL
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

It can happen if a previous conversion was aborted the ADC pulls down
the ̅R̅D̅Y line but the event wasn't handled before. In that case enabling
the irq might immediatly fire (depending on the irq controller's
capabilities) and even with a rdy-gpio isn't identified as an unrelated
one.

To cure that problem check for a pending event before the measurement is
started and clear it if needed.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad_sigma_delta.c | 91 ++++++++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index 19cb9b7b62c6..8bc652b71019 100644
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
@@ -222,6 +225,82 @@ static void ad_sd_enable_irq(struct ad_sigma_delta *sigma_delta)
 	enable_irq(sigma_delta->irq_line);
 }
 
+/* Called with `sigma_delta->bus_locked == true` only.  */
+static int ad_sigma_delta_clear_pending_event(struct ad_sigma_delta *sigma_delta)
+{
+	int ret = 0;
+	bool pending_event;
+
+	/*
+	 * read RDY pin (if possible) or status register to check if there is an
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
+	if (pending_event) {
+		/*
+		 * In general the size of the data register is unknown. It
+		 * varies from device to device, might be one byte longer if
+		 * CONTROL.DATA_STATUS is set and even varies on some devices
+		 * depending on which input is selected. So send one byte to
+		 * start reading the data register and then just clock for some
+		 * bytes with DIN (aka MOSI) high to not confuse the register
+		 * access state machine after the data register was completely
+		 * read. Note however that the sequence length must be shorter
+		 * than the reset procedure.
+		 */
+		unsigned int data_read_len = DIV_ROUND_UP(sigma_delta->info->num_resetclks, 8);
+		uint8_t data[9];
+		struct spi_transfer t[] = {
+			{
+				.tx_buf = data,
+				.len = 1,
+			}, {
+				.tx_buf = data + 1,
+				.len = data_read_len,
+			}
+		};
+		struct spi_message m;
+
+		/* Oh, back out instead of overflowing data[] */
+		if (data_read_len > sizeof(data) - 1)
+			return -EINVAL;
+
+		spi_message_init(&m);
+		if (sigma_delta->info->has_registers) {
+			unsigned int data_reg = sigma_delta->info->data_reg ?: AD_SD_REG_DATA;
+
+			data[0] = data_reg << sigma_delta->info->addr_shift;
+			data[0] |= sigma_delta->info->read_mask;
+			data[0] |= sigma_delta->comm;
+			spi_message_add_tail(&t[0], &m);
+		}
+
+		/*
+		 * The first transferred byte is part of the real data register,
+		 * so this doesn't need to be 0xff. In the remaining
+		 * `data_read_len - 1` bytes are less than $num_resetclks ones.
+		 */
+		data[1] = 0x00;
+		memset(data + 2, 0xff, data_read_len - 1);
+		spi_message_add_tail(&t[1], &m);
+
+		ret = spi_sync_locked(sigma_delta->spi, &m);
+	}
+
+	return ret;
+}
+
 int ad_sd_calibrate(struct ad_sigma_delta *sigma_delta,
 	unsigned int mode, unsigned int channel)
 {
@@ -237,6 +316,10 @@ int ad_sd_calibrate(struct ad_sigma_delta *sigma_delta,
 	sigma_delta->keep_cs_asserted = true;
 	reinit_completion(&sigma_delta->completion);
 
+	ret = ad_sigma_delta_clear_pending_event(sigma_delta);
+	if (ret)
+		return ret;
+
 	ret = ad_sigma_delta_set_mode(sigma_delta, mode);
 	if (ret < 0)
 		goto out;
@@ -310,6 +393,10 @@ int ad_sigma_delta_single_conversion(struct iio_dev *indio_dev,
 	sigma_delta->keep_cs_asserted = true;
 	reinit_completion(&sigma_delta->completion);
 
+	ret = ad_sigma_delta_clear_pending_event(sigma_delta);
+	if (ret)
+		return ret;
+
 	ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_SINGLE);
 
 	ad_sd_enable_irq(sigma_delta);
@@ -406,6 +493,10 @@ static int ad_sd_buffer_postenable(struct iio_dev *indio_dev)
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


