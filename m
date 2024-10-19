Return-Path: <devicetree+bounces-113140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7619A4C53
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 10:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DC911C21F68
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 08:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 131F81E0DCD;
	Sat, 19 Oct 2024 08:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="j2iDIc13"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804541E04A8
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 08:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729327690; cv=none; b=JcjA6fgHyZmf0WvbH4mOJx4km1+3wQi3fQQahBeyQSlpq50edsFq0WsEosFVzTYrx3MNnFa6y+Kg+M8GhX8/CiIJpVuUIOM9HNngf8DG+IeQIdcJaQeBSpfKJ12yS3u0MxIeUmSWMewjiqF+CiQvzdDWotWlRgJSjmAErff9nHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729327690; c=relaxed/simple;
	bh=Ha46VISo5j+n6oH6t+bD4vfPcsfLlPK/URPraxBG2N4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=J8nahx0RqAMaSj1cuReDBUFve6iob8oIXhLxzOxLP1F5ZRZWUUOj2VHl/FdIqPTXUxyotJo/xmxJEmz/cNErpCSZ5XUHsfQuCluGLad1FwgStOYsAy+mpCBn8WbxV+G1wIuU1VQnxQwX3GbG2CvzVdAR5eFwI6gA+MpJTHOCiNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=j2iDIc13; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37d51055097so2012419f8f.3
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 01:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1729327687; x=1729932487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ptzp2AGtDmlh4y6yStaA1mKsAkuInOqVi2zvAlMIYfQ=;
        b=j2iDIc13fazwNSYhaOCF+U5I9BkNm9YHSnx2D1CHd+Df7gO/G7Ok825SaKHaO+j+kg
         SkHiYuW0+OcaOdTXhFGuPD9hx/nbVRlBlDIwsVk4ZrcKm8sCeuvQ1TJDWonueltM+YWJ
         m9d7bDwDUjhdZ7j6b9wzLW491s99cEYqyl+CiKCpBz1ynSjq7UCVo2HlaBMWg7BlH4Mb
         4r7pQf+zxnUGOdEoGX6Q8KpWn8TZbzciAKMUZM5h8FLVLDCFoemVSEHeZYxUFSAAd1i+
         DtRs5RB++CAsymR8E8kzxG9Mzp2vj0GBbMV7bnvD5ZuQLxtqmbzbLu5t8rNyDQ4EKYVO
         m3Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729327687; x=1729932487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ptzp2AGtDmlh4y6yStaA1mKsAkuInOqVi2zvAlMIYfQ=;
        b=r6pR0K7vt2KEap1lKDztEr/TCX8bDZhBD787dOw0nQdZ4myZmCxYqXNbv3oX7Rlucf
         siLCHUih08wFIDBw01Kty6gHny8srA+TDhKb1zpZ94wohe6BKS8hfGfhlqJAt5slD7gp
         tMgPtedoBRen7tYkww0ez8PBEwRhX6s/Fk6SJpaJsHU8Dvw3eFXdD/CHWIsyEh3ZPVqh
         J+3d4xLuJxjCkMsyg5531gpix6VuPnAa/cXFhRAjzTaTw58pcm8czl1i2yhDykw/541X
         N6a/iGrygn5efC+ig/UaNbwXI8VkIhrmUuV2GQ2IKYXCaXkl+et9eJUGTJ2k7cvy9k0g
         GV2g==
X-Forwarded-Encrypted: i=1; AJvYcCWKnMFsx02D3jVP2/ovD+59g/u6rW8ZJ8zk5I4LaNmaSoMZ5EvGcnGi2qIGpa7Y90tHlTtXKKEryrcx@vger.kernel.org
X-Gm-Message-State: AOJu0YzDK7KYaCTgeg1hDfo8XcjTzLsHeA8tZyCOg7rE/gzMMEKP04Ls
	e9LZrbOj3V6Tjv2C1FtOQIOhQPK5JXrBpvJVSNwXDZyMoCG0devcLjVrDKNWpEQ=
X-Google-Smtp-Source: AGHT+IGbEO57QVxQnowfYpKy9hDCCPJFLMCxr57/LQT6YuDTh7tb4JJuV+/9WkjzM5dKYZ890WhRRQ==
X-Received: by 2002:a5d:6a8e:0:b0:37d:4e80:516 with SMTP id ffacd0b85a97d-37ea21a215dmr3401480f8f.34.1729327686755;
        Sat, 19 Oct 2024 01:48:06 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ecf0eccbasm3898731f8f.81.2024.10.19.01.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 01:48:06 -0700 (PDT)
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
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 09/12] arm64: dts: renesas: r9a08g045: Add RTC node
Date: Sat, 19 Oct 2024 11:47:35 +0300
Message-Id: <20241019084738.3370489-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241019084738.3370489-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241019084738.3370489-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v4:
- dropped the assigned-clocks, assigned-clock-parents properties as they
  fit better on vbattb node
- moved the RTC close to serial node for ordering

Changes in v3:
- added CPG clock, power domain, reset
- and assigned-clocks, assigned-clock-parents to configure the
  VBATTCLK
- included dt-bindings/clock/r9a08g045-vbattb.h

Changes in v2:
- updated compatibles

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 827db9f61802..14e105de2f08 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/r9a08g045-cpg.h>
+#include <dt-bindings/clock/renesas,r9a08g045-vbattb.h>
 
 / {
 	compatible = "renesas,r9a08g045";
@@ -72,6 +73,20 @@ scif0: serial@1004b800 {
 			status = "disabled";
 		};
 
+		rtc: rtc@1004ec00 {
+			compatible = "renesas,r9a08g045-rtca3", "renesas,rz-rtca3";
+			reg = <0 0x1004ec00 0 0x400>;
+			interrupts = <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "alarm", "period", "carry";
+			clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>, <&vbattb VBATTB_VBATTCLK>;
+			clock-names = "bus", "counter";
+			power-domains = <&cpg>;
+			resets = <&cpg R9A08G045_VBAT_BRESETN>;
+			status = "disabled";
+		};
+
 		vbattb: clock-controller@1005c000 {
 			compatible = "renesas,r9a08g045-vbattb";
 			reg = <0 0x1005c000 0 0x1000>;
-- 
2.39.2


