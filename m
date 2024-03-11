Return-Path: <devicetree+bounces-49861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA528781B6
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 15:35:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DDD58B22162
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 14:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E85140BE4;
	Mon, 11 Mar 2024 14:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="aH7yr38n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7863FBAD
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 14:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710167739; cv=none; b=mowXEhwbF73BBGun4ygPHdKim23a73XmNbUN1DynGqUc6Yv3HJ/BCxY266wl1iZXXgtAb1egL/d7ZiQkkKX5mtzjQuBCkLVhDTSeV5vvBkG73RcecAchqaF5+l9wJFZVA0KnwOaWUbN0FQfhqtgXIfDHi2CVH+Zlik4EE8CZ1qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710167739; c=relaxed/simple;
	bh=45ZfRvUxIddCvTvQrv8f9u/FV8jFaYC8ep2rv/Hz+Kk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=m9g73wBGz3+yLfdWuYG5zKdp+zz3h6sWwORftL1GNCc4nPva5n7/LtvrW7cz/3Ef0htAxGhh6EJjzcVTWFOVatMMqbr7Nyb74lH7u5/EPREUVwKkTEmzhvo+1amuGMFEK1uxieZ1/5520uIqxi9jJKI8jB/6xPc196vcohMOk3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=aH7yr38n; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a4429c556efso346119566b.0
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 07:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1710167734; x=1710772534; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j8GA2WqqNZi4sBgOuiFb7TO2wXY4wNFoigcy0Y4xraw=;
        b=aH7yr38nnRXGYM1xrgU7A8+UUj/euMhhmCDxNvobPDqX13XflR4TnBIlk8zayX/E4J
         f1iMzFb2X3HV85Tn1xLC6PrnH58aCDOJtdoYIWAmOmau1y6XnCIBFuAeRueQSONKjf14
         MW7rcoPFlyXRbqVJNQaHyMr0XxrmGofs8MEe3p2EZGv9oKk4HoJOhtCQK34qK/r3zPAS
         3fCFpqqU4m8rnnqO75D2t8vX1zATBxQgtZBC9qFCQ71RG+IytW0MOKGaSH2bui8AruZN
         IvT9zbHJ1FTD67TxgZcrzVe7j7q+XnprFtMQc4OD8tr/UlgD1LJc2mK72AnYd+3XRNyP
         lWFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710167734; x=1710772534;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j8GA2WqqNZi4sBgOuiFb7TO2wXY4wNFoigcy0Y4xraw=;
        b=crmPWrOzdYpwLhlMgnhETCdaefYR+ZQs1ST5YiFk3w5FNwAkZjo8wQBUqBzuqHrzqK
         3k8gZbhQfKbZdVjF3IdH6rCBt3vif+s4DXR/onAMb+VQgc9dZI2fMTHF88onG4S7IepB
         3ltSRp8j9ZWx8BaGkT98Iv7ZhPThGUUgxupm2GHZwgfA4U+R/nk6yP4GtyIcrWVjr4sf
         ldjuZNl9QOZQSPZTcgat4qwyVePP41MvrTrEyUTiiV3FnEnvsgRXYEpM1UHmacgGpodY
         ALorTMN/1E6NOMiOMMAZa4jCmmMJoaRZN9nvkCY2S0AOarDL41S8gJW8xpCBsc9WvsQ2
         4B7g==
X-Forwarded-Encrypted: i=1; AJvYcCWxt6jmmV1Cj1uT9cZ5RHw4lDmzijWpvT4r9FI2XnWPVztDAcySa3BvEf6aJk8bPimjYK8zoYNrncvwVXxS049Z58GiRm90YUuWcQ==
X-Gm-Message-State: AOJu0Yxj+r2K6ou2i8LiaLfEXuRiVGaDkh5NKx0jP8O2F7GQdu3koAif
	Xwftauz7xMU2bgS6+b2P/8+v0cSSm5zERAZwKq7ASO8R3lGJZvcATJyRyBXSRyY=
X-Google-Smtp-Source: AGHT+IHwPP14dXTQIF8gbZBzyF2nx/SmXHUct1fkrDfFPb4anZHyf6OlSbg0UzJLt7rxxYbiZrm46A==
X-Received: by 2002:a17:907:7847:b0:a44:1fcf:9b97 with SMTP id lb7-20020a170907784700b00a441fcf9b97mr3736842ejc.24.1710167734423;
        Mon, 11 Mar 2024 07:35:34 -0700 (PDT)
Received: from sleipner.berto.se (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.googlemail.com with ESMTPSA id w9-20020a17090652c900b00a461543ab87sm2037458ejn.205.2024.03.11.07.35.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 07:35:34 -0700 (PDT)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Sergey Shtylyov <s.shtylyov@omp.ru>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [net-next] dt-bindings: net: renesas,ethertsn: Create child-node for MDIO bus
Date: Mon, 11 Mar 2024 15:35:07 +0100
Message-ID: <20240311143507.3239566-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The design for this driver followed that of other Renesas Ethernet
drivers and thus did not force a child-node for the MDIO bus. As there
are no upstream drivers or users of this binding yet take the
opportunity to correct this and force the usage of a child-node for the
MDIO bus.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
Hello,

Learn from the mistake made with the Renesas AVB bindings being worked
on in [1] where no mdio node was used to describe the MDIO bus and the
PHY was added directly as a child node to the AVB node.

The Ethernet TSN driver is still in review and have not been merged and
no usage of the bindings merged either. So while this breaks the binding
it effects no one so we can correct this mistake without breaking any
use-cases before we need to support any backward compatibility.

1. https://patchwork.kernel.org/project/netdevbpf/list/?series=834331
---
 .../bindings/net/renesas,ethertsn.yaml        | 33 ++++++++-----------
 1 file changed, 14 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml b/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml
index ea35d19be829..0a88f4acc3f6 100644
--- a/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,ethertsn.yaml
@@ -71,16 +71,8 @@ properties:
     enum: [0, 2000]
     default: 0
 
-  '#address-cells':
-    const: 1
-
-  '#size-cells':
-    const: 0
-
-patternProperties:
-  "^ethernet-phy@[0-9a-f]$":
-    type: object
-    $ref: ethernet-phy.yaml#
+  mdio:
+    $ref: /schemas/net/mdio.yaml#
     unevaluatedProperties: false
 
 required:
@@ -94,8 +86,7 @@ required:
   - resets
   - phy-mode
   - phy-handle
-  - '#address-cells'
-  - '#size-cells'
+  - mdio
 
 additionalProperties: false
 
@@ -122,14 +113,18 @@ examples:
         tx-internal-delay-ps = <2000>;
         phy-handle = <&phy3>;
 
-        #address-cells = <1>;
-        #size-cells = <0>;
+        mdio {
+            #address-cells = <1>;
+            #size-cells = <0>;
 
-        phy3: ethernet-phy@3 {
-            compatible = "ethernet-phy-ieee802.3-c45";
-            reg = <0>;
-            interrupt-parent = <&gpio4>;
-            interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
             reset-gpios = <&gpio1 23 GPIO_ACTIVE_LOW>;
+            reset-post-delay-us = <4000>;
+
+            phy3: ethernet-phy@3 {
+                compatible = "ethernet-phy-ieee802.3-c45";
+                reg = <0>;
+                interrupt-parent = <&gpio4>;
+                interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+            };
         };
     };
-- 
2.44.0


