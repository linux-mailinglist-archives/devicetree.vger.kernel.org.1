Return-Path: <devicetree+bounces-95199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5469585D3
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 13:29:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09D251C21D7D
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 11:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74DD118E75D;
	Tue, 20 Aug 2024 11:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b="KYZ1DvTa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A888E18E058;
	Tue, 20 Aug 2024 11:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=208.88.110.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724153340; cv=none; b=OospdCWJIbeK6A2WJb5ApA0HZBFZchdmuABwtosiPcafqflltFeqd6tPBNUpuPGH/mrrZsesBTjIaXaFmGs3HwpCnKiyNJTgWhxqWREEvm1+2H57f94LBVFnkUFFsSjCD3a7ZMs6xgarGGPY4eXYGpS+vfgwE6KCuQRr3PVAK4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724153340; c=relaxed/simple;
	bh=wn/0RXLlf3vdVZpa8vfrgYDFkdfaMAEIOpx4cBmzMBs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bhOt8FirgdcRdivSBrkucJxLBRTzoME5j9p+l300zeW3XJVgNzaL7ht/ibF9uA9ZL9/uyH90XHANXYDLTwIJxShFwpBrDBAq2KSbVEAi+TkIwuN7r7XTXe8K729xhHT4Z2BMyuZJofd8agUsGIw0CdCXRqwHjfovtp5iklXoXgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com; spf=pass smtp.mailfrom=savoirfairelinux.com; dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b=KYZ1DvTa; arc=none smtp.client-ip=208.88.110.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=savoirfairelinux.com
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id D6E9D9C5E78;
	Tue, 20 Aug 2024 07:28:57 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id HFXVWNjtZPKL; Tue, 20 Aug 2024 07:28:56 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id DC1239C5F20;
	Tue, 20 Aug 2024 07:28:56 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com DC1239C5F20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1724153336; bh=MK/WEDWq3aGEbME08Z2QtUVKUYUCg4K+b1S8oXhvwlw=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=KYZ1DvTaNLQCFWfkIPfdHxGpl3EraiM9su8kGSl9z59PMKpISzlR03KC2nuEGGq+V
	 GUL66fzCePebERGPu0HDPAKXtotmcGhjUgmOMuXD1Cl5zoKfSjZ6uxrhpqyMzTEvgW
	 9LhMERVIeyDxlfZKT2riPDai+ph9WejNJQFDseF9Hw6cnj0zbZ0h0H+bzpcnLshVJN
	 UCSddpntzaTPbh2Q7BVr/fVRsoFknnvbAncHIOL7aG7UME80yp6tkuCcJzZV2TigFR
	 35X5XAKwP6B9Lf4M14/DCg00KUDNQsJZdu8WpWyJhGgInnk8gyXjEemMz4zgZdSv3z
	 ZHSxA1E1E17EA==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id Y08rW_VICEoX; Tue, 20 Aug 2024 07:28:56 -0400 (EDT)
Received: from gerard.rennes.sfl (80-15-101-118.ftth.fr.orangecustomers.net [80.15.101.118])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id E47029C5E78;
	Tue, 20 Aug 2024 07:28:54 -0400 (EDT)
From: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Mark Brown <broonie@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
Subject: [PATCH v7 2/2] ARM: dts: imx6: update spdif sound card node properties
Date: Tue, 20 Aug 2024 13:28:27 +0200
Message-Id: <20240820112827.126380-3-elinor.montmasson@savoirfairelinux.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240820112827.126380-1-elinor.montmasson@savoirfairelinux.com>
References: <20240820112827.126380-1-elinor.montmasson@savoirfairelinux.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The merge of imx-spdif driver into fsl-asoc-card brought
new DT properties that can be used with the "fsl,imx-audio-spdif"
compatible:
* The "spdif-controller" property from imx-spdif is named "audio-cpu"
  in fsl-asoc-card.
* fsl-asoc-card uses codecs explicitly declared in DT
  with "audio-codec".
  With an S/PDIF, codec drivers spdif_transmitter and
  spdif_receiver should be used.
  Driver imx-spdif used instead the dummy codec and a pair of
  boolean properties, "spdif-in" and "spdif-out".

While backward compatibility is kept to support properties
"spdif-controller", "spdif-in" and "spdif-out", using new properties has
several benefits:
* "audio-cpu" and "audio-codec" are more generic names reflecting
  that the fsl-asoc-card driver supports multiple hardware.
  They are properties already used by devices using the
  fsl-asoc-card driver.
  They are also similar to properties of simple-card: "cpu" and "codec".
* "spdif-in" and "spdif-out" imply the use of the dummy codec in the
  driver. However, there are already two codec drivers for the S/PDIF,
  spdif_transmitter and spdif_receiver.
  It is better to declare S/PDIF Tx and Rx devices in a DT, and then
  reference them with "audio-codec" than using the dummy codec.

For those reasons, this commit updates in-tree DTs to use the new
properties:
* Rename "spdif-controller" property to "audio-cpu".
* Declare S/PDIF transmitter and/or receiver devices, and use them with
  the "audio-codec" property instead of "spdif-out" and/or "spdif-in".

These modifications were tested only on an imx8mn-evk board.

Note that out-of-tree and old DTs are still supported.

Signed-off-by: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts        | 15 ++++++++++++---
 arch/arm/boot/dts/nxp/imx/imx6q-prti6q.dts        | 15 ++++++++++++---
 arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts       |  9 +++++++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi     | 15 ++++++++++++---
 arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi    |  9 +++++++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-colibri.dtsi    | 15 ++++++++++++---
 arch/arm/boot/dts/nxp/imx/imx6qdl-cubox-i.dtsi    |  9 +++++++--
 .../boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi    |  9 +++++++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi  |  9 +++++++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-wandboard.dtsi  |  9 +++++++--
 arch/arm/boot/dts/nxp/imx/imx6sx-sabreauto.dts    |  9 +++++++--
 arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi         |  9 +++++++--
 12 files changed, 104 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts b/arch/arm/boot/dts=
/nxp/imx/imx6q-cm-fx6.dts
index 95b49fc83f7b..299106fbe51c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
@@ -127,12 +127,21 @@ simple-audio-card,codec {
 		};
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
+	spdif_in: spdif-in {
+		compatible =3D "linux,spdif-dir";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
 		model =3D "imx-spdif";
-		spdif-controller =3D <&spdif>;
-		spdif-out;
-		spdif-in;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>, <&spdif_in>;
 	};
 };
=20
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-prti6q.dts b/arch/arm/boot/dts=
/nxp/imx/imx6q-prti6q.dts
index a7d5693c5ab7..8d2b608e0b90 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-prti6q.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-prti6q.dts
@@ -111,12 +111,21 @@ simple-audio-card,codec {
 		};
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
+	spdif_in: spdif-in {
+		compatible =3D "linux,spdif-dir";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
 		model =3D "imx-spdif";
-		spdif-controller =3D <&spdif>;
-		spdif-in;
-		spdif-out;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>, <&spdif_in>;
 	};
 };
=20
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts b/arch/arm/boot/dt=
s/nxp/imx/imx6q-tbs2910.dts
index 7c298d9aa21e..5353a0c24420 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-tbs2910.dts
@@ -90,11 +90,16 @@ sound-sgtl5000 {
 		ssi-controller =3D <&ssi1>;
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
 		model =3D "On-board SPDIF";
-		spdif-controller =3D <&spdif>;
-		spdif-out;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>;
 	};
 };
=20
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi b/arch/arm/boot/=
dts/nxp/imx/imx6qdl-apalis.dtsi
index ea40623d12e5..edf55760a5c1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-apalis.dtsi
@@ -197,11 +197,20 @@ sound {
 		ssi-controller =3D <&ssi1>;
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
+	spdif_in: spdif-in {
+		compatible =3D "linux,spdif-dir";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound_spdif: sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
-		spdif-controller =3D <&spdif>;
-		spdif-in;
-		spdif-out;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>, <&spdif_in>;
 		model =3D "imx-spdif";
 		status =3D "disabled";
 	};
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi b/arch/arm/boot=
/dts/nxp/imx/imx6qdl-apf6dev.dtsi
index 3a46ade3b6bd..9e97ef5e43f2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-apf6dev.dtsi
@@ -121,11 +121,16 @@ sound {
 		mux-ext-port =3D <3>;
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
 		model =3D "imx-spdif";
-		spdif-controller =3D <&spdif>;
-		spdif-out;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>;
 	};
 };
=20
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-colibri.dtsi b/arch/arm/boot=
/dts/nxp/imx/imx6qdl-colibri.dtsi
index d3a7a6eeb8e0..b01670cdd52c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-colibri.dtsi
@@ -142,12 +142,21 @@ sound {
 		ssi-controller =3D <&ssi1>;
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
+	spdif_in: spdif-in {
+		compatible =3D "linux,spdif-dir";
+		#sound-dai-cells =3D <0>;
+	};
+
 	/* Optional S/PDIF in on SODIMM 88 and out on SODIMM 90, 137 or 168 */
 	sound_spdif: sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
-		spdif-controller =3D <&spdif>;
-		spdif-in;
-		spdif-out;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>, <&spdif_in>;
 		model =3D "imx-spdif";
 		status =3D "disabled";
 	};
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-cubox-i.dtsi b/arch/arm/boot=
/dts/nxp/imx/imx6qdl-cubox-i.dtsi
index 761566ae3cf5..bd66430c1d78 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-cubox-i.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-cubox-i.dtsi
@@ -100,12 +100,17 @@ v_usb1: regulator-v-usb1 {
 		vin-supply =3D <&v_5v0>;
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
 		model =3D "Integrated SPDIF";
 		/* IMX6 doesn't implement this yet */
-		spdif-controller =3D <&spdif>;
-		spdif-out;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>;
 	};
=20
 	gpio-keys {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi b/arch/arm=
/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi
index a955c77cd499..d1ad65ab6b72 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-hummingboard.dtsi
@@ -140,12 +140,17 @@ sound_codec: simple-audio-card,codec {
 		};
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
 		model =3D "On-board SPDIF";
 		/* IMX6 doesn't implement this yet */
-		spdif-controller =3D <&spdif>;
-		spdif-out;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>;
 	};
 };
=20
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi b/arch/arm/bo=
ot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
index 0a3deaf92eea..55fb7b904220 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi
@@ -143,12 +143,17 @@ sound-cs42888 {
 			"AIN2R", "Line In Jack";
 	};
=20
+	spdif_in: spdif-in {
+		compatible =3D "linux,spdif-dir";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx-sabreauto-spdif",
 			     "fsl,imx-audio-spdif";
 		model =3D "imx-spdif";
-		spdif-controller =3D <&spdif>;
-		spdif-in;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_in>;
 	};
=20
 	backlight {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-wandboard.dtsi b/arch/arm/bo=
ot/dts/nxp/imx/imx6qdl-wandboard.dtsi
index 38abb6b50f6c..7130b9c3b3aa 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-wandboard.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-wandboard.dtsi
@@ -26,11 +26,16 @@ sound {
 		mux-ext-port =3D <3>;
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
 		model =3D "imx-spdif";
-		spdif-controller =3D <&spdif>;
-		spdif-out;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>;
 	};
=20
 	reg_1p5v: regulator-1p5v {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-sabreauto.dts b/arch/arm/boot=
/dts/nxp/imx/imx6sx-sabreauto.dts
index b0c27b9b0244..dfbfb8119bf3 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-sabreauto.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-sabreauto.dts
@@ -97,11 +97,16 @@ sound-cs42888 {
 			"AIN2R", "Line In Jack";
 	};
=20
+	spdif_in: spdif-in {
+		compatible =3D "linux,spdif-dir";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx-audio-spdif";
 		model =3D "imx-spdif";
-		spdif-controller =3D <&spdif>;
-		spdif-in;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_in>;
 	};
 };
=20
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi b/arch/arm/boot/dts/=
nxp/imx/imx6sx-sdb.dtsi
index 7d4170c27732..277a6e039045 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
@@ -183,12 +183,17 @@ panel_in: endpoint {
 		};
 	};
=20
+	spdif_out: spdif-out {
+		compatible =3D "linux,spdif-dit";
+		#sound-dai-cells =3D <0>;
+	};
+
 	sound-spdif {
 		compatible =3D "fsl,imx6sx-sdb-spdif",
 			     "fsl,imx-audio-spdif";
 		model =3D "imx-spdif";
-		spdif-controller =3D <&spdif>;
-		spdif-out;
+		audio-cpu =3D <&spdif>;
+		audio-codec =3D <&spdif_out>;
 	};
=20
 };
--=20
2.34.1


