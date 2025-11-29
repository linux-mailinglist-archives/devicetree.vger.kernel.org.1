Return-Path: <devicetree+bounces-243163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C7FC946BF
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 19:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EF84D4E3321
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 18:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC55125A633;
	Sat, 29 Nov 2025 18:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="np6Ld+VP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB51C253958
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 18:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764442331; cv=none; b=cJ4Y6BAzMk0gM67mw7B8favfSguUmV11QueMLERJf/wnAr3bvpPSc/n1he/mNf7Zu6VqOSW/fhTXl2z5BRdfdIgdNx5LE84MPNAm5YZSE+8EwMNbDg4u/gvsBL+sIFR7co28SHot2vgxwVzdDcewUGmyB1Y8ollmzRL+DVCemqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764442331; c=relaxed/simple;
	bh=eGV43zXNZwLcVcE6qLhrYD3w4h0RrIYzFcW/RThrSwE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sb+ZkQCXo2dYn+rmMnUMzDU155tWmPIN8pzPScuMNzNJ/c8fhHMN5QDmHz54y3QLU2GzYNV4hklLfqfK/tKm6Bf83hWQcQjU64iJRvXPjGMwNKXYYrU+bEja2cU4nuygqTO4fxb/itpyj+8WnwLZqdkw5d4j/tS4gQFzZKnrp/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=np6Ld+VP; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42e2e3c3a83so23839f8f.1
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 10:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764442328; x=1765047128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2K73nwpTtZLJt98+4WIYLIupevL2M6bireyDzJbZ3Ug=;
        b=np6Ld+VPGSUpkMUnizuVtgOCVT3MAROiRBnaxqa3LU6zu9JGcVIdetPwmLkKQYDOMF
         SG8X+i/PPhSOYH2iqR88y+2E64VulkNws+p5Y9w9fcqd+DwIl+VUrKs8HJZtOCO77q2h
         JzldL3DtyA2OxybAwAuKNbJJx4TKzKsScw2V+eXKRPTrUhDFQ0aj0pGzHXlcZh160NAj
         2b89ARv1M69Uy6K8hziYenN4uzlb3/rFJZExI1r2xMDdujy89Uda9YfiZ7D7KvLl/8i2
         qY5UanIa71PDf+6B5tCpYfwoDzaRPO9qlJLM7AeNnN7Squ1ZAxxDDRvzgyVm3HgZTQu3
         Dmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764442328; x=1765047128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2K73nwpTtZLJt98+4WIYLIupevL2M6bireyDzJbZ3Ug=;
        b=L2uA7QcS8zPayibvQthqEZTk9ujrB2j/VakPvz9uw7Ik9JramT6a3vt2dhOcU1pBX1
         q9yzk7ddMq2oy5o2qLD+KjKdc790qaKW+ktu67S2hVWzN95A02TUUcJrW1792kqWmB+V
         yVu71vPaN2gC8n5WEBsxGJSmG8Zp1yQTBdZKA0Tj//m31/Mr1zJdWG5fUPVJMHKydoWP
         7asmDztPF01eoFO1tw70esj5+O+iNZ3lkJte127E4W7OqGDXXcY10adFLbgCMhF7uRdK
         2GaVBKP31UssOWd9laa6pQG+a0q1iyj3T0G0nqBOvsD1/7WQ/AfDbd6QUbX0kfcXhvdl
         VXjg==
X-Forwarded-Encrypted: i=1; AJvYcCXws0qgGbGTisY13cuFy24WkgEsccilYGprsGEtPX/fQTLtXDTTWK+8FVVO3LOTMP9TPAl/DdWTRJhu@vger.kernel.org
X-Gm-Message-State: AOJu0YxXgTDAKHDIFWn4V8D2IKfmgoGNAsrE98KNSznjmVhAHEvtjxLv
	keflokgT9lsiEp+r2qTebfu0A9uE1Sp/ekp48e3LXUMel0F6fkeL53cx
X-Gm-Gg: ASbGncur2WSHWyRrKv8hZPnhMH+uQNGhbYJC2+tWkxwPsx7yuXwfHCNfZT9mBQgRKg/
	LdEiiHmafPxsSVfrvA9h38QIWv35o7F22+jcEzXoZA/orkmJdbg7vXMtJFYK2c+gHbqyzWsJ4hx
	KYQ4QXrnoUDXd895W1LXGiIJbB7vyz++mAM6NOVruH5lKB2ZIJMIRwsdXInwRhnA85Ctwv7dlC5
	CZ9jtzBb1tDuHz0nLQbpgfVg9Xebk69jEmJ/NwbrBB+YF4FX2erPX80kQDL9Ox7bZoO9xY19A5S
	FVk/grA8948z7jMZUawfbFPVdcC25GtVYc/fkXx26P6JqnWSx6wjcz2ojPMkEPKOIuju+n6ykF5
	VL8G9f/w6zBmeONFq5F/RqAu06ZRAXaOsaDb6gV1wTLnGQ2hLzY73PEyDBYNOjZzE5qqc8hUZYg
	4JjhhLCHOrGWzZ1YBf0+04HGsP46NwE7uexSTmT/0Md8lZ9N6xwNE9xDNCEa35c8MeoWBy+83h9
	jEiHQLM1FD/XiLc
X-Google-Smtp-Source: AGHT+IFSSRU9nZJg5slEDozvAjxyejJ7ZTFz1HkUkQ1jF7r+FT16cfOI8lRbu19eL7jLdf5EECfspg==
X-Received: by 2002:a5d:604b:0:b0:42b:43cc:982e with SMTP id ffacd0b85a97d-42cc1d0cf55mr27087914f8f.36.1764442327972;
        Sat, 29 Nov 2025 10:52:07 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d613esm17442067f8f.11.2025.11.29.10.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 10:52:07 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 3/4] arm64: dts: renesas: r9a09g047e57-smarc: Enable rsci{2,4,9} nodes
Date: Sat, 29 Nov 2025 18:51:58 +0000
Message-ID: <20251129185203.380002-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251129185203.380002-1-biju.das.jz@bp.renesas.com>
References: <20251129185203.380002-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Enable device rsci{2,4,9} nodes for the RZ/G3E SMARC EVK.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v1->v2:
 * Rearranged pincrl entries order by port number.
 * Updated the comments to reflect the board signals.
 * Added missing pins CTS4N and RTS4N.
 * rsci2 is guarded by macros SW_SER2_EN and SW_SER0_PMOD.
 * rsci4 is guarded by macros SW_LCD_EN and SW_SER0_PMOD.
 * rsci9 is guarded by macro SW_LCD_EN.
 * Added uart-has-rtscts to rsci4.
 * Dropped rsci{2,4,9} nodes from renesas-smarc2.dtsi as RZ/G3S does not
   have RSCI interfaces.
---
 .../boot/dts/renesas/r9a09g047e57-smarc.dts   | 58 +++++++++++++++++++
 .../boot/dts/renesas/renesas-smarc2.dtsi      |  7 +++
 .../boot/dts/renesas/rzg3e-smarc-som.dtsi     |  4 ++
 3 files changed, 69 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 50e075745474..696903dc7a63 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -12,6 +12,8 @@
 #define SW_GPIO9_CAN1_STB	0
 #define SW_LCD_EN		0
 #define SW_PDM_EN		0
+#define SW_SER0_PMOD		1
+#define SW_SER2_EN		1
 #define SW_SD0_DEV_SEL		0
 #define SW_SDIO_M2E		0
 
@@ -37,6 +39,9 @@ / {
 
 	aliases {
 		i2c0 = &i2c0;
+		serial0 = &rsci4;
+		serial1 = &rsci9;
+		serial2 = &rsci2;
 		serial3 = &scif0;
 		mmc1 = &sdhi1;
 	};
@@ -140,6 +145,28 @@ nmi_pins: nmi {
 		input-schmitt-enable;
 	};
 
+	rsci2_pins: rsci2 {
+		pinmux = <RZG3E_PORT_PINMUX(1, 0, 1)>, /* RXD2 */
+			 <RZG3E_PORT_PINMUX(1, 1, 1)>, /* TXD2 */
+			 <RZG3E_PORT_PINMUX(1, 2, 6)>, /* CTS2N */
+			 <RZG3E_PORT_PINMUX(1, 3, 1)>; /* RTS2N */
+		bias-pull-up;
+	};
+
+	rsci4_pins: rsci4 {
+		pinmux = <RZG3E_PORT_PINMUX(7, 6, 5)>, /* RXD4 */
+			 <RZG3E_PORT_PINMUX(7, 7, 5)>, /* TXD4 */
+			 <RZG3E_PORT_PINMUX(8, 0, 6)>, /* CTS4N */
+			 <RZG3E_PORT_PINMUX(8, 1, 5)>; /* RTS4N */
+		bias-pull-up;
+	};
+
+	rsci9_pins: rsci9 {
+		pinmux = <RZG3E_PORT_PINMUX(8, 2, 5)>, /* RXD9 */
+			 <RZG3E_PORT_PINMUX(8, 3, 5)>; /* TXD9 */
+		bias-pull-up;
+	};
+
 	scif_pins: scif {
 		pins = "SCIF_TXD", "SCIF_RXD";
 		renesas,output-impedance = <1>;
@@ -176,6 +203,37 @@ usb3_pins: usb3 {
 	};
 };
 
+#if SW_SER0_PMOD && SW_SER2_EN
+&rsci2 {
+	pinctrl-0 = <&rsci2_pins>;
+	pinctrl-names = "default";
+
+	uart-has-rtscts;
+
+	status = "okay";
+};
+#endif
+
+#if (!SW_LCD_EN) && (SW_SER0_PMOD)
+&rsci4 {
+	pinctrl-0 = <&rsci4_pins>;
+	pinctrl-names = "default";
+
+	uart-has-rtscts;
+
+	status = "okay";
+};
+#endif
+
+#if (!SW_LCD_EN)
+&rsci9 {
+	pinctrl-0 = <&rsci9_pins>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+#endif
+
 &scif0 {
 	pinctrl-0 = <&scif_pins>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
index a6e8eb730096..b607b5d6c259 100644
--- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
+++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
@@ -13,6 +13,13 @@
  *     0 - SMARC SDIO signal is connected to uSD1
  *     1 - SMARC SDIO signal is connected to M.2 Key E connector
  *
+ * Please set the switch position SW_OPT_MUX.4 on the carrier board and the
+ * corresponding macro SW_SER0_PMOD on the board DTS:
+ *
+ * SW_SER0_PMOD:
+ *     0 - SER0 signals connect to M.2 Key-E, SER2 signals are unconnected
+ *     1 - SER0 signals connect to PMOD, SER2 signals connect to M.2 Key-E
+ *
  * Please set the switch position SW_GPIO_CAN_PMOD on the carrier board and the
  * corresponding macro SW_GPIO8_CAN0_STB/SW_GPIO8_CAN0_STB on the board DTS:
  *
diff --git a/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
index 7faa44510d98..eb0de21d6716 100644
--- a/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
@@ -13,6 +13,10 @@
  *      0 - SD0 is connected to eMMC (default)
  *      1 - SD0 is connected to uSD0 card
  *
+ * Switch position SYS.4, Macro SW_SER2_EN:
+ *      0 - Select Module DSI connector(GPIO)
+ *      1 - Select SER2
+ *
  * Switch position SYS.5, Macro SW_LCD_EN:
  *      0 - Select Misc. Signals routing
  *      1 - Select LCD
-- 
2.43.0


