Return-Path: <devicetree+bounces-50664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A4987CA4C
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 09:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 562741C224AD
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 08:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D39917592;
	Fri, 15 Mar 2024 08:59:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sraa.de (sraa.de [85.214.240.192])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275EB1756A;
	Fri, 15 Mar 2024 08:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.240.192
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710493194; cv=none; b=quUftxTLEoO2S4FfHqXz5tpzGPKb3TC35H7THNwLd3jKFn2cpEpH0wQm8LlQ8kom7ulguPkREH7jigON/LUWgirdQV9UejpcZA+b/JJLQ03uBkvL47Lv5lhfY+XARDP2fBeUUwJbFaIJM24dCQr1I13JnN3+CYs9t17uYOGnT3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710493194; c=relaxed/simple;
	bh=aZI3w8NfsrFATPGHI5dS6dlNt+rpuCry0K3am5A0bII=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KjRXN+2gCTM4O0/YjLMQF87KHN69K0MUAXuWTYMM4B64IMqfsmJqUy4qM60k4lWnggnDhDoitF8D/7yWODrys8hnN74fj6tGwVjwq7iU1K2HApllYyNtQsEIx89SfhODr3x4zFFN/+QKEWSCpF5EaAKC2Gmf7SW4JlSJ12hn5+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sraa.de; spf=pass smtp.mailfrom=sraa.de; arc=none smtp.client-ip=85.214.240.192
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sraa.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sraa.de
Received: from c-bda170d5.017-30-6c756e3.bbcust.telenor.se ([213.112.161.189] helo=senor0lunlx0336.fritz.box)
	by sraa.de with esmtpa (Exim 4.94.2)
	(envelope-from <basti@sraa.de>)
	id 1rl3Pn-006Y3O-Tp; Fri, 15 Mar 2024 09:59:47 +0100
From: Sebastian Raase <linux@sraa.de>
To: linux@sraa.de
Cc: marijn.suijten@somainline.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: qcom: sdm630-nile: add pinctrl for camera key
Date: Fri, 15 Mar 2024 09:59:25 +0100
Message-ID: <20240315085934.1511722-1-linux@sraa.de>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: basti@sraa.de

Add pinctrl configuration for gpio-keys. Without this,
camera button half-presses are not detected.

Tested on discovery and pioneer.

Fixes: e781633b6067 ("arm64: dts: qcom: Add support for Sony Xperia XA2/Plus/Ultra (Nile platform)")
Signed-off-by: Sebastian Raase <linux@sraa.de>
---
 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
index 87d0293c728d..c38f74e7c078 100644
--- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
@@ -90,6 +90,8 @@ cam_vana_rear_vreg: cam-vana-rear-regulator {
 
 	gpio-keys {
 		compatible = "gpio-keys";
+		pinctrl-0 = <&gpio_keys_default>;
+		pinctrl-names = "default";
 
 		key-camera-focus {
 			label = "Camera Focus";
@@ -635,6 +637,13 @@ ts_lcd_id_active: ts-lcd-id-active-state {
 		bias-disable;
 	};
 
+	gpio_keys_default: gpio-keys-default-state {
+		pins = "gpio64", "gpio113";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	imx300_vana_default: imx300-vana-default-state {
 		pins = "gpio50";
 		function = "gpio";
-- 
2.42.0


