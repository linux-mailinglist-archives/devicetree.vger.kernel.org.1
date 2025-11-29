Return-Path: <devicetree+bounces-243164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E27CC946C5
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 19:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5F8704E1848
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 18:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7064325F97C;
	Sat, 29 Nov 2025 18:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YeDFu4qz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C26E256C70
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 18:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764442332; cv=none; b=UVJXtwdcPKwyqMxITn/FmvUD0aU2knlrfGVXshq8eIv3p5CR1oiseXI0heS02NuJwAVUBulh7egHjzk7V1+sJ8DoRDtx2BV00iVlqvvcCYE7d6hej+x3Mjktsdoro+xro0fMR4bA43A7fLmpFtaBLkqs542FFpIIZU9t5+RI3nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764442332; c=relaxed/simple;
	bh=+IhvIhpZItlJ2VxNyf81wNVEfmW0rqbVvD3SLVwfTaA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eT+pIjjeCd8OKm6JzkH3ioSdPT/rEf1NXlbk5KPfs3Dk/kqh+LsX1lYsIOwhCAig9DEhuQnZlSIPm0Oc1RrlslQihemkFHG1vzczh3LXCPTygTMwnEkXeWe2RlAjbszc2ulJlOq/aaW3GNDxmGpgYlO7xRhwduL7Q+Yfq+6t7DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YeDFu4qz; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42e2e628f8aso17839f8f.1
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 10:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764442329; x=1765047129; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lZpSqqVta4EKUDTZ6gcuVDadlBldwJkUtIewibPZy8I=;
        b=YeDFu4qzjjtJdblDlG5fER+3Ip8HfYJ18hcehsLKzXL0u8y7hqiuwnrSAVp6s3f6lb
         VGt5S2AoEbdqaNscZWGhicFFWv9tjOgfOkYbOpsJtXjNR+I9AAjg0u2XfxWBT+ZbIG6U
         Z0T3fQq3y8wHqIjBU3VETbpGe+p0HOlJtUjUapAEqdBgI+Nf2B/xlGec669eToPy8BSW
         MBFkue/RL/oLTa7emYv8n8LjMcWYVXQHh7F3VnBHqQR36N3rppxFgKoVA/UNdoPk1BJ/
         pmKX5+1oe1KueEXsr/k7ZOtqN1jlcd6UDuaQTw2SlkBLy3Jwd+XF7l0Q+yBAh+ZEAngg
         C3AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764442329; x=1765047129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lZpSqqVta4EKUDTZ6gcuVDadlBldwJkUtIewibPZy8I=;
        b=Wi2+PVgybGYpJ7tN9Hi55FPZHdFzxb05uVqG+rUIKRY07BJyb2BK4SBpASAMMSDODC
         MrWAhDDnXBr24oncH9c15QGfN7lOrfTE0sUusVp7RFS97FLX1GyDAIq/c4N9Vvt/yXN8
         hsmH6Ayqg1dA3jkIStldjBdRzTh1N6wAcrG/sJ2Rv5EBH1Sut5Dqox+FJg6uX3IkpdWO
         4JfB97kVdAzKbRUoqd4O3o3rBiFD4TSJ0qajWPCeweKzD417g6vt40anx20eFPfJh6T1
         5nlThv05P8rkPci9eFITlAm3duBBjg8iF7GzCzq/EItyzlS7/W1pFYvJBQkx7+ue7bSC
         xNnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUem6Nh5K8a5PsMiX6CkvXM8ePSRxCCTbgS9dzl9Ap2DfEza0B43iwNL1NcMhX/I5vt8Vi7W82fD5n7@vger.kernel.org
X-Gm-Message-State: AOJu0YzhKBjuvbghEXaBD4JJZlZYsyALyB3dploa48lQS0bnyK2X524N
	312Y4IsixqgF0EeW/IfFfKXgUMM9syh8O6+lxBS+vnxOZh2l6DZfoaGP
X-Gm-Gg: ASbGnctEy1Zj03iU8oZ6Ktp6MG5PFoF37oBOifXFgMl57dAQwAuO5hLI+CtDXhXcCtx
	BypeqHlkvIMB0v/5T/z5bGkCioIVpP+yySlF4rWq7TWj7YQxs8Ocdzniv4wnmVPggvMI3Hur4Sp
	oKycd+40mbVr+AlzSMuQyax1bwrVv7HurdY7KukFdXfLVtuJ5ngXN0swUKPc7eJY02cyMOe5RRZ
	zW4QkQjiRFUeyypM+OXabjniNwKi7ewTfx1kWMD2GgTrh9T4mMY4+KlPrIaAg72aymv05d595iQ
	LRCNbiEF/GcbeVpLWGV43g3rZfdfo3iDC1ueP76rWm9elNAYECi6uWb7rmCOL+li5C4G0gxUptR
	lNfL0TjwUmYeSHA397cwkd+iz0A274nmGfl0UNWdsJtSnUSNXBnyZ8gtb3/2kOzqlcGK7hJ7Dxl
	811h3ICdMp9VLUKsc3U+IM+TMQtH4DlJK4CCQqsv3MWUaHBBbVnPxqwNCvK96ipRRLxQWOe+UDY
	LJiHSKIfEToOdYG
X-Google-Smtp-Source: AGHT+IEfGuNPJra0AAGagVJ77NUJMUuteF3uL7cBVhT7oo/OEtQtHVXuotkOLVZFr2JH/3zahgkndA==
X-Received: by 2002:a05:6000:1a85:b0:42b:3e0a:64b8 with SMTP id ffacd0b85a97d-42e0f22c54amr21216570f8f.24.1764442328625;
        Sat, 29 Nov 2025 10:52:08 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d613esm17442067f8f.11.2025.11.29.10.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 10:52:08 -0800 (PST)
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
Subject: [PATCH v2 4/4] arm64: dts: renesas: r9a09g047e57-smarc: Add support for WIFI + BT test
Date: Sat, 29 Nov 2025 18:51:59 +0000
Message-ID: <20251129185203.380002-5-biju.das.jz@bp.renesas.com>
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

Add support for WIFI + BT test M.2 board [1]
[1] https://www.embeddedartists.com/wp-content/uploads/2021/05/2AE_2BC_M2_Datasheet.pdf

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2:
 * New patch
---
 .../boot/dts/renesas/r9a09g047e57-smarc.dts   | 43 ++++++++++++++++++-
 arch/arm64/configs/defconfig                  | 26 +++++++++++
 2 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 696903dc7a63..76f43c098123 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -15,7 +15,7 @@
 #define SW_SER0_PMOD		1
 #define SW_SER2_EN		1
 #define SW_SD0_DEV_SEL		0
-#define SW_SDIO_M2E		0
+#define SW_SDIO_M2E		1
 
 #define PMOD_GPIO4		0
 #define PMOD_GPIO6		0
@@ -46,6 +46,7 @@ aliases {
 		mmc1 = &sdhi1;
 	};
 
+#if (!SW_SDIO_M2E)
 	vqmmc_sd1_pvdd: regulator-vqmmc-sd1-pvdd {
 		compatible = "regulator-gpio";
 		regulator-name = "SD1_PVDD";
@@ -55,6 +56,7 @@ vqmmc_sd1_pvdd: regulator-vqmmc-sd1-pvdd {
 		gpios-states = <0>;
 		states = <3300000 0>, <1800000 1>;
 	};
+#endif
 };
 
 &canfd {
@@ -201,6 +203,15 @@ usb3_pins: usb3 {
 		pinmux = <RZG3E_PORT_PINMUX(4, 1, 12)>, /* USB30_VBUSEN */
 			 <RZG3E_PORT_PINMUX(4, 0, 12)>; /* USB30_OVRCURN */
 	};
+
+#if (SW_SDIO_M2E)
+	wifi18-hog {
+		gpio-hog;
+		gpios = <RZG3E_GPIO(1, 5) GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "wifi1.8";
+	};
+#endif
 };
 
 #if SW_SER0_PMOD && SW_SER2_EN
@@ -211,6 +222,11 @@ &rsci2 {
 	uart-has-rtscts;
 
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <2000000>;
+	};
 };
 #endif
 
@@ -239,6 +255,7 @@ &scif0 {
 	pinctrl-names = "default";
 };
 
+#if (!SW_SDIO_M2E)
 &sdhi1 {
 	pinctrl-0 = <&sdhi1_pins>;
 	pinctrl-1 = <&sdhi1_pins>;
@@ -247,6 +264,30 @@ &sdhi1 {
 	vmmc-supply = <&reg_3p3v>;
 	vqmmc-supply = <&vqmmc_sd1_pvdd>;
 };
+#else
+&sdhi1 {
+	pinctrl-0 = <&sdhi1_pins>;
+	pinctrl-1 = <&sdhi1_pins>;
+	pinctrl-names = "default", "state_uhs";
+	status = "okay";
+
+	vmmc-supply = <&reg_3p3v>;
+	vqmmc-supply = <&reg_1p8v>;
+	bus-width = <4>;
+
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+
+	non-removable;
+	cap-power-off-card;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+#endif
 
 &xhci {
 	pinctrl-0 = <&usb3_pins>;
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 370211c50d12..fc684cf56a6c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1910,3 +1910,29 @@ CONFIG_CORESIGHT_STM=m
 CONFIG_CORESIGHT_CPU_DEBUG=m
 CONFIG_CORESIGHT_CTI=m
 CONFIG_MEMTEST=y
+CONFIG_BRCMUTIL=m
+CONFIG_BRCMFMAC_PROTO_BCDC=y
+CONFIG_BRCMFMAC_SDIO=y
+CONFIG_SERIAL_DEV_CTRL_TTYPORT=y
+CONFIG_BT_BREDR=y
+CONFIG_BT_RFCOMM=y
+CONFIG_BT_RFCOMM_TTY=y
+CONFIG_BT_BNEP=y
+CONFIG_BT_BNEP_MC_FILTER=y
+CONFIG_BT_BNEP_PROTO_FILTER=y
+CONFIG_BT_HS=y
+CONFIG_BT_HCIUART_NOKIA=m
+CONFIG_BT_HCIUART_BCSP=y
+CONFIG_BT_HCIUART_ATH3K=y
+CONFIG_BT_HCIUART_3WIRE=y
+CONFIG_BT_HCIUART_INTEL=y
+CONFIG_SND_SOC_MTK_BTCVSD=y
+CONFIG_SND_SOC_BT_SCO=y
+CONFIG_CRYPTO_RSA=y
+CONFIG_CRYPTO_HASH_INFO=y
+CONFIG_ASYMMETRIC_KEY_TYPE=y
+CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
+CONFIG_X509_CERTIFICATE_PARSER=y
+CONFIG_PKCS7_MESSAGE_PARSER=y
+CONFIG_SYSTEM_TRUSTED_KEYRING=y
+CONFIG_SYSTEM_TRUSTED_KEYS=y
-- 
2.43.0


