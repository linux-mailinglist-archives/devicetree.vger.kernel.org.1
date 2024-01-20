Return-Path: <devicetree+bounces-33377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8BE83323F
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 02:31:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 019D1B22927
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 01:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 962293D70;
	Sat, 20 Jan 2024 01:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c+0l8/kp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75BF5C83
	for <devicetree@vger.kernel.org>; Sat, 20 Jan 2024 01:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705714197; cv=none; b=bqsUZrMYYp98TU1YWXQSSuoRqlnAyt5hLB5GzRBtRbiJcmeqiJYCuRn+saU3yJuzeEtK3XYZtjXE4qoQfZKIVvS5gNptFc8W15J0AhsotyaMT+EnNt6Lod+Osb5/Dlz0rXuAoxkwB6UQ8Cj+KQDA9Ai4IwDdAR9patFtcOcP+rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705714197; c=relaxed/simple;
	bh=mUKc9g7ozvpHBUh17BhmkBiAIeIk5YwBePICBMNhx3k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZEqXzC5RPvofIxs4qQ1pLhJfUlS7wOHqo6yBY81dC+tEhnOqR8klXl9NrIAyR/I+HER83cQMowiaBb9ddeAYbZPDWRswxm/FVU/M3efV2XZmp6R5/CphTl2d9XPXyQOTMAsXFTccXoF3QCB/RuY0kGvmTcgRLeq/5dqWLmOP3WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c+0l8/kp; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-2142c746270so58788fac.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 17:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705714195; x=1706318995; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qt0J6cVMrFby8ImoxP1lM+y8zbhRiOD1FGpC5bskefo=;
        b=c+0l8/kpVuEaemlkZYyhJz4CO/a+/6qGq0G8Yrt06ils8elp3ccz9+u/XCtSwinUGp
         zUP3uadGZq5mtEtLDyXJbTHbzApNKQsa4ESTPPqjI0r7yVV+bxERXGRBfh8FJMG64SlV
         hx8SMG6G7uQKlsRRC5XQt5hWwRPvE+aDBYPuor77BXOv3V3/8u3rBSeT0tZso/pTRExR
         1Loz4o9MTBg/fXju0DNHbi0+HLG4HQ2AI2dSdcU1Gl+vJJJk3BIx3PtFXLSy+mxX6ujw
         FDbxUySL5GCzBWkbFWi3XFDDrBpyzjJGifN3w4kflJkrhG2vXDdaJLDSpaEGJbIAeAqP
         svXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705714195; x=1706318995;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qt0J6cVMrFby8ImoxP1lM+y8zbhRiOD1FGpC5bskefo=;
        b=VkeoEnTBIcsmya/pabz+0Raxo2zx0TiW7X9nRdWaJQMTTOvZApv8UkznHrIutPjYhI
         /netNRGInyRTRTEA2S9plfcLjsAcR2Lx+/GtZ/JZz1CLoZgdxJ6A9tvTiZSRLhHJWV4M
         FfCYVRhX8xT5V93dS/w6dqepWGdkX/8JL6OuP19iTGhFdbtzoUNWO72XXU0MWREFCZbM
         EGBzm0s31hYJc8eJ9ykV0lAcRjCAi1FUffsGz452/+3B5psLGyegp4IbjQJ4PjewaH12
         yKnyjo7mmRz5I0j9Km2x7ZQ4HWL3kfzf37gmaLwKItYH+0kTj46oY2gqD91gCbi4B6br
         BSOA==
X-Gm-Message-State: AOJu0YwBJJbfLNKmfrFFXPZ1l4vfAXXDLNpuwQf+Vmi2ElF97VluHYDj
	D2EJyFwp8yqGqS6ON0hg7NVkYQ3q7mWcni0I1UHVg6wLcACsZZdwQh09mCzHSec=
X-Google-Smtp-Source: AGHT+IHkbWQt3HfLrKo2uTG0v2O7n8IgL0Vlgu+RrCyM3THWSetiKwi+2qBLvopfgnl1SvOV0xTsXA==
X-Received: by 2002:a05:6870:a90a:b0:210:9e85:edc8 with SMTP id eq10-20020a056870a90a00b002109e85edc8mr767429oab.45.1705714194801;
        Fri, 19 Jan 2024 17:29:54 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id az2-20020a056830458200b006dbf3a08be3sm763599otb.2.2024.01.19.17.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 17:29:54 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: exynos: Add SPI nodes for Exynos850
Date: Fri, 19 Jan 2024 19:29:48 -0600
Message-Id: <20240120012948.8836-8-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240120012948.8836-1-semen.protsenko@linaro.org>
References: <20240120012948.8836-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some USI blocks can be configured as SPI controllers. Add corresponding
SPI nodes to Exynos850 SoC device tree.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos850.dtsi | 54 +++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index cd0a452cd6b4..e35973a254e6 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -738,6 +738,24 @@ usi_spi_0: usi@139400c0 {
 				 <&cmu_peri CLK_GOUT_SPI0_IPCLK>;
 			clock-names = "pclk", "ipclk";
 			status = "disabled";
+
+			spi_0: spi@13940000 {
+				compatible = "samsung,exynos850-spi";
+				reg = <0x13940000 0x30>;
+				interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&spi0_pins>;
+				clocks = <&cmu_peri CLK_GOUT_SPI0_IPCLK>,
+					 <&cmu_peri CLK_GOUT_SPI0_PCLK>;
+				clock-names = "spi_busclk0", "spi";
+				samsung,spi-src-clk = <0>;
+				dmas = <&pdma0 5>, <&pdma0 4>;
+				dma-names = "tx", "rx";
+				num-cs = <1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
 		};
 
 		usi_cmgp0: usi@11d000c0 {
@@ -779,6 +797,24 @@ serial_1: serial@11d00000 {
 				clock-names = "uart", "clk_uart_baud0";
 				status = "disabled";
 			};
+
+			spi_1: spi@11d00000 {
+				compatible = "samsung,exynos850-spi";
+				reg = <0x11d00000 0x30>;
+				interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&spi1_pins>;
+				clocks = <&cmu_cmgp CLK_GOUT_CMGP_USI0_IPCLK>,
+					 <&cmu_cmgp CLK_GOUT_CMGP_USI0_PCLK>;
+				clock-names = "spi_busclk0", "spi";
+				samsung,spi-src-clk = <0>;
+				dmas = <&pdma0 12>, <&pdma0 13>;
+				dma-names = "tx", "rx";
+				num-cs = <1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
 		};
 
 		usi_cmgp1: usi@11d200c0 {
@@ -820,6 +856,24 @@ serial_2: serial@11d20000 {
 				clock-names = "uart", "clk_uart_baud0";
 				status = "disabled";
 			};
+
+			spi_2: spi@11d20000 {
+				compatible = "samsung,exynos850-spi";
+				reg = <0x11d20000 0x30>;
+				interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&spi2_pins>;
+				clocks = <&cmu_cmgp CLK_GOUT_CMGP_USI1_IPCLK>,
+					 <&cmu_cmgp CLK_GOUT_CMGP_USI1_PCLK>;
+				clock-names = "spi_busclk0", "spi";
+				samsung,spi-src-clk = <0>;
+				dmas = <&pdma0 14>, <&pdma0 15>;
+				dma-names = "tx", "rx";
+				num-cs = <1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
 		};
 	};
 };
-- 
2.39.2


