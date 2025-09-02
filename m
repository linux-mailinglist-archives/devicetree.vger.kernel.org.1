Return-Path: <devicetree+bounces-211601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F29DB3F9F6
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:15:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A8133A905C
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D9123D289;
	Tue,  2 Sep 2025 09:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dFIK/AQg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F92B1FC7C5
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756804543; cv=none; b=fTAbD0ZtRT/tGn7AcqlF2TL4vTHtDEPyrYFny2oCE95DTShjGt9r4Qe2deOHUv6zXU6+qv4TsCZe9KhJhssoSoTWefBMWN0uv6yASBB140FQVZpU/KMwcD7IpZ2qGhj7iO35Jdqfdgin30jWSeB4cTvpN2kfGqNa0QCjmrvYswM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756804543; c=relaxed/simple;
	bh=omOLYYYjh3z0DVh1O46NQbX5aRk5HswOved29mAUMag=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iF6hUW0AhQyd+Ue+TNA10bFEcakXOUIcIa0kSTFdXhRIjghhcsZL5mQFGp9zKLm1GoDd+5905Qz0xzGaZCS2mdMcuZBXbJyoqFz+qTAf0jawZps177SjMN1MfYMfoJ4mARu0WQAb8C2Qk3jP3JTBQzNpHpxRnxkGWFgLEquY5nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dFIK/AQg; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b041b155a6dso23198466b.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756804540; x=1757409340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m/8bnMdkcwBrzdormqUmLTK3k80g92+lN3p1s60KZ+k=;
        b=dFIK/AQgLm7+RhvU01FSTZ87yUpnZpvR3a4PbrcQtUjFxiOnxNvCPv5VATP8qpUNdS
         9+Pgkl2IJK08lDRWovSnq5KkWAGkZQucyhOMEb+5ux34ooFo9pjI0bAxzYMyNRGFuqCo
         HxuLXlxfG1xuNd9s1EDVtyr36jLqJ7WDG3V33PyNXV0t/FHwxzXN2QL1ZJKiZ1vf9zNp
         8F4H0VuVHeZFawqz/uO9BWko1CgXJIrtqCAEikjBvqpQISKmZDUZFXFZ8Z01oB2GVn/V
         x5c5TuJfcFvdobQcqyu8kntFp8JzU5BGC23A+m8Fsx1wKJZK6SWITknua2jwMZMYWrsR
         eCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756804540; x=1757409340;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m/8bnMdkcwBrzdormqUmLTK3k80g92+lN3p1s60KZ+k=;
        b=ivqPXRdRLErGs2La3EsJ4HH55yjEZrLxnsWuAXwK3TdZGpU0PbzRaa5Yb9MnhJ/2Ta
         d7BuXKnozYdPNylfPYECA/5mSXLPfEVVtfBR9wvNb7ElbGS68KaLDLY2OsIUnAMwnukw
         4n8sc5MKzKMn+B3i9oRwotyUmtvBVcNsDe7+jPQHy471Dyrq9LXynLlM0ot8apwDldpF
         OO7AY73eXe/cLUquKL+GIsAsikKtnEtElsEM2vvuuNKQ6Nu63CsSnICGO357JbMNJeYv
         7DZ+b8hywdOI1jD0NLMpQ9Yp5I/Stt/EF4GKX823t6ULwzi76+m35cxZg5FrnK4cqNir
         wxpA==
X-Forwarded-Encrypted: i=1; AJvYcCUv1OyNqitKhlVvTD8LRs+yxuBTGXyWaX1FsrL76M4qZJrxA9Z/eBT5/9CaBxuV8F7pgk2Tn7p6pWaV@vger.kernel.org
X-Gm-Message-State: AOJu0Yza9d6WP4yfEqMBPQFUWJiyFONN+hF6JRFoT8p2I/QaRUPx9+SB
	jsOPOrc1IWaT7PRucWPQgnxbgrhIzSVgI95yHTIoqfhWioUNF/7cQM7Ily4d3+tnook=
X-Gm-Gg: ASbGncua9HstSc6OfW+rdGWI/n2PScQSdxkwMI/g33BUebv1uBhFC1D8hjXrtQvi9b7
	aqqrhtSqjaeqiuyCws4X5qPZ9bjzVkmEHvSJUvdyIn6Lxy5dRB/ZA6exu1cbyZ40CXweiY8VAKT
	lIUcQFqUTwI+UopKuRPuPHo6lx8KZ8C5WzY9uBwIvxZkEl866dqKHrAM7+XgMiXZWGf8TttCKU3
	sEEsklnCSUh5+CvToYyUnl/jvvg0aRhX/OSG+6p0v6pBWzoOR092GDZVlZ3jravMXnYSOXiG55n
	ZcqEit9E2pfoDvm0VKXd6oKu4WK4761524ZUjG78WQOs5oBymeIOPiYCQi3lV04JcwzDhZWii61
	W2CXrlr5edEdTDaEUw4wRAecQHtSDDT9lyR+xmaNKLjD/yb42JQbpUZA=
X-Google-Smtp-Source: AGHT+IGsSFPfLqX1TSTY7vx9/w5ZifFk746DiQHROlsIAv27SMqvJyUuB9Px6z4DG9dMMXNer8ncTw==
X-Received: by 2002:a17:907:95a2:b0:b01:989f:46d0 with SMTP id a640c23a62f3a-b0198ae8b17mr566468666b.11.1756804539611;
        Tue, 02 Sep 2025 02:15:39 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff15fccb15sm877008866b.98.2025.09.02.02.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:15:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Matthew Gerlach <matthew.gerlach@altera.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH net-next 1/2] dt-bindings: net: altr,socfpga-stmmac: Constrain interrupts
Date: Tue,  2 Sep 2025 11:15:27 +0200
Message-ID: <20250902091526.105905-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=912; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=omOLYYYjh3z0DVh1O46NQbX5aRk5HswOved29mAUMag=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBotrWu6Rq20SlnUGOaA358hH5nv1fnKm5T701YM
 YgxMdCPxreJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLa1rgAKCRDBN2bmhouD
 100DD/9FY3aTCBs5BXmVSlnhJDkPZWHvDYOPI4Ae46T6toYdFe0oHBCT1ivV3pDoDGSKU73VZdG
 4E82JAx/MwQyjQ4F4iyK/iN6J1wXAQ6i61V+oYGoyKS+lR4eroU9Dx8odZXyXbdyVq3lU3sO+MG
 TDML8f+YKLY/tOdjh+vJcUU+n7Ipf9HjXQKFVmWNzWlcopnWLu+hCztmEm523MO/p1nwr7EbwzS
 AE+Q93zwfJEIQvKPuS9HS1E/MCAEVvrv+j8hvLkvmDxui+woZc/NUr111q/CmX1NgYQVyjmtExN
 /BwHQi0xOsvXemvA1ABLngFYG/dTIRx8KEfwl6pEKcqZj6MZrsUok0KLHgP0q0yP0RJEGikumsY
 mXQV/LE1skdf/aP0YwXf/b6CQ7zUG+u7gs7mGvZhYthkIhPxlmSbMsX/+TsZYDGTLu/qSfQYuT5
 WVsC78X2Hv5kVCE3+9mfwv4cuAU8quFWeKWOzdzIvNMX63WhjHv+91/WFpl17WfG6XXdGSlgztf
 R5hp2f+n5jEtt0OlSWeRqSWMezS3EsPt0fbsgR8Jub4XEpAM22Xh5X9nBqMYS2HEBd+j7hbvtib
 2d7ORY8wvGFU4MGzahiBEwPT0rO4qhj4XqcoWUECr78rM46doe2LQeEOP2JfNG/jl5b4jREKBwl 30tClks5II7F44g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

STMMAC on SoCFPGA uses exactly one interrupt in in-kernel DTS and common
snps,dwmac.yaml binding is flexible, so define precise constrain for
this device.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/net/altr,socfpga-stmmac.yaml       | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
index 3a22d35db778..fc445ad5a1f1 100644
--- a/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
+++ b/Documentation/devicetree/bindings/net/altr,socfpga-stmmac.yaml
@@ -62,6 +62,13 @@ properties:
       - const: stmmaceth
       - const: ptp_ref
 
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    items:
+      - const: macirq
+
   iommus:
     minItems: 1
     maxItems: 2
-- 
2.48.1


