Return-Path: <devicetree+bounces-129406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF169EB7DF
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9F402827F5
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1167242AAB;
	Tue, 10 Dec 2024 17:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="LZNfVXPt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67B5241F4D
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850660; cv=none; b=Ibm8Sj5ozzOkcgt3NhVczAwwuGuGhwbnOB4kki0Zzk+6h/qTMvTuXBh7Cle+gC6ZoEQG+gCNyxqUxp2ZT/z0HqQDqQ0HEoIzbVm8ATFi7LTLeO949JKhMF2BNfe8exOhh/Maxdzdt3cKKhrvPWN2T3APD88UO/dxe9r7eZyvmZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850660; c=relaxed/simple;
	bh=CcnOmZ4wJdtquX3MvcxFwHJDSz8ukso3gSLgf6pWQno=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LDshBBN8zLXjXtLeQ51efNgg31V9dXERr8KMqSMF2zthB21YJdE8N7APjmNtxv4Dy6/QpTNW56sv7TAdd7UBRjay4+gYlM8dLwh56HzNiIlePDgj6emWvVkMG/CGVnpyHHOPhkCahcnEcIdTtO4vPQZuIij/EIAWKBFkWv/y5SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=LZNfVXPt; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d3f28a4fccso3468898a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850657; x=1734455457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbHdnNXTXnTR3tThfeMauJ9l0Itp93/txTopWT8Ines=;
        b=LZNfVXPtYDVS18Yte82iCw12NcdAvZnLHfH3EW0tVUQORbtzxAdRtpnj10pIqOl9PE
         jEM+YR7r98GwCsRLVjrqYGp+AMLP/Pb3LcgNG9TvRFS/VjnWLEU07nbYGiHoPbW86tw4
         XBdk0blKN11toswsFbluz7EVLXbNbJZ6Glb9b1iQ6bKtIr8EhZj0Cl8jlG3gjBrK5oEB
         LhVJ/Sue+fkM/6mpWiNVmdF9aPodprZmZTaDZoMzqYeZ+xxvXnplF+FuA7GpUhwqXrf0
         XkDmk80PKQkWf9Uc5VrSpDU8l79JRUh1FaGhIt1Q/HFL8EVqSQ+wriTSX0c8caErCh0G
         xhjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850657; x=1734455457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qbHdnNXTXnTR3tThfeMauJ9l0Itp93/txTopWT8Ines=;
        b=BbD5wkbps982zT975yJ4Vn/z0wSIL8YzUvw5/yvFDcaA2f+LhoQnpxcr13kbtSoTwk
         QTTbx1QCLKtHn0oLeT77aK57ym0ntZcDuQL96UcQjdV7MJw5CxjgR+Ef8uFSoN2BfCBR
         29/LfbDH7D39UgRoYEdOQC2u01nHC/L+9FBZK4h7xfDOrDwBKRtk2Qhh3FN4c+Z6A0B4
         OnhzOvyUM+NAJwaXNne5+GdHiIv4AnnqAjwbtVOpKXE978zj98jN1FiU79EkTjsqNkXk
         WmvN9rE7owNuylpHvujRxwAMc5N5xBgXvjo7b/Vxoanq3WeiHnU2QltUmfuAOcUIqh0B
         9b4A==
X-Forwarded-Encrypted: i=1; AJvYcCX5Wq9lhBjYsCiYXPavzaUoQDqACkUSx5ev5s9owVTCkjgQ8k14XfAUrlPIw09CDc6zDKwBIw8EMIyo@vger.kernel.org
X-Gm-Message-State: AOJu0YxL6UNbw0pQFGq7J3u5lJ4qgqb2ZKY5PJs8t5flFXhMyD52c5o4
	UDQpc9AcuOyZPklzevhi5jkN1HAnfMrLbTU0IrIdb5782WxtfrvRW5PC7EPj6vg=
X-Gm-Gg: ASbGncsFH18gECwJC32s70lf0SOMSX06vWQoL7hlQgGgiGgGvrllo/7H/JL+MhaB4kL
	/yqes6jpwu7zFnfXP09f4wnQaDSL/JtKrypkg+oSK8IoPBEcqJiVj/DSmlStWXLC4/ZpnamNm+f
	DT1WmwhuLiWj14j9jUE14jEzc5BneScHzdeq/+QmmB1HqHf9nmhj54aFXVx1DCh3bIluJve/mgs
	htvuy+B3thxUW+WpJpucSpQUXN9wlpPOiRFnmpVdGxCQTSXULCLpb5eisLp5M6Emxk0JwiqHDwG
	cihqHWdRKT8=
X-Google-Smtp-Source: AGHT+IFoRF8BSZrpYteUQ6a7MVI24wh97GfyVKWhabGoatai7X1+0ZapR3mbMn4ogZwncEoqa1pzEQ==
X-Received: by 2002:a05:6402:3705:b0:5d0:d183:cc05 with SMTP id 4fb4d7f45d1cf-5d3be66d0b6mr16199052a12.5.1733850657163;
        Tue, 10 Dec 2024 09:10:57 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:56 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 22/24] arm64: dts: renesas: Add da7212 audio codec node
Date: Tue, 10 Dec 2024 19:09:51 +0200
Message-Id: <20241210170953.2936724-23-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add the da7212 audio codec node. Along with it regulators nodes were
reworked to be able to re-use them on da7212.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags
- dropped #address-cells, #size-cells
- moved #sound-dai-cells after clock names to align with the
  documentation example

Changes in v3:
- none

Changes in v2:
- none


 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     | 17 ++++++++++-----
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  | 21 +++++++++++++++++++
 2 files changed, 33 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 6e58d47d85b0..5ee9dac4aebb 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -63,7 +63,6 @@ vcc_sdhi0: regulator0 {
 		enable-active-high;
 	};
 
-#if SW_CONFIG2 == SW_ON
 	vccq_sdhi0: regulator1 {
 		compatible = "regulator-gpio";
 		regulator-name = "SDHI0 VccQ";
@@ -73,8 +72,8 @@ vccq_sdhi0: regulator1 {
 		gpios-states = <1>;
 		states = <3300000 1>, <1800000 0>;
 	};
-#else
-	reg_1p8v: regulator1 {
+
+	reg_1p8v: regulator2 {
 		compatible = "regulator-fixed";
 		regulator-name = "fixed-1.8V";
 		regulator-min-microvolt = <1800000>;
@@ -82,9 +81,17 @@ reg_1p8v: regulator1 {
 		regulator-boot-on;
 		regulator-always-on;
 	};
-#endif
 
-	vcc_sdhi2: regulator2 {
+	reg_3p3v: regulator3 {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	vcc_sdhi2: regulator4 {
 		compatible = "regulator-fixed";
 		regulator-name = "SDHI2 Vcc";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index ee19c4155750..899d88467d79 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -68,6 +68,27 @@ &i2c0 {
 	status = "okay";
 
 	clock-frequency = <1000000>;
+
+	da7212: codec@1a {
+		compatible = "dlg,da7212";
+		reg = <0x1a>;
+
+		clocks = <&versa3 1>;
+		clock-names = "mclk";
+
+		#sound-dai-cells = <0>;
+
+		dlg,micbias1-lvl = <2500>;
+		dlg,micbias2-lvl = <2500>;
+		dlg,dmic-data-sel = "lrise_rfall";
+		dlg,dmic-samplephase = "between_clkedge";
+		dlg,dmic-clkrate = <3000000>;
+
+		VDDA-supply = <&reg_1p8v>;
+		VDDSP-supply = <&reg_3p3v>;
+		VDDMIC-supply = <&reg_3p3v>;
+		VDDIO-supply = <&reg_1p8v>;
+	};
 };
 
 &i2c1 {
-- 
2.39.2


