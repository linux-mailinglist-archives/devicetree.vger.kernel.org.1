Return-Path: <devicetree+bounces-82001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7B091E2F9
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 16:57:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C199B287243
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B080C16CD39;
	Mon,  1 Jul 2024 14:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DsKy32Ey"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD5616CD03
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 14:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719845812; cv=none; b=Q5n96w+tNAgIccAjildAjVhUZWx3i00KPuczj2KdBIm/SCsRv+EZwZ69QG7t5XG0sbssn6reoSMudRrKwy8Ux3aibw8LPEUpMcipMg0H2+gMOZiCBueiwd6eyw89bzcvkREmDSPJUQ1EhQIczJnfhBlu/MegsZQeYmE31i2OYfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719845812; c=relaxed/simple;
	bh=kb1FnQDn0ZT17ALs01+HilXnHppqjDF6c8veki67I7Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LLbj23UcCG6ISaPhO1fh+DLyc+afUGgwl2/Nb3mRW7ZXReSaw1eu8o2KZLlcb28dzHo7znFEUSywhb9qfSIJYnTiDrn43Zxopkjx7GRrCBAk0AhutDv6cWdh5AuHVHi32YDOgfZLPfYIsdlJUPW7rqoXE8j8312wKR4j/X7j9ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DsKy32Ey; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42573d3f7e4so20138625e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 07:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719845809; x=1720450609; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RmnlXVSk8Bmi7VgmYcl1HcRpFD6VX2h6iLn8P1zKdUs=;
        b=DsKy32EyPUv6ohllT8PacQta1TeOJ3SkHJ4wSd/9vzld2Zc343FQ8a+COjcUazFpc7
         TXrJ0To8ofg45cqUeegH9w575w5jIf93UMgpoqo+m0ZA9NBSR7Bq/Hd59CQid6kpaSwE
         TCvADIFFV8gYoRhOu4+/EEXH7Nya3NSicApPFJR4UQ3YkHnydynX74yZNXQE6aieV3Ut
         gBqRpTCYrsj39gBCS6ypLmG0PYB3FvB6z2JVUynK3rbGJFgcx2e/Smcjj7VIkbeXjAMA
         0PAUm2vG7N5mLTgPAPAa53xLP3L7glj+EAfYxilnYGSS0vKgvNXKaxJEwlgdBYKjzRQ8
         CSOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719845809; x=1720450609;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RmnlXVSk8Bmi7VgmYcl1HcRpFD6VX2h6iLn8P1zKdUs=;
        b=BO2bYrKPioM5A36ubM+3DfVFlrdC0XswYFJu3MikQpiMAWrQQpou/L55/hyqg88EcI
         qaNiUXjGyRXGtdS3ZYeL5qtTEtJpYH6yRtVXwEBZimmXSreFofhn3JnEWS1wZkf+eMzI
         9NI2+jCuxaQ3yUS77G1Bl3N2HS10QgTYSZpFoYqKm5WFZXh5jzG3H4guHvVnvvURHJIm
         NFUx8LUoq6s5Jfs5IUK8l71EAAP7hEoW9RepwE7b9a4O/dYMG/CjA7iiPngnmQvHc1gJ
         vKWZDitfVFe4Kphs46Lwa6YL7FqyBTSQX5lq7He9GbixO8wQxl2f5WYxSVwmcllsXeVr
         K7aQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnLtU89cOOwyFaxCDOUJ/uCt3sAiih5VyGfiUbVf87pRMMuM4CoSpxQ/wku4jNa7vrf4h8a8pgV9DsMku2qV4KsjQqaRfgXqubBQ==
X-Gm-Message-State: AOJu0Yycl1SEvuA74n/gyMT+1DJZRdLJb/S1rwFdnM5ZRl58afeeR9cV
	GmLKUQIP6QBGPaE7i0FmHmr1fN12ZNu6gEqoObGzkEW4g8LgLrLGpTszBYTqDeM=
X-Google-Smtp-Source: AGHT+IGra1rN0CktmnXJF4vfHe896ROGlb3rDY4QCV/i7d+MRtIToMqbGMp6dcTl/zTwo3hzkxk+Sg==
X-Received: by 2002:a05:600c:2255:b0:421:7b9d:5b9b with SMTP id 5b1f17b1804b1-4257a03022fmr47607455e9.15.1719845808875;
        Mon, 01 Jul 2024 07:56:48 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b0c0f99sm160062915e9.41.2024.07.01.07.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 07:56:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 01 Jul 2024 16:56:37 +0200
Subject: [PATCH 4/7] ARM: dts: marvell: orion: align GPIO keys node name
 with bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240701-dts-marvell-cleanup-v1-4-4773bd20691a@linaro.org>
References: <20240701-dts-marvell-cleanup-v1-0-4773bd20691a@linaro.org>
In-Reply-To: <20240701-dts-marvell-cleanup-v1-0-4773bd20691a@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4380;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=kb1FnQDn0ZT17ALs01+HilXnHppqjDF6c8veki67I7Y=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmgsOm1UBLm7b69zUMX/zcTfKcYyhS1/iRpO2En
 +Uex+ylj8yJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZoLDpgAKCRDBN2bmhouD
 144FD/4xlTp2kYFnF/dp6I0lBkqMMr4j5u9JWCbw/26hD3Oqy24gqwEtJJOoSIxn8cGbZV/S5o/
 8vWFvPXXQToXoBGQMCvBfsZ6/eASPEvN3WApo/hg5Vgm2tRmXUAdIL8g+8TzXMpl0HGWhFOhyD2
 tlp+j82/ShcJPiTt7I7T2IOnTrulSfBaX3HCGqorljFL9aVP8+k57NRBvZ+x2DH8G+twa4IRPw5
 nGwygRHMpPbIKG1V+7JTQ7tXhppg/+zN6+CrxRuFv0E3Z1OOIXzE5VE2fKoQQIJ1qQgEzYaEm2k
 cKDZx/pA9c2lhYZmhrh3cvCfr+BXqKAm7Ak46Kdi9VEzfPf1zRgT4Y2pxZZ40bBQ7ppabmYdvxi
 NOBY3hLZCpLSqYWHiGfzP6XeeCwJqxqZ1bWeVtTe4g4D+gWbdLfeBcxMgMH6eRu8YlBjSNzRfwr
 rkerLlYETsBwmN9wUakwtDsjYfAVu2fG0N7xmGFqoYqV/HOrVsw3py7P5RU7WPlM4uKMbNRukGZ
 WKv85CR0c7+5IL8f1Ch+I4AfOej9aLnATT0HpdQPmSLleGlPUwxmwuKkwl+swVrljlEktJvuBDH
 1dSN8JnfBCz9hHkMwo846IurWcibjKFmQGV0+qiVdc1av8+uLIgGpSY82bGnOq9fM6lXp5RTVC2
 5a5rH6Lckm+4FsQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Bindings expect the GPIO key node names to follow certain pattern, see
dtbs_check warnings:

  orion5x-lacie-d2-network.dtb: gpio-keys: 'front_button', 'power_rocker_sw_off', 'power_rocker_sw_on' do not match any of the regexes: '^(button|event|key|switch| ...

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts        | 7 ++++---
 arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts       | 2 +-
 arch/arm/boot/dts/marvell/orion5x-lswsgl.dts                  | 7 ++++---
 arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts | 5 +++--
 arch/arm/boot/dts/marvell/orion5x-netgear-wnr854t.dts         | 2 +-
 5 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts b/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts
index 03471d30bfd9..3d6c5af0e843 100644
--- a/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-lacie-d2-network.dts
@@ -37,20 +37,21 @@ gpio-keys {
 		pinctrl-names = "default";
 		#address-cells = <1>;
 		#size-cells = <0>;
-		front_button {
+
+		button-front {
 			label = "Front Push Button";
 			linux,code = <KEY_POWER>;
 			gpios = <&gpio0 18 GPIO_ACTIVE_HIGH>;
 		};
 
-		power_rocker_sw_on {
+		switch-power-rocker-sw-on {
 			label = "Power rocker switch (on|auto)";
 			linux,input-type = <5>; /* EV_SW */
 			linux,code = <1>; /* D2NET_SWITCH_POWER_ON */
 			gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
 		};
 
-		power_rocker_sw_off {
+		switch-power-rocker-sw-off {
 			label = "Power rocker switch (auto|off)";
 			linux,input-type = <5>; /* EV_SW */
 			linux,code = <2>; /* D2NET_SWITCH_POWER_OFF */
diff --git a/arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts b/arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts
index ee751995c8d0..624b737a8be4 100644
--- a/arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-linkstation-lschl.dts
@@ -61,7 +61,7 @@ memory { /* 128 MB */
 	};
 
 	gpio_keys {
-		func {
+		func-button {
 			label = "Function Button";
 			linux,code = <KEY_OPTION>;
 			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts b/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
index 2fbc17d6dfa4..e2829fb0c8b2 100644
--- a/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-lswsgl.dts
@@ -76,20 +76,21 @@ gpio-keys {
 		pinctrl-names = "default";
 		#address-cells = <1>;
 		#size-cells = <0>;
-		func {
+
+		key-func {
 			label = "Function Button";
 			linux,code = <KEY_OPTION>;
 			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
 		};
 
-		power {
+		key-power {
 			label = "Power-on Switch";
 			linux,input-type = <5>; /* EV_SW */
 			linux,code = <KEY_RESERVED>; /* LSMINI_SW_POWER */
 			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
 		};
 
-		autopower {
+		key-autopower {
 			label = "Power-auto Switch";
 			linux,input-type = <5>; /* EV_SW */
 			linux,code = <KEY_ESC>; /* LSMINI_SW_AUTOPOWER */
diff --git a/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts b/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts
index d57859998350..90ce5fa883a4 100644
--- a/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-maxtor-shared-storage-2.dts
@@ -37,13 +37,14 @@ gpio-keys {
 		pinctrl-names = "default";
 		#address-cells = <1>;
 		#size-cells = <0>;
-		power {
+
+		key-power {
 			label = "Power";
 			linux,code = <KEY_POWER>;
 			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
 		};
 
-		reset {
+		key-reset {
 			label = "Reset";
 			linux,code = <KEY_RESTART>;
 			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/marvell/orion5x-netgear-wnr854t.dts b/arch/arm/boot/dts/marvell/orion5x-netgear-wnr854t.dts
index fb203e7d37f5..d63ea15539aa 100644
--- a/arch/arm/boot/dts/marvell/orion5x-netgear-wnr854t.dts
+++ b/arch/arm/boot/dts/marvell/orion5x-netgear-wnr854t.dts
@@ -35,7 +35,7 @@ gpio-keys {
 		pinctrl-0 = <&pmx_reset_button>;
 		pinctrl-names = "default";
 
-		reset {
+		key-reset {
 			label = "Reset Button";
 			linux,code = <KEY_RESTART>;
 			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;

-- 
2.43.0


