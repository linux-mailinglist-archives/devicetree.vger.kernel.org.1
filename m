Return-Path: <devicetree+bounces-18529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CAC7F7057
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:47:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF5B5281CEC
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B88F168C2;
	Fri, 24 Nov 2023 09:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bh8fHwuU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A58910FF
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:47:48 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a03a9009572so230701166b.3
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819266; x=1701424066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/gUZBIUzYMuHRAbSO088kKXpKpS1gNBs/8WDq2VIbQ=;
        b=bh8fHwuUDBYvN6Ez6wvqI5Qj8q+/SVlNIWHeNtdnKdLoLHYwHKu7GNb7a02VDCo4GH
         4ADZxM8Q9rokFF8Dn+nyXt88+PWkf7/tZHlp4rwp7EeuZSz/IVQtjQHictMGplw+CE0F
         k1lfr2xP3x26i1I6lqnRMmjvGy2AZHTirMcx0nnHCYl3aH/79B7UnR38b+6NCkyZmd/D
         lnBKclL+Q192qoF8tjNNIOFnLPqQqNZKiYi+u0HotP4vbSgHYytvBbUlcj6ypWPunVK2
         bitQH3mfgwQ9W+evuStL5o2A1zUOGwwyoz0Qo8H0HhCU3req3bRtQTRRZQ59IH+cArsP
         lq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819266; x=1701424066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m/gUZBIUzYMuHRAbSO088kKXpKpS1gNBs/8WDq2VIbQ=;
        b=VP/8XRhUsI/x1aWWZc2KGrjF3xv70dt5r5AWbyoF9XS8K4bRGGqsZmaAm6/G6vHvSs
         gBeIiAGEWNqdcDf2Pp8BdUxrqVlCQ/AYg7ZSrODcwkY6mUSlUgjyOSgGL3oZiDKBQGX9
         v54tC+5haGX+N8TGkPVSafy1GGMmYn7i7Zc84VqZLEBVeV+SiBJqMu89hezzfCXySert
         hj2mhMKp+Da3cUXBaG66p8tAiHuKCwwycw1TR+nBLgokBq/k9kiupthhJ25guDKNXdXY
         MOqDeYDzFV2v++TttoWiuOpltnjAuxs3GYfTkRXPAX6x2KlgP8mBTA3n6xnOYwDJV2d4
         qBgQ==
X-Gm-Message-State: AOJu0Yx48PYGtj7kJ8Bwy+RR+MEln1Mp5+BFccY+Dhzmh0nSHUAmEjDY
	LSBZolV64R8TvZIiPQ2ATV2hQA==
X-Google-Smtp-Source: AGHT+IG8TcnMyfJZNuXyuR9DrsnnT7JMQWpOjEwPjC+zJ451rtsxnJuzVStJa2Z7v/P3VcHAfrivDA==
X-Received: by 2002:a17:907:c708:b0:9b2:d78c:afe9 with SMTP id ty8-20020a170907c70800b009b2d78cafe9mr2173777ejc.49.1700819266421;
        Fri, 24 Nov 2023 01:47:46 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id gr19-20020a170906e2d300b009de11bcbbcasm1859767ejb.175.2023.11.24.01.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:47:46 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: amlogic: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:47:39 +0100
Message-Id: <20231124094739.58163-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231124094739.58163-1-krzysztof.kozlowski@linaro.org>
References: <20231124094739.58163-1-krzysztof.kozlowski@linaro.org>
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


