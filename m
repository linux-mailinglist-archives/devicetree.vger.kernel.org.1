Return-Path: <devicetree+bounces-11305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB2A7D515D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A79D5B20B60
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 382D82AB4D;
	Tue, 24 Oct 2023 13:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fgmuT7+7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8672B29CE1
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:20:40 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5E35DD
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:20:34 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507a0907896so6646667e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698153633; x=1698758433; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q8dS0fiX8s3oTQdiSNWl2/6C6tud53gSSackCKtgSFY=;
        b=fgmuT7+7UTFWpHnkgEtCIHBht6rKqPuBKoAoHh173UC53GMZIa0G1kHHC+y3YasIaY
         IdzRe5zqZ1Tzzxdvf9Mnmw4BeLO4eA/9Gm3JYFX8k+3gX4wYrB1JqcITHMYPbgcYrywN
         7kFieQYXcBXlot5wMsOsOE2P5YHuWHUQIvI8nKizxCDepPug715miP6rAbG8OiJX6x0A
         VeQ0uMzCZJnf8/X8ZEjxUg2MiYdSy7KjhV0UK1BHwxxg59Z+NIyXnUvyum5DtaTUyGlW
         lWQlpjEvE6yR6UFSWoocx/XZwbZ48iTDARuIaGl9KauBQIjCNNiIspECPio7Yu7a6JIK
         Kh/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698153633; x=1698758433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q8dS0fiX8s3oTQdiSNWl2/6C6tud53gSSackCKtgSFY=;
        b=OhcsIJuDa3WywO9bM+k+AYfu27n/23yCI8ZQnaqFQz96tfk496yEDJHLmlntAuAaU/
         gysmr+K8Ge0MlJUqwARK0xLa0EmRn5NIeJWTgcitg9YgKaS4nEnQ7/3ik+6LG5U2NXZv
         yCk3qaQeZ/iUWcPEp53VX4eOCSwMIsVNM3NeFos0sv6fWAlweDgX2hcwIE2+mU5/GHdb
         bjVaJtiqMokCeX//xKId9Ord8zw0d40D4HOEkua8kadqo9yC4ya0M+BQPiMPq47G2VW7
         PvOIGkcvKxBQGgQnPfSOxeyVk12tnyahTqc3fWetF3bwBQtJuZDX8omP/fyHuvTwyUfm
         MP4w==
X-Gm-Message-State: AOJu0YymXE6GJCgCSCsWPamqZdP33u5lkem6OdsoOdKfSCfn/gU406TJ
	ngewUM/ORIKpol3Gfh3XTb3P3Q==
X-Google-Smtp-Source: AGHT+IHMtXzw21flMwTEMR5C4A+qw3BxpCf34frnRqxgXOGfce6I7SN6Bq4PJJvbRwvYIl/PbOEf7A==
X-Received: by 2002:a05:6512:4016:b0:508:1178:efa4 with SMTP id br22-20020a056512401600b005081178efa4mr188638lfb.55.1698153632957;
        Tue, 24 Oct 2023 06:20:32 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id d5-20020a193845000000b00507ab956ab9sm2147365lfj.147.2023.10.24.06.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 06:20:32 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Oct 2023 15:20:28 +0200
Subject: [PATCH net-next v7 2/7] dt-bindings: net: mvusb: Fix up DSA
 example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231024-marvell-88e6152-wan-led-v7-2-2869347697d1@linaro.org>
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
 Linus Walleij <linus.walleij@linaro.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.4

When adding a proper schema for the Marvell mx88e6xxx switch,
the scripts start complaining about this embedded example:

  dtschema/dtc warnings/errors:
  net/marvell,mvusb.example.dtb: switch@0: ports: '#address-cells'
  is a required property
  from schema $id: http://devicetree.org/schemas/net/dsa/marvell,mv88e6xxx.yaml#
  net/marvell,mvusb.example.dtb: switch@0: ports: '#size-cells'
  is a required property
  from schema $id: http://devicetree.org/schemas/net/dsa/marvell,mv88e6xxx.yaml#

Fix this up by extending the example with those properties in
the ports node.

While we are at it, rename "ports" to "ethernet-ports" and rename
"switch" to "ethernet-switch" as this is recommended practice.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/net/marvell,mvusb.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/marvell,mvusb.yaml b/Documentation/devicetree/bindings/net/marvell,mvusb.yaml
index 3a3325168048..ab838c1ffeed 100644
--- a/Documentation/devicetree/bindings/net/marvell,mvusb.yaml
+++ b/Documentation/devicetree/bindings/net/marvell,mvusb.yaml
@@ -50,11 +50,14 @@ examples:
                     #address-cells = <1>;
                     #size-cells = <0>;
 
-                    switch@0 {
+                    ethernet-switch@0 {
                             compatible = "marvell,mv88e6190";
                             reg = <0x0>;
 
-                            ports {
+                            ethernet-ports {
+                                    #address-cells = <1>;
+                                    #size-cells = <0>;
+
                                     /* Port definitions */
                             };
 

-- 
2.34.1


