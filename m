Return-Path: <devicetree+bounces-98445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F30966252
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 15:04:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 351C41F25963
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 13:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D151B2527;
	Fri, 30 Aug 2024 13:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Cr829d5Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD8E1B2515
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 13:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725022970; cv=none; b=G1he0MaAxrQ+9QwOAUBidkTNdkPzpefEHZu/5F/1N3poKm+0vBiQKaOaILP4qViSpk4DF8e3/snqE6k9Ps+O78PBSysMZco6uUAjUpCa2hoVgYRkUQAGRQDM8/PF+pW1fDxGN+Ko86JlLj2JTIMLLZYVuZFCsXYgf0m2+qJSGrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725022970; c=relaxed/simple;
	bh=Kn8JY+f5fHXbVdAysJnh2gUAir0at5VP87GfCZJ8SYE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HCTGBisMs0R1EapmJsrBUliymMoQl5URMKaN7Hqf1O8N8OQcSE8scuihp9OKVn/6w1/9tTD9afhzgL8j4Rt/tQB4CX1joNqCqH5oO9JJwGOtH9AqN4rNFJsEWcBiFOX9S/aJRAzDLVYQxTTK5DPX/aDhRqUvmklYe17fdwfXX6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Cr829d5Z; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2f409c87b07so21940171fa.0
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 06:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725022967; x=1725627767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ukqX5sC9LJpcoIMKohkjjIWRhtJZ817S3qSAcOa4kZM=;
        b=Cr829d5Zt41qpIs9ViBHVJeEeQFYIdWlS9cKMccjC6960HVWXZ1YpyXYmf3gjnhKoN
         n/BxzTPyaXTLy4HQsZ1R6jUUnutMsGbN6GQMQApm+h5hmz0ra4nANN6akw/2OwQJKhtI
         CHgsMET93HrYX5+pX7yggpmC12uECH/RcIurf0u2NFv1pChNz5GX6eynhslWC+rklUee
         IgYtFaBOldVIrkDT369zYdeq8hq0C3wQc1doN4mY5WdDkHij441V0JWHD1hn3jL7TpIJ
         4efGq6cA6srmfYbwtvRxOwjhQECe6p12oaVrH7ZRzbrEx6oq8dKI6OWDIN2tV6wQt+BQ
         ehMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725022967; x=1725627767;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ukqX5sC9LJpcoIMKohkjjIWRhtJZ817S3qSAcOa4kZM=;
        b=rgR/Z14pw5i8TWS3cbgv2uH3CaymtWAEzJHunKzq7WR/R8hQpnvDtGQZJWITeTaSyb
         BuranQbN3xMIdmZW2pGSJ7ZqkRVp8/BPuV8cGXk/sbeA1LSjLSXQc2evMXCLftV82GbM
         SgW9lbE/qjYS9OQGmp7aazZERytHRsc8TX1+edwbqSvfcKOZxAXgzV+yYz9EACd21aVq
         AI7af0PNBTJdxmaXX+AO0mtK5dAOxVSKZi4Hfn++naYD7yAMaTt6LKTSxnj0UNf1tAr0
         ELaKvuc4z/Pr+3NL24aiXj1fArIWUkZ0n4zC/jFrYfEK87F0w81w5PCLeKD+V/ya1dpE
         wgkA==
X-Forwarded-Encrypted: i=1; AJvYcCWLm3ZdcLMRBImhU8R2LFM8+7p5VveM0TfEZ0Ii8s58bz0DrY81MOEh5T1uWdfH7p/9Wq4dzBbaw6ts@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0CNQyQsJZbgh3KjQ8kF3Jxje6is3xQT4f/OlZSVpXF8wJ2FCr
	jcE5OVfsJmeXc3oq4BqLXQx/y3AbKtM8WxiJqfOTZ19FAj8uYKK2V3tVdi/wV/g=
X-Google-Smtp-Source: AGHT+IF9cc2jwjLzI4jgE1O9TLs1SvEtqqWHN58dUrodIH74E0JWxf1LOzmgmFTE6AuLu3nFrEl8sQ==
X-Received: by 2002:a05:6512:15a0:b0:530:ac0a:15e8 with SMTP id 2adb3069b0e04-53546af3fb5mr1440203e87.11.1725022965066;
        Fri, 30 Aug 2024 06:02:45 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba642594dsm80361785e9.47.2024.08.30.06.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 06:02:44 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 07/12] arm64: dts: renesas: r9a08g045: Add VBATTB node
Date: Fri, 30 Aug 2024 16:02:13 +0300
Message-Id: <20240830130218.3377060-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240830130218.3377060-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240830130218.3377060-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add the DT node for the VBATTB IP along with DT bindings for the clock
it provides.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- dropped the child nodes of vbattb; along with this dropped ranges,
  interrupt-names, #address-cells, #size-cells
- added vbattb_xtal as input clock for vbattb

Changes in v2:
- update compatibles
- updated clocks and clock-names for clock-controller node
- removed the power domain from the clock-controller as this is
  controlled by parent node in v2

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 067a26a66c24..247fa80a4f53 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -160,6 +160,18 @@ i2c3: i2c@10090c00 {
 			status = "disabled";
 		};
 
+		vbattb: vbattb@1005c000 {
+			compatible = "renesas,r9a08g045-vbattb";
+			reg = <0 0x1005c000 0 0x1000>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>, <&vbattb_xtal>;
+			clock-names = "bclk", "rtx";
+			#clock-cells = <1>;
+			power-domains = <&cpg>;
+			resets = <&cpg R9A08G045_VBAT_BRESETN>;
+			status = "disabled";
+		};
+
 		cpg: clock-controller@11010000 {
 			compatible = "renesas,r9a08g045-cpg";
 			reg = <0 0x11010000 0 0x10000>;
@@ -425,4 +437,11 @@ timer {
 		interrupt-names = "sec-phys", "phys", "virt", "hyp-phys",
 				  "hyp-virt";
 	};
+
+	vbattb_xtal: vbattb-xtal {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		/* This value must be overridden by the board. */
+		clock-frequency = <0>;
+	};
 };
-- 
2.39.2


