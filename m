Return-Path: <devicetree+bounces-230350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BC6C01A57
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:08:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3068F562785
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABC3B32B9B6;
	Thu, 23 Oct 2025 13:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dBRSuiGL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB45A32AAAC
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761227921; cv=none; b=YfyWC0tJlWqT90DzmMYobjzjMTDgkoLls8t9XQgbvpnwSWKwWevcHb07mfOu8ESjXUCCqSx65VgMavi0T9c30w/wfNAUYmCRSgW8SMVU1VXBaSkazUeCwyhoZ6RUpRABP113W0afv5DGGHz5LgK33VjQsB+rgN4uUhhTkTj7bbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761227921; c=relaxed/simple;
	bh=z87Wvt6YoFbSnJxC5WmES77DeHFkBXJ5qhn/nvHk1us=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rFSle5CQ3+CQoN44Rmjh6wGlSGOKlTXWJYBliI/TgDPt2Ny/Y7dipvBTSX8WNIrdj7tpthGkEnbENYfcit0y77u07mRJadjbdyLq2O+h6LW8NWoR4cUy0yJUfWzTs7GClXtHr6qtGkD2otJU6mVkeflrPW2d33QOZbcMVEughGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dBRSuiGL; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b403bb7843eso176975866b.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227917; x=1761832717; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S7yahp7GEuZbCGPELhsza9+agCEdI0nJz4aKJxPM9QA=;
        b=dBRSuiGLfzphdCAytCMQgTw4T55+g/voWCCSMTk4tQe/ZHva2hDPDuwntdrO8mHB/O
         6G3KAq6DeuPpf93lxwdf5tGkiapxsTHK8Gl8LPtgy6jo0IkQ3c3v+L7sSO2RW3GhR+ys
         +9YxBhG1pd5cOSAjZAO0JM8ngCvxOqCS/GNAzuSMnaZofkVKPd/W9aYBbjqIxa25i6SG
         ijELBvkFhJL8Jfy5kNDsnWYrYw3B2iw0tmfyJlwg3PEojtR7s0Z7xM44TaERsncdnimc
         MCLfmwMNL9LDzB0d2OUKHIErjLrAbwGjBB+ePnL23ad+MIww/Bve160dI6vEoaD38ytr
         vViw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227917; x=1761832717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S7yahp7GEuZbCGPELhsza9+agCEdI0nJz4aKJxPM9QA=;
        b=Kn3AR6qMaEYkIipVhe77ckU2ol33nFnZSXoA845YDVTpBlhqXdL/dWvGF4+uB6IOiM
         ftMe0Fa2Kiw0OsSAWBloomAoXxCNPgdkIG51IQiB8xU5BRefTD43+UUVAnyJtfc9Y7OB
         NQTiZR898hgZoZJV88K5zWEMkFVGOX8fqxVnpV5lenswGyujaRnQe5Ao+OpxJEJnLIzB
         S9VXir0c1v7iNJfh/KrBm6VkSKc4fCJzRjvTsGQapfBu7ZOuzyEEITvdVqMxwYgnsi7r
         +Juxj+GTRR9QxK+9NIKJ4B2n+spD1xPM3E45TNSzBH5jDe1CE78sWWPU/LFMvODyllJP
         6sCw==
X-Forwarded-Encrypted: i=1; AJvYcCXV2YtpI/989tBtOI5pJIC/8nlU4VUFw5rsIpabfOWog5RpEZH9t0ybiYjlVEGLkaS8sCutwBMx4cEh@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk/wQOahAF5orQ8yYRSnM9NTeF/EPRRRgNpgrH0YvZXEE5Vn2d
	YK7rIrsuHl7aIOx1j8G6UDqnkgBNvil9/XI4Djqn0NPZ4+qMQmUQznbtI4rDjfwSjRQ=
X-Gm-Gg: ASbGncvgBzeQGQgUM0Fqs9AbHFTaViAxz+48MYXXSGFm3u7D2N11q8Z9q4ct9J5Yt4d
	AYQsvvNFjJuKCmh3TqFghJ/2BYGKXyRB2esTblGUKuw5Cy+sdlwh1Utr4q5eHKlLmZjDYTvfvSL
	OKlmZkDd0aSLe3o1Yxxx5CbYVWmbzoKVbM/hlzkn0NCn6uWKKtVihdk09tNOkkkPMA5vxf4HEiY
	++Sk8XZVCf5Q1loz55hZ/YmFVZr6DYoF6oSF87co/WVBZkKQoVlQUpEp0qy6wIWX82OIU55Mr8t
	fG3CqbUKLWBQ06XMnnly/QB8mI5CDApePI1Vm0wUMUEJaSe/dxCFyfpJtDrKqR0YuQvjQY4mvgM
	zp1bFpjlTm1027sXTI0oCufNeOz9P+Iihb/4AHqBTg9Cn+wetsrGniI4TO5e8VytAP7+Y/Fjys7
	bIC2URMLOKM5Bsw0uIRnwlK+hkPTV7dQ==
X-Google-Smtp-Source: AGHT+IERQSaNZ8XWnCMAWS4myPYBzmO3iaaDa9WU1IStoe35MF/GtpgRwoWc/lAKsVo6nO1iKmmTLg==
X-Received: by 2002:a17:906:ef04:b0:b31:ec30:c678 with SMTP id a640c23a62f3a-b647482d9c3mr3234596766b.57.1761227917037;
        Thu, 23 Oct 2025 06:58:37 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:36 -0700 (PDT)
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
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v8 6/7] arm64: dts: renesas: r9a08g045: Add USB support
Date: Thu, 23 Oct 2025 16:58:09 +0300
Message-ID: <20251023135810.1688415-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add USB nodes for the Renesas RZ/G3S SoC. This consists of PHY reset,
host and device support.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- collected tags

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- dropped renesas,sysc-signals from usb2_phy0, usb2_phy1 nodes
- s/renesas,sysc-signals/renesas,sysc-pwrrdy/g

Changes in v3:
- changed the nodes order to keep similar nodes toghether

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 118 +++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index dd9c9c33d9d6..876de634908e 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -727,6 +727,124 @@ eth1: ethernet@11c40000 {
 			status = "disabled";
 		};
 
+		phyrst: usbphy-ctrl@11e00000 {
+			compatible = "renesas,r9a08g045-usbphy-ctrl";
+			reg = <0 0x11e00000 0 0x10000>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
+			resets = <&cpg R9A08G045_USB_PRESETN>;
+			power-domains = <&cpg>;
+			#reset-cells = <1>;
+			renesas,sysc-pwrrdy = <&sysc 0xd70 0x1>;
+			status = "disabled";
+
+			usb0_vbus_otg: regulator-vbus {
+				regulator-name = "vbus";
+			};
+		};
+
+		ohci0: usb@11e10000 {
+			compatible = "generic-ohci";
+			reg = <0 0x11e10000 0 0x100>;
+			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H0_HCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2H0_HRESETN>;
+			phys = <&usb2_phy0 1>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ohci1: usb@11e30000 {
+			compatible = "generic-ohci";
+			reg = <0 0x11e30000 0 0x100>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H1_HCLK>;
+			resets = <&phyrst 1>,
+				 <&cpg R9A08G045_USB_U2H1_HRESETN>;
+			phys = <&usb2_phy1 1>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ehci0: usb@11e10100 {
+			compatible = "generic-ehci";
+			reg = <0 0x11e10100 0 0x100>;
+			interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H0_HCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2H0_HRESETN>;
+			phys = <&usb2_phy0 2>;
+			phy-names = "usb";
+			companion = <&ohci0>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ehci1: usb@11e30100 {
+			compatible = "generic-ehci";
+			reg = <0 0x11e30100 0 0x100>;
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H1_HCLK>;
+			resets = <&phyrst 1>,
+				 <&cpg R9A08G045_USB_U2H1_HRESETN>;
+			phys = <&usb2_phy1 2>;
+			phy-names = "usb";
+			companion = <&ohci1>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		usb2_phy0: usb-phy@11e10200 {
+			compatible = "renesas,usb2-phy-r9a08g045";
+			reg = <0 0x11e10200 0 0x700>;
+			interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H0_HCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2H0_HRESETN>;
+			#phy-cells = <1>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		usb2_phy1: usb-phy@11e30200 {
+			compatible = "renesas,usb2-phy-r9a08g045";
+			reg = <0 0x11e30200 0 0x700>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H1_HCLK>;
+			resets = <&phyrst 1>,
+				 <&cpg R9A08G045_USB_U2H1_HRESETN>;
+			#phy-cells = <1>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		hsusb: usb@11e20000 {
+			compatible = "renesas,usbhs-r9a08g045",
+				     "renesas,rzg2l-usbhs";
+			reg = <0 0x11e20000 0 0x10000>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2P_EXR_CPUCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2P_EXL_SYSRST>;
+			renesas,buswait = <7>;
+			phys = <&usb2_phy0 3>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@12400000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <3>;
-- 
2.43.0


