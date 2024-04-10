Return-Path: <devicetree+bounces-57891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D39F89F23E
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:29:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC6591F214E5
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDD0F15FA60;
	Wed, 10 Apr 2024 12:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Og8ORC8D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F9315F3FC
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712752048; cv=none; b=aNR57szV0sSU/sBIP7rlosXrqssHZAcHZkr2jHKiILN6IATdkrn6TesieSblgfHjZoSlchC2fNuyX7g/YwhrCmzFLMzd1t2O8H5RK+Wzc+9hruwephmpxAw5IK3eW2heYQb99MFmfMDnocDQFxAJN0WI1BVCkloKRc51xdiARlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712752048; c=relaxed/simple;
	bh=86Zihs4RD1hn6SrBjcfMhYZUXFU5WO3C6czkJe0WKBI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LXmCjEY02Bg+bAuQQLOS6KK+mFIMpH9UC1aChbnMZytEzf0WweQAobdnZWpMO/QEvl+MC60q0fgZsxKevaCNQz6gtOEZWqfVks4x4kYC82liZmehSppdjnVPl32jnvObAz5PVhBrfj76DX8TZUb/9KCmdrvQLVzBQ3e+1AQJooc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Og8ORC8D; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-416b5f6813cso15155145e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712752045; x=1713356845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m3u5zjVGbS3GaFiOQIAkLCz3dMJ6JpJB8ancu8bBNik=;
        b=Og8ORC8D138kesg0fVepRqkgRqRlWqkGijZKAa0SIfY90DejVv+e/aPXi6G78Sk7qZ
         yobZJkU5Bt3lJ1Xwbzp56H3UqNGt22wDQiIFjfMmGj4Yys29CiFaP64+ou9P1Js7sv+T
         PwujRf4HLaV54ro8F6KR5ex1kr9l/3o8Qmp9XrsROlklSsxxqp+mXooVS6CBaJ59SEDs
         pAIpyGjjyWmge6d6cRUYxdFAz4hL6olNzJ5k/JUQHLtuk2WFxTH/qNrMTfPQeIWqYlME
         rUUjfHHtWYilfbsLvPWuziY0aWKdw0idXuaFn02TDFr1zBkStojs7sTAughWUfvoG0IM
         jrOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712752045; x=1713356845;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m3u5zjVGbS3GaFiOQIAkLCz3dMJ6JpJB8ancu8bBNik=;
        b=CjMLfF0nkrmnrHVYi2FzlFLxFz9xSxPYawv/QpYP2JEN6mafQef6bqaOAeZ2HZV38y
         cSStm96Lvytafaf3eIB/Sl7rw+z40sGvXaU6PTqapMGET6CfGj2aFNH5cT9BuGGUnHIw
         aHavo27HGg60qZyXOoqt9v3TpV21kxi4yT2XbsfWT4IW5do+K4VZYtkfbfG+e/vpz0mU
         aJQMB4XZ5jAc2eBdxCRRYZ00T4KbHpbYxG6GWJ+hZ6pPHGUVBWMYJcLst4jhuu7ZeW2P
         jUk1i8QvGmVmKaXYrDksPaj+dj3GITs4/WEXIE4ZARJ6bM/g+W8EbQiAErx09CUYGUQA
         fmfg==
X-Forwarded-Encrypted: i=1; AJvYcCWxFzH80YWSdlj3smTJHL8Xxkmx984B7vJ9PfDgXXLNoTbdCydvda9ELmSMHSk6Dk7idS2onyaEeslElXNJ3n6XZdDxp8+ugfbyJw==
X-Gm-Message-State: AOJu0YyG/hJzGkv6XOuZLiHudh02hrkATS9PNYx8/cJfwvbjpiEM7OkY
	fZVBo+KoKhb83lwMjeBgqf6O3s9mxHV5KK0OgYdMLU2RNfsverExjHzCnBZrd5w=
X-Google-Smtp-Source: AGHT+IGldfn3q9XuKDouDY4NU4Zhmr0AFphI9W+EuFxgSw1Y0oiZ+SkBqR9dQCKsZKP30Y0nhzRM/g==
X-Received: by 2002:a05:600c:198c:b0:416:6b95:c631 with SMTP id t12-20020a05600c198c00b004166b95c631mr2389838wmq.6.1712752045344;
        Wed, 10 Apr 2024 05:27:25 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c3b0200b004171f151a5csm1679446wms.16.2024.04.10.05.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 05:27:24 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 9/9] arm64: dts: renesas: r9a08g045: Update #power-domain-cells = <1>
Date: Wed, 10 Apr 2024 15:26:57 +0300
Message-Id: <20240410122657.2051132-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Update CPG #power-domain-cells = <1> and move all the IPs to be part of the
IP specific power domain as the driver has been modified to support
multiple power domains.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- collected tags

Changes in v2:
- used proper domain ID for IA55 interrupt controller

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index f5f3f4f4c8d6..bdd4f9376fc0 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -67,7 +67,7 @@ scif0: serial@1004b800 {
 					  "bri", "dri", "tei";
 			clocks = <&cpg CPG_MOD R9A08G045_SCIF0_CLK_PCK>;
 			clock-names = "fck";
-			power-domains = <&cpg>;
+			power-domains = <&cpg R9A08G045_PD_SCIF0>;
 			resets = <&cpg R9A08G045_SCIF0_RST_SYSTEM_N>;
 			status = "disabled";
 		};
@@ -79,7 +79,7 @@ cpg: clock-controller@11010000 {
 			clock-names = "extal";
 			#clock-cells = <2>;
 			#reset-cells = <1>;
-			#power-domain-cells = <0>;
+			#power-domain-cells = <1>;
 		};
 
 		sysc: system-controller@11020000 {
@@ -104,7 +104,7 @@ pinctrl: pinctrl@11030000 {
 			interrupt-parent = <&irqc>;
 			gpio-ranges = <&pinctrl 0 0 152>;
 			clocks = <&cpg CPG_MOD R9A08G045_GPIO_HCLK>;
-			power-domains = <&cpg>;
+			power-domains = <&cpg R9A08G045_PD_ALWAYS_ON>;
 			resets = <&cpg R9A08G045_GPIO_RSTN>,
 				 <&cpg R9A08G045_GPIO_PORT_RESETN>,
 				 <&cpg R9A08G045_GPIO_SPARE_RESETN>;
@@ -177,7 +177,7 @@ irqc: interrupt-controller@11050000 {
 			clocks = <&cpg CPG_MOD R9A08G045_IA55_CLK>,
 				 <&cpg CPG_MOD R9A08G045_IA55_PCLK>;
 			clock-names = "clk", "pclk";
-			power-domains = <&cpg>;
+			power-domains = <&cpg R9A08G045_PD_IA55>;
 			resets = <&cpg R9A08G045_IA55_RESETN>;
 		};
 
@@ -192,7 +192,7 @@ sdhi0: mmc@11c00000  {
 				 <&cpg CPG_MOD R9A08G045_SDHI0_ACLK>;
 			clock-names = "core", "clkh", "cd", "aclk";
 			resets = <&cpg R9A08G045_SDHI0_IXRST>;
-			power-domains = <&cpg>;
+			power-domains = <&cpg R9A08G045_PD_SDHI0>;
 			status = "disabled";
 		};
 
@@ -207,7 +207,7 @@ sdhi1: mmc@11c10000 {
 				 <&cpg CPG_MOD R9A08G045_SDHI1_ACLK>;
 			clock-names = "core", "clkh", "cd", "aclk";
 			resets = <&cpg R9A08G045_SDHI1_IXRST>;
-			power-domains = <&cpg>;
+			power-domains = <&cpg R9A08G045_PD_SDHI1>;
 			status = "disabled";
 		};
 
@@ -222,7 +222,7 @@ sdhi2: mmc@11c20000 {
 				 <&cpg CPG_MOD R9A08G045_SDHI2_ACLK>;
 			clock-names = "core", "clkh", "cd", "aclk";
 			resets = <&cpg R9A08G045_SDHI2_IXRST>;
-			power-domains = <&cpg>;
+			power-domains = <&cpg R9A08G045_PD_SDHI2>;
 			status = "disabled";
 		};
 
@@ -239,7 +239,7 @@ eth0: ethernet@11c30000 {
 				 <&cpg CPG_MOD R9A08G045_ETH0_REFCLK>;
 			clock-names = "axi", "chi", "refclk";
 			resets = <&cpg R9A08G045_ETH0_RST_HW_N>;
-			power-domains = <&cpg>;
+			power-domains = <&cpg R9A08G045_PD_ETHER0>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";
@@ -258,7 +258,7 @@ eth1: ethernet@11c40000 {
 				 <&cpg CPG_MOD R9A08G045_ETH1_REFCLK>;
 			clock-names = "axi", "chi", "refclk";
 			resets = <&cpg R9A08G045_ETH1_RST_HW_N>;
-			power-domains = <&cpg>;
+			power-domains = <&cpg R9A08G045_PD_ETHER1>;
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";
@@ -284,7 +284,7 @@ wdt0: watchdog@12800800 {
 				     <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "wdt", "perrout";
 			resets = <&cpg R9A08G045_WDT0_PRESETN>;
-			power-domains = <&cpg>;
+			power-domains = <&cpg R9A08G045_PD_WDT0>;
 			status = "disabled";
 		};
 	};
-- 
2.39.2


