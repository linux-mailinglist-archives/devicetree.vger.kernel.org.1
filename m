Return-Path: <devicetree+bounces-25301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EFD812D96
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 370DE2826A8
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7331F3E495;
	Thu, 14 Dec 2023 10:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LxDwOFzf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BBAF118
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:53:01 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40c39ef63d9so54521995e9.3
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702551179; x=1703155979; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zzA2dIkRl3zi6KLIovteqBU+Yufsa0nL24/l8CSy6vo=;
        b=LxDwOFzfk1mk+5E1bTajsbZZurk8ncwEgE3e/mLgw99ELriUqpFuRUcAdz20xR37W4
         u9FEqecRe5aE/3G1MLIwXLQilHOFJy0ZiQ6eIGn6TTRziz8wVJicN7gVFWEDsmZUzgWP
         MwLLqxgOb7HjlrAaPYcl7jrZN5gW0y1hpUfYNfx/ZTuolzJCQVMSDsebP5ryM/DgQ4D/
         b2g4TtRESD2YoGyxuq7c4KIkYtnSL+TgrYnwrZt2HqgRxQpYWMCJWpzRfEXZ2DHjHthM
         lehXU5TNuVpiFIc2jI2vlg7s3LYocs//mVEd24nRjEim57OYetvIvqiWdXvOkdaVBNUQ
         5TVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702551179; x=1703155979;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zzA2dIkRl3zi6KLIovteqBU+Yufsa0nL24/l8CSy6vo=;
        b=RFHQVUirS5RiYYh69LfVFJFtiVv+7wo3vIwrTMV6WXJ1DcNKmnIE5SbL08TnRBQBPk
         gVwrTI+bb8LehgDDcNBv8or04rBZL1jdb9KDEBvJAaAdjbvjdTAqCSmzkBiI1nU0gZMl
         t/Wyorf/5VnpHHAox7w9SmcyM8WfcnsR1Iy+DjcVRoWqD3D5ZSv4lWLvQtV8B4RxDvt/
         B2tTLOrnrSKNck8AxDmcjK01rXTS0UricgnIKrtleetKLrT5LYtfLge9dIQPLH4HuUZR
         qqaq4Pq6IFcQBc08Q14/RJw3bnfR7pBaWhzqqjvTEqd9yto1dcxGH9IbY6mQhcbe3XwP
         Pm4A==
X-Gm-Message-State: AOJu0Yw8eWO4kx/HwaznLKpTh/o/Zl2R+ZqBg0YHJw59FfzjyNxU426M
	sXKmhw7p8ZY/CLQKI2NYTCJyJQ==
X-Google-Smtp-Source: AGHT+IEqV0ObtUONCdvEPCDbFLJPuQr+9mAoHMbahLrEG03jRPqlYIZ5dCXvjXgOAcoNCpFns3NOPA==
X-Received: by 2002:a05:600c:2111:b0:40c:2910:50c0 with SMTP id u17-20020a05600c211100b0040c291050c0mr4828141wml.89.1702551179737;
        Thu, 14 Dec 2023 02:52:59 -0800 (PST)
Received: from ta2.c.googlers.com.com (216.131.76.34.bc.googleusercontent.com. [34.76.131.216])
        by smtp.gmail.com with ESMTPSA id p7-20020a05600c468700b0040c420eda48sm17614854wmo.22.2023.12.14.02.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 02:52:59 -0800 (PST)
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
Subject: [PATCH 09/13] arm64: dts: exynos: gs101: update USI UART to use peric0 clocks
Date: Thu, 14 Dec 2023 10:52:39 +0000
Message-ID: <20231214105243.3707730-10-tudor.ambarus@linaro.org>
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

Get rid of the dummy clock and start using the cmu_peric0 clocks
for the usi_uart and serial_0 nodes.

Tested the serial at 115200, 1000000 and 3000000 baudrates,
everthing went fine.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d0b0ad70c6ba..ffb7b4d89a8c 100644
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
@@ -369,7 +361,8 @@ usi_uart: usi@10a000c0 {
 			ranges;
 			#address-cells = <1>;
 			#size-cells = <1>;
-			clocks = <&dummy_clk>, <&dummy_clk>;
+			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_CLK_PERIC0_USI0_UART_CLK>,
+				 <&cmu_peric0 CLK_DOUT_PERIC0_USI0_UART>;
 			clock-names = "pclk", "ipclk";
 			samsung,sysreg = <&sysreg_peric0 0x1020>;
 			samsung,mode = <USI_V2_UART>;
@@ -381,7 +374,8 @@ serial_0: serial@10a00000 {
 				reg-io-width = <4>;
 				interrupts = <GIC_SPI 634
 					      IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&dummy_clk 0>, <&dummy_clk 0>;
+				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_CLK_PERIC0_USI0_UART_CLK>,
+					 <&cmu_peric0 CLK_DOUT_PERIC0_USI0_UART>;
 				clock-names = "uart", "clk_uart_baud0";
 				samsung,uart-fifosize = <256>;
 				status = "disabled";
-- 
2.43.0.472.g3155946c3a-goog


