Return-Path: <devicetree+bounces-40987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 566E4851D4E
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:50:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C0CDB22FDE
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6398646B83;
	Mon, 12 Feb 2024 18:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UbJoUQo6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD51E46551
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763804; cv=none; b=fV/K5pkplYpMWES2drA6fbVaSdutW6tkuqWc4pU/xlzZ/f7DHi2C2fHeTwc44E20NzpdKsywZYs5pL64XxcH+emRttRvEDllZj8NTr00OXq32uJ0UuRhrgUZLratYDcIeF0dl8Vam8Wp3fmqJVukF6tqET0LX50KOvrdEj7hQQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763804; c=relaxed/simple;
	bh=UE3MFqXf9/iOHcPbIpeeoHWvFg2vM5sFut2XdgbnjZw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aJ8i1Dphkve4PU2PVaLoj/BNOWzAV7mPO0lSvA/CV3YHyHbQTS0Au9OfpF5LdMP36jNxCsDkbQQJ1um9WaWAv1PAG1jhOe+Oygl6chv7O23FSHpJkzFLMoTzQtH40WNZxN9q1P9J6jGjWuOOADFhMaauOeKkdgMdgP0Y3WONAA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UbJoUQo6; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5957ede4deaso2216061eaf.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763801; x=1708368601; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w8Muw6h1Q9P9TaGArYYX/lVFQTdPnjrlwu+lY7NfQMY=;
        b=UbJoUQo63ldgiEuJpIAB8yKaZMDJDyDUriaGgKLdcViFSIZOgIafVRYWTApxdJy6QN
         uvk89czo/VyendAjGwU6C8YrvNq+mj6+nn4Hjcd8Ri/EdNmcuKNRQrnV3f4qL+Gcy/nc
         oi0Aj+lQjRj8ZAVpAW4x5/scCEgoJ7wtmTH05OKU6V8QKz0OVPvbQAK2mFqGCXBAx1VP
         9ptwZamEzFNDQf3YHmrQMtr/gExslV6KwtOJc/3UufkpubmP0B9M/zWfg8RXH+ZR1YSP
         FcAX3gQUyliv9tPRtf7bSfmeechNoi+MlhUVCxakVVMUwcY7LbnnlzqAT4KWLnRDR7O3
         oBvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763801; x=1708368601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w8Muw6h1Q9P9TaGArYYX/lVFQTdPnjrlwu+lY7NfQMY=;
        b=mPOGH3PD+nTd9FOO6lJWbJH7UwGSQisN2W5F7QZ4hPItTkWdPR24ZjzEI8g4M8BZ7S
         c5KJw5uUUhOAhZVUYvGyLIQSiRLBnX87txoSgjTukaTzdM/Xq9JJkDI5y0Wc5VMcidFv
         +q76EhTQsf2h5kn0wS8i3rWsrc72nukS25+1uTs7z0dEkMGYSX7TOxeB2gY6hefyx6iX
         NiuVWZJsPc0gtS5LKOoLsL9ft6coMf+pPCoM1VVwX8O9+QHkefIA+joGQHN/g8k2WfVk
         nghg+ZOSs9Xy5LL6uZhQa93PrEVroQ8OZSOvFOzJUKQITxBybbytWyeZbdaCGdfTUqgM
         pLBg==
X-Gm-Message-State: AOJu0Yz+IkqjRoc4wb7XLX+N2Vo4Zc92Vw3Q7lQh1qE6EsVc9J04AbD9
	qPEquhX7z8c6aBrpchDKLaujwdTXaoyxocl7M8b9SE18ePL4WP2G
X-Google-Smtp-Source: AGHT+IEyol+40Ytm7NwX5jgfgRdxMGoz711CEzuTbCrMDRmaGjM6JITqTjIMUT4sVuKU/aYQV+lhGA==
X-Received: by 2002:a4a:3043:0:b0:59d:4eb1:1b7d with SMTP id z3-20020a4a3043000000b0059d4eb11b7dmr4373629ooz.6.1707763801581;
        Mon, 12 Feb 2024 10:50:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVCAHg8jjwVNnCn2wDfiU8wLFp8CZBjM/oUV2aG9tbS1Z6mEifTK/co8G7mdxU3NFTMxkVXlzUSDgCIg/le/ishPNtgv4QzxFsilMo0UQJvtCUbp23pd4Xzy9OlES50/DW9uJX0zL0V9gYl3338z3OdOftCK67W6XfsjBCu4XqsPNbHpvf7RS5ayEJ/ka46m0vYZRnIz9ID/osCSEb/g+0AS1Ro3Sj8DA+x73mFOgU3iAcSIkyI1Mkx/RCV1CZsO8KkVBQ8CBCQACkZokmU/v3nAcoqxzT2Se2p8l1Sjv3HVdX0OmiDNYcoBH+QJ2sdcyFaOWCoT47V/JHEfeUIitSxFEWAc4XPyExwiVMJcpZSxobhXmCUQjcbNETcAystZJuLVWUBhAeuFOt/gCx8DuWY+gXs9bSBoDpSGGYYvPT8ijidf0/IMUjkQ/IeBMiW1P0x62EY7g/r5WD+8C+AsVX2zlHBxkWYPpRrYFI51Ucdud93t3LGk0Th0nhnFus72/U/Cq0sB/n0cAexOUV1z5zDJYr/8yutqxNydGdobOpVKLI9S/sTSPqCmLjD
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:50:01 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/7] arm64: dts: rockchip: Update powkiddy rk2023 dtsi for RGB10MAX3
Date: Mon, 12 Feb 2024 12:49:48 -0600
Message-Id: <20240212184950.52210-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Move the vdd_cpu regulator to the device specific dts. This is in
preparation of adding the Powkiddy RGB10MAX3 device, which uses
a different vendor for the CPU regulator at a different i2c address.

Also add an alias to the bluetooth device so that we can change the
compatible string for the RGB10MAX3. This device uses the same pinouts
but a different bluetooth device.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts     | 18 ++++++++++++++++++
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts    | 18 ++++++++++++++++++
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi   | 18 +-----------------
 3 files changed, 37 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index 0ac64f043b80..1f567a14ac84 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -37,3 +37,21 @@ mipi_in_panel: endpoint {
 		};
 	};
 };
+
+&i2c0 {
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
index ba32d0793dca..bc9933d9e262 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -36,3 +36,21 @@ mipi_in_panel: endpoint {
 		};
 	};
 };
+
+&i2c0 {
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
index 0fa8f06f94cd..3ab751a01cb2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
@@ -614,22 +614,6 @@ rk817_charger: charger {
 			rockchip,sleep-filter-current-microamp = <100000>;
 		};
 	};
-
-	vdd_cpu: regulator@1c {
-		compatible = "tcs,tcs4525";
-		reg = <0x1c>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <712500>;
-		regulator-max-microvolt = <1390000>;
-		regulator-name = "vdd_cpu";
-		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc_sys>;
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
 };
 
 &i2c5 {
@@ -805,7 +789,7 @@ &uart1 {
 	uart-has-rtscts;
 	status = "okay";
 
-	bluetooth {
+	bluetooth: bluetooth {
 		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8723bs-bt";
 		device-wake-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
 		enable-gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


