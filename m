Return-Path: <devicetree+bounces-243555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E57C99DB8
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 03:22:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6038E3A5313
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 02:22:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEAEF25B663;
	Tue,  2 Dec 2025 02:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GFUJapYs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ABB32550CC
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 02:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764642105; cv=none; b=LLSrBzv01VK1lt/P0TGcCk024prYHzeJXtL/pCalUjZarETo6wFd4cttosDOAMo8BehvZW92Him8eByRPkm4I/sOn+9FdVbEoJxY+5sNLioFMy7DEk3eHtgWZYbvpLOlZZDsHe7vFytdnalDRhVq/taHtOrDHCQz+QdrwzU61Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764642105; c=relaxed/simple;
	bh=TGjCIVF9DnX01qsx2dX8gm1MS1+Bio1XhGl3ovLH9lQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AJJbciRhGmfosg88F/nBDE5qElWxdOcGPtBiuus3QbWA9XiNj+cpKoZe38CkCwK4XjkQ1bS/6gJlP0lyZ6C9jl56jwKTiOr1iQl+zaEa8K3nC/w8QCwuXVohLsZFe3mqMrZ4PuE0EmOW5WTVEKq/5ES8L8fCSU9l4J+R2gvi614=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GFUJapYs; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-3e84d56c4b8so3145228fac.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 18:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764642102; x=1765246902; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gdlFSLl65q0J0SJZwlNdAcYu1FN/ZLabKc7F0Xt+QhY=;
        b=GFUJapYsEa+Dof7WyP+glp12m0fA7gjqgbhvVMcwmrq25lODF8YdQxPDmOr2LnVS7l
         UbLuYpDXI+/KjjBHwQjoMujw0xoqcYR1fFzDQLSQoCxpeL9byJzVNLM1EeYVU/Hn60FI
         TDqdIzRV9zAs1mp1/qUi0bimU6IOuUBWBdnQGQ9QEi2K8QqEWuNmew+Xeg5UiAYz9aRh
         E5JxGMH3qThDHsoUywGn4H4eNpL75SviVWDgdsL9U/cYSLtIjFs1Fwv+SRpXro97xfUj
         cERJx5Ct+mrkBjZeLaKTX/1gCahvyFuKUSvGtI1VrJbrxiX0CcNwsf6HZ3LhhZwSnzUz
         RsYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764642102; x=1765246902;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gdlFSLl65q0J0SJZwlNdAcYu1FN/ZLabKc7F0Xt+QhY=;
        b=sjIOaZ2wcqzMm05Gl1ZWk7ueJWAKzOL/n2er8so1DWA5cQDWLxIIe1vkA0sRwSoGtt
         8Al75GzjlM1oZ6Zgc8vlcadRVVGRkCzV7G6GGky7IAJ1Cu5JXOSGdsA7k2qDcYpb2CSB
         4YWt4/YOCrxicRsBohbluWBZ/clHDbglPF7RVVHQ4gN0+V1D5Q7Keq2/oYo3NonCw0AR
         yzHmtZYf9uxG50XsikMb0DUdvMYeuQJ0XsK97k+7Yw6R4Ye/BDLoxtrCBjlMLp3EM19V
         v5l2bBmHZ9/SU9vezLsjldeZeDuhFElHoOrKyvgxA7ux/cH45SA2jjNrWH9Fcz5MJxAE
         /aDA==
X-Forwarded-Encrypted: i=1; AJvYcCWwMA8aTMglgchwULnG7kn2n8NLtRiE6AnQZadQTNqR4Xs1zW9IEiW7bIpkAO0rrk8EPrxfT/vHggur@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4y32hE5T+GAfg78mWpRq4rpj4iyY4YFncYxZBDgejH2eUm9Kc
	zCBsPofejrCI4s83pa2R1BC3SS3DRhMefCxqMeGp92CzYNBLIJHGENWl5sCxK4SoXx8=
X-Gm-Gg: ASbGncsYSm93rcKd1IXIiIEdeyDr2NHs7De/qDbV6jSaRhX2zXKoBROT1KstBMBsXmr
	tTPfdxeP3JPxZnN0CGwYPw8PhHUTEkVHIUvXcvhhkMi/co2TRaCxFglMJPIP1y8L2/5gvBbEsNH
	GheWhXTDkZoqXSdoYbHQ00Bc7hHyFW+uZLWPwRRu9zqrJSkBxR9dFZV+58Kxt/fzTXblKqpaA04
	9scl5FMOdEnIn8R68iDxmipbToQbgK2EaKGakHpimB+TRxCwKNSAJBL3PyGg/svCEgI7HuSHhd3
	ed3sojer6IaWp17kgO83zECG9wsrvg0QqokN/offgzHjcn7USqSewhFITgNYeR+B96K69lkG+tk
	RVseL0uoCmY2IV/py4epvSpXtaDSvJ7t/W0eoQUXhEJSmZtsNOHj2cLxqpzx8JwJLbMu39zaKNd
	XSFynMw+wIpy/QAw==
X-Google-Smtp-Source: AGHT+IF7TTC48aLa33waAV02KTt4GApUcfsHVKhRQ54uaTYRvn/RKSFBSUELTWzMFpt21aEZyeVT0Q==
X-Received: by 2002:a05:6870:860e:b0:3e8:5ff4:a620 with SMTP id 586e51a60fabf-3ed1fd947fdmr14104301fac.35.1764642102490;
        Mon, 01 Dec 2025 18:21:42 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:b67b:16c:f7ae:4908])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3f0dca0475esm6651747fac.1.2025.12.01.18.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 18:21:42 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 01 Dec 2025 20:20:41 -0600
Subject: [PATCH v3 3/7] spi: add multi_lane_mode field to struct
 spi_transfer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251201-spi-add-multi-bus-support-v3-3-34e05791de83@baylibre.com>
References: <20251201-spi-add-multi-bus-support-v3-0-34e05791de83@baylibre.com>
In-Reply-To: <20251201-spi-add-multi-bus-support-v3-0-34e05791de83@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marcelo Schmitt <marcelo.schmitt@analog.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3947; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=TGjCIVF9DnX01qsx2dX8gm1MS1+Bio1XhGl3ovLH9lQ=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpLk0QTT6Cd3sYnwNT/jQy9UMMBCEsZs/trlMzx
 +/5sY1BoaqJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaS5NEAAKCRDCzCAB/wGP
 wH2XB/9dfEv+3wyMjoOraMkNrZG74p/xppo0+/IyWs/u8oz5MOrRsigT9I8TYYdMrmimz6WSSZg
 Jc/Uhl1x6GOJeedi4nteemS5KQ5uOF0VZy+fcvq+iSoKmfXMOShqDiJSdSq+DTPfLz0XBaoudmk
 wWkP9e/rgMKe15yfaA2CoN64mJlvRiSMsHYiqn5Su6FJarLBBy5J+RM3l1TMrjbHy0xlVnDAkWR
 HXgkfg7qOGVU4QWWr7bzYPMmu5eUhgTRPzwLurmbx38fSWUAApLKpm44ZRkSSiE6q3YUo38KQ/r
 ICR7o7TnNKp8aaz4ZyOMAP4PG0jjn+FWutqh0HtUEkKkBlzZ
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add a new multi_lane_mode field to struct spi_transfer to allow
peripherals that support multiple SPI lanes to be used with a single
SPI controller.

This requires both the peripheral and the controller to have multiple
serializers connected to separate data lanes. It could also be used with
a single controller and multiple peripherals that are functioning as a
single logical device (similar to parallel memories).

The possible values for this field have the following semantics:

- SPI_MULTI_BUS_MODE_SINGLE: Only use the first lane. This means that it
    it is operating just like a conventional SPI lane. It is the default
    value so that existing drivers do not need to be modified.

    Example:
        tx_buf[0] = 0x88;

        struct spi_transfer xfer = {
            .tx_buf = tx_buf,
            .len = 1,
        };

        spi_sync_transfer(spi, &xfer, 1);

        controller    > data bits >     peripheral
        ----------   ----------------   ----------
            SDO 0    0-0-0-1-0-0-0-1    SDI 0

- SPI_MULTI_BUS_MODE_MIRROR: Send a single data word over all of the
    lanes at the same time. This only makes sense for writes and not
    for reads.

    Example:
        tx_buf[0] = 0x88;

        struct spi_transfer xfer = {
            .tx_buf = tx_buf,
            .len = 1,
            .multi_lane_mode = SPI_MULTI_BUS_MODE_MIRROR,
        };

        spi_sync_transfer(spi, &xfer, 1);

        controller    > data bits >     peripheral
        ----------   ----------------   ----------
            SDO 0    0-0-0-1-0-0-0-1    SDI 0
            SDO 1    0-0-0-1-0-0-0-1    SDI 1

- SPI_MULTI_BUS_MODE_STRIPE: Send or receive two different data words at
    the same time, one on each lane.

    Example:
        struct spi_transfer xfer = {
            .rx_buf = rx_buf,
            .len = 2, /* must be multiple of number of lanes */
            .multi_lane_mode = SPI_MULTI_BUS_MODE_STRIPE,
        };

        spi_sync_transfer(spi, &xfer, 1);

        controller    < data bits <     peripheral
        ----------   ----------------   ----------
            SDI 0    0-0-0-1-0-0-0-1    SDO 0
            SDI 1    1-0-0-0-1-0-0-0    SDO 1

        After the transfer, rx_buf[0] == 0x11 (word from SDO 0) and
        rx_buf[1] == 0x88 (word from SDO 1). If the transfer was longer,
        the data would continue in an alternating fashion.

Acked-by: Nuno Sá <nuno.sa@analog.com>
Acked-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---
v3 changes:
* Renamed "buses" to "lanes" to reflect devicetree property name change.
---
 include/linux/spi/spi.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 607f1eac96364a73f95876ec27a9f86f14fa6112..5fad82989853d69cc4bb3e6775e323e2ba8f1144 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -976,6 +976,8 @@ struct spi_res {
  *      (SPI_NBITS_SINGLE) is used.
  * @rx_nbits: number of bits used for reading. If 0 the default
  *      (SPI_NBITS_SINGLE) is used.
+ * @multi_lane_mode: How to serialize data on multiple lanes. One of the
+ *      SPI_MULTI_LANE_MODE_* values.
  * @len: size of rx and tx buffers (in bytes)
  * @speed_hz: Select a speed other than the device default for this
  *      transfer. If 0 the default (from @spi_device) is used.
@@ -1112,6 +1114,10 @@ struct spi_transfer {
 	unsigned	cs_change:1;
 	unsigned	tx_nbits:4;
 	unsigned	rx_nbits:4;
+	unsigned	multi_lane_mode: 2;
+#define SPI_MULTI_LANE_MODE_SINGLE	0 /* only use single lane */
+#define SPI_MULTI_LANE_MODE_STRIPE	1 /* one data word per lane */
+#define SPI_MULTI_LANE_MODE_MIRROR	2 /* same word sent on all lanes */
 	unsigned	timestamped:1;
 	bool		dtr_mode;
 #define	SPI_NBITS_SINGLE	0x01 /* 1-bit transfer */

-- 
2.43.0


