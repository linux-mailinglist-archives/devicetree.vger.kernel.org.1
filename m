Return-Path: <devicetree+bounces-211602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB5DB3F9FC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:16:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8AF911B20106
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228522E9EA4;
	Tue,  2 Sep 2025 09:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AZ26lbrb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4259B26A0D5
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756804545; cv=none; b=snuUTRLMTcD6e00TVlFl0FHj8bPbkljB3pTtw/QVfPuzn2d8S9itgvmE/8rGc5GVTrjDU25K6u3bVLTm7wQ+YVdLB5FLsyMMLngxa+NYkJGlDq1oV9zIqKK1LIPmgC5mU1XWHZWp0RyR3fy+7LOXZh0vzMiliPEKKEhNrndF3c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756804545; c=relaxed/simple;
	bh=pK9+ijRl2j6HN0tN4nwtWsdeKYO080hTPBOS7dCkey8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nHozxVwAr4KdFqmr0h2eQIy7o9WPtI+4Nyzd4ixAqhDEOlGmMt4iIBlzaNRZfRLYErfliFe1g1N9i6p7YuBdv6ceEwsybBUmBEr7uXVOh+BPf30YKSz0CWfUHMzOalyT3ygWTQvnHhMW9a8/MsPNutK0HKDYJXSE51wheVlKOuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AZ26lbrb; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-afcb7a5cff3so92381666b.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756804541; x=1757409341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d8XZj58AfuffXLo74Vy8aYlA//3fYOnrLNQd7UOnLAM=;
        b=AZ26lbrbl5dk4OfPnHBjV8pIrlSy8zK7cVzE9RYZBhmlndYQepLUi8x3NlgjKhPoUG
         I/dkqQl34uVWRXOYiZWgfHLeWM4VSM1bbHVRs/LVMTIdPBDKk8HMb+4RrtyrTsQeDXVT
         cXS/cwLxFRaYcAzHEn9UkRma1SlQlTDRhbS4QlSIYGE4TBCS0pzi+SN/nZoJ7Zo2lrh0
         PT3ZUddwF70dNy9RUKNFb48zA6QG8Zhp9/Pi+QDf17GEmL4nj9D8m4oYO+ItcvFuZ0cc
         ZP487mF2MdBW8+G0FYt40zllOiqmRpnGVs934IHtyANfVdHXqXs4lfpYp5BsaBVEe4cd
         /ZJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756804541; x=1757409341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d8XZj58AfuffXLo74Vy8aYlA//3fYOnrLNQd7UOnLAM=;
        b=GA13mcR4xrbaqo5zg2FFiEAKVD0EPCicdqPygrC+lVk3t/TTDfE5dU2/9GJ+nkYEat
         qu8M7zsn9gqYZjwxqGIztpWfzUHxKBMi8QZyueYn7hUNXJcdspezk/g6DHhtDE2SwnyT
         z53aRtwZMdR+4bd+RYXrL3vSKiq5uxQSxcD2NngJ86ONUoSfUS8553nPDtqWmVmhmK8G
         QAGcc9MyGXV4hMIeDRfhakKerAPXS2nwkZkd306Q9c5CvAxd20dR29w0Oj91oJPhPRRj
         xEc30UdpQml/SQ3RmnxonRKN1Bn7CcuK1TMeWVAXDLxZbmZgg9ptwN+II4r9ABosyLd6
         ksdg==
X-Forwarded-Encrypted: i=1; AJvYcCUbM7wPsgnVdUkIpIKrl6NHyC/a/mlWwpEw6dbsBpxmQdx6femGJQzGn2/zwYSLCaHqWJvz3cSL4Iz5@vger.kernel.org
X-Gm-Message-State: AOJu0Yww0HFASY2hwL2cHRxfOHKKnfYx8PcK5pYP2A73qFsnrIx6XWkg
	Kk1j8NsZBjUkyr/Na0QLy4IXkBuR6f1GHOBljyR+t54NCs5DEgrUdOV1BaACvfnhPus=
X-Gm-Gg: ASbGncuqsbQyzVT3cGmsOYn17hk27DunNJz/OjOJKKtZqzir+UBLXx3hPa8xB3TAPND
	rGDhP+D3XS2NBRc1w3UT0XSahJT0/BV6WPjQVFgk8Gyyb1x1MlVQIPLb6EflYp40sICS7cboJxo
	H1OWl9aBLFfJGnQZhbD/XqEco4M18F1ZXZFUA+OgHv1U3FftUTTZgpnN1ey6OZ25Q/Ve6Zl6Bkl
	elR3XTYKZfy2R5VUHHicbunJ3hVLt6GIWnOaYRyGFKkdRz7OsitaikStnfEBylwfxc4H3BYCjEm
	AOgPf+RKXIhC9fGx+WsQZitB0vW4dPuGJgayqTgEwRF15m5v5jBWDAbDyWZsEsSfut/S+sETjCT
	WmAeTvEdc1FB3rt5wI38dwMmy/54nkCaZ3w==
X-Google-Smtp-Source: AGHT+IH7ISdvmk9LdLXUfb47YUHhoUHT34kW8bHgs46FMafpaBt9DhVN+MYvqleNA7oVddSWHu0KMg==
X-Received: by 2002:a17:906:ef05:b0:afe:872a:aa5d with SMTP id a640c23a62f3a-aff0f022fa9mr729067566b.8.1756804541416;
        Tue, 02 Sep 2025 02:15:41 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff15fccb15sm877008866b.98.2025.09.02.02.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:15:40 -0700 (PDT)
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
Subject: [PATCH net-next 2/2] dt-bindings: net: renesas,rzn1-gmac: Constrain interrupts
Date: Tue,  2 Sep 2025 11:15:28 +0200
Message-ID: <20250902091526.105905-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250902091526.105905-3-krzysztof.kozlowski@linaro.org>
References: <20250902091526.105905-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1016; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=pK9+ijRl2j6HN0tN4nwtWsdeKYO080hTPBOS7dCkey8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBotrWxaTzC0t9SB2cO/DTD22p3u2YbOPnNDsqYC
 JeNdd+LesuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLa1sQAKCRDBN2bmhouD
 1/h2D/9Sc3syBi5afN5lHFwOrNyVsaCUZeb7toIaCPz5fDF/nnBxaDdqMiyBKHv+oWOPmQJcWXl
 J5Q7rx9JPyBEC3B2rKaONy95EOxJaAFqrC2rGq1OL8BlgWGSnl5MUK1xX9pFC6oqM4rSoAxbpUI
 LCikfUeSYsAK+9M9Ej0b59qoAjb3fXf3pK9s/WY118krSdhyuWzfXLWchmkPxsrSSubHCYncveI
 O1qKtkRVG8+hrDE3h5Q0AAQ709zYOi7sh2kcDOxsX1EVdnkuCotvvJy6Hs0nDsxb9NrQ/gQj0fv
 L+2Zq9YiQrrv3XYDZsGx9C5eb1ZT6EhIbqXTCL1s6cECGTHXwANAQa4k5nqe5B/QV7WMyayJ6zu
 iQEiNDEhurJ0corFkb8SQJeov67WpP5pR4+1AOHxcABobdrHitKZ6HkNFivVjRuPEZ/hrk5Ls8H
 97EzieU88wgVgrnZ1l9BDz0xvjQcQELkttmXFIUBSagjLbdvX8074/XpxaelVnEhYtX68CRmpci
 2XBOhGrWS9sSd9ftltSwznhq9BBTVL/taAp4hZdq3uZXfoEEGahSihXA98O0n/oiMOaJJn7Yuoo
 +zS0+m38Zk6zbpnex4B8FJsk2zB2accitUUwpoHH/AtazIZAcxo44rYPPKKLJvBcZR4+GwPQFQX GubCOLzxqThca5w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Renesas RZN1 GMAC uses exactly one interrupt in in-kernel DTS and common
snps,dwmac.yaml binding is flexible, so define precise constrain for
this device.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/net/renesas,rzn1-gmac.yaml       | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml b/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
index d9a8d586e260..16dd7a2631ab 100644
--- a/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,rzn1-gmac.yaml
@@ -30,6 +30,15 @@ properties:
       - const: renesas,rzn1-gmac
       - const: snps,dwmac
 
+  interrupts:
+    maxItems: 3
+
+  interrupt-names:
+    items:
+      - const: macirq
+      - const: eth_wake_irq
+      - const: eth_lpi
+
   pcs-handle:
     description:
       phandle pointing to a PCS sub-node compatible with
-- 
2.48.1


