Return-Path: <devicetree+bounces-28828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D90581F88E
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 14:02:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0CD82872F6
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 13:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62ADD125B1;
	Thu, 28 Dec 2023 12:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tsm6+4s/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEF41119A
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 12:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40d4a7f0c4dso51867235e9.1
        for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 04:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703768303; x=1704373103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/YL/2OiXBxCX/gD6IApJPmq9GlVQJZGnRfROzab14c=;
        b=tsm6+4s/hz3xpEd26lt/8M4X3EVCQ0CHQE77inkpa1ZvGyHUzzxMhzn8GEOsCLVQaZ
         xClfMrKKs9Tobv4xSDbVXSoESRqv33+54OZK7cmlp1L/s4UyFO/zW7iWYlWc9kJpZblG
         Sk/9n1jsDFkDHeP725dBrh5bQmQ7yxm607qS2efQmAVLXP/Z74PuhkN2Ua+35zyCZSMT
         I0YvFM4QY90xKQPkFbYS4q3+HgczMl99IjQyHSWWfpL3gMHDw33JueHNZy8rIHoxrqj4
         O+1lp5PB08sEuaSSmAoGQzNqEJ6nnLC4Kto0iVJ2UyQ5G1Njphr/ToJk0915JQe5ThVr
         hMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703768303; x=1704373103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T/YL/2OiXBxCX/gD6IApJPmq9GlVQJZGnRfROzab14c=;
        b=pepc79V2AsTuh46qhuz8LgCZgk2RvreqdAQGhiy30kGewGjkNtbE7uTQ/QTzljYna1
         Bud3kj5GjN/MD6Sp7jBTndf/dhr6e5xqiYXc0c+eQOVAb3cuoNWjJL3HpqsYqoQ+g0ZN
         YCqB84RlYxoaN+jowRUsg5oQS0ZuxNMy4DLN7mqLPgVxkHZU7eO4SvG7ye9DuQV/lSDE
         IXygVLFyRImd47Aw4llAZRRiLKA/CIWUylQYluwYQISnE7k/5tRbQEapEPMcuvYuXn4b
         gIsPrW4gdeJMwJUA0Txicj55t+F0XcBYvYPuYAqXd1TFucnk/c1Q3eDVktUfTJgi2Oa6
         mqbA==
X-Gm-Message-State: AOJu0YwFtTXCCJHQC6IkhF2Cng40Q6SU0WYOKIV8J9ra9GkZCgldyklE
	/7wIvncHEr4S25rlk8WnOYPLaR54xavlyg==
X-Google-Smtp-Source: AGHT+IFFojsXoPb7K03oLgZ6jOvlLwBUwXu6zQoSVyiXDmyrmZ5YE9jkYffXSKkyFMwlzu2dsPNUsQ==
X-Received: by 2002:a05:600c:4ca5:b0:40d:39cb:6af6 with SMTP id g37-20020a05600c4ca500b0040d39cb6af6mr5506215wmp.28.1703768302945;
        Thu, 28 Dec 2023 04:58:22 -0800 (PST)
Received: from ta2.c.googlers.com.com (216.131.76.34.bc.googleusercontent.com. [34.76.131.216])
        by smtp.gmail.com with ESMTPSA id h9-20020a05600c350900b0040d5aca25f1sm8615807wmq.17.2023.12.28.04.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 04:58:22 -0800 (PST)
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
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 12/12] arm64: dts: exynos: gs101: enable eeprom on gs101-oriole
Date: Thu, 28 Dec 2023 12:58:05 +0000
Message-ID: <20231228125805.661725-13-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231228125805.661725-1-tudor.ambarus@linaro.org>
References: <20231228125805.661725-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the eeprom found on the battery connector.

The selection of the USI protocol is done in the board dts file because
the USI CONFIG register comes with a 0x0 reset value, meaning that USI8
does not have a default protocol (I2C, SPI, UART) at reset.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
v2:
- move cells and pinctrls properties to dtsi
- collect Sam's R-b

 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 4a71f752200d..cb4d17339b6b 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -63,6 +63,15 @@ &ext_200m {
 	clock-frequency = <200000000>;
 };
 
+&hsi2c_8 {
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
@@ -99,6 +108,11 @@ &usi_uart {
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


