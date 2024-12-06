Return-Path: <devicetree+bounces-127966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DA09E6D1E
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D8B916773D
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72F972066EA;
	Fri,  6 Dec 2024 11:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="O/DzIXZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0653204F91
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483662; cv=none; b=Jf7Y+wbbnfYBTFz0kyokR4nHyRkKHkgTRildZUrnUDKyenObN+rNVwhEELbV0mfXeiv6d4LgYrAO3fYH0WPrPiLmxBA1NpvJ/rk89raiaSj+X/P2rL0lp8KvfWk4Cxr1BLrk8YLjgGribqEIjapSpkOJp1fcNCcxsY1yK80Txbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483662; c=relaxed/simple;
	bh=k6RYl4HHJUltxEdvGU/+maC6QDo0j1srIvB9wl/UUgs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=N5cYR+4l2KVuXMNu0nD7UHqcZvtFKjwZsJ9RGn32D9U7ZNVklVnxwUC2+yHxccgT6cOm+nrKoDC1GXxc3m3Xh9xZ/yb32jRoUQCCoGbxVtQQ1PaKuEbUgYzVLFnkzuHzfQnH5vQhpYZ16p58g+iyKwUo2vwRRpBMkXbnSB0utwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=O/DzIXZm; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa549d9dffdso280191666b.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483659; x=1734088459; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iFCyto6njNpoAkuMysILtuSD/dfeIfCHeW4EjJllGlU=;
        b=O/DzIXZmwkX0i93A3+iL4GxA5PUZ4biXdFVEanjgqHaxP2uRiI0mZmvnExjlxUKvZc
         Ea7vCb9jdG98JaqXn5GGTxR9DFXmipTPkzeUhdRFX9h0uVQLcOulp/c9GiFasF6zadjl
         1L5KwJE7o+MXYLd4zMkxzS3nmBhbj3tgrpcTx7dAC6Vw0MOV1CbJ5UHJFdf+Mw19pdeN
         T96x6knK+REJq++MKkJEX/T7GlyYJwQnztS2Go2zPmIbY1cYQFer33mFFtflWuJW5FUe
         1LNCrCzpGLSFxpfjO98xf/7ZGv0c5Avlp0pcNdgDnovqnXV/2cys8NTfYfmDIP408ka+
         8Gyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483659; x=1734088459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iFCyto6njNpoAkuMysILtuSD/dfeIfCHeW4EjJllGlU=;
        b=Aak55zLvAClTJUqGGnIJBvh/ZWYgP9RI+XkkRa/ajKPAMfHgGxA4BYaCxGyqrcyDlq
         kL9johU29oIrm8X2iqjvwqq6c90PwkcNLsb3tcovC+dscvpNBv/YG6cuesB43iteUXTd
         5YiZIDYtEmAPbSiZ2m28lSqhe+QkMdNEvAljx0hDZfgxMDiFg7JQlE9Jk75qoCibvwGO
         +Sq77kfYA+lob3nVJXeT3aiSu553H4eQu/XWh4gmRkU3l4Isce0qeFpBMExgM9dYUV8T
         h3buPtso6TvYeEL4tsPRUuz/+Gg2BevR8Z+ME2sMCdesRtxffNJw/JW0fIFvvk5cCwdh
         un5w==
X-Forwarded-Encrypted: i=1; AJvYcCUaDAG232c7b712kELGrD1K+LWhzUkzkOfTWXAYIq2KOqG6ttV9k1j37omLUw7Mej6fRc8Q4vMHgcd9@vger.kernel.org
X-Gm-Message-State: AOJu0YwBAKKiOs8a8XOXPBvcdZpnZjjw5qRr/Vqar6lfk6ytF7rZHWyn
	uM+gLGpnJND0U3Nr9jreK17mOLlPOWuUmhGVSQdcL7Wc3zdRQd0MIR8K3Vc9hF0=
X-Gm-Gg: ASbGncuMAgftZYYq9aharoonHo+F/bkZ/bguZ6dbKsTvIZtuoAeHtbaqDfVbH1V95LT
	/HYGy7tyWOQY7Hzzz2CLoroRO8bMHtwcHL6z6VQtiJZzwynTJfGFVq4lXVFRDjoH3Y6p6K2/2Dk
	pbuVNr7q+h/rGvZQss4RU+R6fhZ8u5MhfxveqKah1ngWGqOYkuzPqLbos2LpybyFfj8BQOeVGaW
	D4543P6xdqiYkqmRu4f0ACPAmOsCLq3OJHcPArFYCydyrCcoEKZDAWfEaRyACHf+ceFbJGL0NJI
	szls
X-Google-Smtp-Source: AGHT+IF8K/WU6hQLOeMVWhzwcTVS0WLZFH6PaGYPfojVpOBWvreAqVKSNqVp/mmguRkGijNh7B7IJQ==
X-Received: by 2002:a17:907:7850:b0:aa5:f288:e7e3 with SMTP id a640c23a62f3a-aa639fed04fmr165508366b.15.1733483659089;
        Fri, 06 Dec 2024 03:14:19 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:14:18 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-iio@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 14/15] arm64: dts: renesas: r9a08g045: Add ADC node
Date: Fri,  6 Dec 2024 13:13:36 +0200
Message-Id: <20241206111337.726244-15-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add the device tree node for the ADC IP available on the Renesas RZ/G3S
SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 53 ++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index be8a0a768c65..eb57a52d2086 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -87,6 +87,59 @@ rtc: rtc@1004ec00 {
 			status = "disabled";
 		};
 
+		adc: adc@10058000 {
+			compatible = "renesas,r9a08g045-adc";
+			reg = <0 0x10058000 0 0x400>;
+			interrupts = <GIC_SPI 312 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&cpg CPG_MOD R9A08G045_ADC_ADCLK>,
+				 <&cpg CPG_MOD R9A08G045_ADC_PCLK>;
+			clock-names = "adclk", "pclk";
+			resets = <&cpg R9A08G045_ADC_PRESETN>,
+				 <&cpg R9A08G045_ADC_ADRST_N>;
+			reset-names = "presetn", "adrst-n";
+			power-domains = <&cpg>;
+			#io-channel-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+
+			channel@0 {
+				reg = <0>;
+			};
+
+			channel@1 {
+				reg = <1>;
+			};
+
+			channel@2 {
+				reg = <2>;
+			};
+
+			channel@3 {
+				reg = <3>;
+			};
+
+			channel@4 {
+				reg = <4>;
+			};
+
+			channel@5 {
+				reg = <5>;
+			};
+
+			channel@6 {
+				reg = <6>;
+			};
+
+			channel@7 {
+				reg = <7>;
+			};
+
+			channel@8 {
+				reg = <8>;
+			};
+		};
+
 		vbattb: clock-controller@1005c000 {
 			compatible = "renesas,r9a08g045-vbattb";
 			reg = <0 0x1005c000 0 0x1000>;
-- 
2.39.2


