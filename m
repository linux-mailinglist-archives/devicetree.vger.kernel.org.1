Return-Path: <devicetree+bounces-11304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BE67D515C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:20:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35DD3B20DD2
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E5F02AB3A;
	Tue, 24 Oct 2023 13:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RS6oO+kO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0707929429
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:20:38 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 925C2129
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:20:33 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-507a3b8b113so6680965e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698153632; x=1698758432; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UT552xSRxg7vfw/B4jlHzjbiGIGKhdCrIlQ9lB9ogSk=;
        b=RS6oO+kOF6nFFUVyLqUXSibAbxFVFD2hlRtuAZmm5qt2pu+qY5uBmBvWge6Dos0uDr
         4CtOsOImZWm1DeRwDfsVlV8eiKIKskzDay04kBVtIIOv81jIhU+7FgKLtjFZ8x9PeEfN
         VK6xhrdVk15l4GIpzzZCU5Vl+Pd9wfEYgQXyyP2IihEHDfJ0ST8cpc3QpVjHDMFphJc2
         eluxCaR6YYRBznfJrluPosuTuEBQgdKQWOe/TlJKv4xrCZEKewbSCE0t2IQctjBayRcg
         ICT+FSUc5yi6CbyJuL8U+cDuu4WqSULFW4pAQJyrq/tLdG3ulXrM+ISVFOTh9Iv9aQFt
         J5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698153632; x=1698758432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UT552xSRxg7vfw/B4jlHzjbiGIGKhdCrIlQ9lB9ogSk=;
        b=Sjq8lhQlBmZj5Tz+qeRVyM7xWjQ4GMhkeFZCQ/SfN00R3xZYyY8YEptB0soaWqNb5Q
         SDGkBqBOKXpBzUCyuG0SsOUUbLx/1clieAkk9HCZts8s14XQ77f1mCARTpTg8hUt42X4
         AB45pqAZS3SD5n6ebH/ApebWPWjzd0lrTyjyPnLyyX1Ft2jfQm0iBo10qUHUANRoBsLA
         +wG2/6vbwVozmYVt8RbNRDrUNhO8OVAjZnkeeIfwI6WGIAee8kpspPrKsgftddst4T2S
         JcgnvnMiJp3KVN2Ae4hJ+1fuWRx77HlUlGi/C33rm0fSwkUVebpih243to/a299nlc/c
         rIVQ==
X-Gm-Message-State: AOJu0YxbduELmi9NWMfrXGLzwZ9SzszKCz5jhVX84s58waKI3TjLYc0o
	b1Cwq6PKtSCAOMguAONKR8bPWw==
X-Google-Smtp-Source: AGHT+IEj+KMeONE10q/gquHsR7jOzyg2PFLfGY6LK/CyGvVzrP9Ev1G3Y33qwldjE7BWxEeoNM6aWg==
X-Received: by 2002:a05:6512:4016:b0:508:1178:efa4 with SMTP id br22-20020a056512401600b005081178efa4mr188587lfb.55.1698153631805;
        Tue, 24 Oct 2023 06:20:31 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id d5-20020a193845000000b00507ab956ab9sm2147365lfj.147.2023.10.24.06.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 06:20:31 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Oct 2023 15:20:27 +0200
Subject: [PATCH net-next v7 1/7] dt-bindings: net: dsa: Require ports or
 ethernet-ports
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231024-marvell-88e6152-wan-led-v7-1-2869347697d1@linaro.org>
References: <20231024-marvell-88e6152-wan-led-v7-0-2869347697d1@linaro.org>
In-Reply-To: <20231024-marvell-88e6152-wan-led-v7-0-2869347697d1@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>
Cc: Christian Marangi <ansuelsmth@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.4

Bindings using dsa.yaml#/$defs/ethernet-ports specify that
a DSA switch node need to have a ports or ethernet-ports
subnode, and that is actually required, so add requirements
using oneOf.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/net/dsa/dsa.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/dsa.yaml b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
index 6107189d276a..2abd036578d1 100644
--- a/Documentation/devicetree/bindings/net/dsa/dsa.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
@@ -46,4 +46,10 @@ $defs:
             $ref: dsa-port.yaml#
             unevaluatedProperties: false
 
+oneOf:
+  - required:
+      - ports
+  - required:
+      - ethernet-ports
+
 ...

-- 
2.34.1


