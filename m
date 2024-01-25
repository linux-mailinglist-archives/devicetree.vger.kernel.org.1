Return-Path: <devicetree+bounces-35142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DED5983C656
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 806DD1F243AA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE147762A;
	Thu, 25 Jan 2024 15:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oL/tsqkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9F474E2E
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 15:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706195810; cv=none; b=auhbZsrDlaegnrm1rVggvLT90mpQuStLy4qB9raZGZbvtlUSEm7ELZzbBRFDUM/XPROUOt41Mq0Y6y9rVMUZOox+DPewz9pKyxkIPzhqMBEWrfqKGU8+X+LFCfXuz/rEu5Jmn/XT9i/vYOxr+u/iXA+oZrVk16PEkEN61Es5S3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706195810; c=relaxed/simple;
	bh=FTTDJwnrK7E36EZxAV/LZq7tKNV5qxmi0FcnlYPFXNo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GONPGleWvOmH8B9Gm+dU3BVixCWEZ1CCjCmS2i+33yExmihBH8CDEILuzBtMUxfdmiV37xnD2jYqNHOPfEoylKYxqgCKGRsrPpCyM/agL8L+GGOYrMnEbX789ajhExmtsgfkefTHXyl9XLzkMYd88kL65m/NI6yFYLG12zYppmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oL/tsqkJ; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-337d32cd9c1so5894143f8f.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 07:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706195806; x=1706800606; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tXxPqJOvoUlfXn9BCYWKqTCOJ1mrScyukPmjwSmqHnA=;
        b=oL/tsqkJP1HMjNzmSZkZ+FaSw18KYThdi3vq/Mg/dr1SI7EXLVBV1fQesMc67jXTNr
         vyfkWNxr5SoZWu4YtChPmBejXmZ7a7ChhsyCAe2FGtMB3DSmkOAyUO8HZs4+vbjryEdP
         c1r3OtYVfW2l9j8jE46VHTr8BmazimQ79t0pEo832pTqoQfi9oB8I4FhLaw126b/9cxm
         0jWn/OoRoUTRFFq1cnzSQlqlc+gDq+cI5fRtLXuqTXbyelnOrqjeMkmzjUUWinPFb0or
         ZAjbM+CrjDLrDfDhjVgWxlpZNAS9W09qngbw9z1GDOA5vhy+14E50UzGMafSh4zfrmJz
         o+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706195806; x=1706800606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tXxPqJOvoUlfXn9BCYWKqTCOJ1mrScyukPmjwSmqHnA=;
        b=g88Uj7wkfeLZ6gH7wtrhmDTDlqBOk3DHJPaAvxVX0ryp+/Yw/y8FMarfhGV7kzjq3V
         RgjdvD8h9cEf68s46BP7+fNygfTwqr0PYrRvrREBe7/p6UIk3Vw5QYQiQ4qK2XspdM1+
         Vm01eNCkDdJtzNSyOZ9P1cHHQIpWxPimve2ObeFYMklqlLln12V07Vtwh0cNH8PFHKF6
         AIVhH0BY0+bYPZ+OkI6m+8xoZvDdeLlJIQ02DsN8P6tRNaUoNZsfKWspVql63Bmz4Xx4
         nP8aV1aLgU9Mu+5hgY6kuUOz8bVt9PNg4LeQRcHsSlBKzaU9/sG06wnT/BkzdUqt9YB2
         wfdA==
X-Gm-Message-State: AOJu0YzAM98apNccjkCiLALHWAYjYZOwsWiFhZDM2etEzXRD77RntJCb
	+mdvMZBykwjaH6Py6SsYg8Uas1G7jSVV6WEeyYI/sHzJWnbOmXEtGRTOvz7CCLM=
X-Google-Smtp-Source: AGHT+IFOoZHXMIT/4Zve03YeeUbOYEFQZSqJR86REuQDoTvLqWV4vzsg7EY4ouv402Ob73dh/Vbehw==
X-Received: by 2002:a5d:4407:0:b0:33a:c013:68d7 with SMTP id z7-20020a5d4407000000b0033ac01368d7mr530130wrq.11.1706195806021;
        Thu, 25 Jan 2024 07:16:46 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id q17-20020adfcb91000000b00337d3465997sm3184656wrh.38.2024.01.25.07.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 07:16:45 -0800 (PST)
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
Subject: [PATCH 5/7] ARM: dts: samsung: exynos5450: specify the SPI fifosize
Date: Thu, 25 Jan 2024 15:16:28 +0000
Message-ID: <20240125151630.753318-6-tudor.ambarus@linaro.org>
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
 arch/arm/boot/dts/samsung/exynos5420.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/samsung/exynos5420.dtsi b/arch/arm/boot/dts/samsung/exynos5420.dtsi
index 25ed90374679..e22692063aa9 100644
--- a/arch/arm/boot/dts/samsung/exynos5420.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos5420.dtsi
@@ -658,6 +658,7 @@ spi_0: spi@12d20000 {
 			pinctrl-0 = <&spi0_bus>;
 			clocks = <&clock CLK_SPI0>, <&clock CLK_SCLK_SPI0>;
 			clock-names = "spi", "spi_busclk0";
+			samsung,spi-fifosize = <256>;
 			status = "disabled";
 		};
 
@@ -674,6 +675,7 @@ spi_1: spi@12d30000 {
 			pinctrl-0 = <&spi1_bus>;
 			clocks = <&clock CLK_SPI1>, <&clock CLK_SCLK_SPI1>;
 			clock-names = "spi", "spi_busclk0";
+			samsung,spi-fifosize = <64>;
 			status = "disabled";
 		};
 
@@ -690,6 +692,7 @@ spi_2: spi@12d40000 {
 			pinctrl-0 = <&spi2_bus>;
 			clocks = <&clock CLK_SPI2>, <&clock CLK_SCLK_SPI2>;
 			clock-names = "spi", "spi_busclk0";
+			samsung,spi-fifosize = <64>;
 			status = "disabled";
 		};
 
-- 
2.43.0.429.g432eaa2c6b-goog


