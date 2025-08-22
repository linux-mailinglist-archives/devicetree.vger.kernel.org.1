Return-Path: <devicetree+bounces-208298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3D6B31FBD
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 197D3B6063C
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8641F2550BA;
	Fri, 22 Aug 2025 15:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JfO9TjCs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9818C23ABB3
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755877600; cv=none; b=LcWlI2iBUnI9//v1himr4B5JtFcrKq6ss01jSLTBp/BXWC9vmHs2rpSwdILosJ4/N0hfb30zCJc0eqUk39MndkfLhw1gbPjIcTD/wxzKwbLv6Dv5yPPp4ZPR1InVwDNkegNeFuQEUql6CWJSjsFN/wbH1zT8VJ0XAez2dh2VQHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755877600; c=relaxed/simple;
	bh=z1hUv6KsVfdsqANkHfljJHbn19cLr05ZqjD4NTsAvxo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W665ZHy7ZKAeaRk8enxI+aVH1HvlS5MMf2zwPY7RG9NUgo4/t2f3fviP7I4+lbpLMSDqpEOarXP9/31I/YPF729qd76/MNG4T19rY5bQRAdJGcX8Sjiq3Ura7z9mNkYHhFZ+g/NG/W91KULMBAuXKZRzEKJtJmShhGDlPoW+Cbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JfO9TjCs; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-55ce52807f8so2178376e87.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755877596; x=1756482396; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gHPjvts8CpUfCJyt05T/dLXMLgVzDOK8mKME/4LBuUs=;
        b=JfO9TjCsi/qo/lf8GtnhyQY11eAAhLVscgW1jkTkR2MjlyLWnDyIxwXT5FTgZH6CaP
         iN3rMP4P8sCGFFXUk2zewZ3EWZkKKZajv+OLVufVMH4BTnX8OMpc7kwjmhfm9PuXJg4s
         SzYFNIn7LRBJZ32Nwoh+V0EEJzjvdwOzJHZNcRNguRtvuZ2YRazPtEZJZLkm63JWZ21t
         rkR71vyyaK/eF82iG/tFrGWY7gTBDWJpRFdhMmswuOAvQViabVbXpQyT8q2Fhtaa5H/A
         WcIV821PbxleIwubCtjeLWCO/SZJb9aTS07c99OrUUYMZMCxRCSKdotyECe4f4bSaOIK
         SecA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755877596; x=1756482396;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gHPjvts8CpUfCJyt05T/dLXMLgVzDOK8mKME/4LBuUs=;
        b=ABP4tqh6f2B/cry1QrFNxbq/X3/0MN74xRcAFZh+LRMx3/E6Q0XN9+euxJ2ZaCZLYQ
         bTprcLLY1tTS2fAbbpmcovQM5p6RNX+pprMLjEDn2mlAD/6baOZM9I1252v+YuY/k2zM
         HsazOtmdp4xXskUnCFORm7sC2DrSEwfaSbA0xx3+4kXPw0YkT77oBOzobEH1ScFVSAji
         Ii23kvOhvH00KdqNB7+dxuWS1Z9FiNLL2u6aA59Bnmol8oFnmqZE/3A0vMqk4p6kdvm0
         QnUrxZWPiky9n2WAALwfKQtk6wNnPSVhcCz67jrMi0Z08+PiEy+DknOCskg1Kjxmp2do
         6Wxg==
X-Forwarded-Encrypted: i=1; AJvYcCXcE8x1prKOUXAJv/YpkYVlZMkQodmFCfWK2Hr1Hvl1GlgZ3ouQ9BSQki1NsudB4rxs6h2ZcraYYGKU@vger.kernel.org
X-Gm-Message-State: AOJu0YynGPYJOu1Jva4dkCc2pgjWkbL4RNqfBErxCbquzTplyW+OVXTE
	x7XQn2O9Oy2bK5pAgCP5YJT3oE2yIri1mjgsvxMNzkkVRmz2MgYM1SspGhScSmGRjz+O7yf+njZ
	tXTmSiwE=
X-Gm-Gg: ASbGncuhuakwhtlfocNDfc3t9wKVn1dQ3vZzG/oI0Zke9w9iKDOI9X9PHfjexPYIX4B
	EYyjorufs7ss0VDjTwdJd37kmdi4oahdBZBS7jUh16/bd1QF0GunySnswXYVuPV5Z/BpBde5VXf
	RzsKieZtX8CFGw9d4jUNeyvrCAdSokI/ewRBAanzysqL2gSzvPK4N6vOeDyPhOpW5TAJQvLGEbF
	24dfOFLnRFq4pbtWC3uzw2a5cbXtwSvT0x375EggU4fjZc45Pi2HjO7HTlyhzJpHNbj8z9l6GMV
	vPxNM6AvV8OfJc51MxFQSGnhd+yPD8QRCavaLskRbaQ6W0iH3N0jPUsrGvwUzWVxagXzfNZkGtp
	FYmqlt5fK5uGwj6kJznpHLyKSNmwKgdqrl9vJZ3mm1xY=
X-Google-Smtp-Source: AGHT+IHen6twnK0xg5Kvf9PnMf7cOX0tVM9CEp626hj9X4Vutbt4jpw8zdjkHneKZreTIxDKcPpRcQ==
X-Received: by 2002:a05:6512:4281:b0:55b:9424:dda5 with SMTP id 2adb3069b0e04-55f0d39675cmr1038292e87.44.1755877596170;
        Fri, 22 Aug 2025 08:46:36 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5d1a6fsm56541fa.49.2025.08.22.08.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 08:46:35 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 17:46:26 +0200
Subject: [PATCH v2 1/3] dt-bindings: gpio-mmio: Support hogs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-ixp4xx-eb-mmio-gpio-v2-1-bd2edd4a9c74@linaro.org>
References: <20250822-ixp4xx-eb-mmio-gpio-v2-0-bd2edd4a9c74@linaro.org>
In-Reply-To: <20250822-ixp4xx-eb-mmio-gpio-v2-0-bd2edd4a9c74@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

We use hogs on some MMIO GPIO controllers so make sure the
bindings support this using a pattern property.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index 87e986386f32a4a8ba257d6a4d8da492b05d5bbf..ca32317dff85bc72aace6638dabbdd91de5e569b 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -89,6 +89,12 @@ properties:
     description:
       If this property is present, the controller cannot drive the GPIO lines.
 
+patternProperties:
+  "^.+-hog(-[0-9]+)?$":
+    type: object
+    required:
+      - gpio-hog
+
 required:
   - compatible
   - reg

-- 
2.50.1


