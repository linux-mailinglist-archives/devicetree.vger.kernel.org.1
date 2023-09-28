Return-Path: <devicetree+bounces-4368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE4C7B2311
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:59:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2A8101C209C8
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:59:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3905051235;
	Thu, 28 Sep 2023 16:59:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DB051231
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:59:13 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8908A99;
	Thu, 28 Sep 2023 09:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1695920325; x=1696525125; i=julian.ribbeck@gmx.de;
 bh=qbziC+TbQMjflhlt6KwWMiaUOsFEEHNJl0dYIOw0j7A=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=qJhalV06MOIpdV4sfC+Mfr0RT2Ofrlr+kOj8K3CJKzOXQ4yQtEm3LffXD04iRhu5ymPGiSLCnHN
 XLSGZWDMFfioCeR3up5o4YJsA9imk2KdML9OZr4/0mK8VifhoIoNU6C/Bxd+f//AALt7DV3LcWriW
 pW86x1FBpOETyYQkdtrZqcPEtzcX95WPMsgOHqrHBzJM+4bVe9KviuWqwG8Rv0f+3IMppGciQHLo0
 KAaBIbfXCTfSFCVOYsXIhFhCUYTWHhT5DeBO5ho/L4XUdpxkczFiUk5r4BOhp53//aqMOpCWRrH6w
 GU/TRWJzHMzxgQptga9+9FRZl3E0UJOOKygQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from localhost.localdomain ([95.90.255.242]) by mail.gmx.net
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MTRMs-1rDSA50pq8-00TkMd; Thu, 28 Sep 2023 18:58:45 +0200
From: Julian Ribbeck <julian.ribbeck@gmx.de>
To: samuel@sholland.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	julian.ribbeck@gmx.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	robh+dt@kernel.org
Subject: [PATCH v3 1/2] ARM: dts: sun7i: Add Iteaduino Plus A20
Date: Thu, 28 Sep 2023 18:57:01 +0200
Message-ID: <20230928165803.30127-1-julian.ribbeck@gmx.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <9730f21c-fd8e-9583-98c7-e5d923269f79@sholland.org>
References: <9730f21c-fd8e-9583-98c7-e5d923269f79@sholland.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:quNGewSnWhh3q3lzvDleoxTD9oiJ3KpreBk/lwfGOC63KWimwcJ
 VsyR/4amO1UMxlrdAyxAPRjCotkCv1uXYXyDzvkmJpYQPW/NxIjOPqz0eEP7UCv/LSesghc
 lweNnuoyzxu81cnNCzKRZMMSz6uP2VkzFRqGibriiwBTeNQjtto+1A2l099XfkMzosGmuUQ
 veQECphRtCNj2x/MgwYIg==
UI-OutboundReport: notjunk:1;M01:P0:QRoo4V3mPMM=;YX1L1SsvxeX1OC/yDPjUTaR6EoE
 TghdSGaCJEEBgEqbUJHfTsHOJ82IaNHFH0LNeJpZ+hgtJlbxs9SVxH3QA2aj5bmwPQa0wVe4H
 N93gx9oFa3f6qCfj45sraq8Jc4CbupFLrHj1nqxM+R4sk64oUVUC3M6LWxKWIVuYszD5zQ4oo
 fCv+nW+VlZPeMh/IFCc+z7rNZS+nCBSI6cx7ewGWgK2j29FWutjwwOLBNozMivtRKromFFdrW
 Dfl+QMjlXsrEymQP8waCJytUSXg8wYieoS2ghBrwlSr976Ki5of8RcPrmKfGJzFky5eeiGUU7
 QcK2Y+vFGBtDNeCbnkMDmZdGEMc74rZY5hXCNFwjfswNK9Xpmy25AiJ5mLc55j43jUfpLcMFv
 lBFyfS1fSkFVMJ3BtIkOluQZXj/wLmG1tBLotmab8dvUpyILlZa+dR9O3Yh2ljA+aiAQhFnny
 tAPPigvTxHMDGxCleOBcMaDm5EJbWNVDI30W8l3untQXfcs0gEPCo6jtQFEOI67w3lIQevH6L
 U1InfW6YaY7L/hfkHiRF22LqZ/u/S5otZL6PrK14/Tjq66dE8yksfhF9UJu+JemZBSmkX/wku
 7H5jyasBmt+AjkmsarXsil2T7EQFDPOYnBd0cgL8vCWao3qMlFs2QS1XP9xqI95inDhfnYbvy
 7o/Q7hoeLOApqOu4EJnwGDLKf4eWJFsMX+0cv8fTatNsC0aCCd6FZBvZ2Csvj/plgJamMD6Ko
 OZ6rkT2+jvZu9eHYUa0hR7QRo+VBcP2wCVI0qhqylCR/chnqBHx8ZCJSZyO/DNatDTwAJMwka
 Lz88Cl7JTObpdKjVFoThU7qIgEc5tmbYk5QUv8+IQE771fwBYifr5dIwAd5TiKbBNSmZmk1FB
 1pNeSdJdPv3wZbEWw9IeLtT1Rix1O/rbSZ15uNJcyAvxmJW4vcjY0D1o8fY7gknm/9CEFQ/fM
 Dr3OiiuQ/7SFolLImLtaxZuqeHA=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Iteaduino Plus A20 is very similar to Iteaduino Plus A10. In fact it
shares the same breakout board and the Itead Core A20 on top of it, is
only adapted to support the dual-core A20.

This commits enables the following hardware:

* HDMI Video output
* USB
* SATA (untested due to lack of hardware I could attach)
* Ethernet
* MMC storage
* UART
* USB OTG (untested, because I don't own an USB OTG cable/device)

Signed-off-by: Julian Ribbeck <julian.ribbeck@gmx.de>
=2D--
 arch/arm/boot/dts/allwinner/Makefile          |   1 +
 .../sun7i-a20-itead-iteaduino-plus.dts        | 104 ++++++++++++++++++
 2 files changed, 105 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun7i-a20-itead-iteaduino-=
plus.dts

diff --git a/arch/arm/boot/dts/allwinner/Makefile b/arch/arm/boot/dts/allw=
inner/Makefile
index eebb5a0c873a..39af5ad94590 100644
=2D-- a/arch/arm/boot/dts/allwinner/Makefile
+++ b/arch/arm/boot/dts/allwinner/Makefile
@@ -124,6 +124,7 @@ dtb-$(CONFIG_MACH_SUN7I) +=3D \
 	sun7i-a20-haoyu-marsboard.dtb \
 	sun7i-a20-hummingbird.dtb \
 	sun7i-a20-itead-ibox.dtb \
+	sun7i-a20-itead-iteaduino-plus.dts \
 	sun7i-a20-i12-tvbox.dtb \
 	sun7i-a20-icnova-a20-adb4006.dtb \
 	sun7i-a20-icnova-swac.dtb \
diff --git a/arch/arm/boot/dts/allwinner/sun7i-a20-itead-iteaduino-plus.dt=
s b/arch/arm/boot/dts/allwinner/sun7i-a20-itead-iteaduino-plus.dts
new file mode 100644
index 000000000000..c9f9b0275381
=2D-- /dev/null
+++ b/arch/arm/boot/dts/allwinner/sun7i-a20-itead-iteaduino-plus.dts
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+
+/dts-v1/;
+#include "sun7i-a20.dtsi"
+#include "sunxi-itead-core-common.dtsi"
+
+/ {
+	model =3D "Itead Iteaduino Plus A20";
+	compatible =3D "itead,iteaduino-plus-a20", "allwinner,sun7i-a20";
+
+	hdmi-connector {
+		compatible =3D "hdmi-connector";
+		type =3D "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint =3D <&hdmi_out_con>;
+			};
+		};
+	};
+};
+
+&ac_power_supply {
+	status =3D "okay";
+};
+
+&ahci {
+	target-supply =3D <&reg_ahci_5v>;
+	status =3D "okay";
+};
+
+&axp209 {
+	interrupt-parent =3D <&nmi_intc>;
+	interrupts =3D <0 IRQ_TYPE_LEVEL_LOW>;
+};
+
+&battery_power_supply {
+	status =3D "okay";
+};
+
+&codec {
+	stauts =3D "okay";
+};
+
+&de {
+	status =3D "okay";
+};
+
+&emac {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&emac_pa_pins>;
+	phy-handle =3D <&phy1>;
+	status =3D "okay";
+};
+
+&emac_sram {
+	status =3D "okay";
+};
+
+&hdmi {
+	status =3D "okay";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint =3D <&hdmi_con_in>;
+	};
+};
+
+&mdio {
+	status =3D "okay";
+
+	phy1: ethernet-phy@1 {
+		reg =3D <1>;
+	};
+};
+
+&mmc0 {
+	vmmc-supply =3D <&reg_vcc3v3>;
+	bus-width =3D <4>;
+	cd-gpios =3D <&pio 7 1 GPIO_ACTIVE_LOW>; /* PH1 */
+	status =3D "okay";
+};
+
+&otg_sram {
+	status =3D "okay";
+};
+
+&reg_ahci_5v {
+	status =3D "okay";
+};
+
+&reg_usb0_vbus {
+	status =3D "okay";
+};
+
+&usb_otg {
+	status =3D "okay";
+	dr_mode =3D "host";
+};
+
+&usbphy {
+	usb0_vbus-supply =3D <&reg_usb0_vbus>;
+};
=2D-
2.42.0


