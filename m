Return-Path: <devicetree+bounces-230936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4A0C0796E
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 19:51:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59B7540823C
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 17:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 522393469F7;
	Fri, 24 Oct 2025 17:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SJSAvB/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561FD345759
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761328270; cv=none; b=GR9wrng1tS63QMvVbWR/vYdd/GST4gA819QymUGzai6Rulruo077n/WKHLzVAAqz6meKpATHINwJmMr+TpsN5jNdKmAROtnEUPo1B8mUgySL/2ZJ8VQ+LQ9X5a3+5ZQLV8M3MWoY4qAVhzX8Fm5XsLWdKehZU8Cjx1jqwQ7L+4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761328270; c=relaxed/simple;
	bh=8OtrpREBtZB1x192nC3r4mm44r4aYjTnAu6oo/Ofj2g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S36zPRMi+W8My3gMFv/sa6FMcENVgAHvokp4SYmR8VShv3nqwPSVr58esqjeCTYawcjpH2fmwMR1J1NFtLfDrsbQDxWOXWTKlJSpERX7qAaeGXZaRYirr63/2O+kyZkbhBssy7+1c56Q2/SyYgqqFmXOdRY3Sf62NS8brYpVOU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SJSAvB/C; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-427015003eeso2186809f8f.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761328265; x=1761933065; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rOLCVk9/QiwKN1UsTQZ1CrvJYvRM1UlIJhn07XUe2KE=;
        b=SJSAvB/CsSjk1zmRm6AGqxMzCQmvBN1M/IavOPcRxaLjFoqt5Y1o+CAcM12XpvuqGH
         EVXxwVL7oYDEApUQa9zUB6w+WEBtLEa7/jw9kqwe4jzvQPFu2nyJStm+mg8T0FNZuX8S
         uZRc4j2y4c+NuWeB8YjWl7xAVPbTaFFKFWVnIw+VFKEvLagst1P4yTpfFAqQmnbmJjCn
         PWXxo0G8zSyPtIZIFIKDubBy0yfSa8if50eUsqNzoC43EU5T3oI/azVGS2MwKob8mmXv
         11iIc+lUUeaoTYpygZ3Aq1yGs11gUNSriH2QPSJKe7MyvEwa7CVgGJXvNIXj62lmcTIZ
         irtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761328265; x=1761933065;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rOLCVk9/QiwKN1UsTQZ1CrvJYvRM1UlIJhn07XUe2KE=;
        b=ehOs/wwzKZzeDR3RQJ2SyqDVXhzf+IdnXEIlPLGXAlJPZRJ83joIQn1wUFTrsg21kF
         kWI9Q1X413tr8iJLZpiD4rjjuP1Xp63zsivOq+GTqQBRRNeQFb7aAP18DJUGt5m7D/JP
         EiPh8y0U6Jew57RcHgkrK798wpTcTfSiDuLZWoiq4MU8y8WO0uiMCy8zWhcF9KynflE7
         fI3PIERZOAzc9gh7Fp+tuqyul1U+MhGNoKprp1BahXelyid0oeHbkBRDRSZ+etLErQ/R
         +Km40ny6Ah+KIaeiveBh6anDD1Ye+v26GwdbbEKqYF7wsORGLefoq6qG++7w0NJAKOyi
         3/GA==
X-Forwarded-Encrypted: i=1; AJvYcCWyJKGqUIoNp2qqjNZmWei8IGlezg9wmJALQXOycdw6b1lGRHSdr+Jg9hapde/jpLQHU1257DdWahJ6@vger.kernel.org
X-Gm-Message-State: AOJu0YyJX0Tohi7Ntl/opiOP8lS2pNZkedMaUdMorYXu9t1LI7q6RuW2
	Jow5M5PuNXLjtg1Iwc/Arbe1rS0CaBJ+ydtzgyxeuW74EHDLlxpq8HbPYXB0qlc3wc5wwFKNld/
	ZZy6m
X-Gm-Gg: ASbGncv26l9IwyEFsHcta3xLHQGVpodQYjTh4Har13YMrkKAu/Ozj2kTnPzzxMqJEEW
	vVoqe53F2Nn31ADmvIc/tVdH9jmlPADJ3XX+g6Mx7rw/BEvP6MoDRdxVMTMBadD+Glv9EiP7kcW
	/lfTQ4fxeZ1uWyKRK4/vq1uIXqpiTQvS47BRX7qf+ckuprIvpkUFCB0hbAE0yyRtRLYbGfV7vug
	wKUan3mMe53QXijnpdxAMeUzGuseDErfK+XGgEXoXzepQI7PvWO5mQWKz7TtqK7bg7yLuFWDo9a
	OlFaWSwYigp93r7ZCSQqTNwB63lXXN/K//dIg5Vj++glaENTnTwq9pCMG340yIRfkPjN0uEhtAw
	ZGstkpe5NDExeA92krj2v+d0Bl6iaaO+VGeuRuFZbiLfXLYaZHitZJFcUuhiuJdklocTLx71QsJ
	TXNNjcVBBRGgOYR8Nc2C2mwVYsTAWLoTxFMs5+cfZmlb5PgkEe1umqAOjWSyAfThcbHZzECMBdk
	g==
X-Google-Smtp-Source: AGHT+IGYnylqqVKrCTZY94vqPvipylQ/dkxetbC2sOasmr565marnizJOrsOZZOI5A86DycSGu2Bsg==
X-Received: by 2002:a05:6000:4715:b0:427:5ed:2d95 with SMTP id ffacd0b85a97d-42705ed2dbdmr18159704f8f.17.1761328264940;
        Fri, 24 Oct 2025 10:51:04 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897e7622sm10321900f8f.8.2025.10.24.10.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 10:51:04 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 24 Oct 2025 17:51:00 +0000
Subject: [PATCH v2 1/2] dt-bindings: rng: add google,gs101-trng compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-gs101-trng-v2-1-c2bb81322da4@linaro.org>
References: <20251024-gs101-trng-v2-0-c2bb81322da4@linaro.org>
In-Reply-To: <20251024-gs101-trng-v2-0-c2bb81322da4@linaro.org>
To: =?utf-8?q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, 
 Olivia Mackall <olivia@selenic.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 linux-samsung-soc@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761328263; l=1419;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=8OtrpREBtZB1x192nC3r4mm44r4aYjTnAu6oo/Ofj2g=;
 b=EQv43Oor9EYwbIg+bkdEWKveNwuPK3fDoxFXHSnLdCDKDEvkdprIIYFqEghv/+a5an6lUJ7j5
 LF59aorIIHyBSZYPZRgaBHpL21gSRPECTAlmuIjbb2IRfV9mNHr9bOf
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add support for the TRNG found on GS101. It works well with the current
exynos850 TRNG support.

The TRNG controller can be part of a power domain, allow the relevant
property 'power-domains'.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/rng/samsung,exynos5250-trng.yaml    | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml b/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
index 1a71935d8a1906591439c03b7678538e656324b6..b85edb47036ae745b863bd8ded500891ea28c723 100644
--- a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
+++ b/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
@@ -12,9 +12,13 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - samsung,exynos5250-trng
-      - samsung,exynos850-trng
+    oneOf:
+      - enum:
+          - samsung,exynos5250-trng
+          - samsung,exynos850-trng
+      - items:
+          - const: google,gs101-trng
+          - const: samsung,exynos850-trng
 
   clocks:
     minItems: 1
@@ -27,6 +31,9 @@ properties:
   reg:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks

-- 
2.51.1.851.g4ebd6896fd-goog


