Return-Path: <devicetree+bounces-17076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AAD7F11BD
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:18:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8DDE1C2178E
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 11:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B271427A;
	Mon, 20 Nov 2023 11:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OJhASzGg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C08FF170A
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:42 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-407c3adef8eso17646155e9.2
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 03:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700479121; x=1701083921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ptQiN1S6gJwg7uT81xFHroZyIQZNKxY8fT8PJ58AJo4=;
        b=OJhASzGg2XqGKK19Hd0sGp45Vs86iL1W8HjaiUwfGV8P/Vka4DSYgt1r1AOmkn4DlO
         gI+wWkkOzjP6cUOmw5wNY3/08b/UzRV9Aou/ykcZc4rBDjsvUoKHpPXNRESKnVQx9vOf
         ehrIZPLU0mdkwU2JpGpGsSg1LZ12OglTfB/aWkG29ysw4lF9rxHyhLv9g1aSgiZIYob7
         eBXE01zzMrxySZjZooUTFh/fCjetlJlz1YA8mAZrJs7N26BSC15bZ3V8Elxy/4y4W0NZ
         /5cWKPa4u7brO30VG92uGSEiMUZdImAQw8DhlWNrQemLXxnzCOs6XUIjtmrA0PGOPpjC
         IeRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700479121; x=1701083921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ptQiN1S6gJwg7uT81xFHroZyIQZNKxY8fT8PJ58AJo4=;
        b=JO4MtTX5XhMbEdJGVrxBxucuI4QFviFeDCdP2xtBdWl0H+OzwWR6KjXTyxef9a6vjc
         0MxTGccS6LqGG7Bp44eDI11pyb6iiYT9p0lCOGDaTRIn10pnom0BUks9YZMzxgEjqXK7
         wIQ+9aW5qu6vUpkI6Hwq4gqir7iaOsJ6Zl8Q0qYyaxr5eGXKaepP1uu+G7ur5vqVIVJG
         JYzjrCfNWqHgGKVEaWZ6SA4b/0KZzcEyYlumgC81Vs8UVZtSQT+qZJr10K2cEST8EIpi
         lnOcPtZ1HyXleawo6u42u2hIB64ULmrUgxKPVYaT3rYTNzX0JEXABkuE7GDCrlprxoeG
         YzSg==
X-Gm-Message-State: AOJu0YyrKDh6RIwgsZyYIiGCS2JDrvmc57tq5Lt4CrpUmfyFrgcPD63N
	JpLzkP0uo7BtQxfTx2glc9yRrw==
X-Google-Smtp-Source: AGHT+IFU8rlbSjXZPP5nvJmH/WWhnefTiuKeGPD0GA72G9qNeDNZ4oQXOndWcr4wW3agcRaLHHpDYg==
X-Received: by 2002:a05:600c:4f56:b0:402:8c7e:3fc4 with SMTP id m22-20020a05600c4f5600b004028c7e3fc4mr5606755wmq.30.1700479121095;
        Mon, 20 Nov 2023 03:18:41 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id g6-20020a05600c310600b0040651505684sm13142676wmo.29.2023.11.20.03.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 03:18:40 -0800 (PST)
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
Subject: [PATCH v3 8/9] dt-bindings: interrupt-controller: renesas,rzg2l-irqc: Document RZ/G3S
Date: Mon, 20 Nov 2023 13:18:19 +0200
Message-Id: <20231120111820.87398-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
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


