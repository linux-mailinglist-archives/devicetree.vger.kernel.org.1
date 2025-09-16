Return-Path: <devicetree+bounces-217918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4BEB59B82
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:09:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D557E58145A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B7C7350D71;
	Tue, 16 Sep 2025 15:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EhrV8AlH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91FA234AAF7
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034988; cv=none; b=J3LZZh6Dj+6ZWH/89Mb3G1cOVCsF21UYTbzUgAEnqHYxmX5FtsejLly/61llOzOREqqwt0qOGzFleJ/sh/t+qFOys6ECs6sfVVDbg21DGscKFVyLratGsy/78jWGsMUif5L2an7UkgLUVZZPig+/9zBKCaEh/xJ6eknNwq1Rva0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034988; c=relaxed/simple;
	bh=3hSgAns3qgzJ1ARZvo2WDmE5n0/TFxULSaBIa6ktd2s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IqzO1OqeugmEHS63fPFSg3eMQvFN0Zlc2oIpee2k3Y8DZNaXVBlbkp9aoU52G9tSyMcWJckU+TY8s72GnreAtOpPDoY8BfnStN+Y4Jr0sXKVlIuyLMNM4uiVzyVoG5R8W00a1exsiogy8eJxJgF6MXIZ4olog0mutk8BDJbzPc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EhrV8AlH; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45f2f7ae386so16874065e9.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758034984; x=1758639784; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mywmu8Fb9MoIdnmzPctjInVewzgCT8A+qgENO0cWeaM=;
        b=EhrV8AlHMgH2eC95A2lmYABAADNcbjOgey/o7uz7bESaLUsNAYT6JuJQ4KYOhfDUiS
         ZbsZcak57OJcGlhEMsnBAB/Jjaaqbf61BWTPRt883xRJ/M/7rXGPeHR2v4SqP71hhs3y
         EWjXokoDMVADtsrr+IcZF3TImGGTnaqM/26o3AW+0/aHFQnRTlP44wqE1DSLEOlqwen+
         +iPoYoSI848nUGzFTKMuCsrCGKnRnaUbXHGRrenVu6Q3hg7JVa46e6rSkjc/szLek/1k
         HchexnpRtH8+Foyu0qoFO7KenUGZbCsRzhdZv2neAvOYU1nSgZYrdg4mxp0O1/IiUbVb
         gOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034984; x=1758639784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mywmu8Fb9MoIdnmzPctjInVewzgCT8A+qgENO0cWeaM=;
        b=OUTnz0ccJLz+5lmOLvRHpIg0HKSjCUoB5Wura0Hw8UrGM/cI43vCQ+SERjo555cyeV
         KL/5dTIyejQOGQUPA3Ghq1wlMDCOtREXW2aWhx2mYAejZWmjLJjuQUTMncWxlb6ia5iR
         8QpdkUghU4X46DSB/8Bce9HF2MXfzzGllTBLmWi1AXqQpwjHV+yYK189q1HXHwOHdwsn
         xH4ajMBCwpOO+H3yv/MssrzhR5LGXsg6JcFG6vh76cHjP7/rVjfTZgXKvUpm+04fE8dj
         jRIVzTNY3L+ucZjztz+/KC2OpWKBE56ifMxjOfU2JajypuqwS9AnFHPFCBJ4jlqwIT7K
         kHfg==
X-Forwarded-Encrypted: i=1; AJvYcCVY0Bw8w+4pTvDunJDcd3bYpZHpvhqppoMHKt0wB6A4bf/chNfF0mvnE5/zpyJ1+qAJVyT0xC1hOOFN@vger.kernel.org
X-Gm-Message-State: AOJu0YzHTdS3f4eskk3bLkD5D71sqoCYWiDoIgj/8J981F49xgxVsnGz
	KxgNT0bahJkyHyiBtSyxxaqvT8wjFRCPe2t1Qg/Idt1bzFLlWmQeDZEK
X-Gm-Gg: ASbGncvT/eCiJwVeKvS4d42+SMGV06/j/W6mneDYoxsnshyr/vyvYaIs3OtEsHyB1Ca
	yFd/7HChvSQ7mV2y7zAN4s4pdWgbCvHt3ar/F/NRhYUnl5fi9qRYUiHi/mga77Ij5rSaOod2jIl
	y/qHpczuhxKF29c928/vJ4QJGqsrvWDNEDd7uWDBF4oHXFgyRe9+D23HbTCI/rnFRm7yIoOUngT
	95b91VtRYMmZNy/O+WDbSakAeCh+cmzO3/AOShuI+4d8WNd+S2GENDPfYHAUkRReng6pHg2Iwi9
	+fJLcdKPUzDr8jlXBp99smloPTwrxyvqNxVChMXNZSFFqDgKU14rXa0mXY2wyr/7jaBBzmesM5q
	E230Yypo3aKhcM3Hl/KzZJdFlcX17Xo/Mrma02Kq3sbkDK2/1tBbVozs2wdbm63TJW/S4krWUx9
	VFoQ==
X-Google-Smtp-Source: AGHT+IFltiUhoiLa6KFOuiYEcyn2lMdNO+3Kz5nBbIKCppqLJwVGnnoJrjC1kbMz+kRJ7+Ne0uP0CA==
X-Received: by 2002:a7b:c34f:0:b0:45b:72a9:28ba with SMTP id 5b1f17b1804b1-45f211fe98emr105326075e9.28.1758034983631;
        Tue, 16 Sep 2025 08:03:03 -0700 (PDT)
Received: from biju.lan (host86-139-30-37.range86-139.btcentralplus.com. [86.139.30.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ecdc2deb20sm932154f8f.47.2025.09.16.08.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:03:03 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v3 7/9] arm64: dts: renesas: r9a09g047: Add USB3 PHY/Host nodes
Date: Tue, 16 Sep 2025 16:02:43 +0100
Message-ID: <20250916150255.4231-8-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

Add USB3 PHY/Host nodes to RZ/G3E ("R9A09G047") SoC DTSI.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi | 30 ++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
index 47d843c79021..28aff394c9b0 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
@@ -836,6 +836,36 @@ gic: interrupt-controller@14900000 {
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
 		};
 
+		xhci: usb@15850000 {
+			compatible = "renesas,r9a09g047-xhci";
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
+			phys = <&usb3_phy>, <&usb3_phy>;
+			phy-names = "usb2-phy", "usb3-phy";
+			status = "disabled";
+		};
+
+		usb3_phy: usb-phy@15870000 {
+			compatible = "renesas,r9a09g047-usb3-phy";
+			reg = <0 0x15870000 0 0x10000>;
+			clocks = <&cpg CPG_MOD 0xb0>,
+				 <&cpg CPG_CORE R9A09G047_USB3_0_CLKCORE>,
+				 <&cpg CPG_CORE R9A09G047_USB3_0_REF_ALT_CLK_P>;
+			clock-names = "pclk", "core", "ref_alt_clk_p";
+			power-domains = <&cpg>;
+			resets = <&cpg 0xaa>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		sdhi0: mmc@15c00000  {
 			compatible = "renesas,sdhi-r9a09g047", "renesas,sdhi-r9a09g057";
 			reg = <0x0 0x15c00000 0 0x10000>;
-- 
2.43.0


