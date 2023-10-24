Return-Path: <devicetree+bounces-11207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C7A7D4BFA
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:25:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7206F281780
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EE5422F1D;
	Tue, 24 Oct 2023 09:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mGWueSOj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAEA022F10
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:25:16 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4966110DC
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:25:14 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5079f9ec8d9so4864969e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698139512; x=1698744312; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g3ohJUebuUECvOi0FjqwIOrHZugSfuRp6dT+KCBYjf4=;
        b=mGWueSOjb78oBCLJei5DiYZJd1mNezLomG9F5zPlpP3eLbuWPBwoafiKKIBDVRnIZp
         ZmLLd/uWZBlWewPOxF3/Ye59zpR+01YRHOWjRDkXjWgFqCTavzPBD2UN3NN+RT4s+kLf
         yM1EAhGHsSrq5A/k+ONZhRP/7e2SblFQwl7BKWwvva/ixUqTGhfiXEF7vZ5zNKVFLiq0
         02vgzDbgViAVL/j4DR37O8DoyPvHLAA928I5BqAaKdmryPnWqHOWnlORqBZcfjC8aZBc
         XJUn9hLBD8TgkHGqQg0czBaOLfPJzztY9rUeOpNBaGTCBi80wl0LOM1OhC+bOvr7xjaB
         jDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698139512; x=1698744312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g3ohJUebuUECvOi0FjqwIOrHZugSfuRp6dT+KCBYjf4=;
        b=HnHXv78Hi/bWIo7/uMz6n9C5YURbaABP1Q/ntWOCTajCXm1LhxtTWTmUNHFvvO3yGy
         Yd1PTTYqMp7o04zyI3NJhE+YTATkBtP3fs8PXNyHJapG7h1Lnw11dEkTnta0NjNnigN2
         pw0wQLc78eHb6y7BMBveUWGF2gTLfKsOgm2PfYIRNNuc8+nuA0yMaC6CbhPbd7c6Slsm
         lviTLzvxF/wSDJZbBtWDwSLwxR3LfJd+sAdvKXeKZ8Rg4vNWh78CZ67Z3Mw19bYnf3yw
         cZ8iSTOs/kYxPFBTIukyO73uQiPJrGwTKwxdy/sVQ9QPjpfsXtcz8Bf/LvRsjhC7PU7t
         32hg==
X-Gm-Message-State: AOJu0Ywa46WXBBP+xA/lixZ3aKT2HfjfK8FKz4tXOR5WteXuwPmrmcOh
	/SWGg3HE4qwK9D6bnBqlgkcG+w==
X-Google-Smtp-Source: AGHT+IGiyQM7g5OyW8btVnjClzjpUyoGGYj82N9E2e8k/Ty2hz9D8SMWiF5JyYso8GbS/oipvF07Ag==
X-Received: by 2002:a05:6512:159:b0:4fe:8ba8:1a8b with SMTP id m25-20020a056512015900b004fe8ba81a8bmr4012841lfo.7.1698139512609;
        Tue, 24 Oct 2023 02:25:12 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id c12-20020ac25f6c000000b004fbc82dd1a5sm2060246lfc.13.2023.10.24.02.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 02:25:12 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Oct 2023 11:24:53 +0200
Subject: [PATCH net-next v6 1/7] dt-bindings: net: dsa: Require ports or
 ethernet-ports
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231024-marvell-88e6152-wan-led-v6-1-993ab0949344@linaro.org>
References: <20231024-marvell-88e6152-wan-led-v6-0-993ab0949344@linaro.org>
In-Reply-To: <20231024-marvell-88e6152-wan-led-v6-0-993ab0949344@linaro.org>
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
index 6107189d276a..53ab2158fe2d 100644
--- a/Documentation/devicetree/bindings/net/dsa/dsa.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/dsa.yaml
@@ -46,4 +46,10 @@ $defs:
             $ref: dsa-port.yaml#
             unevaluatedProperties: false
 
+oneOf:
+  - required:
+    - ports
+  - required:
+    - ethernet-ports
+
 ...

-- 
2.34.1


