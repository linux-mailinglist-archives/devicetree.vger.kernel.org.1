Return-Path: <devicetree+bounces-9578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD417CD76D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:04:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6088B1C20D5A
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 09:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ED9A1775B;
	Wed, 18 Oct 2023 09:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wZN+57Y/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EEB168D1
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 09:03:55 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A96F103
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 02:03:54 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507bd19eac8so2462123e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 02:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697619832; x=1698224632; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=as+rTKVDVhWn5AZLFNEUP/sdaVHFDVJzFvCNtllU+6g=;
        b=wZN+57Y/l6cO/1VvWU0LTUOGKLwHv/0ZbJY+qUkvSusHgHG30Ua3IGD/F1+6Kg+E2t
         57XxMOEjk6fFN5+6vmmhFFDF3l5KwOajS7ThQdzkS9LWomV47vYszILxLdgBGH41KywX
         HRN9DRXCDTSMVwjM8ogWiMe76eIPWA5HaX7dXJL5UVkuMIar/ApyzXIvLoHNyQBKk+cF
         dZFdGOsRsG0RX/L9iyrhsdiBTH7e+45vsUiH2gMm9Xa2zCO1vU+ZXE9Ewt0vJONCcax2
         MlG/k4PdVcEIFkLrUPyzWUg63aBQ1BWc1cmYPoMZaJBnKBZEya5ldw74ZQ79VkGuUsm9
         FPCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697619832; x=1698224632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=as+rTKVDVhWn5AZLFNEUP/sdaVHFDVJzFvCNtllU+6g=;
        b=Tnvp/hUmYUX9AhO+PBU2EjOvrCmNjEhorBXSv0EyHEw6f9HldIxqFPKh3kVoFJjhAo
         jNhX1Bxcx6/jrRsn4KTDUxc12/1vI3zb5h/iAgaBTMZqyfySKuL6aLb66u0Lg2U9qqVS
         8jLo7OK3XBLxi+LzZC8fuOBr6znB50Og/ZfgpYHbf33MLxoKVKGXIj+qiZ6nWrsRCHq3
         ZAYLWBnGd2yOhZgzyE3IUGU7F6sNoRt1nesc0XbibkE6gLgzc3BqkiZh5/fT8YM2lywS
         dkKDrn0mRObqHJnSDadjmffnAxQLWy5ArmVqSE/KHx1lo5UXi+VU8W5pt/jL5ZDfzwpL
         /B/w==
X-Gm-Message-State: AOJu0YwY0Q4KJzsZCzn0Xcu9Woe7su6mXDVGavRgrhXO1So6RAJmu4di
	6RyrFo/rdh0XJozZWVW0oa0XHQ==
X-Google-Smtp-Source: AGHT+IFIaoucl+lkKRp5as13fMnNM40xIgQBWtdL1v4ouDauyAdgG8m9UtPuvcSRfjsxSL4BWjmD/A==
X-Received: by 2002:a05:6512:3ca0:b0:500:b42f:1830 with SMTP id h32-20020a0565123ca000b00500b42f1830mr4173103lfv.63.1697619832414;
        Wed, 18 Oct 2023 02:03:52 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id w19-20020a05651234d300b005056fb1d6fbsm616595lfr.238.2023.10.18.02.03.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 02:03:52 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Oct 2023 11:03:41 +0200
Subject: [PATCH net-next v4 2/7] dt-bindings: net: mvusb: Fix up DSA
 example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231018-marvell-88e6152-wan-led-v4-2-3ee0c67383be@linaro.org>
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
In-Reply-To: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: Christian Marangi <ansuelsmth@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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


