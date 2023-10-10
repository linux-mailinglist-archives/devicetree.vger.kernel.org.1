Return-Path: <devicetree+bounces-7247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B98387BFD68
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:27:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 739EC281750
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA8D84737B;
	Tue, 10 Oct 2023 13:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="JfHkcD89"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043A64737A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:27:16 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F574A9
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:15 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9ad810be221so954562766b.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1696944433; x=1697549233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pmAUYYBcb36g25xKg6f1IAceGYrAzqtlit3x/PXgwj0=;
        b=JfHkcD897XESjP4QmrvHbEhXsiCQODGXu/N1B59POCXS9H4+8uMEDBTaoW7YFcNbQ7
         X6+5bM/b8Hd3NcFQh3xL9JMav0VfEqhSU2NoX21oVQyjIaSdmkyP1hwxdRn/01wsvVla
         etiQyZ6PxUfNjU6l7GbLxQ2IEnLhjErzDk+iT08hgdndTx7ziCPXk0hrW9iy9IGA/Q0j
         uXVTH57npv3ilYjiAN13iuE7cwqI/5D3EZq6s0FkkrJaBRiEf9/QazqYpQEGbzsHSYUs
         /1Rfp4WT4GCrWjuV0+eewAIegV65cyY5dE6RIQgWLmk+BGbpgJ3OZuJ28NT4B6PdPWsJ
         CcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696944433; x=1697549233;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pmAUYYBcb36g25xKg6f1IAceGYrAzqtlit3x/PXgwj0=;
        b=hZY8KJEwH0UZDr/aDfIkrkX5i4P2ekLRJ9TwSEiLlVJ/QmNcK21oMfUm6vxz7pZGzM
         xooq+K2eCLdRB1upkvnSywIRN+DRBfzjdMoWfRG49d6SI06CbapZHPPEYKxMsLmbw2pp
         iFFRuX8zNMphPqCoDEMiuQun3LHjCKfBIyrSw335rGPSQxSAQnEbRZH2N6VEYpakrsMy
         PHzdGdg9W0tOsrvbEbStxSN9W6S+nDQOx/bgLOz+PiuFUPt8GJoywBz1+LFuvtYZHbME
         96keYKmxeCbuAbHlGG+xOx22V4Ky4BFE3hrnWmNXpIlt843WxZnc2o9qQKXK8iWEgjbI
         htNQ==
X-Gm-Message-State: AOJu0YwmpkIig8I2wrjs6HBOiqxR3p1zzpVT4eDNAWMBfy0FVdn1A8/o
	zYDgSKhI5xfbD9wKB/F9RQOd5w==
X-Google-Smtp-Source: AGHT+IE6SF7gBxQs3UVH8Wq2DgU5EpQQfF04+A3CJopBOk/P04fx5vV9navnUs5lTd1SNMEhx20jew==
X-Received: by 2002:a17:906:31cc:b0:9b2:b2f8:85dc with SMTP id f12-20020a17090631cc00b009b2b2f885dcmr15243889ejf.34.1696944433790;
        Tue, 10 Oct 2023 06:27:13 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.152])
        by smtp.gmail.com with ESMTPSA id i16-20020a1709064ed000b0099bd0b5a2bcsm8526578ejv.101.2023.10.10.06.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 06:27:13 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 3/6] arm64: dts: renesas: r9a08g045: Add nodes for SDHI1 and SDHI2
Date: Tue, 10 Oct 2023 16:26:58 +0300
Message-Id: <20231010132701.1658737-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add DT nodes for SDHI1 and SDHI2 available on RZ/G3S (R9A08G045).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 30 ++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 7971e44a5a0a..534b728a8e14 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -118,6 +118,36 @@ sdhi0: mmc@11c00000  {
 			status = "disabled";
 		};
 
+		sdhi1: mmc@11c10000 {
+			compatible = "renesas,sdhi-r9a08g045", "renesas,rcar-gen3-sdhi";
+			reg = <0x0 0x11c10000 0 0x10000>;
+			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_SDHI1_IMCLK>,
+				 <&cpg CPG_MOD R9A08G045_SDHI1_CLK_HS>,
+				 <&cpg CPG_MOD R9A08G045_SDHI1_IMCLK2>,
+				 <&cpg CPG_MOD R9A08G045_SDHI1_ACLK>;
+			clock-names = "core", "clkh", "cd", "aclk";
+			resets = <&cpg R9A08G045_SDHI1_IXRST>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		sdhi2: mmc@11c20000 {
+			compatible = "renesas,sdhi-r9a08g045", "renesas,rcar-gen3-sdhi";
+			reg = <0x0 0x11c20000 0 0x10000>;
+			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_SDHI2_IMCLK>,
+				 <&cpg CPG_MOD R9A08G045_SDHI2_CLK_HS>,
+				 <&cpg CPG_MOD R9A08G045_SDHI2_IMCLK2>,
+				 <&cpg CPG_MOD R9A08G045_SDHI2_ACLK>;
+			clock-names = "core", "clkh", "cd", "aclk";
+			resets = <&cpg R9A08G045_SDHI2_IXRST>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@12400000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <3>;
-- 
2.39.2


