Return-Path: <devicetree+bounces-25303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1EC812DB4
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D9DA1C21500
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0973FE36;
	Thu, 14 Dec 2023 10:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lsDi/Y2x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E71E11BB
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:53:02 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c41df5577so47847135e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702551181; x=1703155981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n04YHHXnObXth/lRrr+Q3z77edsJBvJwDkmKe5TSvMY=;
        b=lsDi/Y2xp3PQ5DxPJ0ayoDq8cKv/wCs68rJTtac16MrfegvIKgacdCrJOcVUhUDuvb
         IJQXBVdlZ06YDaGDwOxm2VsRIGlr+m7IQExpUAss+LLnu31aUClbj0eQPxW4fI7hB5ZJ
         t7suzTq8tsbGKzX3GovPGU6+0whyCnVC/PpyJpNGGzBqMsAeAH8vxSWHkjToUj9aHGYh
         KXAIsViJd3MZxWiskp0kC54cObgN1WbK8WA7bo4oJKFEOY1XjOr2VMgzkZnZrPwUcrtr
         Il5cYeqczAltfeapc6e4pyAa977wI9NS0SqRKqNxGhtxgI5OHQd1VGcrLaOOaMIPO40k
         x2UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702551181; x=1703155981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n04YHHXnObXth/lRrr+Q3z77edsJBvJwDkmKe5TSvMY=;
        b=dyV0Xg5Uuhhl5rQiLrxu6IUF/+8BXuSLFt3S8xeoy5daBl7zZi4PTjkJwLgB9K7F12
         e+Vk3PxM47m52332+tliRSRvne0CC+jisGGq4/q6uRynbPNznkPT0eT8KpK3Vefn/F+n
         vcEsY7/bb3Ae931An8EmkUmIJUGaIL4a62jC9h5HWvsxl5NzPrHcWjJ2R2d1y1zn36I9
         bqwNCuStU4gkuOuuDk32iHLg/R6em/7rBkMLbofVi6T9yTBEm3xYEuYudmLqhKnnixVU
         kjVmX5rDglDRkksSZ7nKWM58WNISJ8aG0kb5PyDZOykCRgyKzf1DImmBke/AOZcDthdm
         JLZg==
X-Gm-Message-State: AOJu0YzFTVH5jubkUvG3K2x/T45CwVWdnKLLfQpxPZKZP6r7KzMHA1d/
	MksVVGfdQvpLdgS2GaakHGbQ1A==
X-Google-Smtp-Source: AGHT+IFPYRnFgVJ8F0lvC2CYA+Pq15xboTIuQDttBmZqX6u/hWOKR6HBqPMGZXYdzie/T4oEpP0Nrw==
X-Received: by 2002:a05:600c:2d84:b0:40c:31f6:1dae with SMTP id i4-20020a05600c2d8400b0040c31f61daemr2299352wmg.69.1702551181240;
        Thu, 14 Dec 2023 02:53:01 -0800 (PST)
Received: from ta2.c.googlers.com.com (216.131.76.34.bc.googleusercontent.com. [34.76.131.216])
        by smtp.gmail.com with ESMTPSA id p7-20020a05600c468700b0040c420eda48sm17614854wmo.22.2023.12.14.02.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 02:53:00 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	conor+dt@kernel.org,
	andi.shyti@kernel.org,
	alim.akhtar@samsung.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	arnd@arndb.de,
	semen.protsenko@linaro.org
Cc: andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 11/13] arm64: dts: exynos: gs101: enable eeprom on gs101-oriole
Date: Thu, 14 Dec 2023 10:52:41 +0000
Message-ID: <20231214105243.3707730-12-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231214105243.3707730-1-tudor.ambarus@linaro.org>
References: <20231214105243.3707730-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the eeprom found on the battery connector.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 .../boot/dts/exynos/google/gs101-oriole.dts    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 4a71f752200d..11b299d21c5d 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -63,6 +63,19 @@ &ext_200m {
 	clock-frequency = <200000000>;
 };
 
+&hsi2c_8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hsi2c8_bus>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	eeprom: eeprom@50 {
+		compatible = "atmel,24c08";
+		reg = <0x50>;
+	};
+};
+
 &pinctrl_far_alive {
 	key_voldown: key-voldown-pins {
 		samsung,pins = "gpa7-3";
@@ -99,6 +112,11 @@ &usi_uart {
 	status = "okay";
 };
 
+&usi8 {
+	samsung,mode = <USI_V2_I2C>;
+	status = "okay";
+};
+
 &watchdog_cl0 {
 	timeout-sec = <30>;
 	status = "okay";
-- 
2.43.0.472.g3155946c3a-goog


