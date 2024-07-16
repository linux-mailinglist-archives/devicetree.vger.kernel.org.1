Return-Path: <devicetree+bounces-86053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2A2932408
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:31:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DFA41F23E35
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAD72199E8E;
	Tue, 16 Jul 2024 10:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="McCHhfkb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BD6198E70
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 10:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721125850; cv=none; b=oORXZfqMNkYxtraE2Iv6hbsKFe1ItUTQ8vA2BpT7YhWdrS9HVvLKOcbZkRyJMSOOAGPO2Og573xGRA79lcM2O71mT2YfTz/xSPO1Qp+Do61nbihLC7SByZOZBMd6uyBGCxR7j4W0cRPK/XIhBpuS/0Qqu1B94yfOcC6S9GtC6W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721125850; c=relaxed/simple;
	bh=+Mc+13b2z80oCG9v0Z12Pko9uuqMsx9D9wsAYYdr2Iw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AMvSjJkeCwuREllXyyuMOeBPGrTHr3TuTrgDb+I9Oa/C7J2vrYeczHqsbLRhml5m0hcVdYWO4u7voT2wlBjnkSQmmxmTi/hJao/W18BE/B57bdL52BLjZO/Mo1olnam2C+XG66FHalBS57Su5YCfN+LuKXOAUBN+Z4gKb1GlhRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=McCHhfkb; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4265b7514fcso36528025e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 03:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1721125847; x=1721730647; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=havjViSFqkpX2ZEw/deHEcNpYtCxaTiY0eUvmPFnuY4=;
        b=McCHhfkbz6e4ZnwGv0BIMeRF7vJSGQ768vJCGG2+FWKdVbQzTjbfU/V5egZYAtbHE7
         /nyA5AbPC/r4EsicYZubvKuUepjpU4/Uwoxetq8Y/TvCEJxZLyDNChvBpPLXO0COLrE4
         a5ybVmxe2LamqOssrVTEsVQW1DNytqoonwc4h2I4MaROap1rIuX+N2YzFyebwHrxPGFi
         +YwhKi2quhIdKOA1AIUFEY/wH3d+aHszhQlOSrOn2z2GvpMMWYxpdBG/ttppdSCx3MDl
         afgYA72SlahfQNwNlwoP4zvzpbxG1z4XBtx1zkE6jUWjthJNb6iPx4wyr7agKhMfiPL/
         Q8zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721125847; x=1721730647;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=havjViSFqkpX2ZEw/deHEcNpYtCxaTiY0eUvmPFnuY4=;
        b=kl5CukmDtvSZiryzVJyXK/hDyIHWzrMHVrYSgxpvS56jG1XmrBjc0yMK9RukeYV/YX
         XvDCezO6HwLsTieQ5jbL5VGiAd+y4ftO7EDFmHrLDH8IHw6EBj367uCHsR8UQYY315u7
         5VNBClO+nMatZDsp+oQLd2dD5nrGyQGdI74FEFj12nSkRjQYCpbkSbSqdFU4PifCm5kd
         uzrfYHlXyEZjqMMv1eW7TJJfjMK7ZlMBj5EqAJpF6+2QqBIpRy8SkjkfywG3afZCYsNH
         b7kQz9YPoJcHuhDioUtAFuWc+IvTIIbfKVSAVAq2J4ajdtWkMO0kb1hl7UOWY3aknn34
         Pt7Q==
X-Gm-Message-State: AOJu0YwSEvAd+hCP69KJ/t3Zll/VWPfQeHjehOvK9FvYqmREzlc+s4PT
	IKfdG9ovr5YnlAnXzAUfD/ubUK+nFbazXHSu5w7pJjdf7Pdxlz4pRSWW349FEJw=
X-Google-Smtp-Source: AGHT+IG5nj05P3SaIbAeAjYYqU7ltlxGNASeUqz3/IbArKcpEVPxuAGunWSshG97PaegXbchwypLPA==
X-Received: by 2002:a5d:6d0f:0:b0:362:ff95:5697 with SMTP id ffacd0b85a97d-36827591cafmr1044592f8f.28.1721125847401;
        Tue, 16 Jul 2024 03:30:47 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5e77488sm121546145e9.9.2024.07.16.03.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 03:30:47 -0700 (PDT)
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
Subject: [PATCH v2 07/11] arm64: dts: renesas: r9a08g045: Add RTC node
Date: Tue, 16 Jul 2024 13:30:21 +0300
Message-Id: <20240716103025.1198495-8-claudiu.beznea.uj@bp.renesas.com>
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

Add the DT node for the RTC IP available on the Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- updated compatibles

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 78b4e088a3a5..22008407848c 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -72,6 +72,18 @@ scif0: serial@1004b800 {
 			status = "disabled";
 		};
 
+		rtc: rtc@1004ec00 {
+			compatible = "renesas,r9a08g045-rtca3", "renesas,rz-rtca3";
+			reg = <0 0x1004ec00 0 0x400>;
+			interrupts = <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "alarm", "period", "carry";
+			clocks = <&vbattclk>;
+			clock-names = "counter";
+			status = "disabled";
+		};
+
 		vbattb: vbattb@1005c000 {
 			compatible = "renesas,r9a08g045-vbattb";
 			reg = <0 0x1005c000 0 0x1000>;
-- 
2.39.2


