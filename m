Return-Path: <devicetree+bounces-33695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D57836160
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:25:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DBE12850D4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 404E04BAB5;
	Mon, 22 Jan 2024 11:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TzVucT57"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F464BA81
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705921918; cv=none; b=iKamZC9GMUHH/kVhw4G7bozliCUZ+aapQ/P3EAPB3Zgj+sz365cG4t/Pc8VaKAykmwQPfhEmA/PMqSeNz96D+Ni5pJ2f5PPfU+Orm2BUkBZ1/UAJ2DhoLIKdAep6ktmY+zdzj36ykKuAo29/IgHhE++kBAHFFn+utehC5K5pWhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705921918; c=relaxed/simple;
	bh=qazOWi0/wkt4tNXD2u9ZsGRjtDApxIhQD3uVv18+fTs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=REN7ETDAcZdNVyolPAXk5tIZO3QNLKqJbLbhKT54WE6jHsiXKNSPtIw1MN+k01DnvzB/cn4syNpTk9FLKpaHuVxLfc+hDMEHHc/UYpxiohKFODyztVzsm2DuJOOSGYa/n4/uquy2PRhuFPBF45663Ix63epmlKd1hupt0xJNulM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TzVucT57; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-55a45a453eeso3644608a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1705921913; x=1706526713; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1/yq0en0upSEiAFhoOCAc7XTDKkkXSUYjmotseXuMY0=;
        b=TzVucT57GuzCZ/o9Mqn7+j8sbMO9dejDsUv5xMCdHDZAEednUbWTQEG8P0uwz+gHCH
         tdtOCUqkZzs7egq1iz/eFt/YEXU7YOJbwmezrg/q9P5iQlqq7pdqhdgrj2JTJWT6fhTq
         PFpoOW7o7fJaSZaE3TXTM2bYRJUT8E69dC+yKSNCJtENxLju0X0WTcws/S5bDKHYxD2m
         80Z41aBIJJXeRaj1uiVcooCeZl7ju4OgJsBCEh8rCKKlRknoVTGIAkEbmD+ypbAjDRfu
         NW7pZtX/3OKk1L+BJ5J4GGJVBlFsPL7rPEwa5RFghIq4AfsrFvvmKjEhdBHhDAgHhfcW
         974Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705921913; x=1706526713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1/yq0en0upSEiAFhoOCAc7XTDKkkXSUYjmotseXuMY0=;
        b=wUBaoCOTvMRYNrR13uymZluJq8YcWkM4mT2TNy9YrEgm/WTYoVtnALmClurp4xJ32w
         UKDVVygg2WjX+UIh7CuAbIGAjJVBjxGMVlhIaltGoar1UXxJIUXMp53Pg2NB9Bs7s+Rs
         u2jhxn9crBwzam6y5bkwrxxvGvLbwB9TDIh1jOhoQzEkoTF6dn0R13xwoOEVBFK2ozCt
         +yqvQEfwjvUb7gxgH4vXwdI5g6FpYG2B6f2Z62NZpqQ1dSYEAG5vaXzLJu4zFuO/h9Iz
         EjX6MmHSAGxKwmYMbbHYVzgY7pmkJWoE/Q4hCjduXOgLTH1p5AA1HoWcxqC0VQKpd4Mf
         fT/w==
X-Gm-Message-State: AOJu0Yz0Wh3ME65Lnm+5dFx/uNaNXSZc9n33Zc7QSFHXtIvAEQs71L6K
	B8wWzbKWPp/OOeuXgiCPaGUp4XkfeC7f7ifDU0lrzUx5EfeiUowTcNENsBN+p24=
X-Google-Smtp-Source: AGHT+IFrorgV8xW2A5dJ9RhzKCiKxJHzvqYy39TZW4Gdx74LkKiO1Q8pZsRwPvYENyXdxM0Y7A7ntg==
X-Received: by 2002:a50:9e8e:0:b0:55a:64ed:e34b with SMTP id a14-20020a509e8e000000b0055a64ede34bmr2002822edf.39.1705921913726;
        Mon, 22 Jan 2024 03:11:53 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.135])
        by smtp.gmail.com with ESMTPSA id t34-20020a056402242200b0055823c2ae17sm14194241eda.64.2024.01.22.03.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 03:11:53 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 09/10] arm64: dts: renesas: r9a08g045: Add watchdog node
Date: Mon, 22 Jan 2024 13:11:14 +0200
Message-Id: <20240122111115.2861835-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240122111115.2861835-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240122111115.2861835-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add the DT node for the watchdog IP accessible by Cortex-A of RZ/G3S
SoC (R9108G045).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 02fd68b06eea..19bbcae01d80 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -269,6 +269,20 @@ gic: interrupt-controller@12400000 {
 			      <0x0 0x12440000 0 0x60000>;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
 		};
+
+		wdt0: watchdog@12800800 {
+			compatible = "renesas,r9a08g045-wdt", "renesas,rzg2l-wdt";
+			reg = <0 0x12800800 0 0x400>;
+			clocks = <&cpg CPG_MOD R9A08G045_WDT0_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_WDT0_CLK>;
+			clock-names = "pclk", "oscclk";
+			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "wdt", "perrout";
+			resets = <&cpg R9A08G045_WDT0_PRESETN>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
 	};
 
 	timer {
-- 
2.39.2


