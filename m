Return-Path: <devicetree+bounces-35141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5934183C652
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:18:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE6EC1F2405C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:18:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC900768F5;
	Thu, 25 Jan 2024 15:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DLeNheuK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0AB745ED
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 15:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706195808; cv=none; b=aGlfSBf7aHEKAMVxqLxdP3RZVVZWnE1BndP3gNPlNEtEOtgcavn+s+UZV0qZwvlOuwrYYbD2iK1T2vV/RvuvGymT19KaDF61oUDXy+jlOEuODVQVC+FO8w+OFkX1eeq645Dogww8cx8i5vB+aorSUJSwkUNdZ0f4TOuhN2kDZG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706195808; c=relaxed/simple;
	bh=tTDyP+QbDcDGX9MYq7Op5ElHJv6X/wISu1O4fxGJcjw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dtf7GmVaYpdzCcovg0wDj67HibdsuaxyX7DMcZomjcRRL2dZoP0TAB9mAJufavoH2JdKMpJ+qoA2mzEDBLBIUnw6LlDOoj/f+NBoluEQYQ9ULF9BOXYnI1RikVNeLWZDaH1tg/SEl6kkJayXGOAgU7TU/Mm50yn3f+qDeLsicDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DLeNheuK; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40ed1e78835so7262355e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 07:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706195805; x=1706800605; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZccBdMZTdQRiy4WH1cInpysJI1QGDCx3Jxp2itAkdao=;
        b=DLeNheuKPphe/bKw8eeimrUVHXPAylo2EEr/oJv1dTsfJ+1WZSlklQ6/9VeZDMbmLf
         cqjkIf+RJzAxC6zlTLuVlRqGCLNJGxDZj4MFQbQeQrjgY4IdM+WfchHrOdaTmdQA1YZr
         p3x8dXkGWz1bFBGNyvJxvh13uNeI26F1Oqifj+QMW2z6Inyn0UNeNAboNJwPpJHWHNzq
         YnxO7vGbMyt4KjdaZCbM7PXl/WS8WesexpnQZaSxoCYtZ6orSqKSptSAFUvBDe5Cz6WW
         T6r4C1YlTaWERV4eLPs6LKrQmQMB7WtrWYOCnbEQ1N2ijcyDyfb65Fs/yeqe6k++s9NU
         zhlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706195805; x=1706800605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZccBdMZTdQRiy4WH1cInpysJI1QGDCx3Jxp2itAkdao=;
        b=flonSa7r4yRw9dsfTgHMXrVQKPOJn7zEPzfnB0jGXVALDNV40R1gePgqbmHynXZBM+
         vYCsI0uG/uHusBpnHxBhJFBG61WZPbWeQagBTDGfzpimvQ0OlEoQHB36XFwXpl9XbyMx
         FPVHaovpks6SMFWr9CTLiT7LL/3gEKIKRK7W+7PGpbPxPPxSzgPVhLg5vhapmrcKfJWH
         uobiN5+hRqpTV+q3Rucl2heg3Jbj5XEoWZBtIu9nr7tECLmmkJmz2Qv/JGU3tDINHzd+
         Fi7AYhp9PTxIjXmRjwE4B5nvRPVp0t4IXGq3nwzf8u3zGIrHBBrR7m8qo/X1AaNKN+oB
         XqRw==
X-Gm-Message-State: AOJu0Yzry3zx1sKI6Hp89jqBtcpxWIcAHjYEZKMrJNZmBQjlDXinHpPk
	AOS81VFmd+uBG70EiIH9uSSZujwrgumV4pxTdqbxXTB3M/0BRF0Wurjv33IOXc0=
X-Google-Smtp-Source: AGHT+IGeL1GlUcr2NLv2GRUKPYkgBQEEer1ETUOGmu8WmOi1W5uB4BOahlGNzKoqyE+JD19VzVCIWQ==
X-Received: by 2002:a05:600c:84c9:b0:40e:550c:a295 with SMTP id er9-20020a05600c84c900b0040e550ca295mr471910wmb.136.1706195804783;
        Thu, 25 Jan 2024 07:16:44 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id q17-20020adfcb91000000b00337d3465997sm3184656wrh.38.2024.01.25.07.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 07:16:43 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: krzysztof.kozlowski+dt@linaro.org,
	broonie@kernel.org
Cc: robh+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 4/7] ARM: dts: samsung: exynos5250: specify the SPI fifosize
Date: Thu, 25 Jan 2024 15:16:27 +0000
Message-ID: <20240125151630.753318-5-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125151630.753318-1-tudor.ambarus@linaro.org>
References: <20240125151630.753318-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Up to now the SPI alias was used as an index into an array defined in
the SPI driver to determine the SPI FIFO size. Drop the dependency on
the SPI alias and specify the SPI FIFO size directly into the SPI node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm/boot/dts/samsung/exynos5250.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/samsung/exynos5250.dtsi b/arch/arm/boot/dts/samsung/exynos5250.dtsi
index 99c84bebf25a..8e81d49622b7 100644
--- a/arch/arm/boot/dts/samsung/exynos5250.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos5250.dtsi
@@ -511,6 +511,7 @@ spi_0: spi@12d20000 {
 			clock-names = "spi", "spi_busclk0";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi0_bus>;
+			samsung,spi-fifosize = <256>;
 		};
 
 		spi_1: spi@12d30000 {
@@ -526,6 +527,7 @@ spi_1: spi@12d30000 {
 			clock-names = "spi", "spi_busclk0";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi1_bus>;
+			samsung,spi-fifosize = <64>;
 		};
 
 		spi_2: spi@12d40000 {
@@ -541,6 +543,7 @@ spi_2: spi@12d40000 {
 			clock-names = "spi", "spi_busclk0";
 			pinctrl-names = "default";
 			pinctrl-0 = <&spi2_bus>;
+			samsung,spi-fifosize = <64>;
 		};
 
 		mmc_0: mmc@12200000 {
-- 
2.43.0.429.g432eaa2c6b-goog


