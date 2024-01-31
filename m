Return-Path: <devicetree+bounces-37138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FBC843C53
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 11:23:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C5EF293142
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6867BAFA;
	Wed, 31 Jan 2024 10:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QwxbEmmq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790E178693
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 10:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706696447; cv=none; b=twqlqUpaEgEyvEMICiiUJuDHb+g/2cdsuX5vd0joHq6lGfXEjyH8RKN7R5yVuVi399impcZnvdkYQ+1lFNmdzvXyrHNnFMbpu98xC0YnRPqqw9cArQeB+2uZ3l1i843aYGaVDTwuo4UegWyH1fyKuvvPgJHyWdfknLeN5MRaj8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706696447; c=relaxed/simple;
	bh=D8gjXJMBwEu6Dis5xP+vQKZU6PNq4qedBkn7bK1S18A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mrq1Os3GznnkyBLI2fpMJQZdZ/dpGtUD8ymyVrY/OTYj69jUp8/z++ndthyvLVXh52FPzuTcc/vsYPE8grJ1jmJsxSBpro603hFXpM2Rg/U2jyvyF4EqPy/jBL/HBJmENZXPkbpJOK8h3eZW5MZ3jmFNNr0qTZ8u2m78xTHlqdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QwxbEmmq; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a30e445602cso161847266b.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 02:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1706696443; x=1707301243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SgNArjMTG2B25K1vBtzTn+gsQnVe7BBnkcg4e/Ahq2o=;
        b=QwxbEmmqr0VqsXf3Mi6K+SADd3t7jS7YES4uXmvhvqOv0y6RC4EZwBLBtyNd8Ukt5d
         vaUJT+RJYDIzAIpsIrJhyRz1460JEe4Ol03URPV9RGgpfyoLnRJLN5mYfjdzJfife38+
         26a2yCtPxSInR9NdeFFk7wFMMAoVdGBQ7mZcv4WZZdMcNbVcbsY3ckUoRemXBH1HQZU7
         QzadgFLJl78d6O5taoLKOFwyCI3IYDlw9IjYr4SmXtcG2dULe6P1uJuporCIBKaJj4PO
         XlLpz4qqOfY5o7r/mbnX3Idk1OB+oPpo6A5cHroSNkHHi4Gic2pKrhwBMxJ41LAqw6HL
         gAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706696443; x=1707301243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SgNArjMTG2B25K1vBtzTn+gsQnVe7BBnkcg4e/Ahq2o=;
        b=UV/sDdW4hu+ExvuEhtJxpUiKDVRJNTglCPhQzV95MAoCwMmO6UVRtxDh8d2dkw3fyy
         0Fppn1jaadYVO5+zEUWTci2BxUrc8yOdVF0nGHsfBiP9oWVVRxiSJAQu/SqsCTy0z5mm
         H8YnfsZFcsgaPFukak5RzmlknpULPvvAjmulF8LgkXHSFNT2QSYeljgK3vI0hfRdDh8j
         3yen4MHH31XL+/BhRrHxS+c0pCYmuFKWXaYUFFHckKyZR7dzXDHZFCuKTKBgyw/CeovB
         8EZ+Ou72p2J3hdXswrBBw2JfrCIx9Pjw7Ys2DF9wODhyaHtAXN/7WFw8F4nfFoK4Ebgn
         X3QA==
X-Gm-Message-State: AOJu0Yz4w7tG+sOj4oy6YzlyLfm1uGOIHnHN2WFb3l0N1JLrSI+gh1ys
	i+nQ1xd4kcMr7+34Jv2zK1Y9RMGHFcQ0Wyxx8leu+bmkXxTLScUPbfvp2dDuXeg=
X-Google-Smtp-Source: AGHT+IEmW3psc09/jkhCbIZjmhL+06jeYTbdLnVUXxjYrjDKvFUIOxmpgo+MEp4T/bJYd4dIaKJajw==
X-Received: by 2002:a17:906:f884:b0:a29:b31d:1dc6 with SMTP id lg4-20020a170906f88400b00a29b31d1dc6mr1071696ejb.6.1706696442850;
        Wed, 31 Jan 2024 02:20:42 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCV7VFoKeDrKm2dFeKrr3ueJSNIyWcAzVF2M60d+rWLrt+Ms3BMv+iBq1k9IesFPvSOL9cfyOEaE9Qyop64O4TIi91llTpqRYCoY/eWhFjwpvFeC0Joj++C2f2yr/mi5twG4gpp2NWGALqIZH8LZjL3jgNp7gBXYbddTEFx6oJRS6aKY2MAbSm3nwRukMsNdGpq2ARasM6aNgZwLtcJZt/KhJaHhzRwYWi7qmbv+7y8gEjBXDqJSayqp+kNs7wyCBILeeazMjOYPRuwHK/vet5rzEqM1vkM2UXYxR1YXwnYN/051xrQ6kFPqg82iQahCltrU8BfNbe5PFHdr72JgqqfXhVOPuOwCnUhNUL6Hz6mBxhSAERew9GMDNcEwRdtvza/MOEjg+rLSNXX6yXv5OC6CHVtYR1L+wPPEEgcG9T6uwkav6wmzKbOjTss1ehquFcK/DYAefz5MNnhueisHsz+DfnZhhNvarZdVKZY/XBrjODT/z8TUkv9/nR6diD+J9+8wVJJKFpR9oFY93VHDLwNAacIdObtH5LGmzLKecC+mIrue4ahgSJKp/RlvAcUyzEmvvTqSS+E33CbkaFBALPbv2Sk4vN7xF7BogntAeKIwCIDgJ/aBaIMfP3cbVX808YngUD0Tmq53f7Tv/T5A
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.87])
        by smtp.gmail.com with ESMTPSA id vk6-20020a170907cbc600b00a3524be5a86sm5212966ejc.103.2024.01.31.02.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 02:20:42 -0800 (PST)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 09/11] dt-bindings: watchdog: renesas,wdt: Document RZ/G3S support
Date: Wed, 31 Jan 2024 12:20:15 +0200
Message-Id: <20240131102017.1841495-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131102017.1841495-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240131102017.1841495-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document the support for the watchdog IP available on RZ/G3S SoC. The
watchdog IP available on RZ/G3S SoC is identical to the one found on
RZ/G2L SoC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags
- s/G2UL/G2L in patch description

 Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
index 951a7d54135a..220763838df0 100644
--- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
@@ -29,6 +29,7 @@ properties:
               - renesas,r9a07g043-wdt    # RZ/G2UL and RZ/Five
               - renesas,r9a07g044-wdt    # RZ/G2{L,LC}
               - renesas,r9a07g054-wdt    # RZ/V2L
+              - renesas,r9a08g045-wdt    # RZ/G3S
           - const: renesas,rzg2l-wdt
 
       - items:
-- 
2.39.2


