Return-Path: <devicetree+bounces-18526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 514A97F704E
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:47:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 073122810F6
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272AE16438;
	Fri, 24 Nov 2023 09:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jKO6odCB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6D5ED71
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:47:05 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-54aecf9270fso689750a12.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819224; x=1701424024; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m/gUZBIUzYMuHRAbSO088kKXpKpS1gNBs/8WDq2VIbQ=;
        b=jKO6odCBYkXTweTsrHdmd5TISGHQqRmzdF5guzWkJSTn8Nt4NujmolMhWDuYAUAz9f
         nbjZj/wxZhXLfi5JB9xXKUi94SjzFgb2ejKkIKCPU0qI8lDQ1Cy2wbP9sBGzM171QSvw
         ooP0wyki7HGqnnznOCO0f1uRLHBIdGytqkgkSC8KuPRRax9Y9bJ25Yj2LMS7hIxs3yt7
         jU22FhsvKk13DkdciH90PehmpKrFz8r1S37IoqwwlA6CEK6w9YiTA0Se0LCsA7yz5FoR
         fB2xJX7h5j+yaQzyUMMjFjJ+orLBtSs1A80v0jUsgqu0uvug3ltv6xdozuIaep83KBLZ
         MF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819224; x=1701424024;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m/gUZBIUzYMuHRAbSO088kKXpKpS1gNBs/8WDq2VIbQ=;
        b=S+fCdg4KfwKK5UN3/Pado+2SVx+/hDRT6DiEAVmiPNBf/0QDg+yuerquvuR0PZi81H
         amqq/HxfYo2Awl7Nt0mgl2UvHZ2Rmi3XWPj9eKCuU2dQMj4OMzoduIWTKxXh0uExrQK0
         +OlX1o+Mwd7IzqyNmlIwXndORE/iZ3Cnic5yiQTOUq4nAE9DKca1o4c0kq7tWVZzRc/J
         VF1y5fZR1Drw/FhJ8zCnkKD7RUHfGnutWmcB/fHPT2Z5B6ts2STRfs+QglnHlyRuZEQU
         BU49jmrgEaPqT3FlyV2uMnjs4yB3pKGMRliOqbmkF5TtklduyyoSr8rFZfNe+PWIAijH
         pPmQ==
X-Gm-Message-State: AOJu0YzdbgbGFUXBr3QxHKeuFXj7ggkDbo6TbyYOc09mjI2LBQXLYVoD
	lVIUzHslPhvWeOhNdQhXjfxNqg==
X-Google-Smtp-Source: AGHT+IFMvp2KSIa0Xp2qSzbbXG24Z2Ciz59q7uri8yqqjGSTT4CLqK9Dzs88aSY4DgaBLqnb9qMAKw==
X-Received: by 2002:a17:906:7387:b0:9ff:6ae6:9fea with SMTP id f7-20020a170906738700b009ff6ae69feamr1467114ejl.55.1700819224271;
        Fri, 24 Nov 2023 01:47:04 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id n7-20020a170906378700b009b2cc87b8c3sm1852685ejc.52.2023.11.24.01.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:47:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amlogic: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:47:00 +0100
Message-Id: <20231124094700.58071-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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
 .../boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dts    | 2 +-
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi        | 2 +-
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi            | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dts b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dts
index 0062667c4f65..c9e84db0831a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dts
@@ -30,7 +30,7 @@ &sd_emmc_b {
 &uart_B {
 	bluetooth {
 		compatible = "realtek,rtl8822cs-bt";
-		enable-gpios  = <&gpio GPIOZ_7 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio GPIOZ_7 GPIO_ACTIVE_HIGH>;
 		host-wake-gpios = <&gpio GPIOZ_8 GPIO_ACTIVE_HIGH>;
 		device-wake-gpios = <&gpio GPIOZ_6 GPIO_ACTIVE_HIGH>;
 	};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
index 995ce10d5c81..08c33ec7e9f1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4.dtsi
@@ -369,7 +369,7 @@ &uart_A {
 
 	bluetooth {
 		compatible = "realtek,rtl8822cs-bt";
-		enable-gpios  = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
 		host-wake-gpios = <&gpio GPIOX_19 GPIO_ACTIVE_HIGH>;
 		device-wake-gpios = <&gpio GPIOX_18 GPIO_ACTIVE_HIGH>;
 	};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
index 0a6a12808568..4b8db872bbf3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
@@ -487,7 +487,7 @@ &uart_A {
 
 	bluetooth {
 		compatible = "realtek,rtl8822cs-bt";
-		enable-gpios  = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
 		host-wake-gpios = <&gpio GPIOX_19 GPIO_ACTIVE_HIGH>;
 		device-wake-gpios = <&gpio GPIOX_18 GPIO_ACTIVE_HIGH>;
 	};
-- 
2.34.1


