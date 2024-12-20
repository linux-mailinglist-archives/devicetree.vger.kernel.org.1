Return-Path: <devicetree+bounces-133155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F13E99F96B5
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C74C97A198C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296C221A45E;
	Fri, 20 Dec 2024 16:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="dzQevX09"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout1.routing.net (mxout1.routing.net [134.0.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94BEC21A436;
	Fri, 20 Dec 2024 16:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734712741; cv=none; b=OsHkp2r0h92Dgp817y0YQOb5pOTDQwNaQTn+o+i/gfOClsRnA6827pkzxCtsMGs2EGeQZn8YeDpNhhINV9zmXb5Dvzxs4tABmHJFFQplFLNn4b7c0UUo2EL9EwakwWYIt6cLkozQDj5kieVzZ7R6Ig4sysWYCzH27E/zjlWC8vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734712741; c=relaxed/simple;
	bh=vCsiQQ77cFP+42M6o2utnjf5JyWjgwrfgrrjSM6KTWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PjUbEuHzbJhIWekZD06E2lxnaiievfwTgR7kGYfAseVVZBsVbg7GP4SzhznTagimeoy8yBkjWsW3dJ8kmcDdhcsOHCe9nZpV2IL1H35whVqz2MkisvSW7dAQx5xKL1kphlbl8JCA3sAVfwt0wRGKUdibxXB0seA4wppCWEYjeCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=dzQevX09; arc=none smtp.client-ip=134.0.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout1.routing.net (Postfix) with ESMTP id C3F4F3FDCC;
	Fri, 20 Dec 2024 16:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1734712730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TCDRLPPWDcGti8coyNd682d20E0KhqF2o5/I2JJc2EA=;
	b=dzQevX09PCnDvB26L+eGgsTpqwknkfd01WZkbfEUIx1fEz2Droo65wE+q9pUgoK41PtWC5
	lPI8wVQHc1wo69OhuVSiz6q06hAEIZDy1VOZhWsSU6ge5th1lyTKjdZqOHWIr3zwGkNNHy
	HBXS5JpB6u4LdkdZNEbIJrHikQxqEak=
Received: from frank-u24.. (fttx-pool-157.180.224.233.bambit.de [157.180.224.233])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 0F2D0100488;
	Fri, 20 Dec 2024 16:38:50 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v8 1/2] arm64: dts: mediatek: mt7988a-bpi-r4: Add MediaTek MT6682A/RT5190A PMIC
Date: Fri, 20 Dec 2024 17:38:35 +0100
Message-ID: <20241220163838.114786-2-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241220163838.114786-1-linux@fw-web.de>
References: <20241220163838.114786-1-linux@fw-web.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mail-ID: 896398e5-39eb-4fdc-9386-9802ef37f67a

From: Frank Wunderlich <frank-w@public-files.de>

Bananapi R4 Board contains a MT6682A pmic which is compatible to rt5190a.
Add its node to the i2 controller.

The BananaPi R4 board has a MediaTek MT6682A PMIC, a rebrand of the
Richtek RT5190A chip, connected to the I2C0 bus.

Add the relevant node and, while at it, also configure the regulators
from this PMIC that are used on this board.

Only Buck2/Buck3 voltage can be controlled by software.

BUCK4 input is 5V from BUCK1 output, and the resistor (mapped to RP30/RP31
on BPI-R4) configures BUCK4 output to 1.8V.
LDO input is 3.3V from 3.3VD, and the resistor (mapped to RP38/RP40 on
BPI-R4) configures LDO output to 1.8V.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
v8:
- fixed buck4 and ldo voltage and extended commit-Message
- readded (send separately) after verifying with mtk
- left RB from angelo as this is imho only minor change
v7:
- dropped this patch due to voltage mismatch compared to schematic
v4:
- change regulator-allowed-modes of pmic as 2 items
v3:
- change commit title and text
---
 .../dts/mediatek/mt7988a-bananapi-bpi-r4.dts  | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dts b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dts
index d6f1fca3323c..27edc6b84f80 100644
--- a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/regulator/richtek,rt5190a-regulator.h>
 
 #include "mt7988a.dtsi"
 
@@ -66,6 +67,55 @@ &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0_pins>;
 	status = "okay";
+
+	rt5190a_64: rt5190a@64 {
+		compatible = "richtek,rt5190a";
+		reg = <0x64>;
+		vin2-supply = <&rt5190_buck1>;
+		vin3-supply = <&rt5190_buck1>;
+		vin4-supply = <&rt5190_buck1>;
+
+		regulators {
+			rt5190_buck1: buck1 {
+				regulator-name = "rt5190a-buck1";
+				regulator-min-microvolt = <5090000>;
+				regulator-max-microvolt = <5090000>;
+				regulator-allowed-modes =
+				<RT5190A_OPMODE_AUTO>, <RT5190A_OPMODE_FPWM>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			buck2 {
+				regulator-name = "vcore";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			rt5190_buck3: buck3 {
+				regulator-name = "vproc";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-boot-on;
+			};
+			buck4 {
+				regulator-name = "rt5190a-buck4";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-allowed-modes =
+				<RT5190A_OPMODE_AUTO>, <RT5190A_OPMODE_FPWM>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			ldo {
+				regulator-name = "rt5190a-ldo";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
 };
 
 &i2c2 {
-- 
2.43.0


