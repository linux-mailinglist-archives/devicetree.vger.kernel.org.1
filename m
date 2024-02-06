Return-Path: <devicetree+bounces-38977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A37784B063
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:53:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF6931C24676
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C2B712D75D;
	Tue,  6 Feb 2024 08:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZXBi6tlO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20C112D74D
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 08:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707209574; cv=none; b=YsLv0OZgKgceHMS1mOlKhu1Lmai/QtOaZoeiAs0e73AHv3tv/AoVG2C58oupILosyuiB/7k4I4pycujrSVI+CpD3yfxsglHOD8EtYUV8RgS+VDvvQ1Ekk3irk1b80A/HtfidUf5WykBQHDc7mv+OTsLJXHUvodXVILn+3tcQqrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707209574; c=relaxed/simple;
	bh=vL9XGX/qXOFd69mq78FHNcCXv1VBdvoclaPktVPZJqg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TYLSDc05/siOeOufBWgK7qIkMiqnHNfJWP90Fo0FzzYhvr7mHO6rVrIVxnARZYPV0Vns34jdu3rkxWSVTquOTMMc82lDe9LJBGNg3W70fXjuZJHZfSIIqwRW5TqZwA16z4ULSTMb22gVV4KQLNx74u+MgtsKbW+0inyj12FCxy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZXBi6tlO; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33b2960ff60so175398f8f.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 00:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707209571; x=1707814371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vgk20b1Z6sAxu7dsDANnrkj2LKv2bPazc+HqZKqdJoY=;
        b=ZXBi6tlO7hHW7YCiGhJQ23I4SfO2Fwt52JzSrUY7JF0JY5+KEMTaB6jRbBj0LItTzz
         JEmU6phkM6t0el78BWCNtZSadXR94VXpooXgscf47N/r5ZwPi6CAvdQYm7m5U72C8vU1
         bEdzKKFQ1w7ywYGf6xocWwLiedt+1iYo5FnP66ltk3MgQ8YLEEQMU893jI2TjFneks95
         xsFPp/EvG/tKfdal+Fgm6GqtQBFRojBCxjnW1b0TKbGy7yhtIBQyUC9iHVy62BIIL0K6
         7Y/gu8nVpg9RiTX5EXnIDOywIOrcQj1h9N0WMp3mrveWPhA8KfRq/lCqO/Oms2naQ2XD
         b4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707209571; x=1707814371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vgk20b1Z6sAxu7dsDANnrkj2LKv2bPazc+HqZKqdJoY=;
        b=XpVsDyZsgMl3xxhEpgz8cQLEoLYxXMhZiNXWgQeDVVRPBPC0bpUHH2AvpZj5xRi/MO
         Bf6AIX/zayxh0XG7HbX9Lyd1kZafQ7SsXtGQhkXEoC7e5i1DeV/h800lJ+79Z1Rz3Mlm
         SXqVfrwoFGzCISKQsve+/Vu1U6WDTs4gALBKlEbq9SB8CFX7cMadcc0/VKyEA31vtK6d
         7Z2p+1v5DmZeNJ4c404WAQ+RkPbiOHY2oiMAxy9xgm24j4OwxxEh0P+MDS1Cb1zNREeF
         v6Lpo/EnmlxDUUQjQ7NhexweTtZsxxXX8/j1FclIDxTCiKYIPXnZOkyBEZj9L/lRs2HB
         B6DQ==
X-Gm-Message-State: AOJu0YybQcTSIKHXEAtxJUlJI03VPf14BKFKvuCGEx5oOCTlspEkIpZx
	GpcRORmhLfuwmkbniVPuHT5yqYGKXO69WsDnP7kYNFVRT+uXDvHKBHtx8WW06K0=
X-Google-Smtp-Source: AGHT+IFxujVssWEiqmgO6bi09eUeCSXUTDLiXgomG617SNK7Y2jrytsLzsqe8YugL4+0WqsUaUGoRg==
X-Received: by 2002:a5d:444a:0:b0:33b:3aa7:3b80 with SMTP id x10-20020a5d444a000000b0033b3aa73b80mr735235wrr.15.1707209570962;
        Tue, 06 Feb 2024 00:52:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWiauRuBcFvG8IhewBVIQJKg4NAHxVG6ayQFJPqsd+Sz1L+Z6KUJ/ke/7A2Jp1CzjZetiLMuh7F6Qxt/B2+5Ah9FFrn8saFp1ldnZtCFkCvnwgNhwWQbZ3fI14qQeAGnBjVt5FfYpBPyk8XUo8MyUDwqWKFqTSRk6qFuurmI8ezF9D+HevlhKyOtk+DnCUDkQzyBqj/nun6RK9jn8SZEUmvdNzwCZpb28PCo0W5wgki3ekC6td0taN99bUDT0dLmRjpobe/6GKuvaZK9RNqCV3a2j/yEuSDsLHGdaIo0GyQbn+FB7rNp5YkMdnNpOtoaiEUjCO4Mh8P6THC7YqYSSEgwXLDpEwUzfK3rxEz0KKJ5e8MHAmhWUwDomSo8qpLwSSau85/ZEBUzCmrm6dH3nEZ4LqGZzQkPhD9yzsG+d5fwlyd+4Lzj5MHonbDDel6ZRWeg12ZebHQRm+5svNxpUH+wlJvUoKUJPpqG7ymqNlxOwhZgkasUdym3Smsjt6O51Psw8Ewm/ILlj94zWT/pYIflr//PN+2HsFTkFX+0qcap8D2bSOxCuztnISU41DDs4cGsWC8M/qBAoykebwoEnDlsw==
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id z10-20020a05600c078a00b0040fe078fb03sm1221591wmo.32.2024.02.06.00.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 00:52:49 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	semen.protsenko@linaro.org
Cc: krzysztof.kozlowski@linaro.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 4/4] spi: s3c64xx: add support for google,gs101-spi
Date: Tue,  6 Feb 2024 08:52:38 +0000
Message-ID: <20240206085238.1208256-5-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240206085238.1208256-1-tudor.ambarus@linaro.org>
References: <20240206085238.1208256-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for GS101 SPI. GS101 integrates 16 SPI nodes, all with 64
bytes FIFOs. GS101 allows just 32 bit register accesses, otherwise a
Serror Interrupt is raised. Do the write reg accesses in 32 bits.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index cb45ad615f3d..9ad0d513fb30 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -19,7 +19,7 @@
 #include <linux/spi/spi.h>
 #include <linux/types.h>
 
-#define MAX_SPI_PORTS		12
+#define MAX_SPI_PORTS		16
 #define S3C64XX_SPI_QUIRK_CS_AUTO	(1 << 1)
 #define AUTOSUSPEND_TIMEOUT	2000
 
@@ -1538,6 +1538,19 @@ static const struct s3c64xx_spi_port_config fsd_spi_port_config = {
 	.quirks		= S3C64XX_SPI_QUIRK_CS_AUTO,
 };
 
+static const struct s3c64xx_spi_port_config gs101_spi_port_config = {
+	.fifo_lvl_mask	= { 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
+			    0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f},
+	.rx_lvl_offset	= 15,
+	.tx_st_done	= 25,
+	.clk_div	= 4,
+	.high_speed	= true,
+	.clk_from_cmu	= true,
+	.has_loopback	= true,
+	.use_32bit_io	= true,
+	.quirks		= S3C64XX_SPI_QUIRK_CS_AUTO,
+};
+
 static const struct platform_device_id s3c64xx_spi_driver_ids[] = {
 	{
 		.name		= "s3c2443-spi",
@@ -1550,6 +1563,9 @@ static const struct platform_device_id s3c64xx_spi_driver_ids[] = {
 };
 
 static const struct of_device_id s3c64xx_spi_dt_match[] = {
+	{ .compatible = "google,gs101-spi",
+			.data = &gs101_spi_port_config,
+	},
 	{ .compatible = "samsung,s3c2443-spi",
 			.data = &s3c2443_spi_port_config,
 	},
-- 
2.43.0.594.gd9cf4e227d-goog


