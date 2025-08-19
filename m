Return-Path: <devicetree+bounces-206448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD6CB2C53F
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:21:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E43B7241A56
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA8A933EAFB;
	Tue, 19 Aug 2025 13:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TjSnhilO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266DA33CE88
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609401; cv=none; b=fVKy5VZyXDs5Lft8s23cqFez9I8+3p+F3Cyk5Luu48GU7wEFN8p2KojQEqDn1D3nMM4lJ7Yd31lSe/0Pylq1DJ+MDjzpLEWdenevJZFonpM+sreXrAj9+XkyhVA37EnLN7V0g3LajKSELvYaJPYfwyh+JLtG47mEViRHEQRmu7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609401; c=relaxed/simple;
	bh=25w9nGp+VOPFwF4xTLHunMmNW2bcpRsbxGsrD/LXVBg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ms9okC1IpQKSPW2SYpHrostaIeI5koBtw9QbTCT6SDELHyng77hyh53wddxDWM7xusniqpqDQ5dJCKdt+fmTvwsslRtPNUtjwh2FwvU56w5CK1RfvPmASWTtM/xncEDhm9SldPPJy6xWvdUcPen+BbCY60nwbaa/uO45cNUkohw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TjSnhilO; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-afcb7aecf92so72477266b.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609398; x=1756214198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NFTccCtP1uRd9Wzn26xkl65ZZWOAVPiCAiod9SnwQ6w=;
        b=TjSnhilOQoSAohWBrFhcqun/R3tE6lI68y50mYYg1JgSsoGdZNwQWXKzzwGqUrHcqR
         rklHpTIDP+mbAW9VtjEUfWiyDC28JJDFhMedxqveXeOSW3ENcCqyFtBIeVC3Am+NXUKH
         OnSPBqiV3cDYHpcljo7jtk9XCoBX5CJMqD6PR1l6UgcR77Ki379qgDCeD7YLO/zYEMaO
         YWrIghhxl91mQKnHSyDPJxJ+bKiJm6+kzA+wM4zpkIDzsyD3TT9ytXqfqzk6r4in2cQh
         IQaeNEMsK7wZ6HU5EI1xlCummyIl5sYYsl1I4NDA1HXgtNobucYLkC4kWrVh9blQno2+
         09KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609398; x=1756214198;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NFTccCtP1uRd9Wzn26xkl65ZZWOAVPiCAiod9SnwQ6w=;
        b=DHOXa4LL8uAQZALMBQkyubdiT/+Ku5D9D7pcak5xRKD0YnwCK3WqF6jA26pzSlHZUe
         2e/c/VfgsIDG4a/DY5HyGX1q50e01h4Yhgx9zLva/r9sBMdpV5TwJiQm9fhlosnROeq3
         2dFeE2EYRdHNTqjLvzOXmGSkps+NUkO84O1zV3us503uY3Va5qbdVRaH/h/+Nnb5oUIJ
         bhof2HbM7CpNLw89IN/1PB8NIxXQlggYOv8owo5MhXaTdlQMy7uuqAsi9ecCEzlZB9f8
         APnqKEkZEX9exI0mYfDLQsgK3fker2Cf2Qw2LaeLRQxNqp1s313L3ffUGxw+Tng/9Hmx
         w1XQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCI4UA0zOUn0WzvzpNwULr+8Ic8TJAFoo/ke0v9UMzL/N8sRwSv0su+2PuHCK5/xh+eYCtbdpZdMiq@vger.kernel.org
X-Gm-Message-State: AOJu0YzPgJZS/skokj8VY5cJ/HwuNQ+AKsMNRV+Bh3BdAOZ1eYaQiDHd
	FlolJ6PbB+mUdu6VN4i/kwSWL4fXf7Uy1d570HY/4JAucGKXpCciW8k886FrPBOLgnE=
X-Gm-Gg: ASbGncta7Q6c/eous4kbbmGJtlgFvWsZ1whKmBpZqi4ivy0ailRCorHiVDg5U9e4t4k
	49b3W3ODUIZRO37MxHUfIFLUQtQmcfJqsr48MseqKBiKJFYfPGMemRTna8SSHJYuxn7W0CD5brV
	fqnAJvI0eESSNwfsu6dzaBSfDieJtD056azBVN3d5bJDMynCCQKCPMVE8mn55RC+P6YDZZbcxPp
	r1p579SbwU6grLvNwoikjHSByMm20LdrJ+2PSuFpm7Yv21w9zfNW3g5GAcP6zWAU0W4LjkeNnkd
	6bfBZpgThWTMKl6uUdzte3r2+AT6MehX0Xj3PZY1tNkrlT94YopqHCOQ0nnDvwX5vhaa7O7mH3g
	oP01o09Isw7b8MDhOephTAGTW2brvAcJqXw==
X-Google-Smtp-Source: AGHT+IFfradJwu63FUvwOcWbWyp08fd8Whf4HqNHMGG30wEYvsKB2XGXhYm0YYCzs8cM3Nd6qzySVw==
X-Received: by 2002:a17:907:d90:b0:aec:4f0a:f9ac with SMTP id a640c23a62f3a-afddd1e433dmr90382066b.6.1755609398378;
        Tue, 19 Aug 2025 06:16:38 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce73e22sm1014924066b.41.2025.08.19.06.16.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:16:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: marvell: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:16:34 +0200
Message-ID: <20250819131633.86478-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2105; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=25w9nGp+VOPFwF4xTLHunMmNW2bcpRsbxGsrD/LXVBg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHkxJCXGErwlGNb4uJVx8zh/NpiVZLUoMdgV6
 s1NAOw/hOKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5MQAKCRDBN2bmhouD
 11/vD/9KkTiJjpBqGx1OFTTWGwcAynI2RwbCno697sZX6nOadE1UXEXPVYt/raAiGjguhjov+zP
 4NewcszElKfspMkCFlX2RDpILBiNfGCdf+1Uazl3Zi+Ltmfo8YzB+RjrD2NIyzeK1IS8tvaq7OK
 rTcYVk17JbVGHeqh4L/ofJl1cpvm3rUq7F+RQiwEvCx6Ai9Kgb24R48y49+DR1XMOD30r7m+veJ
 a0qyaHz8opg1LJI1ktI9A2GeQUdAeelDe7PcgNNOHRkUc95qNvdZDdq/JX1gLFeo0WkZLw63wMd
 Zn/CsHu+Odo9L3p/YxLAyWN3p7byj7gKg1WSUSKTleIEca5/StBNqdTuuX+vdEn7OmevGhLj68D
 RFMFbsK2yBk7SWNQORW+nM2OUCywV/sBZnDd6Xcfach6gnAYWDJGGCdcDnga4VxTaEYNWkwNQoG
 WEgJd6OqacPsntBQG7cr8QrFBo9MLW1wvUSKquT90WkJQjuNk171q8RNmP566mrWiMlH6q6qF4T
 CKtx6yQOLseAJR/O+Jsl4nIWm/qaK5M31RoDcv7PWqy5TpSn3dybtAodNajbYmmkPhvKDfj2Bvo
 crn4Ax0STKTpxaYa+kIermy1ul++6DSrNCkLXPHIl6Gy7hvZ060ZE3zvaw4P27mnJ6+Nc7FigAR FaelHWw9cWGq7mw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi   | 2 +-
 arch/arm64/boot/dts/marvell/cn9132-clearfog.dts | 4 ++--
 arch/arm64/boot/dts/marvell/cn9132-sr-cex7.dtsi | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
index 605f5be1538c..4878773883c9 100644
--- a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
@@ -322,7 +322,7 @@ spi1: spi@805a8000 {
 
 		nand: nand-controller@805b0000 {
 			compatible = "marvell,ac5-nand-controller";
-			reg =  <0x0 0x805b0000 0x0 0x00000054>;
+			reg = <0x0 0x805b0000 0x0 0x00000054>;
 			#address-cells = <0x1>;
 			#size-cells = <0x0>;
 			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/marvell/cn9132-clearfog.dts b/arch/arm64/boot/dts/marvell/cn9132-clearfog.dts
index 0f53745a6fa0..c872c8eca518 100644
--- a/arch/arm64/boot/dts/marvell/cn9132-clearfog.dts
+++ b/arch/arm64/boot/dts/marvell/cn9132-clearfog.dts
@@ -559,7 +559,7 @@ led@2 {
 };
 
 &cp2_ethernet {
-	status =  "okay";
+	status = "okay";
 };
 
 /* SRDS #2 - 5GE */
@@ -572,7 +572,7 @@ &cp2_eth0 {
 };
 
 &cp2_gpio1 {
-	pinctrl-names= "default";
+	pinctrl-names = "default";
 	pinctrl-0 = <&cp2_rsvd9_pins>;
 
 	/* J21 */
diff --git a/arch/arm64/boot/dts/marvell/cn9132-sr-cex7.dtsi b/arch/arm64/boot/dts/marvell/cn9132-sr-cex7.dtsi
index afc041c1c448..1c9996d8cb24 100644
--- a/arch/arm64/boot/dts/marvell/cn9132-sr-cex7.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9132-sr-cex7.dtsi
@@ -442,7 +442,7 @@ tpm@0 {
 		reg = <0>;
 		compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
 		spi-max-frequency = <10000000>;
-		pinctrl-names  = "default";
+		pinctrl-names = "default";
 		pinctrl-0 = <&cp1_tpm_irq_pins>;
 		interrupt-parent = <&cp1_gpio1>;
 		interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
-- 
2.48.1


