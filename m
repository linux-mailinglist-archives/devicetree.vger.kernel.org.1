Return-Path: <devicetree+bounces-12076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 190747D7D2F
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 09:02:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7291281EEF
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 07:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9570011C9D;
	Thu, 26 Oct 2023 07:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Qu63FuA/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 839ABC8C8
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:02:06 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA2A71B1;
	Thu, 26 Oct 2023 00:02:04 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39Q71x8K090139;
	Thu, 26 Oct 2023 02:01:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698303719;
	bh=VDY0EWWGwv+yfJLuMqQC2ymYEh7CvRt4Ch+U6+xZtdg=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=Qu63FuA/zyTX88Ad6uPDDFvKWhJRtv+swPiORUpEoeU8AGPyxsvkl4VAzEAw4K2/X
	 79gDHMHxN/NWLNHllIvie36JVvvXprM9iHNxxRYgAVYGDWtAHFM7RGe499WJLX8/en
	 gYHIOADqpgz5j+61d4HDUHSOlMSaw6J1oI3YVDnU=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39Q71x3c125570
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Oct 2023 02:01:59 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 26
 Oct 2023 02:01:59 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 26 Oct 2023 02:01:58 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39Q71wUv061225;
	Thu, 26 Oct 2023 02:01:58 -0500
From: Nitin Yadav <n-yadav@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] arm64: dts: ti: k3-am62a: Enable UHS mode support for SD cards
Date: Thu, 26 Oct 2023 12:31:54 +0530
Message-ID: <20231026070155.1134063-2-n-yadav@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231026070155.1134063-1-n-yadav@ti.com>
References: <20231026070155.1134063-1-n-yadav@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hook up required IO voltage regulators to support UHS modes on
SD cards.

Signed-off-by: Nitin Yadav <n-yadav@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index 9f3dfbfbf369..3ae1ea1997a4 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -102,6 +102,19 @@ vdd_mmc1: regulator-3 {
 		gpio = <&exp1 3 GPIO_ACTIVE_HIGH>;
 	};
 
+	vddshv_sdio: regulator-4 {
+		compatible = "regulator-gpio";
+		regulator-name = "vddshv_sdio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vddshv_sdio_default_pins>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		gpios = <&main_gpio0 31 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x0>,
+			 <3300000 0x1>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -189,6 +202,12 @@ AM62AX_IOPAD(0x1f8, PIN_INPUT_PULLUP, 0) /* (AC2) MMC0_DAT7 */
 		>;
 	};
 
+	vddshv_sdio_default_pins: vddshv-sdio-default-pins {
+		pinctrl-single,pins = <
+			AM62AX_IOPAD(0x07c, PIN_OUTPUT, 7) /* (M19) GPMC0_CLK.GPIO0_31 */
+		>;
+	};
+
 	main_mmc1_pins_default: main-mmc1-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x23c, PIN_INPUT, 0) /* (A21) MMC1_CMD */
@@ -294,6 +313,7 @@ &sdhci1 {
 	/* SD/MMC */
 	status = "okay";
 	vmmc-supply = <&vdd_mmc1>;
+	vqmmc-supply = <&vddshv_sdio>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_mmc1_pins_default>;
 	ti,driver-strength-ohm = <50>;
-- 
2.25.1


