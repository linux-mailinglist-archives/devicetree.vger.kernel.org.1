Return-Path: <devicetree+bounces-6091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1587B9D6E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 80965B20992
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA6E01CAA3;
	Thu,  5 Oct 2023 13:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="S3XCJIww"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753AD1B28D
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:40:51 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B035727B20;
	Thu,  5 Oct 2023 06:40:48 -0700 (PDT)
Received: from jupiter.universe (dyndsl-091-248-132-024.ewe-ip-backbone.de [91.248.132.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2DBB86607095;
	Thu,  5 Oct 2023 14:40:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696513247;
	bh=fy7VVRBs6A2jxo/gpDryg++0jHo03JHrW/ne6C5QiYc=;
	h=From:To:Cc:Subject:Date:From;
	b=S3XCJIwwPsuNoewiFnufSQAGElj4CMtY2XClZ1GZV1ufg9KwRksfX/l9WoOfHC1Pq
	 Z6XIK7hQvwgc3cJ9odXEluDxUaK4TfkVRMNIHayJ+WfuPFyifW6yPa97/jafb8wazU
	 DqXdjzlyyPJlgjlOv30dYtxS/UZT4OhGRWj0bYF7OJcI4/Ow/RbJW8z6Jt4GG06PHc
	 ml/fdQ5L7AEFUTfhc0doAtMHtkYRZdK+FbVlopTyWQcHNgNNVTI+hzdEDl2lCWCFxs
	 fwGncbyLPEo96ooNFf/ktgORQU4gCKGEssiodhYeCFIqY2k7q1SRN8tvMX78DcnAFJ
	 UXX3ZJgcuCNRw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id DEF134800C3; Thu,  5 Oct 2023 15:40:44 +0200 (CEST)
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
Subject: [PATCH v1 1/1] arm64: dts: rockchip: add status LED to rock-5b
Date: Thu,  5 Oct 2023 15:40:37 +0200
Message-Id: <20231005134037.33231-1-sebastian.reichel@collabora.com>
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

Describe the Rock 5B status LED in its device tree.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 8618887899d9..3f0bea1f5053 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include "rk3588.dtsi"
 
 / {
@@ -37,6 +38,19 @@ analog-sound {
 		pinctrl-0 = <&hp_detect>;
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_rgb_b>;
+
+		led_rgb_b {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
 	fan: pwm-fan {
 		compatible = "pwm-fan";
 		cooling-levels = <0 95 145 195 255>;
@@ -300,6 +314,12 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	leds {
+		led_rgb_b: led-rgb-b {
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sound {
 		hp_detect: hp-detect {
 			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.40.1


