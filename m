Return-Path: <devicetree+bounces-94543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A0B955DE8
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3139DB21080
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C3C1494B0;
	Sun, 18 Aug 2024 17:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cNp6g0lf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB14146000
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002108; cv=none; b=bPpyL1g8h9us3TMXP+uGjdTrlsrrUQcDzCpxNHiUq0UFAkb4Nbcl5EqNlHqKKurFnK5KrGpsFZ+P//6tRVmxzusgyesNcLQj47xJbj56Rr/AtKmPf0WyNTgaNClCAj2BWOqCy6Lha49f9o497wGECW+9LknTUo9g6r2RCPctttU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002108; c=relaxed/simple;
	bh=OIs2VNSE/b4Kx4NwNGGF+sbIlkpfG0na+9T2mhbsXRc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZiqKsL/38z1CfV1OutixdojJXu4upXtenUaTn6FlL1WIcaNE+3cifyLadLk3rsmUwfAcI45x7d/Go9KlvgDmv5oeiJP8hV9Duk/mR0NSWi97Hay0Ui4CMCtSTs9Xuiy0MuLGSKKoLQf0Z2dNhPsTocJYMAxp5xoVS+JpXetXYfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cNp6g0lf; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-42816ca797fso28452875e9.2
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002105; x=1724606905; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hhuA9c7h6Ndx7b2gNYwCUK+Xu7xpSh00KRH/cvzVhGs=;
        b=cNp6g0lfdXJhU8u9jN4bcQYotUf+QDYSmLiUK/rcFi5+zS2scYQnUfvvPG7F2FafRx
         ROpDw3YA4QvMOYYwFdnbNGIPsxVjqH1Hh+mvFu0DpX1+bcxqfQlhNZyiVz1v5q89a/Jb
         q8QzdWFGcuII07Ln00pEJaYdCE30PoShryps2D58vOBor1L0uiICVIPmk/4ADHymDZd/
         lnW5pbN5OSEIpVgE8ZAgqnU3PTU/WNSZherZupNO4KX+TCpxlxVLgUSyvwwyX9Ae4zNH
         bb72uYQsxHXuwMc8BCvpVSfE2iHEWv8Hi2sAYoR3QYcIF9186t9bn3w9/9jdb2l2eFdG
         kM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002105; x=1724606905;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hhuA9c7h6Ndx7b2gNYwCUK+Xu7xpSh00KRH/cvzVhGs=;
        b=Z5ssZcvk5TszSlAuWc7ZXxSC6rhUAPNiTN+lPfA0DfU+L/Mtx4TkcpqcX2SRfoiSOs
         b/Xpijk1VIIGklh2ypoyNIKB1dm44haqexc87VIP7IxbbEpnU2uCRal/N76V9vye3sQm
         K4lqbzUrUIqfXGVaa/LbQjTWEdn48L7vVBjP1KI1PTMueuktjxYfvo7o/3HrAE8E8F1Z
         qNqm2I1QZqgQl7pANVDHZ1zWM/xMx90Z+cvAWpoTS7NnCHfCglwdxVRE1TcNDgFwsRt1
         awVpgnfOsLlolc1xPyyIvkNcWrDBJc5yQG0Qek/2fLSjgdsoKCZGaT/54nCXDxYgRt0x
         6tBA==
X-Forwarded-Encrypted: i=1; AJvYcCWQkAeA5+TesvyzKjS4xNcOPb32PLuvdqekYoWwuIdt4JghPa3W1VKSeVV0ChgUTTp1Ax62yN5FoE/7SnTQZTkQLlw0pUG9mxirOA==
X-Gm-Message-State: AOJu0Yz0NVtpnwopxg4QxtZyIDtF00hFH35bM0aix73IFNloLoYvSm6p
	/uga4BZ6SWvi40E7LvjibbwNPRnWdfKYjpv12FO8lsauOMNTzkjTucf5hwn9z64=
X-Google-Smtp-Source: AGHT+IFJtKyLcd94WHEIBe7tM5bS+bSCMXYTqMqaJHfJ0T5hGXhE0wi1Fk4/KEVxjma5fwfMqVuZKg==
X-Received: by 2002:a05:600c:1c24:b0:427:9a8f:9717 with SMTP id 5b1f17b1804b1-429ed620183mr67450785e9.0.1724002104637;
        Sun, 18 Aug 2024 10:28:24 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed79d9a7sm81846195e9.39.2024.08.18.10.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:28:24 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: reset: socionext,uniphier-glue-reset: add top-level constraints
Date: Sun, 18 Aug 2024 19:28:19 +0200
Message-ID: <20240818172819.121697-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
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
for clock-names and reset-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/reset/socionext,uniphier-glue-reset.yaml     | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/socionext,uniphier-glue-reset.yaml b/Documentation/devicetree/bindings/reset/socionext,uniphier-glue-reset.yaml
index fa253c518d79..babc563ae61e 100644
--- a/Documentation/devicetree/bindings/reset/socionext,uniphier-glue-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/socionext,uniphier-glue-reset.yaml
@@ -38,13 +38,17 @@ properties:
     minItems: 1
     maxItems: 2
 
-  clock-names: true
+  clock-names:
+    minItems: 1
+    maxItems: 2
 
   resets:
     minItems: 1
     maxItems: 2
 
-  reset-names: true
+  reset-names:
+    minItems: 1
+    maxItems: 2
 
 allOf:
   - if:
-- 
2.43.0


