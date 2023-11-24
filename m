Return-Path: <devicetree+bounces-18539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9951C7F707E
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E73CB21299
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC25D1802F;
	Fri, 24 Nov 2023 09:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ea5uCM+3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56B60173A
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:50:43 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-54af61f2a40so499124a12.3
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819442; x=1701424242; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qor/r0zOqiLhFxmNXSJ8SXz2GN8hXhjmuYRNu5/p5mA=;
        b=ea5uCM+3ou4ir+Ngwk7j4rZ7QdLmyEkK6Up0tsfoodmiwO0iafDGx4NG8mUx7GKxKd
         JriBrp1rGobf0rd41GeR1VTkcQqhJNWFQnxJIbuMtIq22h9/JCnHrvo3NJzbneoYE0aZ
         RmB2COybHcc3D3ust658gBRF8n07HmZ0lVpMYDb/zPRMFNdvBzf41tzC+9O60Ns4dMYc
         ebRiPHp9igTq8fu5d0mAxNRomy3xpq24ofjYalSw4iyNCDqFdHzrOVWKCgG2klbPcJaH
         r/xNWt0Q7gJ2oleXrGWszeA2xffQlazHEQD6fAdEGhqAa5UgajK/WubhbTtKav9fsyAu
         iLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819442; x=1701424242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qor/r0zOqiLhFxmNXSJ8SXz2GN8hXhjmuYRNu5/p5mA=;
        b=Spg0Psb59xhX/hBx3H4qpdnAk2jevZX9n15jISbsatuTFm7LR7PHw3HpIxkqYd59/O
         k3Qg4AJa1aA4BXFR7ggDpcQSKX1TWfu6eKMRB+AZCsJ6/EJ5DodwtcQS1D5NUvgIn002
         uiGgPKZ9c0c7fNZLCxY9tiKC9mAPn3SgLFPeQz/a9SSqRn88vgPZmHFobYDnnSvmcGAG
         iYGFNfl9IdM5IOGyviwgCHagcf3gUbH+sVbWlRI/FDyW/T3UtI2zAEBZuFtWQ3xq8Wu6
         Q358P4LoIR4yXEEIyZ2XEp/ueoddPi/OJY78in0AGIq9yK7VOqLUGlAvpLhC629V8pnp
         nVlQ==
X-Gm-Message-State: AOJu0YyK90b8IZYMWAj1f4gIOXI8aq3F5+5NM0706RrWEJpFsyQqAOiK
	HjCPor1jVBSZSiWctZS+6UkEbg==
X-Google-Smtp-Source: AGHT+IF1Omq/eaQPmVm8llzgDUE6BlQzXBZgCbk9ZF2AfikHHCfYcfIe725SN2hIJuRRWO0w5v03Xw==
X-Received: by 2002:a05:6402:1744:b0:54a:fcfd:224 with SMTP id v4-20020a056402174400b0054afcfd0224mr698023edx.17.1700819441954;
        Fri, 24 Nov 2023 01:50:41 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id g20-20020a50ee14000000b00548af940701sm1612755eds.53.2023.11.24.01.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:50:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:50:31 +0100
Message-Id: <20231124095031.58555-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231124095031.58555-1-krzysztof.kozlowski@linaro.org>
References: <20231124095031.58555-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index de0a1f2af983..7d4c5324c61b 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -86,7 +86,7 @@ simple-audio-card,cpu {
 	sgtl5000_clk: sgtl5000-oscillator {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency  = <24576000>;
+		clock-frequency = <24576000>;
 	};
 
 	dc_12v: dc-12v-regulator {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 8f399c4317bd..e3a839a12dc6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -38,7 +38,7 @@ button-recovery {
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 =<&leds_gpio>;
+		pinctrl-0 = <&leds_gpio>;
 
 		led-1 {
 			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


