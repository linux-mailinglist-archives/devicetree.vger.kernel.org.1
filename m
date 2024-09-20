Return-Path: <devicetree+bounces-104083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB0997D2D7
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 10:38:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 960EE286ECD
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 08:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F1F137C37;
	Fri, 20 Sep 2024 08:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AkMrzAu7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64ABC7DA84
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 08:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726821492; cv=none; b=cH9UrF34gc78toD7f4cEFotcLYakbpr7/Smp2yrzj81ghShfRTDFTNMCtnprt7dubJSbQOeBZLKe5rBRrbfwmZJjKA1+BJDpQfw0zsAGVyCmx0ifdwiQDfhqt8A7Uo5T1Z55jo2hCKmKkTkmfPjg9jRQmbZO0uyCjNnNezWMNDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726821492; c=relaxed/simple;
	bh=j4Lbv6zNfqApM1V0yGgeKWlfIsHLow2v2D7sYIjkoo0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RzMeDe8ol7ysEJXiEg0g3INgAn6N38iJhbsXw137DXenD3tm2h7J0JGK2IVb6XDPkvxlkpmXtemYqu6YCddxHSzNyfX6M/K82y4yk+EwblZXhvgU8zCasaUchalS25WnwcNtu4cet5xEIxHKZZtNjHKFPpD1ghw00D4PWoqNo58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AkMrzAu7; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42cbc38a997so11071765e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 01:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726821489; x=1727426289; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gT2RF7jns1eZm4iFgSUdoY+bcOaQqGhahQcgK59xcso=;
        b=AkMrzAu7yrWitnkC3UKoT/+1rXM/yE7DLYRKOswCD2y+FdUSbYKa57Sl7LKPfgbPqY
         /VvR2TQzcoarN7I1Tp2Pfiwig0c3lQKPiQ30+yLmhpWTWIWL5QVcDFDgCYqZdzPmenOk
         wlbM0bBOJpL0QDHcLrLTl53VwrkF93la0V/6XG8q7Ev6fxiAyUVALhm7xR1P9YBBiR73
         P8sMlYcnD0AUNb+r1Y446jKV13UzVevRgqPj3adrhHky3OiPW7wpY2MTy1q+2By9xdXO
         GLYpgVvJJGjQD4tVaD+gO7oKZfPZF514qvLwVSfsBCXxVAILnO8RKW6AKFX3+DEncqwe
         iNSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726821489; x=1727426289;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gT2RF7jns1eZm4iFgSUdoY+bcOaQqGhahQcgK59xcso=;
        b=VXYuLkDAOePcEpkrzSxz1sD44iQhqCMDX2ybBAHLGmZjUaQ/+1xK8stV4/A4WX4faJ
         TSb9vqXo/94dZlqJWwZDjPjSVhEjCorcIhJGbrIVr745ucmjuy8iZJh/nUj5fuRU58fh
         rcLaQc3sn8kkkz7XtkXGyZSHkXvQXW6xUr0c//lXsq+oPJTS9Gnsdk/vJlBIneXMurZH
         EXg4mqtteLawDmcQj/pdbD10K1rGhEDwSEa64lYYvYGXJDafRfv3q3CJtaf9xJj901co
         RixpkbAKPaYdUzP9rulIQQpZpaOuD7GoXNv7AXbGFR1PxjU+iGKfxlx5sXey66EOg9rJ
         B8nw==
X-Forwarded-Encrypted: i=1; AJvYcCXSstPe8FPHC3yqGpb7Rf+ZJUlWPj4zAE0Xo2ZgThN4h++EY6AOPvz+iUDGC0sc+Tl1q2nbrPqRb/53@vger.kernel.org
X-Gm-Message-State: AOJu0YxKbDKyazZB2eOGgTZboshEApHMeNTP5OmmvKYUnTw9ifWGvUsp
	hNza130Oi4888ZugBkMD/aMyqtGJ5kr3Q+jH8U9XnmgPet03+XFHOcitdW5ojfw=
X-Google-Smtp-Source: AGHT+IE5iYFX6WbTBCf8hPKKmvc2byWHvUXMxBGORLFXUMBKGWVjztPI3IQQ7+Y9YV7SsSQ/lBAm2w==
X-Received: by 2002:a05:600c:444d:b0:424:a7f1:ba2 with SMTP id 5b1f17b1804b1-42e74480c34mr32809545e9.17.1726821488647;
        Fri, 20 Sep 2024 01:38:08 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e7540e2c1sm43099165e9.2.2024.09.20.01.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 01:38:08 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 20 Sep 2024 10:38:03 +0200
Subject: [PATCH v2 1/3] dt-bindings: mmc: controller: allow node name to be
 named slot@*
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240920-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v2-1-5aa8bdfe01af@linaro.org>
References: <20240920-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v2-0-5aa8bdfe01af@linaro.org>
In-Reply-To: <20240920-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v2-0-5aa8bdfe01af@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=822;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=j4Lbv6zNfqApM1V0yGgeKWlfIsHLow2v2D7sYIjkoo0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm7TRtOO5ZDGB2QmQUkPJ/06kTzIWKKiisCP4shXUQ
 InsXEMyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZu00bQAKCRB33NvayMhJ0e2nD/
 9IWH1wZJU9XdD6gMI2xMEZU8T0xA9K+1KFRbOZVINbrRwYyTirYYoTlr3Xm8nG6AJ7LXYMa8QLahEw
 9U7ToR/R/hBkPgUyTbYdpkLxsahke9cMoCgPiiO6XKceTjn+YHkOx5RVOCt/n/Suj1sxZXenLO7tAn
 ztn7BAmhv42WPi0Z6+6gqekvb2Yro7qJLFCvScppDy3MUeYRAq6gNqfjkUuWorrPg45lMkFVcjD+RN
 PPaqGpZcSg3+r5slvgETedy5DUwt0qPG4WupRFtfBrZ0JSI2tUE5MtRSLkAWGO0aghjCFcoqrKDxdb
 goO5xpfV3aapOLYmzF+VaSGCtMoJQyETFJ5UbnjPSZZL7uKM1wkcpS7pVpG/gFs3pwxTYb4u3zKq5B
 wiQFNSLylTCparrRpM3p/ttLUJWqKrz6tv6Bvulda8v95d71BPn1O9xofO/AOR+sL2weGWs9g0HESg
 3qPSTlC5RWI9wrY/7F3tdWGcZ4K6GbrWKXxLf1pWcv63Hj82CETY+mt6ku8cNfChUSX1itt3Lz19oh
 Qeh074UwOJ+ivJ+pHI5dFrQhDFLnhRkl5OvqTSj3ec2AkW3dHDUxYYi69r2Os1zhr1LSrTOOsUfWdI
 uz5/RuAmJ4pMcld9lwSnU9WGNcBZUmwoVy0rDB6jeOkJ+zlp+ky7hp00ZLOg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

In preparation of supporting the mmc-slot subnode, allow
the nodename to be either mmc@ or mmc-slot@

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
index 58ae298cd2fc..f797c32ea688 100644
--- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
@@ -20,7 +20,9 @@ description: |
 
 properties:
   $nodename:
-    pattern: "^mmc(@.*)?$"
+    oneOf:
+      - pattern: "^mmc(@.*)?$"
+      - pattern: "^slot(@.*)?$"
 
   "#address-cells":
     const: 1

-- 
2.34.1


