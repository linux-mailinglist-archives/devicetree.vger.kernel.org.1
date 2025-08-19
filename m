Return-Path: <devicetree+bounces-206116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E623B2B8E3
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:44:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EE7C5817F9
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B28003115BD;
	Tue, 19 Aug 2025 05:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Fg5bO9GX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E06DD311583
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755582152; cv=none; b=DxwL1jwWcYxlGkuKX/UKZPOmOkRBUJIbKR25rb8YwDdhw2/HSFrmWtkOvtap/IbCVL9mZwPMInD7JOgfx+6qPgm7+cJK3/qOZkIxe9nZwFyqjOVU+mzXoCn8HP3EHcgJad7/A79upecaZrM06BcVYc+BYmEjqKC++DsOOaud3f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755582152; c=relaxed/simple;
	bh=zvYLqAOarWrfDuYAx8SvRiKVQASWxN64GJJN+491o7E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MlBETBaE/8gpC2oC7Qk22QexAO/hFDy1NsjhQlgT4Mo68mJJLzCKuNQ7e0tKqzcI2/Mi1I0dg2GJKqv+vjSUT4VsY9A5ziYkXkqdEUTaJVU2PVEKTI5JNiLbsf0oRNBxAZwz5ix/xcShCz4C9YCcG7RF67NDyPm1acfDfpu9ksk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Fg5bO9GX; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3b9edf504e6so2298719f8f.3
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 22:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755582149; x=1756186949; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Cj5e9ujZibB123jMncpAMtWn8qKgxY22z4IJdc5luY=;
        b=Fg5bO9GXFziXR7XobPwKop66uGSO4CHdIheuMlus+rlSUWgLXeCXdZOv/nhuX50dUK
         iHHOVhAOMfez/Cq4VDfWmPdp47Gb4ompESpvkmyOTQrl8nAJGuvFeaW9fArBINyYQdPq
         qT5RLVbPUqes1wzJKC0MNsrnfagnCm9M58WS1eNwXdNmYLtcm4X1MxAOVPvvddIlQetZ
         DL9PaEB9rdIh5p7be1WQiV/4vndhO/7QXmTAScQE3jIgz7LZqW+eXuxxR/FIrIWk7Eej
         RNkj82/+4iNUnHiS/oAzDvlAK6ibwjct7HSyWc+ZxOjbF6AAh9kQFsWDMAIOXjgGCsfE
         C2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755582149; x=1756186949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Cj5e9ujZibB123jMncpAMtWn8qKgxY22z4IJdc5luY=;
        b=LFTd31O8ZsjgYzq1fk+LwnsnZ3BJ4KIATbEdsaY1o4NWwn1uE7Mo8pzMkqmjRVdwA9
         FMrIHAHsMLXWBrdaU0rLRQNDMIGMkATXx+Dyb+7c6oEAlROpcfI+/adhnEnSgD2Zopva
         gSeSGGvUX9QXg5iM50HMv0YKnXAwxKyKvgMuLjID+yxN+h1mwJxTzZPwmYzeQ9XYB48S
         CSSKWQL0TbuEPOKwYEWwUlmeqIXDJ+fJ9WEHpoT9v975dv7E1qt4YSeTyJS8GNHuLzq+
         UKpY4IMcVHoPw0eFGLEY7LCiAGCpS6cYjPjAjjypk6L5f5ZSjZLRiuDrP9v85TRm60bB
         3NNw==
X-Forwarded-Encrypted: i=1; AJvYcCWjIgeoWyo2Sk3hsb8A9mrel8k1oKkCvv5Vdg/rzC1wlqbdLBjjCcUlFBEqwAL59tR3Iira4fOnM7SN@vger.kernel.org
X-Gm-Message-State: AOJu0YztYxAKMtzqFPkz9FGekfjeN3wqbCcddA/zi4ErEyX8mkw1+MMr
	MbYTHOTsORt6QhOY1jwA6sMVOn8XCr6fzCgJXcKdhdfOpjYVoEodRrvaM547UD2jo1k=
X-Gm-Gg: ASbGncszuM9SPFh95tFyA3eRnS7XEWkIV1xnOWvKpbDBXiW4L3dFnnT5OorFVZEzimf
	RRXp2tKZTTTxTPW9VfqlcsQ1djy8U+gmdZXcFm5KeQPwDoENlIojwdVEv1kRYW4m4URo6g0JNYh
	lSTpuyoftyK8Kwgt7gWpRfodE6fbaj2RK9UMUitMtStS7Mv4+2ZL/Ms2kT+1lAjSS7oaezZMCCJ
	YBHallB29lqldpqDeu+yqqG1hDO78ocAv6I5TgSs0zt9MutB0u0m9OZyw/3qZwJV6qrxQOBV0eW
	U6zQzJAntvW79IDNVKiASmi4Ovf5orPXxjOdnaVuEF9vNcjdsfsw74gOnLUblwaK03RKFfXA4nF
	/wq6l7+5ZYrgBiCkPs5YN5NveySzxGd/llMa+nlgHNVW4wd/DdvFTtupwWtiLJreInOqPL4kwBG
	b9peBhW/w=
X-Google-Smtp-Source: AGHT+IHFPZ1WYS1TRNOJs1PLvKhd+CAfSBA92Wzrc+e9qbctLs8+wOrzubrfZ9b75mBvHWVLfR187w==
X-Received: by 2002:a05:6000:288b:b0:3b7:8d33:81ea with SMTP id ffacd0b85a97d-3c0ebcc6e99mr669917f8f.29.1755582149270;
        Mon, 18 Aug 2025 22:42:29 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a9847fsm25097345e9.26.2025.08.18.22.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:42:28 -0700 (PDT)
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
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 6/7] arm64: dts: renesas: r9a08g045: Add USB support
Date: Tue, 19 Aug 2025 08:42:11 +0300
Message-ID: <20250819054212.486426-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- dropped renesas,sysc-signals from usb2_phy0, usb2_phy1 nodes
- s/renesas,sysc-signals/renesas,sysc-pwrrdy/g

Changes in v3:
- changed the nodes order to keep similar nodes toghether

Changes in v2:
- this was patch 14/16 in v1
- added renesas,sysc-signal properties to USB PHYs
- collected tags
- Geert: I kept your tag; please let me know if you consider otherwise 

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 118 +++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 0364f89776e6..b7ad6db0174b 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -681,6 +681,124 @@ eth1: ethernet@11c40000 {
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


