Return-Path: <devicetree+bounces-223531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6061EBB6AE4
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 14:51:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44BE2189B40D
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 12:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80C532EFDBD;
	Fri,  3 Oct 2025 12:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FZi20jRQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFED2EFDA4
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 12:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759495866; cv=none; b=NljrpZoNGX85YGG8neFyWAIfhclAZjO4KnSPErNj3dG3gL5ZoLpn4gUW6HTVS0Yn3lynBSRtF0Ww78Vz30RVNAgbWyN/5W0ZwRUKm+YGZt3YI3lbEXT5MvxrzhikUeVcm15aJF3ZFGlPg/BXcdnAap5B9ww9jZX9djqwL+CSYDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759495866; c=relaxed/simple;
	bh=eAUUl63uFcupRJTMuIWFtoPfkLEkUQYqZN3KWZyQ4lE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lv/VxfLcvmvobCRMOK0eFPEuFXwy4F4cCN8gwuwOyg34TL8bgrhWs1pqdeDL6BdlwVm9zNpDhiTPqXR8Kicm2Wznpf459Ouc4hsW2Uul90d8YRYNaw5prMoPNTt9/n6h6YwgJlzQ0a5zMa/5TXb29yJyE1/7oMC82XjEW/HaRHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FZi20jRQ; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46e4ad36541so24881915e9.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 05:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759495863; x=1760100663; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2IZoiErPJ/Pg70gKqGC9T9EhwBHZBMlbbY6bGBGZt7o=;
        b=FZi20jRQOVdX7AfDtyHLohSSTkWZzP9wraDweoALH9qtJUS+9ZIIHyQ5FnMT74WX3R
         hzfEl9x5BzGGPtXo2yzbEraOd5WM5IL7hqHKt1Wl91e5rXEk0hYCjUtRlKweVrirC9Xe
         cIwUtSWfIPBrqNIvfAOb44E7FAJSSRsXWguvm8lim+aketYt3LXr/zKS1OqSkXQX0goe
         za3SrK//uHaJ7fgFH5HL1T+zqMiXHUrw+UdUWzRDl36tvzfkEnnvNhrdrq+NjYh4Fj2x
         +LRM0a9Ey4UMbFdymIa5WvSBpqx6kD8zaOTvBTSNPzIHPrslSKr/HNk21k1JiUB3RbqL
         AKlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759495863; x=1760100663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2IZoiErPJ/Pg70gKqGC9T9EhwBHZBMlbbY6bGBGZt7o=;
        b=rNPskHo3bJqG8n81lNJs5ScEXZEa/L5mnnwcBzbnZGPiTrSlaEIPDtvAjdJmjZWpec
         3YdZB23CisamWNccKhdARoAMdHBP2BfdnRcs6RJT+RWqCu1S1TOcUY365isoasC4R6O0
         LmzoSAXCd2NIZSpHYOugJJHkaxiE2C7vg2uPOKBDY+4pTygJ5UG3+iYrOGYv5hrBk+PL
         SDFmkkZ7we2jhgQbEvkdFpMQOdiml1vR8htFuS5+Oqn7MjmFB/ULyShECope4bLT7pAh
         08BsN8Ui04oGBPLj7hxxm06PzPDJYNYJ8hq63YXxe4BNGKfrDGoOvx+y/6ISzb/zyKUJ
         231Q==
X-Gm-Message-State: AOJu0Yzp4CFQZZQ/IzHXdd9F4eimmNLYmQkFQv7uLlGNidBbiEx2GP5z
	j04TQpxvrsKYOeIT9UhPKS2OqZhpm+Jy6GbLNSmZD1iEdoJ7X6TNfYpM//l71zA7
X-Gm-Gg: ASbGncv0574PY/BufhBkWhFIJ0ILfoCc5CvDdSqnrESOW6U3uzSSOnEd2KAUJbaPT+L
	/AHOutC+pBd5Gg67S7Td7MV10WanDJ6NAZmJnf+qZpkhrfLPLfJjr3MhILw1ODEDAaYfVi2Pg0l
	pZwriFXYazeyPRffzH4yMMD9PUfX9sEUgbkhXylPpHtv0qh2n1A76r8BSWJpmblxY2pydi4tX4u
	3kmTXbAy/56aHF2bF9QUaG+yqkd9vj2vBV417ITIpHNv4yzLNVOQFwLAzety74P11zWtk2W4nRG
	P578pYhAsBr/GaGnFW5I60kamZSTEDhVIJMCz1xkY9UgdlDLXptIry6ozPmXTIEoqMUvwfEVi/p
	sxO89x9NSaPo0qKyg2kqrZEJa2QkbMfkXhUWkoAB3rWt452BfvwVdt5IwR0UZNruye/w+/w==
X-Google-Smtp-Source: AGHT+IHs8dFUCY+WdReUoM1aWDsIS9GNN231DHH3c/6nXzIw+XZO5N/Hg3PQQ7yZp2JlTomt4pJKHg==
X-Received: by 2002:a05:600c:4e94:b0:46e:1d01:11dd with SMTP id 5b1f17b1804b1-46e7110436bmr21072345e9.2.1759495862813;
        Fri, 03 Oct 2025 05:51:02 -0700 (PDT)
Received: from localhost.localdomain ([37.159.33.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c40983asm80598605e9.3.2025.10.03.05.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 05:51:02 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.radaelli21@gmail.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 2/3] arm64: dts: ti: var-som-am62p: Add support for WM8904 audio codec
Date: Fri,  3 Oct 2025 14:50:28 +0200
Message-ID: <20251003125031.30539-3-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251003125031.30539-1-stefano.radaelli21@gmail.com>
References: <20251003125031.30539-1-stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VAR-SOM-AM62P can integrate the WM8904, a high-performance
ultra-low-power stereo codec optimized for portable audio applications.

This patch adds the WM8904 device to the appropriate I2C bus, enables
the McASP1 peripheral, and introduces the sound node to expose the
sound card to the system.

Signed-off-by: Stefano Radaelli <stefano.radaelli21@gmail.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
index b93372f22732..aba72d0b767c 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
@@ -112,6 +112,38 @@ reg_3v3_phy: regulator-3v3-phy {
 		enable-active-high;
 		regulator-always-on;
 	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,bitclock-master = <&codec_dai>;
+		simple-audio-card,format = "dsp_b";
+		simple-audio-card,frame-master = <&codec_dai>;
+		simple-audio-card,name = "wm8904-audio";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,routing =
+			"Headphone Jack", "HPOUTL",
+			"Headphone Jack", "HPOUTR",
+			"IN2L", "Line In Jack",
+			"IN2R", "Line In Jack",
+			"IN1L", "Microphone Jack",
+			"IN1R", "Microphone Jack";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Headphone", "Headphone Jack",
+			"Line", "Line In Jack";
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&wm8904>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&mcasp1>;
+		};
+	};
+};
+
+&audio_refclk1 {
+	assigned-clock-rates = <100000000>;
 };
 
 &cpsw3g {
@@ -149,6 +181,19 @@ &main_i2c2 {
 	pinctrl-0 = <&pinctrl_i2c2>;
 	clock-frequency = <400000>;
 	status = "okay";
+
+	wm8904: audio-codec@1a {
+		compatible = "wlf,wm8904";
+		reg = <0x1a>;
+		#sound-dai-cells = <0>;
+		clocks = <&audio_refclk1>;
+		clock-names = "mclk";
+		AVDD-supply = <&reg_1v8>;
+		CPVDD-supply = <&reg_1v8>;
+		DBVDD-supply = <&reg_3v3>;
+		DCVDD-supply = <&reg_1v8>;
+		MICVDD-supply = <&reg_1v8>;
+	};
 };
 
 &main_i2c3 {
@@ -179,6 +224,16 @@ AM62PX_IOPAD(0x01d4, PIN_INPUT_PULLUP, 2) /* (C22) UART0_RTSn.I2C3_SDA */
 		>;
 	};
 
+	pinctrl_mcasp1: main-mcasp1-default-pins {
+		pinctrl-single,pins = <
+			AM62PX_IOPAD(0x0090, PIN_INPUT, 2) /* (U24) GPMC0_BE0n_CLE.MCASP1_ACLKX */
+			AM62PX_IOPAD(0x0098, PIN_INPUT, 2) /* (AA24) GPMC0_WAIT0.MCASP1_AFSX */
+			AM62PX_IOPAD(0x008c, PIN_OUTPUT, 2) /* (T25) GPMC0_WEn.MCASP1_AXR0 */
+			AM62PX_IOPAD(0x0084, PIN_INPUT, 2) /* (R25) GPMC0_ADVn_ALE.MCASP1_AXR2 */
+			AM62PX_IOPAD(0x00a0, PIN_OUTPUT, 1) /* (P24) GPMC0_WPn.AUDIO_EXT_REFCLK1 */
+		>;
+	};
+
 	pinctrl_mdio1: main-mdio1-default-pins {
 		pinctrl-single,pins = <
 			AM62PX_IOPAD(0x0160, PIN_OUTPUT, 0) /* (F17) MDIO0_MDC */
@@ -280,6 +335,23 @@ bluetooth {
 	};
 };
 
+&mcasp1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mcasp1>;
+	op-mode = <0>;  /* MCASP_IIS_MODE */
+	serial-dir = <  /* 0: INACTIVE, 1: TX, 2: RX */
+		1 0 2 0
+		0 0 0 0
+		0 0 0 0
+		0 0 0 0
+	>;
+	tdm-slots = <2>;
+	tx-num-evt = <0>;
+	rx-num-evt = <0>;
+	#sound-dai-cells = <0>;
+	status = "okay";
+};
+
 &sdhci0 {
 	/* On-module eMMC */
 	ti,driver-strength-ohm = <50>;
-- 
2.47.3


