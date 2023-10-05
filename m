Return-Path: <devicetree+bounces-6092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF967B9D6F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:44:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CBD5D281B2F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9528A1CF86;
	Thu,  5 Oct 2023 13:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XqDzX8rP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9511170F
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:44:06 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B57D627B35;
	Thu,  5 Oct 2023 06:44:02 -0700 (PDT)
Received: from jupiter.universe (dyndsl-091-248-132-024.ewe-ip-backbone.de [91.248.132.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4A4F4660731A;
	Thu,  5 Oct 2023 14:44:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696513441;
	bh=RcJpTpb79ysiBy81p3dPq9Lfzg7r8A9jGzsGF4aBu2g=;
	h=From:To:Cc:Subject:Date:From;
	b=XqDzX8rPKgNqnx5SPZrzvPG5NeGmhI2LMLu5369GU1iu3ZlRtR1AAGyJee8NNHYiU
	 hdcxisq89pJLSiTP/UqbSzeFdEWofsk0VlHQCnWnKgL+F6LxJwI8ByT6mZt/Cca8IK
	 s71r32NkruvkVEPgH/jfL2cGEqJkpUpi1y7ztchMrwOOx2pYcIf6s50XIpurHYlp4D
	 MGeW3mSbM3VUGj4iblaD/36utD9tKUWjMfsnKp8v/xCZGw/MpbXZXnHH+MeL5yIW6c
	 x4FQ7x2chjlMVJMvVYTk0prEXVxllWKVibn5CWJUy//dnfilePJAhU0BWdyz+dVSOD
	 GJ9Ptkdpx3n7A==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1859A4800C3; Thu,  5 Oct 2023 15:43:59 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/1] arm64: dts: rockchip: rk3588-evb1: add ADC buttons
Date: Thu,  5 Oct 2023 15:43:57 +0200
Message-Id: <20231005134357.37171-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Rockchip EVB1 has a couple of buttons connected via an ADC
line. Let's add them to its devicetree.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index c3fe58e39e99..b9d789d57862 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3588.dtsi"
 
@@ -23,6 +24,38 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-vol-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			press-threshold-microvolt = <17000>;
+		};
+
+		button-vol-down {
+			label = "Volume Down";
+			linux,code = <KEY_VOLUMEDOWN>;
+			press-threshold-microvolt = <417000>;
+		};
+
+		button-menu {
+			label = "Menu";
+			linux,code = <KEY_MENU>;
+			press-threshold-microvolt = <890000>;
+		};
+
+		button-escape {
+			label = "Escape";
+			linux,code = <KEY_ESC>;
+			press-threshold-microvolt = <1235000>;
+		};
+	};
+
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		power-supply = <&vcc12v_dcin>;
@@ -286,6 +319,11 @@ &pwm2 {
 	status = "okay";
 };
 
+&saradc {
+	vref-supply = <&vcc_1v8_s0>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.40.1


