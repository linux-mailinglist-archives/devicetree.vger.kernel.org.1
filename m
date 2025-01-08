Return-Path: <devicetree+bounces-136500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32750A05664
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:12:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D21863A5467
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:11:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F29B1F76D6;
	Wed,  8 Jan 2025 09:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H68DIBoL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413A61F76D2;
	Wed,  8 Jan 2025 09:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736327416; cv=none; b=EROWEGSH66I6z+ZiQtxaLWGE3jMsrFR4IWQhKJ/rl57uXY8ETnDwjjLMItCSwiEsQEe15MvIyMf5Qh5nE6/BgHwQS/ELA6BMaJWP4+/FNrAjNPIQ69C0ap7kC0wZM3C7Ef7l5JK4MfqZ9bNyC/eNxSDCSRSEhaJEY6SNVs/8AIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736327416; c=relaxed/simple;
	bh=Z6xzM6WkCN7HyVNXVYylSHqW28xdbS4GEvTlM4S/byQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L26Zm6EQN49o4P8LRKWJ2RWZNe15+gWyH1aycgkPFzIZsWNrHmsv9zgbjDaNeA0AjZjw5Din/I4cUu5cM+BmJbDEhIC3BpGh/AQSj3u9zSHb7PpgOBBphosTn0Pq0OhmOEzIdy2vS9ENb8ULuU73JD3ULYBwcP6Hr0JTGPo+fAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H68DIBoL; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5401e6efffcso19069466e87.3;
        Wed, 08 Jan 2025 01:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736327412; x=1736932212; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vWGF2oM/vKIRGFx8hE5XmZ6u2ciBUKfkn2ZTbuVUqz0=;
        b=H68DIBoLE6oQQXYOciQqy7cTINcrD+pZThXWjEAYrAxLZvGbrl/v/R1QwO0WYmaNw7
         o0e4coyVYR13RLMi5wG4MmbHUsu9oXyRWnmxFTzZJf5ZDm/K42RYnKX7KTu6FJb7Jt0q
         mvWd3itbINaGOjhMXKth8YkiieIBVX7FvuSeF9luxd8tW5vo3z3xbal6lowfKTMLIJ7I
         Bxw09r/KD6bSF0iEq4n7FhsZpVpIWg5OanqXkAuL8evxwrMKIjiCXsJRr0RitqEnYEvq
         wbHTmjXNJIIp2yda7tIDvLNp5JTuLKAdbJfxlrXuFndEbUFEB5/Pg5bUtduatxzIr3fS
         UBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736327412; x=1736932212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vWGF2oM/vKIRGFx8hE5XmZ6u2ciBUKfkn2ZTbuVUqz0=;
        b=ujRjIMn1w3NvXXEtyZC5LhQG/mwmBSPS9XIHmyLCHD95VSdYmGjdsetGH6dIdfRHrE
         ++TnPg0WTXjrTISASoFko094e8cQM9Cz8d6RlY4Nz6t+dFFDuceaKcf4H8rsXyBgp0LN
         40V8xeOgM6oSbUcdDoGnWFRZK89RovuITQUpdW6kHOyM5kTtODTxwo2VP2wEAdEdDjZJ
         JpbxoF0/BOkk+c1mvOGlWi02C9mCxEkPq10Dps+mTuD33VohClijIjYBi+Avt3ZPK+xk
         G4yFyggBIBzyK7Kv/0rFNGOZ/r/lCMgry/n8aOJ/sKyGXUqaSVty3/+khcMLsTqDpuiL
         muJA==
X-Forwarded-Encrypted: i=1; AJvYcCU1/P+wVuRcuf5Tdnu47+Y4igZJOc3ayPYynamNXJ9TS++A/ohNKHe81AYceOdic3EjVa7uO1dLdoZLuYQ=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6c8TzrDxhsTYdfN273Bu9hSgR1v0YuncTIFBk/TqgSauGFrKY
	XhWTO3qWYY+015eLc/RQ/w7Iy+82aBilLk+9SV4OLVh24RFQuoa6
X-Gm-Gg: ASbGncunHwgCGc09DvWI/U4xxJ/CceOeWL38Ic/meN/Y1SMxt8gAtFgM/31B9V+hQ0w
	gzVWx/MrtsAUwqofJRn+41lTqkDVGG0hLJ1L0MovKhS/4VMpR1gEMMtzAAyd3UljkTbj7uTSI9l
	Dn324dB0aMdbis3utGIW6clSRFfmTiJgpeGAOYfCw/DAMTSvF2xrzjXJL/pGgQL/HnkMZX6hyh/
	MbM9qy2RyqBpoucLR3QHYkshnFQt5Z9JRJErZ1gChYO+22IFFnbfqYLFA==
X-Google-Smtp-Source: AGHT+IE74KEWQS4U1KXJtRslRHa2gJCLG/CfWtCHo6E7tvyAqKfRW6yylJE1lhY8SVxJKm4mBKxpAw==
X-Received: by 2002:a05:6512:304f:b0:542:238d:d71b with SMTP id 2adb3069b0e04-542845d9729mr539284e87.33.1736327411982;
        Wed, 08 Jan 2025 01:10:11 -0800 (PST)
Received: from [172.30.32.150] ([185.204.1.212])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813898sm5386450e87.154.2025.01.08.01.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:10:10 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 08 Jan 2025 13:09:07 +0400
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Add SPDIF nodes to RK3588(s)
 device trees
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250108-rk3588-h96-max-v58-v2-2-522301b905d6@gmail.com>
References: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
In-Reply-To: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736327393; l=5384;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=Z6xzM6WkCN7HyVNXVYylSHqW28xdbS4GEvTlM4S/byQ=;
 b=3n/miVwyrF26qJM3oldJ9q12mx9dCt6L3OUEIBspgLIoo9ucfSpST2R9u5jqNH046JrT2u4AZ
 lRx50WNr5zcCNiENXGg0bBzL07FCZv0UH8cAOOezEq+nnjSiAbq3ZpW
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=

RK3588s has four SPDIF transmitters, and the full RK3588 has six.
They are fully compatible to RK3568 ones. Add respective nodes
to .dtsi files.

Adapted from vendor sources at [1] and [2], respectively

[1] https://github.com/rockchip-linux/kernel/blob/develop-5.10/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
[2] https://github.com/rockchip-linux/kernel/blob/develop-5.10/arch/arm64/boot/dts/rockchip/rk3588.dtsi

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi  | 64 ++++++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 30 ++++++++++++
 2 files changed, 94 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 8cfa30837ce72581d0b513a8274ab0177eb5ae15..ff0c9191737b34979a408067df1a664dbe87395f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1318,6 +1318,21 @@ vop_mmu: iommu@fdd97e00 {
 		status = "disabled";
 	};
 
+	spdif_tx2: spdif-tx@fddb0000 {
+		compatible = "rockchip,rk3568-spdif";
+		reg = <0x0 0xfddb0000 0x0 0x1000>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		assigned-clocks = <&cru CLK_SPDIF2_DP0_SRC>;
+		clock-names = "mclk", "hclk";
+		clocks = <&cru MCLK_SPDIF2>, <&cru HCLK_SPDIF2_DP0>;
+		dma-names = "tx";
+		dmas = <&dmac1 6>;
+		interrupts = <GIC_SPI 195 IRQ_TYPE_LEVEL_HIGH 0>;
+		power-domains = <&power RK3588_PD_VO0>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s4_8ch: i2s@fddc0000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddc0000 0x0 0x1000>;
@@ -1335,6 +1350,21 @@ i2s4_8ch: i2s@fddc0000 {
 		status = "disabled";
 	};
 
+	spdif_tx3: spdif-tx@fdde0000 {
+		compatible = "rockchip,rk3568-spdif";
+		reg = <0x0 0xfdde0000 0x0 0x1000>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		assigned-clocks = <&cru CLK_SPDIF3_SRC>;
+		clock-names = "mclk", "hclk";
+		clocks = <&cru MCLK_SPDIF3>, <&cru HCLK_SPDIF3>;
+		dma-names = "tx";
+		dmas = <&dmac1 7>;
+		interrupts = <GIC_SPI 196 IRQ_TYPE_LEVEL_HIGH 0>;
+		power-domains = <&power RK3588_PD_VO1>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s5_8ch: i2s@fddf0000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddf0000 0x0 0x1000>;
@@ -2016,6 +2046,40 @@ &i2s3_sdi
 		status = "disabled";
 	};
 
+	spdif_tx0: spdif-tx@fe4e0000 {
+		compatible = "rockchip,rk3568-spdif";
+		reg = <0x0 0xfe4e0000 0x0 0x1000>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		assigned-clocks = <&cru CLK_SPDIF0_SRC>;
+		clock-names = "mclk", "hclk";
+		clocks = <&cru MCLK_SPDIF0>, <&cru HCLK_SPDIF0>;
+		dma-names = "tx";
+		dmas = <&dmac0 5>;
+		interrupts = <GIC_SPI 193 IRQ_TYPE_LEVEL_HIGH 0>;
+		pinctrl-0 = <&spdif0m0_tx>;
+		pinctrl-names = "default";
+		power-domains = <&power RK3588_PD_AUDIO>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
+	spdif_tx1: spdif-tx@fe4f0000 {
+		compatible = "rockchip,rk3568-spdif";
+		reg = <0x0 0xfe4f0000 0x0 0x1000>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		assigned-clocks = <&cru CLK_SPDIF1_SRC>;
+		clock-names = "mclk", "hclk";
+		clocks = <&cru MCLK_SPDIF1>, <&cru HCLK_SPDIF1>;
+		dma-names = "tx";
+		dmas = <&dmac1 5>;
+		interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_HIGH 0>;
+		pinctrl-0 = <&spdif1m0_tx>;
+		pinctrl-names = "default";
+		power-domains = <&power RK3588_PD_AUDIO>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@fe600000 {
 		compatible = "arm,gic-v3";
 		reg = <0x0 0xfe600000 0 0x10000>, /* GICD */
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 4a950907ea6f51c1d4123d52b73b726226db37bc..ba1bcd12c558847680aaaa2377d6d0a84fdaa1db 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -67,6 +67,21 @@ u2phy1_otg: otg-port {
 		};
 	};
 
+	spdif_tx5: spdif-tx@fddb8000 {
+		compatible = "rockchip,rk3568-spdif";
+		reg = <0x0 0xfddb8000 0x0 0x1000>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		assigned-clocks = <&cru CLK_SPDIF5_DP1_SRC>;
+		clock-names = "mclk", "hclk";
+		clocks = <&cru MCLK_SPDIF5>, <&cru HCLK_SPDIF5_DP1>;
+		dma-names = "tx";
+		dmas = <&dmac1 22>;
+		interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_HIGH 0>;
+		power-domains = <&power RK3588_PD_VO0>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s8_8ch: i2s@fddc8000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddc8000 0x0 0x1000>;
@@ -84,6 +99,21 @@ i2s8_8ch: i2s@fddc8000 {
 		status = "disabled";
 	};
 
+	spdif_tx4: spdif-tx@fdde8000 {
+		compatible = "rockchip,rk3568-spdif";
+		reg = <0x0 0xfdde8000 0x0 0x1000>;
+		assigned-clock-parents = <&cru PLL_AUPLL>;
+		assigned-clocks = <&cru CLK_SPDIF4_SRC>;
+		clock-names = "mclk", "hclk";
+		clocks = <&cru MCLK_SPDIF4>, <&cru HCLK_SPDIF4>;
+		dma-names = "tx";
+		dmas = <&dmac1 8>;
+		interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH 0>;
+		power-domains = <&power RK3588_PD_VO1>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s6_8ch: i2s@fddf4000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddf4000 0x0 0x1000>;

-- 
2.47.1


