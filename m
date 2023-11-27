Return-Path: <devicetree+bounces-19281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E687FA505
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:43:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E1F2B2111C
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF96A34575;
	Mon, 27 Nov 2023 15:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VdxgrLaV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8A9C1A5
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 07:43:15 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507bd19eac8so5975647e87.0
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 07:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701099794; x=1701704594; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VuNdy95VNpWQjRKNnpzeQQ54Hlq4tpuG2i9HfgCgKck=;
        b=VdxgrLaVwdFGTf4L9jrcfSyoT39a3TgiWdFkBfhh5rVfDUHkfuHMS7djCDtKhgj/LT
         xbsNB/mSwDLi3a5NFTTkP5OPkfe/sRCDpZ8qC4HujDGw9Q1SzoTyOJB+pKu2R/Lccu1D
         2V20K6I3DwtP1tLgo0jZ8UkZkoTL4zZFTO1p25AQ729O16IfgVX4jsTG2vtZBxug7V8D
         y7eNJRNmisIwEgJDE9zH5L84jFTALzryx4dgcOvq5OgIyU4BaM5MZc+i5EppPmwL62Nn
         1cKupvK7UVAKB2w6cOz8g5I36exjd4nmdlm8evJ6zzS19/HsvkKxxCc5HJOeeJWHFwNX
         A7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701099794; x=1701704594;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VuNdy95VNpWQjRKNnpzeQQ54Hlq4tpuG2i9HfgCgKck=;
        b=C1h67PirGBGfUlvddI3r1H0elcCZ3J9oRu5PzOhhYz0BK+Cyw2e/1jO9x0JgTOW+WJ
         g25wDL0V5UTcr4l0h3K5LBMfg5tMjhbvBnPrdlGTQH3pW2GtyqYL3LzxLEead0CTKr18
         uE+anRlRwVeOeY0sPY3dI++Lbxgw2CTiHTPThIWc7BFsKkMnmSfgf0JLPHIi7srl+ZEY
         HHL3IXh3vN1lraUNkm0x3Fg1AWMq9Fy32eNwvJjutskbBMecaXv82vgn3sEad2ADhGvy
         k3Z+ritWQsnT8TqivPdoWF1Ye90LzPiKPtVx7X/YkrgjFD7TYfBHON0pkwP5/RZLJNPX
         LZCQ==
X-Gm-Message-State: AOJu0YwUNl4V6qk99/Mf9IZ7Ojtg0siguHMmcByISzdea3FdIp0nu0GZ
	JsYPCjixjXA48/yqKHjL0XcPBg==
X-Google-Smtp-Source: AGHT+IGWjn7a7SaeCNhun0JE7z2oMYlgMR3QEHklOjINxZRkGcdglD8+plYLOYV/HHG6FnDABF2yng==
X-Received: by 2002:ac2:4858:0:b0:50b:ac21:29fb with SMTP id 24-20020ac24858000000b0050bac2129fbmr3844407lfy.31.1701099793925;
        Mon, 27 Nov 2023 07:43:13 -0800 (PST)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id v28-20020ac2559c000000b0050ab86037d8sm1505049lfg.205.2023.11.27.07.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 07:43:13 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Nov 2023 16:43:04 +0100
Subject: [PATCH net-next v9 1/5] dt-bindings: net: dsa: Require ports or
 ethernet-ports
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231127-marvell-88e6152-wan-led-v9-1-272934e04681@linaro.org>
References: <20231127-marvell-88e6152-wan-led-v9-0-272934e04681@linaro.org>
In-Reply-To: <20231127-marvell-88e6152-wan-led-v9-0-272934e04681@linaro.org>
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
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4

Bindings using dsa.yaml#/$defs/ethernet-ports specify that
a DSA switch node need to have a ports or ethernet-ports
subnode, and that is actually required, so add requirements
using oneOf.

Suggested-by: Rob Herring <robh@kernel.org>
Acked-by: Florian Fainelli <florian.fainelli@broadcom.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


