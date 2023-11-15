Return-Path: <devicetree+bounces-15940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDEA7EC52D
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:28:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E9A91F27305
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06B982D7B1;
	Wed, 15 Nov 2023 14:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Q3v2Mhpq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 998A52D04F
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:28:40 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46CC7127
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:39 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9de7a43bd1aso965710066b.3
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700058518; x=1700663318; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0dTX6msw9z6skyilnKqLPZuHp7mBZQKZUfa82STaeHA=;
        b=Q3v2MhpqiYklfdxY+wabX+gqiTz4xSps9TpPLY5/HAZaKTr8eA7TCWvZdRp9iuOU/5
         fd+6F7Z3gs71/s4dZRdu2yzZ7naEGcKHMbTblqBP6iR/6uzCj3TbwLx2pecFqCG3E52i
         2WB05ew+hAK4xnA1r4AzSsEQNpdLET90JtpYXz5+UiyXkJG5LFRy0H9Bn11hNXc/2R/I
         eWSR326a9r243a+RPPoLh/TK6dGgVfuDD9nAGpRJzXD6oXmZ0469/A4dX7ey1m4w+S0G
         8/KCptAoNJDZFpMpwoJaDouYUejMTuAYtV81la89TiY1yMK81ab4jVhKL6eVmZj8rQtq
         wXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700058518; x=1700663318;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dTX6msw9z6skyilnKqLPZuHp7mBZQKZUfa82STaeHA=;
        b=CdAGqs3idGigJoX4Yct04zfZMLhn5cTzdHerHHONmAxsB3CSznO3ocmtlyseS6lrXs
         kDaxrYM9iXWxlJuMOvSFnZ4c7YVH12G5B1sxdST/0jKLdZuWVanPtXLM9cl0t4XnHXkt
         Rfvo3dH4Hk2tBc8cSTqpAq/VCjo270ETNxOEeLt6XXBtx0GwmrSDQoquJRXiWu7lfzPR
         DobxqnF04/P4K+T435NrqA1cKF8prRnkin43Afs6roEyNZmd/wHHWly7fo6mlKmBqCvS
         pOXcbBoaKFE/kwMOzCXC8URScYNSSA0m41syjGNkBUzwoyDEZt3OZ/e3UtL8Th6trGZm
         anXw==
X-Gm-Message-State: AOJu0Yy348SURm9a4mb+TZRxng2O5ObpUQXvkBH5ldVMvtygT0Xql444
	pHl9wxQx4H30pEPt4KD426phTA==
X-Google-Smtp-Source: AGHT+IF8sEsLU/SFq5g4LrZoT/tLOUEvnKEWckZJZrHKmsPxT0xhvzQ0DuCUO8+eKKsBUTngfX/FlQ==
X-Received: by 2002:a17:906:f293:b0:9e2:af56:c380 with SMTP id gu19-20020a170906f29300b009e2af56c380mr10048889ejb.6.1700058517819;
        Wed, 15 Nov 2023 06:28:37 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.119])
        by smtp.gmail.com with ESMTPSA id i11-20020a170906264b00b0099bd5d28dc4sm7186394ejc.195.2023.11.15.06.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 06:28:37 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: tglx@linutronix.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/9] dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Document RZ/G3S
Date: Wed, 15 Nov 2023 16:27:41 +0200
Message-Id: <20231115142749.853106-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231115142749.853106-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231115142749.853106-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document RZ/G3S (R9108G045) interrupt controller. This has few extra
functionalities compared with RZ/G2UL but the already existing driver
could still be used.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tag

 .../bindings/interrupt-controller/renesas,rzg2l-irqc.yaml    | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
index 2ef3081eaaf3..d3b5aec0a3f7 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rzg2l-irqc.yaml
@@ -26,6 +26,7 @@ properties:
           - renesas,r9a07g043u-irqc   # RZ/G2UL
           - renesas,r9a07g044-irqc    # RZ/G2{L,LC}
           - renesas,r9a07g054-irqc    # RZ/V2L
+          - renesas,r9a08g045-irqc    # RZ/G3S
       - const: renesas,rzg2l-irqc
 
   '#interrupt-cells':
@@ -167,7 +168,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: renesas,r9a07g043u-irqc
+            enum:
+              - renesas,r9a07g043u-irqc
+              - renesas,r9a08g045-irqc
     then:
       properties:
         interrupts:
-- 
2.39.2


