Return-Path: <devicetree+bounces-124569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CC29D9448
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:24:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16EA62826A7
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4C51D63F6;
	Tue, 26 Nov 2024 09:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DReuwvzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DDD1D63C4
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732612894; cv=none; b=CUAkcgsYO+Eo34Dpk3FOtPJeqnj7xV00GJHDtxMCUL6Ax7KEJjmtQjT4fv3wHnvRfzY6GQQxzxt9+tmkeTZR5Vuhffr6mP0+iIduLDjJg9gm8hYuem5jne0T10mmCBtRDFlrygORQAIqhEUeO2V3qKjj7MUvkam6fGbdPSizKSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732612894; c=relaxed/simple;
	bh=sCMOLfdCfDxxCZrfpD7yC3KBNfJKGT4d6K4oqUP2q/o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tT0YoEjFm9fvNiSTDDveUJA535smc8Ay5JoRra6fK2YRMsWO4mkWoiyRQCJPPtMFyxVglQpR+so1acfC+/D83m9EdLHqfFzs30P1r8Y0tSba/eACNzo2QXf90r4uwbkU4py6uo/RL6P+I/bBD6nSaf7Ak0cygCcQWWJg8CWj/no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DReuwvzV; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3825a721ae5so2977758f8f.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612891; x=1733217691; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WCzqc2TaOMYXuzsxltqgd9yUEqr7UmmqRYfJJbdxixs=;
        b=DReuwvzV3wTK2sEWOAoVa626fObujUr0SEDjx5SVhvI01JdJoR71zoMkZrScwH7t4t
         BtaO9y+QIoZyTmjaUTZYBbVgEHNivldhvKowYOP183h7pIBVR+XqdsisQZN+LqGR5Cjj
         lOWBebEijVtZpL1CFpu3fbnOZnsazafyGJF246MiolVXc2l609QJJ/5bQCBNcj/Rg0L5
         49Yf2TcYBI2eZsPykwMyJHytA+zyDa4PKFRcmdVJnFXZZDC/pfneJx8UUlO9DjzoPm8x
         8nTh1G8XCQKoSds5PRUoX2Fp6iaDBsvRgGohLfLV9JFurlqhE0v0t27xowkzpWdEQouo
         BYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612891; x=1733217691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WCzqc2TaOMYXuzsxltqgd9yUEqr7UmmqRYfJJbdxixs=;
        b=TEtywbA8UlaeJzaHryXQX+glCuVAXavdppw9kbjGR1nZhHqYfyFBSChiRFIFfeHsud
         EtMAZZMUgUhMSDBD4qNkG1SSzAcYL5QtAmLZuNyWA14Zhv5WPEik9pt9Te/FimhlDRnR
         kLLOtDfmIJXh166U1UKoBvvw8pzPB921BEUJg2M1NQCHepZ0RLxqRdhpzWDm53LZO5oo
         K8MONllhgUkpjt1fq+zcs5rlqsM1SCVVO+fA68l9g0KRJ7wL0REwiDaSirjR9AbFM1BG
         ohsHrLoCaHhEEnq9GG1L5WNbw3vZiJQ8gIokuPKXtJx7Ss8iyaxTfqbyDfnrK8pg4Uzx
         2DwA==
X-Forwarded-Encrypted: i=1; AJvYcCUQ+fukYVMjKI+4UuLD9Fydm+A7NjJZS4a6vXsq0F9yErntFnajpQheLBrLGtpjVRKgHBMYQMerwjOX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+yhbtw71G9vxlnd4fxfwzbPpAuGPK3bJoMDA/BJduY0obS4Mp
	2ArV3kG430Y3qkrziVKKiF7ggVgCh1VzOSulbRfsXX9ADHEHRSPVckQezOfAroU=
X-Gm-Gg: ASbGncvoqGoBol0Iu8WaLkGtbgx2f3Vvex7oxSvnpYXXe3QQHDeuESGDheAmL0RTlqK
	EQYTFptvMCpb23gQN6lP1IET1VwFNpEEz5KxIC8yd46kpj7SS4n6Lg86L3u7ACDY/DdVzJ2LlpU
	2oEyqlqc0hUw87A1mdIwpTAAeMC9cuN3dcfVaFdIi9ZIgjDRnwfKf3qJAkfD3oiyXdoKEYv9s4T
	6e8N9OjDjFVjeUqdic3z0KEvuGhCZarril14q+31E3mkLUi9w6j8Da+PicXon6EDdd5oPc9Wucf
	l6o=
X-Google-Smtp-Source: AGHT+IGt16Gf28ygqBUeg7Z1sI/QNXodT7+mOuBvkflJeOYMzIEcDxZQSC743PyULKBWHu6xn+lhzw==
X-Received: by 2002:a5d:47c5:0:b0:382:3cb8:bd4c with SMTP id ffacd0b85a97d-385bfaea942mr2316685f8f.12.1732612891193;
        Tue, 26 Nov 2024 01:21:31 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:30 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 15/15] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Tue, 26 Nov 2024 11:20:50 +0200
Message-Id: <20241126092050.1825607-16-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable USB support (host, device, USB PHYs).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- this was patch 15/16 in v1:
- dropped sysc enablement as it is now done in SoC dtsi file

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 57 ++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 4509151344c4..84523e771ebf 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -64,12 +64,35 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
 	};
 };
 
+&ehci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&hsusb {
+	dr_mode = "otg";
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
 	clock-frequency = <1000000>;
 };
 
+&ohci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
 &pinctrl {
 	key-1-gpio-hog {
 		gpio-hog;
@@ -128,6 +151,27 @@ cd {
 			pinmux = <RZG2L_PORT_PINMUX(0, 2, 1)>; /* SD1_CD */
 		};
 	};
+
+	usb0_pins: usb0 {
+		peri {
+			pinmux = <RZG2L_PORT_PINMUX(5, 0, 1)>, /* VBUS */
+				 <RZG2L_PORT_PINMUX(5, 2, 1)>; /* OVC */
+		};
+
+		otg {
+			pinmux = <RZG2L_PORT_PINMUX(5, 3, 1)>; /* OTG_ID */
+			bias-pull-up;
+		};
+	};
+
+	usb1_pins: usb1 {
+		pinmux = <RZG2L_PORT_PINMUX(5, 4, 5)>, /* OVC */
+			 <RZG2L_PORT_PINMUX(6, 0, 1)>; /* VBUS */
+	};
+};
+
+&phyrst {
+	status = "okay";
 };
 
 &scif0 {
@@ -148,3 +192,16 @@ &sdhi1 {
 	max-frequency = <125000000>;
 	status = "okay";
 };
+
+&usb2_phy0 {
+	pinctrl-0 = <&usb0_pins>;
+	pinctrl-names = "default";
+	vbus-supply = <&usb0_vbus_otg>;
+	status = "okay";
+};
+
+&usb2_phy1 {
+	pinctrl-0 = <&usb1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.39.2


