Return-Path: <devicetree+bounces-191770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CEDAF05D6
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 23:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAE201C07CC0
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 21:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6D03309DCA;
	Tue,  1 Jul 2025 21:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uzFV2QfR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F16F3093DE
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 21:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751405986; cv=none; b=FLTvtB3SVDlIjgZ4f30rmhLUm74VPQk+Gb6m55rNhbNLP9pGgVEv9m54PXKPF02so/HssZfV0mY6+fUO3rqlewDj9RP3F+6WQcqSYo1WxZLQFi/LDp87R8PAhQrsDsUZgMzaT/+wmXAP5/+U3E4TuIuA1osiR8+YDr2yDegKCuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751405986; c=relaxed/simple;
	bh=x4deODr2J/B/ZfZk3+/1/BV8bYxvy5G2y6ggy6cAeUc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rlVDVgipzn5uM3nst3c39FTdTo8hswFx4vqSEEyred06wwI3V/3/6EiAeU/IVMGw4Eq8oT/NaqvJUqamAGD/Rzkn7gV3Zkhslcqc7nH8uFS6kxQZsQZw3Zbdr4gbUjdMkJEJrc53KloLxP6+oNQyLlv7Wuqj/37qJl4DdO7k8y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uzFV2QfR; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-40abe6f8f08so2847292b6e.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 14:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751405983; x=1752010783; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=suln3ZPyOtbgf+467Jl0jyyrQzWY3/ACSgQiyK4V5QE=;
        b=uzFV2QfR/9O4bbbkOJxLfJ4apFXo+I2UDKekRLkUk2CR62s4ds7TvNdaFJaNr15UV9
         as/jpcwB9qphSeaOpw+0nyZirN0iBZ/+21NSkzFTlY9vKyriqkDIsTTGUn76ST45j+PL
         U4F8fyclyDjm/uQeJ5aOMvZB1eegv4aE+CaF3hSJPBypZkguCgesL/zAd027ZMb+LYij
         qUb/Fdbts06kGmSjvYCwBQeIbF+HLGlCkkYpU2RInFkQcZCCL/lPEjk7ZViE3OA+FeMH
         dGFz25q0NMAiRxEp4JxBUjleM5GP32g4p/+s5aLh7lnHZQFOd6lR4A8oFEkWLs7Gl8d3
         QWfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751405983; x=1752010783;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=suln3ZPyOtbgf+467Jl0jyyrQzWY3/ACSgQiyK4V5QE=;
        b=Y+1YktSUlVGDAaTMaV6vui3SRR4Y2v7ZrpC+8XqewveKaHqYeWDXhqXGF8xziANPK6
         uXXeqL+QIkNFx8osAEbil+5u7qdEGfjMKC+oOzk2UVeffIB+s3ExxjhsF+PM8RzIVfJA
         fcx7885JnskPFg6FcvE3CZFyXDJxHZfJjKrS4c/Vv/lLBexGV1uk9BesQXrwBZ4uhAbK
         nwakDK5zko/q5g2kn49nxjoYsg7yWBzimSVqcZm/QTE7uL3UrhYxXnBCp/R/NM9ZV76b
         Xmp0o9zwtfyeNt3TZrQvuRKuXazUrO7lcYTG5DPRL2An0sJy/EYbIEmFx0J/xl2m6TC9
         Sn8g==
X-Forwarded-Encrypted: i=1; AJvYcCXYhEDz5c+yvzSyE8NlXC9SscTqZ9ufh9lcqnQilN6nlP2jEcZsIVECtXIWnnmL0GRAX3c/+zD2NVch@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2OgEVM3TnMEG1PbrFfMRVIPh5eIsDNd19TGTeeU0kmRPc9cZx
	fieEeQWrvUh4P9VAcRjyS4l8iZNcd1RjZyDHdJpcRXYnKBI1mkrxSlDgiTqkWptO2FM=
X-Gm-Gg: ASbGncu8SxQi6XkFbU9XeUp3MvumR0ABwvW/XmtlftwmpFqhJCBVme2p5XQexPoPh2X
	5D9ZaiEWM5DrJU/6t9zgbdSbDKBQm3el7jOk2vORnWDIFEPNB5JtKCZ+9zrmKig0xRfJkoF8Sry
	+cZnABAV3BWwaOOdDXMpCl8Kc25UKh0po3fIkfGu2UOmJjZcFIfOQuxo7FTqcBVPqO1HapzVCdC
	S8L2f1SGREyLDlwv43vyPqqQG426UEcNR4b/nqgg72YIih3iOUmVh6WcZnJIhuYnjHTM9A++JpG
	JZo14DiRGaS3lmorxC01VJGgy1ChrE1FN56s4Q0+pE3R2vnTciQGtnomOI66rHTiPqHT
X-Google-Smtp-Source: AGHT+IF6kRQojTr3O2i9DG8mL7DMuXbV8rMwlD9TonhoHxqzG4+HoL+1QVcxeETXqNSATHlBkNqfyw==
X-Received: by 2002:a05:6808:1a0e:b0:409:f8e:7274 with SMTP id 5614622812f47-40b88e07cbamr163963b6e.18.1751405983560;
        Tue, 01 Jul 2025 14:39:43 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:70a7:ca49:a250:f1d5])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b3243deeesm2288335b6e.48.2025.07.01.14.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 14:39:43 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 01 Jul 2025 16:38:00 -0500
Subject: [PATCH v3 12/12] iio: adc: ad7173: add SPI offload support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-iio-adc-ad7173-add-spi-offload-support-v3-12-42abb83e3dac@baylibre.com>
References: <20250701-iio-adc-ad7173-add-spi-offload-support-v3-0-42abb83e3dac@baylibre.com>
In-Reply-To: <20250701-iio-adc-ad7173-add-spi-offload-support-v3-0-42abb83e3dac@baylibre.com>
To: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2110; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=x4deODr2J/B/ZfZk3+/1/BV8bYxvy5G2y6ggy6cAeUc=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoZFWKFauMI32n+rVJ4X53stwAqiiUvPd+u9cFp
 uvVIaRAIL+JATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaGRVigAKCRDCzCAB/wGP
 wE4UCACbCLWfN9b147eeF/3FnSESrviOzb6Fu37NJlnlvMpDCeG1q6ArK8xrmF+fw25/vektB7i
 h24Bm6GTgyEVq+Q0MOPABO9fDJL2uSWaRuVrRrqVr/I9AbRWr5dIfxqQJGtMT/VYQwGAMcVp3h3
 BKUeRv4tRjoETflevaU6psSJMOPzxt3XW7qTSYHuoYAZgWKFvqj9OJqtXTPaBmFuhtx83Jf7WCm
 sjQKKjGVOsn+yZ7Rzlpy34BGCYtFC/SsI1QHMxSe2idYDvGQZlJE5f7SFF9BNCb0VPGmd9A3Rah
 SAjh5D/znRiJRVMB4W6hFq60UKW28JwAD9k7EOd0B3ZEBd/b
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Enable SPI offload support for the AD7173 ADC driver.

The scan_type used for SPI offload is assuming that we are using the
ad411x_ad717x HDL project [1] which always stores data words in 32-bits.

Link: https://analogdevicesinc.github.io/hdl/projects/ad411x_ad717x/index.html [1]
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/adc/ad7173.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/iio/adc/ad7173.c b/drivers/iio/adc/ad7173.c
index 010339c2b7044da4b36dc894a38a145c2fcccd6a..580d4bf3366b193fa0f13d0a28886d390e1295b8 100644
--- a/drivers/iio/adc/ad7173.c
+++ b/drivers/iio/adc/ad7173.c
@@ -748,6 +748,7 @@ static const struct ad_sigma_delta_info ad7173_sigma_delta_info_4_slots = {
 	.set_mode = ad7173_set_mode,
 	.has_registers = true,
 	.has_named_irqs = true,
+	.supports_spi_offload = true,
 	.addr_shift = 0,
 	.read_mask = BIT(6),
 	.status_ch_mask = GENMASK(3, 0),
@@ -764,6 +765,7 @@ static const struct ad_sigma_delta_info ad7173_sigma_delta_info_8_slots = {
 	.set_mode = ad7173_set_mode,
 	.has_registers = true,
 	.has_named_irqs = true,
+	.supports_spi_offload = true,
 	.addr_shift = 0,
 	.read_mask = BIT(6),
 	.status_ch_mask = GENMASK(3, 0),
@@ -1585,6 +1587,11 @@ static int ad7173_fw_parse_channel_config(struct iio_dev *indio_dev)
 		if (st->info->data_reg_only_16bit)
 			chan_arr[chan_index].scan_type = ad4113_scan_type;
 
+		if (ad_sigma_delta_has_spi_offload(&st->sd)) {
+			chan_arr[chan_index].scan_type.storagebits = 32;
+			chan_arr[chan_index].scan_type.endianness = IIO_CPU;
+		}
+
 		chan_index++;
 	}
 
@@ -1675,6 +1682,12 @@ static int ad7173_fw_parse_channel_config(struct iio_dev *indio_dev)
 		if (st->info->data_reg_only_16bit)
 			chan_arr[chan_index].scan_type = ad4113_scan_type;
 
+		/* Assuming SPI offload is ad411x_ad717x HDL project. */
+		if (ad_sigma_delta_has_spi_offload(&st->sd)) {
+			chan_arr[chan_index].scan_type.storagebits = 32;
+			chan_arr[chan_index].scan_type.endianness = IIO_CPU;
+		}
+
 		chan_index++;
 	}
 	return 0;

-- 
2.43.0


