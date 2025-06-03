Return-Path: <devicetree+bounces-182461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A952ACC603
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 13:58:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A204D16CAFF
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 11:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 137DE232395;
	Tue,  3 Jun 2025 11:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RM5noWJA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F27231836
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 11:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748951856; cv=none; b=kTpxIyB8rKLHxMsKWk4fQ/PHquZ98DSvCxltK1p0gNb0WgN7xpK13ZFScWI5CLT4QcTz/bmb37eDn+R6PSyK6frLguMgtJYWcekS/QhKxN6igLKWXH8P86dizs95zlNuMsJEKRbJCo4Xmm8ua9zRBCcPXBXtTlngt3R8btPJ3Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748951856; c=relaxed/simple;
	bh=H+6vQ8kkEeYZu8N/t6R0JhPBnLddxAjO0+PqCquNCao=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O4junL00jWEKqZCuE5IGBTZI3NXrQ5wQl0pl6K32hxsJpytMUMtZ/iZ1qZdO0X1fa4+RVQTjRiRFbS+2B/5DF2JelwajLbdO6XHq4qxljmZX51kzLZwl2j0N9pn3JkgfMejM3JuPlTxprlO8EDKZDVSCO5AIGR0KC17TndM0HsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RM5noWJA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-450ca8e6d05so1739295e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 04:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748951853; x=1749556653; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AkhPqPyokGiCNL8dfKTXdO+jBSmWZLLyi7+WMgDPG7A=;
        b=RM5noWJA0SYLj56u0L2Os1l+pO4uNaiDNPsmXGrtfFWQH/mzDZ3X8v1fjrsyB/do7q
         8u5UkjqVFj6/npowta7qs8hj/reyuSDV8lppFlZKUAlwwphEC669NeTKD7pqDN7UMzDb
         8AoXJnJpmspvOUacJmmKVNWU8lNClFE7IpUQ0I8aU+qEqDIU56QOS9TwXY7s28Urn7T+
         Zd6whYpxsEMCVjKOT9mG7PJTNQd8V5TWpJ1Xtq4P8CSxWPb6BSIzRkp2Qa1tJIhLBcla
         UH7bcmIb5rRmZfjlx0WQ6eeuThKp3zPzUlK2Wa05FRUMrAAIZ4Z9vaLUCHBKmTe2sD7k
         mRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748951853; x=1749556653;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AkhPqPyokGiCNL8dfKTXdO+jBSmWZLLyi7+WMgDPG7A=;
        b=aoYgEX0zuNeQwa4hqw+BHgVzKCP0kk3dzz0TsQyaBap+A2havHaf6z2ZLzvg9+xiew
         OdDD2iH+rrwW1UjeOVg5u/5utLdtY0ZFarSvFkh6YNp1pv0AYXZpZR1bIiG+AtLdklR7
         3hwR00MM8ju3dK8/YRGWhpWzs8U0DaIwxsI3JlaXqxJUIC5H9voxzlAg02y6J5+iFee8
         7nAe89OXS1d2sasqq5avKWL4S3NoeXIUPRF6iUIGVYli2ElynyVa/KABSibrIfss4Sur
         zLJ3kqR9Lx9UjUO6sgjLDDLgVX35UKuz/TFXl+finB6u4EWfEdbHiZH27193XQKhF9LK
         2Q8A==
X-Forwarded-Encrypted: i=1; AJvYcCXzXqTH8w7+1hrvUMTnnYyYoF3VArRFoE1B2chBOfE7dOEbohkxzzAxWWzqpLFt/J5fUxvunvF+oB4i@vger.kernel.org
X-Gm-Message-State: AOJu0YzKz8ssKurZWWhoZydLn+oSeFyhUGnJO5PG2PixZBnL7Swkyp/D
	qlakpynrUu06WZKZCy9qsw1s+LtfLwOr3Q6/LkZn6gus5sWJxoSpElL95dNgdyyGh7U=
X-Gm-Gg: ASbGnctME9PzlURSH5BUk769q4PJV0bK+kFfGFdSrhvZy2dxit+PzxBg8a/DYEwWEyF
	K1dTOuF4ceXI5FXwfuUWnoxfvrr1qhrvH105FhwK79tm1B8FFrwAeLH3hQBQFMI5cf/fDdtSwfG
	HyY3pl2bei2OytIMotvndpAuQpN/7RzucYlnDOcP85gv6F0vkUu7R6JZyc9yF3DOW5yaoejIju+
	5MMUapM376Yg7Gu44qsCNQEPhEYOtovEKFrnRP03XM7io6D2i7h/1KC9T5nJ00yEBFyeXAvAmGi
	sfwTyJGcAQOulshKGc2C7csEu4Cun7pgxbk6wqIxwnYKLx29ZKOPShrFot5m0ccEYIIaMS6m+99
	evBhajTWtOvNe3GzMkIjUrA==
X-Google-Smtp-Source: AGHT+IEIdRGgKrmg9eIPwusMN4coMc3y/Fl5QTtPAy4hr0BEuWlRYIqpATHkHHaKQ/oVeyqsm4Wl5g==
X-Received: by 2002:a5d:5f52:0:b0:3a4:dcfb:6f98 with SMTP id ffacd0b85a97d-3a4f8984976mr4415811f8f.14.1748951852870;
        Tue, 03 Jun 2025 04:57:32 -0700 (PDT)
Received: from [172.16.23.13] (adsl-84-227-104-5.adslplus.ch. [84.227.104.5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe6c7adsm17671666f8f.26.2025.06.03.04.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 04:57:32 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 03 Jun 2025 13:57:11 +0200
Subject: [PATCH 4/5] dt-bindings: mailbox: nvidia,tegra186-hsp: Use generic
 node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250603-dt-bindings-mailbox-cleanup-v1-4-724407563997@linaro.org>
References: <20250603-dt-bindings-mailbox-cleanup-v1-0-724407563997@linaro.org>
In-Reply-To: <20250603-dt-bindings-mailbox-cleanup-v1-0-724407563997@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Nishanth Menon <nm@ti.com>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Sven Peter <sven@svenpeter.dev>, 
 Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Neal Gompa <neal@gompa.dev>, Hector Martin <marcan@marcan.st>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Suman Anna <s-anna@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, asahi@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1323;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=H+6vQ8kkEeYZu8N/t6R0JhPBnLddxAjO0+PqCquNCao=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoPuMeEkx3emRaicraRsdlG7Qk+79kckwyGvqvt
 XqsNEE9H/CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaD7jHgAKCRDBN2bmhouD
 18v0D/9K1Jmn28bJcnZym4p7/2l524kGy0WHkj1kJ7p663rVCLXVsBqAtmClz1Ha+PdTJMfdeEd
 MfIY8cyQL0enStoD7Qwhc0OKP+kdk2x81uco+5g8XkwZw00MqrEV6xeQ/a+584D4uM9Y4mUuzpY
 xb0R6Rzh06VO7eZWvGttFDTtgMPQEezaSJ0rXDyUbkjQLVY2BZ3oi73oZ0KuqA76/boFe5Iu68G
 HpxQAeT1mUZWCaf5+8v9+H3A1ad4qKHAQXylPTO29W0kWmEIGfWKmMnhZ97iks1gzkZVeaEz9sK
 Kicl/QruPMpE1oCHrMwmoQXNl4Wrx1YJmyxGKFhg97uOzpZTnEP2P54wvwE2FD2Tpt2T4dpItgS
 La4JmIJO1MTb2CWQBy42+ymq/Rus7qrUH8VsbNUZIhYtz5z8snJFzzzfD9LQFhcs31ufhfATuPB
 aakw+bOPf9khBRBGBkqPpfKoHTg/T+5wJPmNdT3BSHz+3o+Zx7x0PPO5fCa/G62Cvf2rQKGipUq
 Ow7hIntbw4FA8pe79J8wK3mK0JY0aCydyWV76u9g7W4CbBKeiq5l1gOJDPqncQ8Hv/HLQrAt0ny
 L+cdfkucZCFNmHgazW46Bdxf4u6CuN8JHeIIXwPBYPqmm7clEHdJ2OsrfYhvp2P3Xt+bBdTJLjo
 6Cv9kBlwsqkJehQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

According to Devicetree specifications, device node names should be
generic, thus Mailbox provider should be called "mailbox", not "hsp".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mailbox/nvidia,tegra186-hsp.yaml | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/nvidia,tegra186-hsp.yaml b/Documentation/devicetree/bindings/mailbox/nvidia,tegra186-hsp.yaml
index 2d14fc9489998a8dbe5356e2422748a228693d7a..e1a44e4ae6f91eaa1cd81b357e9e5caeaaf0f5bb 100644
--- a/Documentation/devicetree/bindings/mailbox/nvidia,tegra186-hsp.yaml
+++ b/Documentation/devicetree/bindings/mailbox/nvidia,tegra186-hsp.yaml
@@ -59,9 +59,6 @@ description: |
         <dt-bindings/mailbox/tegra186-hsp.h>
 
 properties:
-  $nodename:
-    pattern: "^hsp@[0-9a-f]+$"
-
   compatible:
     oneOf:
       - const: nvidia,tegra186-hsp
@@ -111,7 +108,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/mailbox/tegra186-hsp.h>
 
-    hsp_top0: hsp@3c00000 {
+    hsp_top0: mailbox@3c00000 {
         compatible = "nvidia,tegra186-hsp";
         reg = <0x03c00000 0xa0000>;
         interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;

-- 
2.45.2


