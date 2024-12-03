Return-Path: <devicetree+bounces-126555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B81B59E1AA9
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B5DC165B95
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A97F81EC014;
	Tue,  3 Dec 2024 11:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Nx4o1wDE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CE81EBFE1
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733224437; cv=none; b=RuYjQOBtqO+QDauMOaCLZ2sa3PQDcLzEvEdl6QMYYhIR4aI2IpVVRyNN3yLSVJtfvokoLnoFBrNdkt21wlnu+o54a6vJg7zab39fq8lfey1baLzCQN/8DGq3/YJnZmd1EbhKT0XobiK9I+Ixgez5OzROVtEGldpRj4xDMsgEcw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733224437; c=relaxed/simple;
	bh=0RWKxWCQeAUkrUJFrLhqBUBh6lxnKv7/MFVIEYtMO+U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Gbwr9QIeJEVRNdLhIhhUq/JnyJ3aNk91MYEkcKXya1ArbWHilfgvHpFNODm57o2O9vRK73BBCSHMKAY5bXNfBH+WTgqn6KR111RAX6hA4WocUdni09JcEG7GEk2Y74yaqa8crWAYtMP17s8b/QZmhPBGEw95NNrT1Zvty3NwVpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Nx4o1wDE; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-385e35912f1so2500172f8f.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733224433; x=1733829233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i9XAExanV+siqAAbgBdWw0e9Y1JvqrWgK8obB5pD8Sk=;
        b=Nx4o1wDEcbhoSNmdPZiE7P7pEV4ju2GlNxz2KiS3SctIYgmE0C6CMSk3o1pCSsrj7m
         clZXwyFZTxyBUh3sxNU1E7V+mr9LakWIZhyXa6dH4TNtRBqmFk/WEsEaooBqKmg52Qv+
         63Zc0cZLAvGxTdRGpUHqYU0hsjpXHG3aMSmTdSzFhohpWjbMMU1tU7EiDi1u04sHQ49U
         OC99MbMon+jRgN1dZte3iW2Ij+Za1WToExy7gs/l74FxFCLnChd6sODFPuWR7OXuxyMC
         8fkfS7AfrwgNA5EeY9T4sreKlSzQd3VqsW/zArNHbIzNZ3Te2NUA3vvau/kgzHFhMLs3
         b7wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733224433; x=1733829233;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9XAExanV+siqAAbgBdWw0e9Y1JvqrWgK8obB5pD8Sk=;
        b=kNFo9tb5JarZfwFMWRc1NJe+49D1JPOlctIkWvj18KmRSiDiUYK1jvvi8PSCk+NOTY
         fGXTaGupvyESH+ABkMythuQP6RqROafTRiE63wv7VT74EAkYnPR9zqPHgI6sIjS1ql7j
         +nwKkoZKekOIcT8xmpl47OEzLYK+GiWmGCWP/A5u46wa1+o//w2IC//JJsANO9aA/OyN
         nKqalMOXFb/jlnjX6y3qYaQz3EvapI5B+kFZlNBPVYmbaQaXD8Nk3McG8qH4SK3Cv8Vg
         2XAjNPkBRmrckfNeBD7foDQYv4K7D6xBdOUd4I9I+Wf1iGoGJLH27sku79wALPw/aWei
         /KIA==
X-Forwarded-Encrypted: i=1; AJvYcCUCLq5OthjxD7z1m/XMvdfkD+LW3rbJYwyL2TfOoHd4llTnbdRydANz3zTSSxxiuTng3M74ab11+uuo@vger.kernel.org
X-Gm-Message-State: AOJu0YzdgyoYW64r+zUoJLRV3Y1jl/vdUL0/pNm1w1kwZiYynP9gK+lP
	K6ZoWo+O9yo0b1ck+ObT9OFFrPuLmwMGCxBDJ2fe+g4FJMUoRCEj7SQkOvoSaZQ=
X-Gm-Gg: ASbGncuSoUjs9RTBgJUURFVKLpmVO56ONgSeqLxUi2AzcPUXqUnsbA/MScX1MMoniBm
	ItEbYRvDdlN2+Iu6dtA7/xnwbb2eHoM/n1MpkYr7TQGC/BbX6jrn2MYgeQm+OPk+cs6jBaG05bU
	mL4r8q/Bzon9WcitOUb1+BAGtPIGYHPA+Oi8UgZIOfcC4bzjFP+7EliNT+HVrkgI1ooSnZyDFoo
	nYKYSwDPg4Wb1fhH8+pXDxN8s8Irt6Gvm5TMsN8mtDtlgL/a1J759BOUi5OJuQK2+qzF3nBVPez
	MwJm
X-Google-Smtp-Source: AGHT+IEKmVs+/nwio7D/PxwN9jwAmSI02uLtYHs9PSiGSHR3pj+ROWkZ8tyKGP6cC6ABLIzTcqNnGA==
X-Received: by 2002:a5d:6dae:0:b0:385:f560:7924 with SMTP id ffacd0b85a97d-385fd3c696dmr1336591f8f.4.1733224433588;
        Tue, 03 Dec 2024 03:13:53 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e0117069sm11794315f8f.60.2024.12.03.03.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:13:53 -0800 (PST)
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
Subject: [PATCH 13/14] arm64: dts: renesas: r9a08g045: Add ADC node
Date: Tue,  3 Dec 2024 13:13:13 +0200
Message-Id: <20241203111314.2420473-14-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
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


