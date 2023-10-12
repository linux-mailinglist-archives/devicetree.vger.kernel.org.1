Return-Path: <devicetree+bounces-8306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EF87C79D7
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 00:35:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F8D3282D00
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F6BA3D023;
	Thu, 12 Oct 2023 22:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v+kANZss"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D469A3D00F
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 22:35:27 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D4F0CC
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:35:26 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c5087d19a6so59861fa.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697150124; x=1697754924; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tqJlehcmenMJKM/lRPSpwuiQHgzEckA+N7fF4C2GzPM=;
        b=v+kANZss6YBdV6eFFe+RAJoB4T+27iaybTpm5sfZiB4cxEaLJSGZTQiZ1vCnlBgpzf
         39dAox+yWHneDJFOlSlt02dtDfE2aU6q5PgjHyp9Ljhy/dxTevd9iPs9dyHh8fpU4ltr
         vePUczpweFeTFW8CG1ClC75/yUaZ3ehb4t7nlFW18dtShUAChZoyaCWaGtyekRICR8q+
         ilOWgpHP7nR8vSIIkorl0D9rXBVwhjI/hfipPg9MKNcQisgtr5XR6poMq0JVF9Vd0At0
         N7OZyzXb7J8mtGNh11V+7eywGQanopsTTzsJU1SVezBWApuoqqXt940jhjjUGPK8bgez
         tdlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697150124; x=1697754924;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tqJlehcmenMJKM/lRPSpwuiQHgzEckA+N7fF4C2GzPM=;
        b=AtP1gPBlSkQRK+yYtgvjvVRUtkgMrTY7jqgGihPmEMAd9oQSjtWtedo5l6wQpAvIcO
         zEWCaAAiQItOcFhpbaC4AUZkB1ViiaSPscM8sc/P2XI7wmuSvN1LWIsOxQKkxMZMkoiq
         qGyf7zaziwK3vNnJsWfDpX8HoefZsXR46tuRmPyKSwjr+e4qMMxYxUeNhky0trW5dlNw
         mf6Y4E5bKxdJhGzkbjevqXa3yC9qX6OYUFzGedY9uXPD2EvhH/SmSuzs5EsLZZJVCns1
         SG91v1Yo8T7DrlL+P+X0Ai71Oiw6GehUSr71xsrTGdKRuz6IGAmf83HkiV1tnHUjI9LF
         FhTw==
X-Gm-Message-State: AOJu0YyuI/ekLNYp565K3pK+00TlLhNLCvNp+BESqcqyT/bPn1st6J1p
	32q4Fgonq0jVrRZWS/QziUmr6g==
X-Google-Smtp-Source: AGHT+IGRG9wyMhGDQ5kQd403PBsws9XNSvk9hZvSX0ryk0Cx//eQH3D87/fY5EPfSQfxBqXMgaBm9w==
X-Received: by 2002:a2e:95d5:0:b0:2c0:298d:32df with SMTP id y21-20020a2e95d5000000b002c0298d32dfmr24561108ljh.9.1697150124454;
        Thu, 12 Oct 2023 15:35:24 -0700 (PDT)
Received: from [192.168.1.2] (c-21d3225c.014-348-6c756e10.bbcust.telenor.se. [92.34.211.33])
        by smtp.gmail.com with ESMTPSA id x21-20020a05651c105500b002bcb89e92dcsm3811671ljm.6.2023.10.12.15.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 15:35:24 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Oct 2023 00:35:16 +0200
Subject: [PATCH 3/3] RFC: net: dsa: mv88e6xxx: Register mdio-external
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231013-marvell-88e6152-wan-led-v1-3-0712ba99857c@linaro.org>
References: <20231013-marvell-88e6152-wan-led-v1-0-0712ba99857c@linaro.org>
In-Reply-To: <20231013-marvell-88e6152-wan-led-v1-0-0712ba99857c@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Make it legal to have a subnode just named "mdio-external"
and have that be recognized immediately as the external
MDIO bus, register it and return. Only fallback to the
old method with a compatible in the external bus node
if this doesn't work.

This is the result of deprecating the old DT method
of providing a node "mdio1" with a compatible string.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/net/dsa/mv88e6xxx/chip.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 52a99d8bada0..05f6776885f6 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -3676,7 +3676,21 @@ static int mv88e6xxx_mdios_register(struct mv88e6xxx_chip *chip)
 	if (err)
 		return err;
 
-	/* Walk the device tree, and see if there are any other nodes
+	/* If the optional external bus is explicitly named as such,
+	 * just register it and be done with this.
+	 */
+	child = of_get_child_by_name(np, "mdio-external");
+	if (child) {
+		err = mv88e6xxx_mdio_register(chip, child, true);
+		of_node_put(child);
+		if (err)
+			return err;
+		return 0;
+	}
+
+	/* Deprecated binding with compatible:
+	 *
+	 * Walk the device tree, and see if there are any other nodes
 	 * which say they are compatible with the external mdio
 	 * bus.
 	 */

-- 
2.41.0


