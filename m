Return-Path: <devicetree+bounces-240168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C650EC6E26D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E07044E9D67
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08E49350A31;
	Wed, 19 Nov 2025 11:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Glt/Mssj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A97E834FF78
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763550318; cv=none; b=mfUTjCYwAC++PN2bf5mGdxEd4IlUnOzJGKE+tgz7Il6/5X/sLSbpxp1vPd8TUx/EDJLqtl5ktMTpRMs5fFCAcYd9oqGJc01oC+zl+/YAj6lpDcE5nIPwoOgCHUmGyKzkTtFnGPKm9jUba5qpi5fjvtxOxuSP0zma0PGqo4xRKf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763550318; c=relaxed/simple;
	bh=jlE85UOmiKCxG7AaOn4taqsUoXeArsmBVRjyTy2obLI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b1ttDSa8gcwqg6/ooIaUPxS83fWY3xMMaFOsqBlgqr3P7UGrcL7DkcdLotddvRp4+rhFzmhHSl9sudLY6EQOgVkfugiqrfe7CWgR5Wi901iJjWvazca9giQdNDHyL6px1lgECKa92HmeVu/JkIF3l6NvbfbXcy8gvnxI0cQh49M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Glt/Mssj; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477632d45c9so48745505e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763550313; x=1764155113; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKMpq40AdNKTD+u1Apey27TFOs4G/f8fv7XKiJyKv4w=;
        b=Glt/Mssjt3Wky1/E68pjDCyhPU4nO+YdviU0nxUNeWzVR8Gnbv8xehHLh8aCqUMk5l
         XWOEHrAXB5t1OG/TvNjN7WfWsT31ptclzmsoWoYJ8VAGO1C2Erm3oMRl97QXnkpA0PIO
         jP6wKlmYcEfboD3RTJwqt3vua9DF8ZK61k+dHwvMuLE5yaVX2S26l3zJicIJJtrQxu2f
         fjEiZBwefDHKZ4V3YULOe/ZsXFtff0a9ZUwDfEGWpXdkicHx6QDQZfq1u17nG0FjF2yh
         tHG16UgEtwiwJfJNqDe5iqmrmVKTfoLS3RbPjiO+Y1PQPYbxaoUECbuw50QoDrO/0Wxb
         OD6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763550313; x=1764155113;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PKMpq40AdNKTD+u1Apey27TFOs4G/f8fv7XKiJyKv4w=;
        b=EU99BCbqBUeGbJD2xOVdE9KmdV+KUXyUp2k47kWTHcA8EC3QNIHYiuXfr7TeU4Vj5w
         3DBbMl7sNrrb45IPxdl4KMpnX31IEWUQDq6wJ+8V2kpIgGUbc1FlB54AdOBrWuHU6DJ9
         cR1giIsrYDF540VOlbX782iu96FXSVpuTi2wL5ODUps4zaJ21Itgsta7s/trf27rDs4h
         znafQ4z0rfEfGyVx/ZrqB56SSqCS7wFqixq/biqCRKrK5j0Yg4h60fmC+s8WhFVC7D2A
         +OAdLnesP/tz0KdODYu6mQ1+USJBl6h33mIACJvesBUlGuWkB5DEVcY1wV1Y3i6TorfY
         nPhA==
X-Forwarded-Encrypted: i=1; AJvYcCVGUIW++YTRTsK3V12S+dbrjonULsZp5c4y4cIJHvP660Vtyr8ZXqJLGsrm4mdo+V/KC5FmQWY/EIWw@vger.kernel.org
X-Gm-Message-State: AOJu0YwPUfDUjdpRGwZFIgAme6b1Mb1cZqS/WR3UkOsJQbI56nRa2gfX
	hpq2T8wgMysR5zF5tYZ1RtvkZWFTFvfGgMaBKajoxMHtNoPoh5eq617j
X-Gm-Gg: ASbGncuFW8flFFvccJMm1cDGghvHPw5qUIVzaW18oQrKH7ELPMAzV4OsE1nINTLS68M
	/15MUiboTsw37PtSonSkeqI3ZoFnMG5kg9bOnr+MlXOHRzN7wzLWGQnDw5UplGrOkPf6+NqCzu3
	/3m73snnr4WtinpGSKiEE+2dyUwhu2uz8t9qPHO3GMLxv1hOF1UnnI+GasSLDR/1w7apZ43YDR6
	s61bK5QLIA4t2Pl1XAEC5UggqqkOgXvUnRfU5j4rq5sVRFSgEtkdJXDXJYJ0FV/Ms964ha+2RlG
	95vkMiuahwwd4H63Owa8Pkr7qS4ddcGDY77WCKkOTAPpADhcyAvn064tEHQEznoQKsynBIfgiaU
	HhGaELt6H1+XJIHurojhRiRxdhjco5j2FO2IbFD/X+jaU4Rf+ZDhHoSyW8WcXQzC4uwQvhtRmGQ
	ykENTlK3qvg5eG3jh9foxcQjrt4rLhT15AHEYrVHb6y4/gmIMXLYy/GkWz
X-Google-Smtp-Source: AGHT+IHu5sPPrzSzAGR1LYxwna4QUk846HAAxkgGN3SwcAL/QuSJh3I/wCL0YLgwnawVHiqyUD1klg==
X-Received: by 2002:a05:600c:4595:b0:45d:d8d6:7fcc with SMTP id 5b1f17b1804b1-4778fe88265mr180941805e9.27.1763550312582;
        Wed, 19 Nov 2025 03:05:12 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:4b7e:3ed7:e0b3:cf30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9d198a0sm39884505e9.1.2025.11.19.03.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 03:05:11 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/4] arm64: dts: renesas: r9a09g057: Add USB3 PHY/Host nodes
Date: Wed, 19 Nov 2025 11:05:02 +0000
Message-ID: <20251119110505.100253-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add USB3 PHY/Host nodes to RZ/V2H(P) ("R9A09G057") SoC DTSI.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 60 ++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
index 25b534bd5652..8b8ed4fbb599 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
@@ -1087,6 +1087,66 @@ usb21phyrst: usb21phy-reset@15840000 {
 			status = "disabled";
 		};
 
+		xhci0: usb@15850000 {
+			compatible = "renesas,r9a09g057-xhci", "renesas,r9a09g047-xhci";
+			reg = <0 0x15850000 0 0x10000>;
+			interrupts = <GIC_SPI 759 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 758 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 757 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 756 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 755 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "all", "smi", "hse", "pme", "xhc";
+			clocks = <&cpg CPG_MOD 0xaf>;
+			power-domains = <&cpg>;
+			resets = <&cpg 0xaa>;
+			phys = <&usb3_phy0>, <&usb3_phy0>;
+			phy-names = "usb2-phy", "usb3-phy";
+			status = "disabled";
+		};
+
+		xhci1: usb@15860000 {
+			compatible = "renesas,r9a09g057-xhci", "renesas,r9a09g047-xhci";
+			reg = <0 0x15860000 0 0x10000>;
+			interrupts = <GIC_SPI 764 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 763 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 762 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 760 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "all", "smi", "hse", "pme", "xhc";
+			clocks = <&cpg CPG_MOD 0xb1>;
+			power-domains = <&cpg>;
+			resets = <&cpg 0xab>;
+			phys = <&usb3_phy1>, <&usb3_phy1>;
+			phy-names = "usb2-phy", "usb3-phy";
+			status = "disabled";
+		};
+
+		usb3_phy0: usb-phy@15870000 {
+			compatible = "renesas,r9a09g057-usb3-phy", "renesas,r9a09g047-usb3-phy";
+			reg = <0 0x15870000 0 0x10000>;
+			clocks = <&cpg CPG_MOD 0xb0>,
+				 <&cpg CPG_CORE R9A09G057_USB3_0_CLKCORE>,
+				 <&cpg CPG_CORE R9A09G057_USB3_0_REF_ALT_CLK_P>;
+			clock-names = "pclk", "core", "ref_alt_clk_p";
+			power-domains = <&cpg>;
+			resets = <&cpg 0xaa>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		usb3_phy1: usb-phy@15880000 {
+			compatible = "renesas,r9a09g057-usb3-phy", "renesas,r9a09g047-usb3-phy";
+			reg = <0 0x15880000 0 0x10000>;
+			clocks = <&cpg CPG_MOD 0xb2>,
+				 <&cpg CPG_CORE R9A09G057_USB3_1_CLKCORE>,
+				 <&cpg CPG_CORE R9A09G057_USB3_1_REF_ALT_CLK_P>;
+			clock-names = "pclk", "core", "ref_alt_clk_p";
+			power-domains = <&cpg>;
+			resets = <&cpg 0xab>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		sdhi0: mmc@15c00000  {
 			compatible = "renesas,sdhi-r9a09g057";
 			reg = <0x0 0x15c00000 0 0x10000>;
-- 
2.51.2


