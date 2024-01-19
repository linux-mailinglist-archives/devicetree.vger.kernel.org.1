Return-Path: <devicetree+bounces-33206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 286B583288F
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 12:13:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2D9C1F22FB2
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:13:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D4B04E1D0;
	Fri, 19 Jan 2024 11:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bsax9cj5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FB14D58F
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 11:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705662718; cv=none; b=lWmQm5zjBYF1q+nIYCQSDv6Kcfyom4vSVJXpOl3DLAErCzHwy1kVoRBfty7f46H/lGdUZ+sDkpzuxxnmYBmZTOiqYv2sNmY3rl9d8cMLqKu71slxqrXter45ZL0WVriwtjbHpbh0z/Gn/UarHou0ETOypDdFR3TN5lEN11Y9x5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705662718; c=relaxed/simple;
	bh=+Z9aKQjWJRg1t8puc2H7wIKhN59qiSCcrvi1W3ZMQJ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C0KK0dMtbSBLZCOAcSbusXdmabfDZ54z97q7oHgiTcKjmlq6rRU6OnJlNsg4CftRKff+11Ht3bXLJxrd75P9zaIQib2mUaQssvNkcoTtKS8mzWLq9uDf0CAwRkEgQEPSAhp3LMrP5eLEsWHpPuE3sIyA9Owv2oniBlHyEHACQGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bsax9cj5; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-336c8ab0b20so568401f8f.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 03:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705662714; x=1706267514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDx9IJeu4q4vg7sxnjP3+o90/kYREKpXEiMwOte9XSc=;
        b=Bsax9cj537jCBdindCqwlsLm7YKFMR4zjAMKweP53fOK10AajxYubcGUpIKgfakUsW
         3oE2LMTL8W0w96ZraPq9fw55ZIJFnK99LhUh1yX61yhbNXp/4b70E6rcFIESSLbG2Ezb
         +cz6U2goQ7pP7yC/FpT8/Lij826zogV+RxNX4G7I8XEZgXvFxzvdXnJmrqJAJPUIe1pp
         hqloRsJARVokBXzKv4FEfcwmBfvnFKb2gQJ9hJuYeM24oLN2Ui1ItZfXnJXrwQZHtJqQ
         sYOStcVQ6+tBVqF+RegH+HcgpqyMtug49BcXSfJPFC3TgGvpIBGdNUIYu/Icgg/UHE0J
         SNZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705662714; x=1706267514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tDx9IJeu4q4vg7sxnjP3+o90/kYREKpXEiMwOte9XSc=;
        b=lXOT17H3f4dw3HYGU8Tm1fjmT8pE5klSL5QmCUkkw63X2T1vjdR2KNwIoZEjqQMnwH
         hx5A1do3BA/vidnnEhjC+R2cndO9rnFnqe3jgpKKrZJ0seLYnl/s2Vh0VMKVInzVodKc
         W7hYU7ebS5Qdy6pa31PLt992UqsofOjqn7iw5HEx5XIC2R1nh0BXMjKy/Xhzk6lftcHC
         fu4bOgk7J3d2OptkyptuPgPAYcZgQYN/wt/5Sa1ac55zGEJeWthPZcw+o87p1eYI0qRi
         nSgA9PjTbOP+YDlBLt+g1pwQZk0WGnJnBu2QXo41XhKKtglyJYEteR7w7oECV0P4P6aw
         8e9g==
X-Gm-Message-State: AOJu0YzWmq8+UToyjFGu6WYc5VNNLRcCcZIPjLS+ddsMdRIF0GkAr9nz
	nCDnyF6W9jH1ehhppYqxLW0OjD9USqN4dtqoZ1RCQEUUa36eWg8FqzwmgY08qMQ=
X-Google-Smtp-Source: AGHT+IFa9EXNILXQkEvGWQUIOOA63etKevXkmw5q28slYY6iHwHtb/9wtgcuyorN42OKWTa9d7vFYg==
X-Received: by 2002:a05:6000:1010:b0:337:c642:7acf with SMTP id a16-20020a056000101000b00337c6427acfmr1422410wrx.108.1705662714705;
        Fri, 19 Jan 2024 03:11:54 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id o10-20020a5d62ca000000b00337d4ce6ab4sm3341868wrv.20.2024.01.19.03.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 03:11:53 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: andi.shyti@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v4 6/8] arm64: dts: exynos: gs101: update USI UART to use peric0 clocks
Date: Fri, 19 Jan 2024 11:11:30 +0000
Message-ID: <20240119111132.1290455-7-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Get rid of the dummy clock and start using the cmu_peric0 clocks
for the usi_uart and serial_0 nodes.

Tested the serial at 115200, 1000000 and 3000000 baudrates,
everthing went fine.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 2d1344a202a9..6aa25cc4676e 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -180,14 +180,6 @@ HERA_CPU_SLEEP: cpu-hera-sleep {
 		};
 	};
 
-	/* TODO replace with CCF clock */
-	dummy_clk: clock-3 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <12345>;
-		clock-output-names = "pclk";
-	};
-
 	/* ect node is required to be present by bootloader */
 	ect {
 	};
@@ -367,7 +359,8 @@ usi_uart: usi@10a000c0 {
 			ranges;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			clocks = <&dummy_clk>, <&dummy_clk>;
+			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_CLK_PERIC0_USI0_UART_CLK>,
+				 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0>;
 			clock-names = "pclk", "ipclk";
 			samsung,sysreg = <&sysreg_peric0 0x1020>;
 			samsung,mode = <USI_V2_UART>;
@@ -378,7 +371,8 @@ serial_0: serial@10a00000 {
 				reg = <0x10a00000 0xc0>;
 				interrupts = <GIC_SPI 634
 					      IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&dummy_clk 0>, <&dummy_clk 0>;
+				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_CLK_PERIC0_USI0_UART_CLK>,
+					 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0>;
 				clock-names = "uart", "clk_uart_baud0";
 				samsung,uart-fifosize = <256>;
 				status = "disabled";
-- 
2.43.0.429.g432eaa2c6b-goog


