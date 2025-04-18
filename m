Return-Path: <devicetree+bounces-168582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E951CA938BC
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:33:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DAF53BF241
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3958B1AF4E9;
	Fri, 18 Apr 2025 14:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="OkUchrQk"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAA32C1A2
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744986801; cv=none; b=B7ILvtRaqtENgVC00G5TMG997iyzp+fAsNuWFm/dYmwAO2UzEz98h9rpzkFZDIi+GPlSxi7fMPNI9NobpqRItCcFauCzWKUO9oKPZ72LJaGXN41lWEVJaOmwCWfe5yrKrTZ0tPU1tSgkeO4Xbkk80Chhuievm7p/cKg0wocKkbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744986801; c=relaxed/simple;
	bh=Xv5RyA4ZcOSwtiF2gtiI97VkjD1EkVCw2edTSSIianY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NbQAlzVDkGlQI8IZqC5cVZObgqsAZJuKcScNStqNfoYhxzvRYJDUGQlFplR81vqkYrEl74szgUtxFPZ0SIY3xkcAXkexJ06n4oS6D/iM8fHbImwuAFwxRpDIopWnHoD26MwoGr+0AO0k8bRLcxfxgWFlM7B9UEP3tHPPNAlS0SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=OkUchrQk; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1744986793; x=1745591593; i=wahrenst@gmx.net;
	bh=8Qtk8Mk+yAsi8PZKvvAnkX80B7hGezKFi6PNqm4vw3o=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=OkUchrQkqVGf8/RPv7hgmkVju6B5dS6Ncnpo++cVUMl9cEM196nZYtioWyLEDmtj
	 CyAkqimhAMtIny7addl1i80qoUnfzm3FSU1tRuo3lgpKZr7tLyCSrhcqmypAnexC3
	 ElqQrgMariw0IbwJp0HTBkwPR7xcV5d4/meujj69wTyNESz8yRfM52WS09zR8X4P3
	 cKl/RoDtEdLG5x+NKbuGbVnVaeyke5RV0FsVtH5OT8qHrl8U235UCEpVWrHoOGyzz
	 y128P78ZP/0N9ToiZz22rYl/z7DaqZvpkaeTXMPdT4OabEa22hkcu1fkaPUePkySE
	 UMinDZP2lPiLsD55jA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.251.153]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MkHQh-1uqMzY0bs1-00duv0; Fri, 18
 Apr 2025 16:33:13 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	bcm-kernel-feedback-list@broadcom.com,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 2/3] ARM: dts: bcm: Add support for Raspberry Pi 2 (2nd rev)
Date: Fri, 18 Apr 2025 16:33:06 +0200
Message-Id: <20250418143307.59235-3-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250418143307.59235-1-wahrenst@gmx.net>
References: <20250418143307.59235-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:y7O0Rfo7jqg1Ebhhoh7HemSlghKyfXuVVnlWJbi/I8o2cIlQF8x
 eGjUg1GT4Bfu9G9LJ6U74tC42PRD221Pwz/WC1IjAwfr4d5XcNS5lCmtWIYA7YwB+Y5LjhG
 vggRQgIvK7Jr0bj0LFDxhBwSVtiNgY+miokf/nmtJBM+ncLbssQIWcDd3hcJZkSFepsi4wP
 iYCowWFZQtUPgTRBPAt2Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:cTbzaFQmCfk=;M67bwDXNpd39b6ZF9GRQ4hgpBIL
 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

The Raspberry Pi 2 (2nd rev) has the BCM2837 SoC instead of the
BCM2836. Except of this the configuration of the board is same
as the predecessor (no WLAN, no BT).

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 arch/arm/boot/dts/broadcom/Makefile           |   2 +
 .../arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts | 130 ++++++++++++++++++
 2 files changed, 132 insertions(+)
 create mode 100644 arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts

diff --git a/arch/arm/boot/dts/broadcom/Makefile b/arch/arm/boot/dts/broad=
com/Makefile
index d23cf466127b..71062ff9adbe 100644
=2D-- a/arch/arm/boot/dts/broadcom/Makefile
+++ b/arch/arm/boot/dts/broadcom/Makefile
@@ -7,6 +7,7 @@ DTC_FLAGS_bcm2835-rpi-b-plus :=3D -@
 DTC_FLAGS_bcm2835-rpi-a-plus :=3D -@
 DTC_FLAGS_bcm2835-rpi-cm1-io1 :=3D -@
 DTC_FLAGS_bcm2836-rpi-2-b :=3D -@
+DTC_FLAGS_bcm2837-rpi-2-b :=3D -@
 DTC_FLAGS_bcm2837-rpi-3-a-plus :=3D -@
 DTC_FLAGS_bcm2837-rpi-3-b :=3D -@
 DTC_FLAGS_bcm2837-rpi-3-b-plus :=3D -@
@@ -25,6 +26,7 @@ dtb-$(CONFIG_ARCH_BCM2835) +=3D \
 	bcm2835-rpi-a-plus.dtb \
 	bcm2835-rpi-cm1-io1.dtb \
 	bcm2836-rpi-2-b.dtb \
+	bcm2837-rpi-2-b.dtb \
 	bcm2837-rpi-3-a-plus.dtb \
 	bcm2837-rpi-3-b.dtb \
 	bcm2837-rpi-3-b-plus.dtb \
diff --git a/arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts b/arch/arm/boo=
t/dts/broadcom/bcm2837-rpi-2-b.dts
new file mode 100644
index 000000000000..1868cee05853
=2D-- /dev/null
+++ b/arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+#include "bcm2837.dtsi"
+#include "bcm2836-rpi.dtsi"
+#include "bcm283x-rpi-led-deprecated.dtsi"
+#include "bcm283x-rpi-smsc9514.dtsi"
+#include "bcm283x-rpi-usb-host.dtsi"
+
+/ {
+	compatible =3D "raspberrypi,2-model-b-rev2", "brcm,bcm2837";
+	model =3D "Raspberry Pi 2 Model B rev 1.2";
+
+	memory@0 {
+		device_type =3D "memory";
+		reg =3D <0 0x40000000>;
+	};
+};
+
+&gpio {
+	/*
+	 * Taken from rpi_SCH_2b_1p2_reduced.pdf and
+	 * the official GPU firmware DT blob.
+	 *
+	 * Legend:
+	 * "FOO" =3D GPIO line named "FOO" on the schematic
+	 * "FOO_N" =3D GPIO line named "FOO" on schematic, active low
+	 */
+	gpio-line-names =3D "ID_SDA",
+			  "ID_SCL",
+			  "GPIO2",
+			  "GPIO3",
+			  "GPIO4",
+			  "GPIO5",
+			  "GPIO6",
+			  "GPIO7",
+			  "GPIO8",
+			  "GPIO9",
+			  "GPIO10",
+			  "GPIO11",
+			  "GPIO12",
+			  "GPIO13",
+			  "GPIO14",
+			  "GPIO15",
+			  "GPIO16",
+			  "GPIO17",
+			  "GPIO18",
+			  "GPIO19",
+			  "GPIO20",
+			  "GPIO21",
+			  "GPIO22",
+			  "GPIO23",
+			  "GPIO24",
+			  "GPIO25",
+			  "GPIO26",
+			  "GPIO27",
+			  "SDA0",
+			  "SCL0",
+			  "", /* GPIO30 */
+			  "LAN_RUN",
+			  "CAM_GPIO1",
+			  "", /* GPIO33 */
+			  "", /* GPIO34 */
+			  "PWR_LOW_N",
+			  "", /* GPIO36 */
+			  "", /* GPIO37 */
+			  "USB_LIMIT",
+			  "", /* GPIO39 */
+			  "PWM0_OUT",
+			  "CAM_GPIO0",
+			  "SMPS_SCL",
+			  "SMPS_SDA",
+			  "ETH_CLK",
+			  "PWM1_OUT",
+			  "HDMI_HPD_N",
+			  "STATUS_LED",
+			  /* Used by SD Card */
+			  "SD_CLK_R",
+			  "SD_CMD_R",
+			  "SD_DATA0_R",
+			  "SD_DATA1_R",
+			  "SD_DATA2_R",
+			  "SD_DATA3_R";
+
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&gpioout &alt0 &i2s_alt0>;
+
+	/* I2S interface */
+	i2s_alt0: i2s_alt0 {
+		brcm,pins =3D <18 19 20 21>;
+		brcm,function =3D <BCM2835_FSEL_ALT0>;
+	};
+};
+
+&hdmi {
+	hpd-gpios =3D <&gpio 46 GPIO_ACTIVE_LOW>;
+	power-domains =3D <&power RPI_POWER_DOMAIN_HDMI>;
+	status =3D "okay";
+};
+
+&led_act {
+	gpios =3D <&gpio 47 GPIO_ACTIVE_HIGH>;
+};
+
+&leds {
+	led-pwr {
+		label =3D "PWR";
+		gpios =3D <&gpio 35 GPIO_ACTIVE_HIGH>;
+		default-state =3D "keep";
+		linux,default-trigger =3D "default-on";
+	};
+};
+
+&pwm {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pwm0_gpio40 &pwm1_gpio45>;
+	status =3D "okay";
+};
+
+&sdhost {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&sdhost_gpio48>;
+	bus-width =3D <4>;
+	status =3D "okay";
+};
+
+&uart0 {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&uart0_gpio14>;
+	status =3D "okay";
+};
=2D-=20
2.34.1


