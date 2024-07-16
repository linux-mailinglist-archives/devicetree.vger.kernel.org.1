Return-Path: <devicetree+bounces-86051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AF1932400
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:31:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83E8D1C217DB
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A22B19939F;
	Tue, 16 Jul 2024 10:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Ml3wGY/9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE8619938A
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 10:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721125849; cv=none; b=G6yGTk5T+PnhHxL/6oew76mikGxfpGvA/6Cyop2aMKvUFd4gTexQ2UNPEWDgMssi6jOd+Tj+Z8yOFtH6H3nLzQeJWgznOFcWtOOoHz+nWKYvj3IxT+cZ0ifU7ocmBMeOfaKd0JNTHAmwyw6Ed5jmLVDvqIM/uW6L0RadGc6wEtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721125849; c=relaxed/simple;
	bh=EvwJ3uqjttJf5sOa7ZDrU8PDHXXQFC6izxqgjR1m4ec=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Vev7EMPOnVb3yYu+cpesRFxqbtHJfrMj1eNoOEOwHC8A7TMuchU5Oh5r2Y3l6hZ5N/phNf7/KdOvxMDCkV33WPtK9QHX+LHYuDpVfh1zgfIAIyZdJunZKz3gI/qNmeG707/MpICajDxx9hqt8J7Zwk8WL4aZf5E8yEGx1iSVw24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Ml3wGY/9; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42679f33fefso36170905e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 03:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1721125846; x=1721730646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lfsm6nSG5J99n7fBjSEyZBKTrg1AsoRf03PyuQSS78k=;
        b=Ml3wGY/9+hx7Ksjye8B/vMKuZLzccSmMQGSFh3LtHVNiaHLvgwgal32tv8WkIFANqD
         JW7GQ0cE0oHMU/bc8ZeopQxGzyx0O7Lmx5AGNHJwuuRxl4J5RECPikMenJ6npZptPioY
         Ie0Qw3aEj/Yk0ZWeOvNpb1koI7OSg2Ko4j870QC71OBgDQzeFAX7j+/WTTwqeVaQy+JV
         LfHjTzs0PrDO0SYxRfYt9YsqxpPBBYf8gwVrjwXlyDPSQ9iyPGDZ5nlOehVkwGfSEAvB
         L5bzDNkf6mlOA7WasHIWFceXFN/ruvP4PI5HYGaTBPX5ij63YBBROX1LTtbzmyrVDVQF
         IDDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721125846; x=1721730646;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lfsm6nSG5J99n7fBjSEyZBKTrg1AsoRf03PyuQSS78k=;
        b=DUnf7FYX0ucc7VD1rdmDIi1Mv66+f1jo7mxga6+hczPHcjhukHoaOF7wN1tvLonPXt
         tnp7vsrWISU16ScXlxgq4kvz5F9FJRaHuctnORVNrd02YxTH0lIbNiK4S4+dgUlTTgJN
         /DaPhtVdM1ctwLP83THrI7ng7WoA4ZOhPUwmYGGJlzB93Kn8SVR35eSMDqsJFIWjXNHB
         7SxL6jINBUunUvpBteth+vXSKQgvDooW91ikBNmLDcMdh7fQmLtE54F12xD+DOYDP0i/
         ZUmDDzlQ/BRYXjl+LcFit82OJWnqslJyaxm7aVyn26MsRMdU53ahwJMx/EpgHf2a27mC
         4qaw==
X-Gm-Message-State: AOJu0YzmttpwBuK5MBDx8rEXzplrPRSV9OAcGbRbROFHHjMuQLgk54S0
	J9mLtRdgVMSTSKKsRZBBlxeJXPoUpPf8n11zAeuXr2bfRaQdzoG7bqsfCfpJ6+4=
X-Google-Smtp-Source: AGHT+IGdDT8jIaqfwHSd4jCsuylmV/YWlg71WG2lfw6K9e3FV4X+drTEDU0GFqSOCs5IcXpk4rI+eQ==
X-Received: by 2002:a05:600c:35c5:b0:426:61af:e1d6 with SMTP id 5b1f17b1804b1-427ba6fa0d1mr12677545e9.29.1721125845829;
        Tue, 16 Jul 2024 03:30:45 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5e77488sm121546145e9.9.2024.07.16.03.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 03:30:45 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 06/11] arm64: dts: renesas: r9a08g045: Add VBATTB node
Date: Tue, 16 Jul 2024 13:30:20 +0300
Message-Id: <20240716103025.1198495-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716103025.1198495-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240716103025.1198495-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v2:
- update compatibles
- updated clocks and clock-names for clock-controller node
- removed the power domain from the clock-controller as this is
  controlled by parent node in v2

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 0d5c47a65e46..78b4e088a3a5 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -72,6 +72,30 @@ scif0: serial@1004b800 {
 			status = "disabled";
 		};
 
+		vbattb: vbattb@1005c000 {
+			compatible = "renesas,r9a08g045-vbattb";
+			reg = <0 0x1005c000 0 0x1000>;
+			ranges = <0 0 0 0x1005c000 0 0x1000>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "tampdi";
+			clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>;
+			clock-names = "bclk";
+			power-domains = <&cpg>;
+			resets = <&cpg R9A08G045_VBAT_BRESETN>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			status = "disabled";
+
+			vbattclk: clock-controller@1c {
+				compatible = "renesas,r9a08g045-vbattb-clk";
+				reg = <0 0x1c 0 0x10>;
+				clocks = <&vbattb_xtal>;
+				clock-names = "xin";
+				#clock-cells = <0>;
+				status = "disabled";
+			};
+		};
+
 		cpg: clock-controller@11010000 {
 			compatible = "renesas,r9a08g045-cpg";
 			reg = <0 0x11010000 0 0x10000>;
@@ -299,4 +323,11 @@ timer {
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


