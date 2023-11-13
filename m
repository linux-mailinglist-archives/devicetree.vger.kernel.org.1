Return-Path: <devicetree+bounces-15506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 561E47EA707
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 00:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11930280FB7
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 23:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 149433E49A;
	Mon, 13 Nov 2023 23:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U9ImV95l"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEC93D99F
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 23:36:03 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5214D72
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 15:36:01 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c788f5bf53so54053041fa.2
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 15:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699918560; x=1700523360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h0VwY6TaHpxI3borUCq3aH1TpiyNiMcQ1rckV7olnsw=;
        b=U9ImV95lJRVZr6lVFdXEKaSXFGkCDZ218h6yhSrox3gLbV0bWUOruvU4RwaAxTd+k0
         348VFN6XDluKPw+FPSzxfmUkVZ5SDbFHVq6TnhPrzL2rvDgqC3Yk8uIMmSGJt4yY+ZjS
         qFHH2kqgiB2icbDWNWzNCWAHKyazXcA3Ov0AZqOqJTr7EpiF9GIdd0W9JgyakUkLtVpk
         akWgv8kY7FxI6P39GgRxxtxAUGcEykLIZopolppVm2hbd828Vt6xey58qIymt+9r2BCo
         aEJhgXUsuMpy3Z7TSM186tZS2TzxblsK46m2NPWH2o8esTbfy/H4P9pvQ6Lk4gCfJl41
         wg6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699918560; x=1700523360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h0VwY6TaHpxI3borUCq3aH1TpiyNiMcQ1rckV7olnsw=;
        b=NQsNlXBZPG54LQ3526eLfC8222lgEa782UpgbscLuPge1r8PePxs4GWfLzQOryZYnj
         1YCAgEBo/G2jbRe4UiDDXVFSjHXnjmAvHbNUN+bzDTviMkpCToW/43ejc6BODRxBH1ob
         tE7fOq1y5tUHHyuFDna8+C8WdZfH8l2rwzHuEPC5LcgaUbwvojv/k1NVbozZgEvCUhMk
         hi72WS+Fby9VDKKs2EVxgnQBcvw0YA/cjoEZb+sZ91K7z2FhsHXAAmSMTi7EogyCG0+L
         17WMknnP7odqZhq8+L+i5JKq2MUjsQvRr+Plyv2NNC4nkxcrtkt7L9dB0H42tQqOj73v
         MrFg==
X-Gm-Message-State: AOJu0Yxh/HNwbiKKLiniDeK7GzdEclxo7YaOvR8fNEnbGHJaDXHiMu15
	M4QpLR2HB79HXRnK439y42aEBwhCsdLIFKDG2BU=
X-Google-Smtp-Source: AGHT+IE6N7o4JJ2tj/eDgllrzti0scb8e37t/wSl6LTid0qJhAUkHyoCVWNBKRdo9x/Ix//9+Gy9cQ==
X-Received: by 2002:a05:651c:120a:b0:2c8:3b99:7f09 with SMTP id i10-20020a05651c120a00b002c83b997f09mr471644lja.0.1699918560053;
        Mon, 13 Nov 2023 15:36:00 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 17-20020a2e0611000000b002b70a8478ddsm1202859ljg.44.2023.11.13.15.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 15:35:59 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Nov 2023 00:35:57 +0100
Subject: [PATCH net-next v8 2/9] dt-bindings: net: mvusb: Fix up DSA
 example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231114-marvell-88e6152-wan-led-v8-2-50688741691b@linaro.org>
References: <20231114-marvell-88e6152-wan-led-v8-0-50688741691b@linaro.org>
In-Reply-To: <20231114-marvell-88e6152-wan-led-v8-0-50688741691b@linaro.org>
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
 Vladimir Oltean <vladimir.oltean@nxp.com>, Rob Herring <robh@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
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
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
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


