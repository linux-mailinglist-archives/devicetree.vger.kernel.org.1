Return-Path: <devicetree+bounces-119358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D648D9BE0C9
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:26:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96D19281D17
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0521DFE0A;
	Wed,  6 Nov 2024 08:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lpYJSIL5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199AE1DFD8D
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881218; cv=none; b=OYk/+zngZ4UKWDAwTjW7+K6OaRtLEiqUk/7etN7d/xqfgvLVxAJzgwWPVnPn8kphQqtlxf9w1UlHwn9uwYUt0EEClmV2uAs5vHxbUkMVmB0slkSXkvs9P/ZmXL7ZgP/mH/ZUsFaFg/TQiTruDWvVNtk6+ATXnEj8rB61fRfKEtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881218; c=relaxed/simple;
	bh=LpIbzPFjwsAuKikvHGjeyiUJeiUOA++o8NTMXkHmCp8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CkZ5dzrudBJy0v6LjQXebADy8hNeD0v7q9r9OgSCHYEzV719mwLLg83fVvmZGNeR/ucqMbSyYaBUbCFvWRnyQPXURNGimU5+GBnhW23buhFuqlqeIbAQuXmB7CEjETgKH+Bmk0OV0OTaCcT9m4/zHfUeIKNnwnc1PdSqbKA1aC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lpYJSIL5; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a9acafdb745so120666766b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881214; x=1731486014; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k96qqoiSoAJXSyNkvAC1mj0FJdsWESn2VXmJGjv0jRM=;
        b=lpYJSIL5ULoVKQoBTye+7k3hrMwOuGiQQMWxgJLqMfl6JsiVEkc2Uy2ASSV3YrwaIc
         6i9SInFyWAOGc1SYipW0ugDeFdHqG/G45YG9AjJouJGGMHFBRv11+QlPDhQ8nxb5TNvj
         NVwHiAo2YO/959bEKbX1Gga6p9vCo/PRO6LtiGJZBUxyoAVw9RCNJPt3TCAt+PBbWC5N
         TU1pKsOJyWANp2+xY3g52o2YHACGnI/ZjXR1qIYjtuLcz0JZIzQPfbEVMHosyIpzg+8B
         DYbBAVW7sw0q9PdapCP7qzPOnMoQ0ZFpfc/kLNo9hGIg/qG7xkBhuVX7Wr8cWrwp0pyi
         0kOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881214; x=1731486014;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k96qqoiSoAJXSyNkvAC1mj0FJdsWESn2VXmJGjv0jRM=;
        b=RNYi3wE9KDS51I6FnbP08SuYogOd9XM8Ph9aTLm1iilJCmLlQSFuucIe/atP0YfYiM
         3qCFh+eWe2q64SKtSdQzPsjPjR4UjnFkpZqmmG1iXYCbaeeRt9uzejO0w+QHmikdCUkL
         HkRMDMn4CiExEynDItbpQjeCjmDE6c7+5VMQY2/SN1I0TzIPBbYFph4ttL2jo5AmuFJi
         AATrsveaDQJSnArXs4CXjOBzo/oZeXaKi9s6yViDlsNeb941jFmnnHS24xZiPWYKo3bN
         YMUrh/bG7vfjw5E9sEWgXYnZGT9bzycethpXGAGiNvDvUshjVG1jglSzddAuX9pkSQwV
         B2zw==
X-Forwarded-Encrypted: i=1; AJvYcCUc3aON4IHe9yC/gXnPdvxFAHUt6pcAv8Lgsrw63ckNx+ZFy4odbA0TOmobx+dR/cWfnIaPX53os0FR@vger.kernel.org
X-Gm-Message-State: AOJu0YzRnNFO6Pz5gumrgwjP1CroSEI93AZBh5ZlFA4pQpZ3JpipYHcR
	hkYup2rwsA0bJgsqR3GDRVSI98ZcOl7IIsL/Egvepw8aWUeoPDrQ5Jxo5K563cE=
X-Google-Smtp-Source: AGHT+IFejo83GtgXEStBFHu6ymQkjBmABkbjKG9E9Yg9klCKSbOtKr0rxTFD4KQNYRvY76euAWDCxQ==
X-Received: by 2002:a17:906:eec3:b0:a9e:c266:4e82 with SMTP id a640c23a62f3a-a9ec65d07b0mr182988666b.6.1730881214452;
        Wed, 06 Nov 2024 00:20:14 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:20:13 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	support.opensource@diasemi.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	Adam.Thomson.Opensource@diasemi.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 27/31] arm64: dts: renesas: r9a08g045: Add SSI nodes
Date: Wed,  6 Nov 2024 10:18:22 +0200
Message-Id: <20241106081826.1211088-28-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add DT nodes for the SSI IPs available on the Renesas RZ/G3S SoC. Along
with it external audio clocks were added. Board device tree could use it
and update the frequencies.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 96 ++++++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index be8a0a768c65..24c6388cd0d5 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -14,6 +14,22 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	audio_clk1: audio-clk1 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by boards that provide it. */
+		clock-frequency = <0>;
+		status = "disabled";
+	};
+
+	audio_clk2: audio-clk2 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by boards that provide it. */
+		clock-frequency = <0>;
+		status = "disabled";
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -187,6 +203,86 @@ i2c3: i2c@10090c00 {
 			status = "disabled";
 		};
 
+		ssi0: ssi@100a8000 {
+			compatible = "renesas,r9a08g045-ssi",
+				     "renesas,rz-ssi";
+			reg = <0 0x100a8000 0 0x400>;
+			interrupts = <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 241 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 242 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "int_req", "dma_rx", "dma_tx";
+			clocks = <&cpg CPG_MOD R9A08G045_SSI0_PCLK2>,
+				 <&cpg CPG_MOD R9A08G045_SSI0_PCLK_SFR>,
+				 <&audio_clk1>, <&audio_clk2>;
+			clock-names = "ssi", "ssi_sfr", "audio_clk1", "audio_clk2";
+			resets = <&cpg R9A08G045_SSI0_RST_M2_REG>;
+			dmas = <&dmac 0x2665>, <&dmac 0x2666>;
+			dma-names = "tx", "rx";
+			power-domains = <&cpg>;
+			#sound-dai-cells = <0>;
+			status = "disabled";
+		};
+
+		ssi1: ssi@100a8400 {
+			compatible = "renesas,r9a08g045-ssi",
+				     "renesas,rz-ssi";
+			reg = <0 0x100a8400 0 0x400>;
+			interrupts = <GIC_SPI 243 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 244 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 245 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "int_req", "dma_rx", "dma_tx";
+			clocks = <&cpg CPG_MOD R9A08G045_SSI1_PCLK2>,
+				 <&cpg CPG_MOD R9A08G045_SSI1_PCLK_SFR>,
+				 <&audio_clk1>, <&audio_clk2>;
+			clock-names = "ssi", "ssi_sfr", "audio_clk1", "audio_clk2";
+			resets = <&cpg R9A08G045_SSI1_RST_M2_REG>;
+			dmas = <&dmac 0x2669>, <&dmac 0x266a>;
+			dma-names = "tx", "rx";
+			power-domains = <&cpg>;
+			#sound-dai-cells = <0>;
+			status = "disabled";
+		};
+
+		ssi2: ssi@100a8800 {
+			compatible = "renesas,r9a08g045-ssi",
+				     "renesas,rz-ssi";
+			reg = <0 0x100a8800 0 0x400>;
+			interrupts = <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 247 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 248 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "int_req", "dma_rx", "dma_tx";
+			clocks = <&cpg CPG_MOD R9A08G045_SSI2_PCLK2>,
+				 <&cpg CPG_MOD R9A08G045_SSI2_PCLK_SFR>,
+				 <&audio_clk1>, <&audio_clk2>;
+			clock-names = "ssi", "ssi_sfr", "audio_clk1", "audio_clk2";
+			resets = <&cpg R9A08G045_SSI2_RST_M2_REG>;
+			dmas = <&dmac 0x266d>, <&dmac 0x266e>;
+			dma-names = "tx", "rx";
+			power-domains = <&cpg>;
+			#sound-dai-cells = <0>;
+			status = "disabled";
+		};
+
+		ssi3: ssi@100a8c00 {
+			compatible = "renesas,r9a08g045-ssi",
+				     "renesas,rz-ssi";
+			reg = <0 0x100a8c00 0 0x400>;
+			interrupts = <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 250 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 251 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "int_req", "dma_rx", "dma_tx";
+			clocks = <&cpg CPG_MOD R9A08G045_SSI3_PCLK2>,
+				 <&cpg CPG_MOD R9A08G045_SSI3_PCLK_SFR>,
+				 <&audio_clk1>, <&audio_clk2>;
+			clock-names = "ssi", "ssi_sfr", "audio_clk1", "audio_clk2";
+			resets = <&cpg R9A08G045_SSI3_RST_M2_REG>;
+			dmas = <&dmac 0x2671>, <&dmac 0x2672>;
+			dma-names = "tx", "rx";
+			power-domains = <&cpg>;
+			#sound-dai-cells = <0>;
+			status = "disabled";
+		};
+
 		cpg: clock-controller@11010000 {
 			compatible = "renesas,r9a08g045-cpg";
 			reg = <0 0x11010000 0 0x10000>;
-- 
2.39.2


