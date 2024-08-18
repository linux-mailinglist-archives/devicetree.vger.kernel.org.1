Return-Path: <devicetree+bounces-94551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A42F955E0C
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D80A1C20D5B
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 993F4156C49;
	Sun, 18 Aug 2024 17:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o4IHHUX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3E315624C
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002158; cv=none; b=DTnI1xb2zNoUhxKgiy5ncgkZtxoo24FyySwiU39RUtGMUuUvZiaQnzimzFiNHLIzmY8vtUUix/lsosGZ0w7/UZfyfclsqlFnxuP4GkuoUd9hXtV+GK8DvavNhTvMvNGH3PT3an/WfDNUVsfs9lL2Vufn+e8E/WwfFN4gKsXEh4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002158; c=relaxed/simple;
	bh=FdtTwHtKsJN/wIhDUccUu+emnT4Yb4II+7wWDyl2KWA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iSy5tspNPs62fzAzlCzXVxlJTMEwCOFw2FnHZqLaGL/V0r7N/9sWj0rX9rs8zxVrkG1iugWIptrzqoQ/65Hk+oHjG8eU5EXgoIPC/7+vRzltk1xYnL8FkfAuKTKM6sJvBHyICRJEJkXXR6Jhhg267IVy5Re0eEcVoMqO8Qq72uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o4IHHUX5; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3718e416297so1467856f8f.2
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002154; x=1724606954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rsSwfgyCCKZm1ElLU08MN03l085AljcXAGLvPNx9VVs=;
        b=o4IHHUX5lf89ilAsWKyYYcFQnWsxaMeiJMioFxmPW47pJ3ovZZPxAqWJ5crz3N4VmN
         Bb/yx5DJUxTp5xlH0JG2fUTQQSC957fYdP4miAZ5tc6TMpZFgRSRHFQnaNy+grI3xE+i
         NHDfND/3OTULcRaREeuzq70SXxj1SYWGm9RkzuJk83gE0Cd5wJICrz7CCvYIFyeNJ0qi
         OUS1ajgm9YT7boznoPHDCnSoHPsWf4a1m6pyUa80VZI3Ii78/RXj5U1wQ1eoy5POymNU
         ixEVjva3ZZSB+o4SKgDMkRCexgzXOALjYUK2GjMrWwR4yWztG74jO2IwGcvhQA4CP0dc
         OI8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002154; x=1724606954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rsSwfgyCCKZm1ElLU08MN03l085AljcXAGLvPNx9VVs=;
        b=KnxbBwkB420nCUucknln+iBU3s+JU3qM4y1w+I8IMoPnmrk8BvhLZbdScBalZSyxTf
         2Pt84rH4ri0r3QLkpTwQQTnHleVvE99Sm0q95l5uE669z3va5w+Fa8geK5uGe8V5lNcu
         rOGcEsClNiuVcdbdB5Ssbii/Mpamg8MT9Xab5sywTA8+RmQdSyFWfQuW8yuV9HGoXAbv
         32Z2CNO0DBaSMU8o0+Vt3WLZHxrlGhLhhXvKq4FoQWdXyhwvPzzQKP6qeRbKKuFQyDhO
         bnU50JNW6JEkEqRHilhQvGsPJQ5qzv+mMsxplTuBrtv6Y8ZgFvliDKlBlLCnxVXtfSxi
         H+xg==
X-Forwarded-Encrypted: i=1; AJvYcCWFo9J57/2Ys6Td+/ntQslvd9HVVC25PG1gpMDMDdj7dyfvKGa0pK/ISv9R20OASRzTSv4B0wy3RkgF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2a7oRqA3+JttAeTyJl38GyiDz0m5IDkJJVYdi1NjAUGahJX5H
	dyBw1/+qmGXPXRYj9YvwAI8uAXpbuqwBroWjWDbP3SgEmNnNv7ExIjnABp6kCBk=
X-Google-Smtp-Source: AGHT+IF5oqIaO/kGomtpTBUzPJ4hI/zfkkWQsLbeENpJUcPLayIcaNoTVT/LmiOBEGxfF3K0OFkCRg==
X-Received: by 2002:adf:9bd9:0:b0:368:4b61:7197 with SMTP id ffacd0b85a97d-37194453122mr4749751f8f.24.1724002154312;
        Sun, 18 Aug 2024 10:29:14 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3718985a35fsm8510315f8f.59.2024.08.18.10.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:29:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sergey Shtylyov <s.shtylyov@omp.ru>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Felix Fietkau <nbd@nbd.name>,
	Sergei Shtylyov <sergei.shtylyov@gmail.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH net-next 3/4] dt-bindings: net: renesas,etheravb: add top-level constraints
Date: Sun, 18 Aug 2024 19:29:04 +0200
Message-ID: <20240818172905.121829-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818172905.121829-1-krzysztof.kozlowski@linaro.org>
References: <20240818172905.121829-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for reg, clocks, clock-names, interrupts and interrupt-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/net/renesas,etheravb.yaml        | 29 ++++++++++++-------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
index 21a92f179093..1e00ef5b3acd 100644
--- a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
@@ -62,15 +62,27 @@ properties:
               - renesas,r9a08g045-gbeth # RZ/G3S
           - const: renesas,rzg2l-gbeth  # RZ/{G2L,G2UL,V2L} family
 
-  reg: true
+  reg:
+    minItems: 1
+    items:
+      - description: MAC register block
+      - description: Stream buffer
 
-  interrupts: true
+  interrupts:
+    minItems: 1
+    maxItems: 29
 
-  interrupt-names: true
+  interrupt-names:
+    minItems: 1
+    maxItems: 29
 
-  clocks: true
+  clocks:
+    minItems: 1
+    maxItems: 3
 
-  clock-names: true
+  clock-names:
+    minItems: 1
+    maxItems: 3
 
   iommus:
     maxItems: 1
@@ -150,14 +162,11 @@ allOf:
     then:
       properties:
         reg:
-          items:
-            - description: MAC register block
-            - description: Stream buffer
+          minItems: 2
     else:
       properties:
         reg:
-          items:
-            - description: MAC register block
+          maxItems: 1
 
   - if:
       properties:
-- 
2.43.0


