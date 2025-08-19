Return-Path: <devicetree+bounces-206462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFD9B2C568
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:25:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04756725621
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2EF63570D9;
	Tue, 19 Aug 2025 13:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HacgI+OP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2283570D5
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609479; cv=none; b=a/yfFpksqDkk3SiOjRfBtnJwGmBr1DAmL3dOqV+e0Lx5iQ9w1yPXMb+pSUsFZ122CSxEwNJOBRH47dNpiNHbd1DPVUx6YeIwp+YKK/6E//JNyXd5b4ITuy9oJRUxbrFTekteudyiEScL8YhDY0VXHigJqsaMbG4cizuWnumn+kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609479; c=relaxed/simple;
	bh=a/1Am43qkovn1U45ePWY9QossHBqqTSsbI0vixo31/s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZUBvhsEadW/g0rMFVtdQ/TZJlTkuYUDWu6bnlwI0nfFKrpOWn5TkJwZTmaa4+AMk77PhvbmR3nRK+0Pkdkl2hZwRqgBm0gVjgaF6FR5Gc+YwqoomBgTEz1xMzVDI0qZ+M30GROQCwlxag6sMlL3vqrN0P4Sd4Vik4ORvB/IfWGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HacgI+OP; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6188b7400e8so433228a12.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609476; x=1756214276; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dwxhOWr2tfFUazQ0vTmv0AWEueIJvOP+MVDAxepHzKE=;
        b=HacgI+OPIYzxtThCf84BuQHLpKpAzanqcGFlGrZPcw6Yw5WvkSF2iVVSw+lmFxrjRp
         L855dZxSDsIyT3mATumZ7zz94Lpa3EF6/e13kN+FKqVXg51apbee5A7PGI5jP8ITDOdC
         /ZT2LQ4By+NMM+G3H/DOTNhWT4FHhoDY53gdUJOlf5MLCAIBMFMDyTAa/ckxlwYcVv/J
         QLkLHmues7PMqGsPDWnUlYFGv/JOGM24dwyRVmb53Igy3wxt17Hr4EEeTsh/wktuaFw5
         avMqcPJ3MY7Td00bQ/MeszhfOjbGuF+DtH5/bXUCh5KqkqstdPPh6WkmNdCddLR2yE8X
         mB4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609476; x=1756214276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dwxhOWr2tfFUazQ0vTmv0AWEueIJvOP+MVDAxepHzKE=;
        b=ETez1cc+DoCLQs35z1HotrTpIg9K1LcxC3LFHawL5uEAonIJJGF7NXPpFk92RyXIEk
         n1jx+YINpW3I0RQrvhwUUgSXUIFg+Nk7JUyaFlYx0kkkmfh2jaKdr5NcM9bIGej68hqM
         h1J7MxDzgv/GFV7F4QxRO9VYqt4VzLDbGKJ7YifydWdKcIp6sWTBz9WgJPnVavcp6q/N
         BjxslkHzryPXziBppV7VEF0dUWp6AiUyxjRZdoWGqpkyj6odatVabMa9kPyITf5ofaUK
         0JF2oGqplF413H0JEYX0LcJupi6NN34iNOZnUR3wR7Ii587tqkxPG4WcguTRYNDaZSqu
         ok5g==
X-Forwarded-Encrypted: i=1; AJvYcCV1j1Tebp/mQ/jQSQbSE0MV17txf5o8v34fImPUAE7mNbkW7OEjBRA24iXSM+CbCa9fnyVgh6giNo2p@vger.kernel.org
X-Gm-Message-State: AOJu0YyuRmmXb3bniO1GdWRmmPoEAbzwb39jEXovkRhjV6PUYFJGFOv3
	h1pC1RAAZq8aOUIqGgAtzeHb/b0GBtJ2tyk43S5e+z7yRhABVyyEgbP+dW0d9uKJRzA=
X-Gm-Gg: ASbGnctWSOxuisVn/UPdKNOs6dMUy7rVCyJVcCSW0cYwVnGi4bTQ7Jlm1v4k1r8hKdl
	rTnxm1RkoF8Y9nBPUBd7UoYJkuMUeOlx3JxU2G9W6fRaxu5V92fKhLJpR3y8eLO3Rn6MWicRBox
	g8rmvErRw6au5S1yP/9yES+aFJqfEeoQ9a0Zgt1x7iUUthj3nefekEun6g3pKXqLNI12rki06aR
	2mHLPRUJ2akWdLyoJ3R890yz10cgt+H2ngXG1iONXFdxeSYg7Cyz7UyivIdfFbO3/0tAjNcq1Pd
	pvThL6GA6BypWBGFhwd5Feembd9lz31Q1SmCWsfZlBEntLQIneHCafObs7tj/xvgqOegsUQhvT4
	oIufzemji6jCs82ywwVereqI5YDgNrpFmEA==
X-Google-Smtp-Source: AGHT+IHADlenz3AdOd7FQc1EL+ISVUt3VbFHxgCFL2F4EgiCqro4WqqKqiPXtAlrEaDVo3hCIju+Ug==
X-Received: by 2002:a05:6402:40c4:b0:618:1835:faa7 with SMTP id 4fb4d7f45d1cf-61a7e6b6437mr995125a12.2.1755609476324;
        Tue, 19 Aug 2025 06:17:56 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a755d9b37sm1734573a12.7.2025.08.19.06.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:17:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: allwinner: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:17:53 +0200
Message-ID: <20250819131752.86948-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2549; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=a/1Am43qkovn1U45ePWY9QossHBqqTSsbI0vixo31/s=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHmBLoUxXgl+pLIifvNbA+bzGXESv/qvlnAnv
 KJqtnvJQFKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5gQAKCRDBN2bmhouD
 1408D/4+3v8iYk/kQH1Z+B8Kr9TVDiNW9AGM6dhlicodidDswX6yq4R7L3uHYrTgy6D9DYOMEdu
 fFOh3dMyd4r+ifvr0b7k6sCPRUD+Kcgx43HD0zpp0/SJCRxXx9qT5shxaF3D15gMO/NB2RreH8D
 MFPf2qMJRBhEiHqWjay7Q1UPC6iP3f2YhAA7i8TuunoQDknp1UrqhB1ZHjzVqo6qJQe9NEnTYjc
 E7PXWUP3ywhYvv1NqwdtWz8TS9YOHB+AhBXSv0+ss1C2rOH0dpUWJEamidIoHUrRJFxpIP1+S9e
 fLWuqLHf9njYf3FVpy6IdqLSwOq00wcEoupYtSO7FVPyX7+2CxJSh5GEIYd2DZitCEVV/PNGP+3
 VlkjHdcEl7cYowWa+kPhfuJfuZfFTK+pjtVKWsDyIrm4cAUNA+l9lMIeQ+CgMsNV2yoeinUgo/6
 v4Dgn6rCndS8yLKXhFrbSqYuFQrDI2RW/haQ21PbbCRLhWq4t22xuMMv4CfeQsBU3GzOBWMdfsI
 nVzMZXfXDWj3aI5cNj0YC6I0EqwsbDFPKC2mrgEII6wGpa5fUY1sC8PUx4FaMHf+aef60jx6tq2
 0KYUU11eJ+K4hwElrfDLLI9wWWeI9IEm/9lkARv/liujs+x6PMt/iI0P3mYXiBFPwAe+k332Rt7 Cjv/D/Z9mQ6ZYeg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '=' or '{'
characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts  | 2 +-
 arch/arm/boot/dts/allwinner/sun8i-q8-common.dtsi          | 2 +-
 arch/arm/boot/dts/allwinner/sun8i-r40.dtsi                | 2 +-
 arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts b/arch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts
index 83d283cf6633..d425d9ee83db 100644
--- a/arch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts
+++ b/arch/arm/boot/dts/allwinner/sun4i-a10-olinuxino-lime.dts
@@ -218,7 +218,7 @@ &usb_otg {
 &usbphy {
 	usb0_id_det-gpios = <&pio 7 4 (GPIO_ACTIVE_HIGH | GPIO_PULL_UP)>; /* PH4 */
 	usb0_vbus_det-gpios = <&pio 7 5 (GPIO_ACTIVE_HIGH | GPIO_PULL_UP)>; /* PH5 */
-	usb0_vbus-supply   = <&reg_usb0_vbus>;
+	usb0_vbus-supply = <&reg_usb0_vbus>;
 	usb1_vbus-supply = <&reg_usb1_vbus>;
 	usb2_vbus-supply = <&reg_usb2_vbus>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/allwinner/sun8i-q8-common.dtsi b/arch/arm/boot/dts/allwinner/sun8i-q8-common.dtsi
index 272584881bb2..a0f787581dd9 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-q8-common.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-q8-common.dtsi
@@ -82,7 +82,7 @@ &de {
 };
 
 &ehci0 {
-	status  = "okay";
+	status = "okay";
 };
 
 &mmc1 {
diff --git a/arch/arm/boot/dts/allwinner/sun8i-r40.dtsi b/arch/arm/boot/dts/allwinner/sun8i-r40.dtsi
index fa162f7fa9f0..f0ed802a9d08 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-r40.dtsi
@@ -705,7 +705,7 @@ uart2_pi_pins: uart2-pi-pins {
 			};
 
 			/omit-if-no-ref/
-			uart2_rts_cts_pi_pins: uart2-rts-cts-pi-pins{
+			uart2_rts_cts_pi_pins: uart2-rts-cts-pi-pins {
 				pins = "PI16", "PI17";
 				function = "uart2";
 			};
diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts b/arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts
index 5143cb4e7b78..cb6292319f39 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s-netcube-kumquat.dts
@@ -29,7 +29,7 @@ chosen {
 	clk_can0: clock-can0 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency  = <40000000>;
+		clock-frequency = <40000000>;
 	};
 
 	gpio-keys {
-- 
2.48.1


