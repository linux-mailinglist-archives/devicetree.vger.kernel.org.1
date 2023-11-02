Return-Path: <devicetree+bounces-13538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 234D97DECD0
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 07:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C20D8281A48
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 06:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7756E5242;
	Thu,  2 Nov 2023 06:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="peJtDkTo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A4E5233
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 06:18:55 +0000 (UTC)
X-Greylist: delayed 367 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 01 Nov 2023 23:18:51 PDT
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08D1EE4;
	Wed,  1 Nov 2023 23:18:50 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0E10714745F;
	Thu,  2 Nov 2023 06:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1698905560; h=from:subject:date:message-id:to:mime-version:
	 content-transfer-encoding; bh=d6bGpQGMcWTfIFXeJnfNXYglphqaXvj//mewEVDo5i0=;
	b=peJtDkTo1fNDhJPVKfV17W63VXWPpCxUauH1uYj6bxUZ9eoQ6v8ABr/dZwnxQXodj5zU0P
	Rn9NfOkNTc2R8AhjMDeN5IPnDtA9UocjysHowSqFnVjwg6vF+tpC3vfcWL4ykOhqg3fvcL
	HhfeCeu5q+g1BVH5A/CkAV5FO9743knw2OQCpPp7LyFh1/t6xK7zuguuz7QsN+odaXap3w
	gwcNpZ3MwdVnBLWcOd9av3sWQvQEbxHKjEH0MTXTipikcb13fDUc2Wn/2sMHGB1hAXWKNF
	LuVzo1MJInSYfw09bX3PyHDbqbMynCDwLi9uB4mrPf9pA/tHlscCB5ntarjeHQ==
From: Viacheslav Bocharov <adeep@lexina.in>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: meson-axg: jethub-jxx add support for EEPROM
Date: Thu,  2 Nov 2023 09:12:33 +0300
Message-Id: <20231102061233.3113249-1-adeep@lexina.in>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Add dts node for EEPROM placed on baseboard in JetHub D1+ devices.

Signed-off-by: Viacheslav Bocharov <adeep@lexina.in>
---
 .../amlogic/meson-axg-jethome-jethub-j110-rev-2.dts  | 12 ++++++++++++
 .../amlogic/meson-axg-jethome-jethub-j110-rev-3.dts  | 12 ++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dts b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dts
index 0062667c4f65..2c684f0ca99a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-2.dts
@@ -35,3 +35,15 @@ bluetooth {
 		device-wake-gpios = <&gpio GPIOZ_6 GPIO_ACTIVE_HIGH>;
 	};
 };
+
+&i2c_AO {
+	/* EEPROM on base board */
+	eeprompd: eeprom@56 {
+		compatible = "atmel,24c64";
+		reg = <0x56>;
+		pagesize = <0x20>;
+		label = "eeprompd";
+		address-width = <0x10>;
+		vcc-supply = <&vddao_3v3>;
+	};
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-3.dts b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-3.dts
index c2d22b00c1cd..c356bd2cc63a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-3.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j110-rev-3.dts
@@ -25,3 +25,15 @@ memory@0 {
 &sd_emmc_b {
 	broken-cd;/* cd-gpios = <&gpio_ao GPIOAO_3 GPIO_ACTIVE_LOW>;*/
 };
+
+&i2c_AO {
+	/* EEPROM on base board */
+	eeprompd: eeprom@56 {
+		compatible = "atmel,24c64";
+		reg = <0x56>;
+		pagesize = <0x20>;
+		label = "eeprompd";
+		address-width = <0x10>;
+		vcc-supply = <&vddao_3v3>;
+	};
+};
-- 
2.34.1


