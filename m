Return-Path: <devicetree+bounces-42630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7FE857E9F
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 15:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8F5AB21469
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A18B12DDAC;
	Fri, 16 Feb 2024 14:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l1FJGFiP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE8D12D761
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708092303; cv=none; b=UeW8ih4z5O/fCjUH1HhRSxUFyw52V5J8PybGYhHWiuG774nXdR5zzfIGH/V7j2CPvhXDwWi2K5pD7GhfdL5Qck1mo5o6JYmDr9Q7g7wL4G62m/sh4L8gw51WRL1yQREdo4ry2LW7K/rnGz7ZQzTA5xaazQNWv0wYgCVjoykj6/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708092303; c=relaxed/simple;
	bh=pbz+IkgS7dGub+xGhkr3c/sezMbM4xsciLvnrgZeQc4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SCrAU1C+ZNZiGTHZ+PVmpadZXyGnImb7pxDyT9ZVs/ZxcXeV7M9NiWN8aypl7yZA9/saQYkxGsZRQJe/2D+3ASZMHuNxwDsWXZ+tvvX/yz7UoDkzHHPXwv0Y6z/K7H3q8J6MXUpAxBxaefF/4/ksGW0jRvgZtzs2QgNwIO5fGB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l1FJGFiP; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-411a5b8765bso12243725e9.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 06:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708092300; x=1708697100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QpbLWzMyYPwodhbzPXYFFQOvyF35F7rYtI5CvxnVpBk=;
        b=l1FJGFiPX17vy7Z59VSB8TMjXtvlZB3N1hOxhwbu1mtzx4ez9d866aDsF3wymWaP/E
         AdLS1cOrgD3GfDY3dLxcywAn/5QEuqiziYhO7/SY34DB/Q6KPngDcP4uvr8n+TpaWaZh
         3FYZWsdQd0VR8Tp8M/qVP1/lE0PgzdI2EMNYA8UgR0JRmaGpb39lgEFMYXls7QK0ITvM
         5lXXobfozRcxUxn6nSarCn6HwqAwmCfzailsKm5nj8vTo6tFeyjJZ3XYxTtIb5SriL5z
         6wl/n6toE9Zoaw+aqWEl1ksU8yZbXVdenQ7It7YQSA0soszxhQSvxpPGNAkMOd7IAO5M
         POLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708092300; x=1708697100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QpbLWzMyYPwodhbzPXYFFQOvyF35F7rYtI5CvxnVpBk=;
        b=kq0PXkjAzdoaScDZoYNLQqwFJrW2Uil5X77m+XLxidpIqRQ5V5XwvmJ08LkUGrTTL9
         bsJBhMMUUbeA5cwly10fhhDOrrdUw21iKSW1MnbpvbCVY3uPUilDeXEKg4PMdDvl0S0d
         iQ+XBqWY6elMJJbxrmjCczO+18mdfHy/mVWoC6lIvI4h15nsiQQ7SDvy0JZQlw+5PPZe
         h1+Xy9K5PSxonHvmhduZ5qscAy+FAmdj0P/LtdkR09TECBiet7NK26Y7KDMKFG+qRNAM
         DHsy0whR5z9lpEvrZ7Jx8jWX2lxwP5SbMxfNS6UgYm8vGgmpoi1jpz6HOKqtRZQJywzr
         0/2A==
X-Forwarded-Encrypted: i=1; AJvYcCWUJQgjelciTOAxK1RMyKDw+GUSBa2Uiq+bc8+590FcGc50kCqNU40HJiSPFdUHTtaHCAqwzu4B/KRCZs41LbAmUOop3+3UGvbpKQ==
X-Gm-Message-State: AOJu0Yx3a9x+qrZP7pu+AJnaNivLXCrXtu4ZyIMrSEnAmbks+Q3LUkeG
	7D1OVVlKRiTMepOCLX1mkdukONeWwhvFpv6HqgRgLpjA2mKr9QCfIRRlrSK2sZk=
X-Google-Smtp-Source: AGHT+IHWdUB9E6Xmity8dCJxxH0CAvh8LXlNHW0BGR1UNv3oA+Bl9EEpasEs2AkAdEbHy98zpO3UGg==
X-Received: by 2002:a05:600c:1d81:b0:412:107d:cd69 with SMTP id p1-20020a05600c1d8100b00412107dcd69mr4569337wms.1.1708092299870;
        Fri, 16 Feb 2024 06:04:59 -0800 (PST)
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id az5-20020a05600c600500b0040e4733aecbsm2516628wmb.15.2024.02.16.06.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 06:04:58 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	broonie@kernel.org,
	andi.shyti@kernel.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 5/7] ARM: dts: samsung: exynos5433: specify the SPI FIFO depth
Date: Fri, 16 Feb 2024 14:04:47 +0000
Message-ID: <20240216140449.2564625-6-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240216140449.2564625-1-tudor.ambarus@linaro.org>
References: <20240216140449.2564625-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Up to now the SPI alias was used as an index into an array defined in
the SPI driver to determine the SPI FIFO depthj Drop the dependency on
the SPI alias and specify the SPI FIFO depth directly into the SPI node.

The FIFO depth were determined based on the SPI aliases that are defined
in exynos5433-tm2-common.dtsi:
	spi0 = &spi_0;
	spi1 = &spi_1;
	spi2 = &spi_2;
	spi3 = &spi_3;
	spi4 = &spi_4;
spi-s3c64xx.c driver defines the following fifo_lvl_mask for the
"samsung,exynos5433-spi" compatible:
	.fifo_lvl_mask  = { 0x1ff, 0x7f, 0x7f, 0x7f, 0x7f, 0x1ff},
Thus spi{0, 4} were considered having 256 byte FIFO depths, and
spi{1, 2, 3} having 64 byte FIFO depths. Update device tree with these
FIFO depths. No functional change expected.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos5433.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433.dtsi b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
index 7fbbec04bff0..0b9053b9b2b5 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
@@ -1468,6 +1468,7 @@ spi_0: spi@14d20000 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi0_bus>;
 			num-cs = <1>;
+			fifo-depth = <256>;
 			status = "disabled";
 		};
 
@@ -1487,6 +1488,7 @@ spi_1: spi@14d30000 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi1_bus>;
 			num-cs = <1>;
+			fifo-depth = <64>;
 			status = "disabled";
 		};
 
@@ -1506,6 +1508,7 @@ spi_2: spi@14d40000 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi2_bus>;
 			num-cs = <1>;
+			fifo-depth = <64>;
 			status = "disabled";
 		};
 
@@ -1525,6 +1528,7 @@ spi_3: spi@14d50000 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi3_bus>;
 			num-cs = <1>;
+			fifo-depth = <64>;
 			status = "disabled";
 		};
 
@@ -1544,6 +1548,7 @@ spi_4: spi@14d00000 {
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi4_bus>;
 			num-cs = <1>;
+			fifo-depth = <64>;
 			status = "disabled";
 		};
 
-- 
2.44.0.rc0.258.g7320e95886-goog


