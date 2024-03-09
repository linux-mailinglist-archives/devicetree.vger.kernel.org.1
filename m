Return-Path: <devicetree+bounces-49540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE71A876E7F
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 02:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3726F283426
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 01:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B921125CA;
	Sat,  9 Mar 2024 01:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="uzTBdjTU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C698493
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 01:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709947627; cv=none; b=cblm6Z+22IRMbpNYhTp6jdZTTB0x6IM8EadzUg9QVmmgprTHe2g5xKo3gncIEVe/k0qFpLhHuP2xN1k4TwMllqGb63s75GI+Hq1K63QE5VKJhRo3eAHe+UZc14GoYmXI4+d/b3a3TXWB4+dqnEfr+E20zWd1MIRsWFJ/1QU1FjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709947627; c=relaxed/simple;
	bh=3dUH0Zt+dXHQHozoH7XCkQhKbmijKAYGAP74RRtyxig=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=la4y39BhFL4ii9kgHplIxjHIWowYsUWSlSsxk/T3gh17v0B8D8NEivFfTpCPu2J2I78YrUnaXwLgptyS4X/bOnk7Ofs/ctuo8KjHhdBkkxVp6etvgT/dpIIxamApWHKcE5IsH6YjhMaqT/nK1Ilp55OXY4h/mobGgTIoVYSDIUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=uzTBdjTU; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d382a78c38so30334971fa.1
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 17:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1709947623; x=1710552423; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XhVQmZ5y9DwT3fewTRMRWBUBAu8iGj/D4I/8ewM6Bfs=;
        b=uzTBdjTUyx7dIOsid9skmA6ZlgVCvMwHVxEfBgswrCJPCOgihNzuxYuwNlM9xWOWJX
         oXUBfieciqOSYkCFG7EXRzTRc1BSp6bf0V4tTDc8uF13oS0O4mXy7b/UHB94LL8RY8/I
         aJdH9xUUFbZmOxJfljU0vlVyKzHyqsm0J8l4TM9L7EL5/SKgYMs//IVEgP3ucfBtlrbQ
         6DcE7MYlELXi1Pkzxkk46yMq5z5SnepbmuKK+ABfwP2V7FHFZkJ1p5V4sweEDJhwRO+B
         lmU7/6EgroqYLrqozRAVXKQR1vY4c3XBY2tELoH+RLZWaDGfE/LoKRFpJRPhxY0aQgc1
         Z3ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709947623; x=1710552423;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XhVQmZ5y9DwT3fewTRMRWBUBAu8iGj/D4I/8ewM6Bfs=;
        b=pEbL5X3yX8DR1osenEAYW1fVW3oOOkIcO1tRbVmKzw0c0klN7i1BRSiWx6plSJ1jEN
         m/s7lrjOP8xiajdwIHVmZrwAINA76R42ptYGUUN/xjYcYxT1YD1mMwC6JLXDZl1XxXBw
         RoH0fROSknjp1hoL1uf26fDxDc5NRprXLUxZiXVKkqPioVJ3lZqKa5CGBfRJIIWl6BXb
         7SF1hMgYhqF0Q86ZVrYm9nJaKU4A/r4OGYoeY3xCNnHs7bSnX74Ip+KIAE87A997HJzI
         iAdGGvAJ79OjUWoVu3sdVSn5oDiJ04SmonVrXfGYVDzkdCmC6oWDu/EIqms5O6uFee9Z
         OnLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyMNIwiy1bM3ElIWYaBDH+X8KM+xxmYDn4bwI5DNsL6Ck0lGsS+v0WdIYbg2uaBBFpa3LZql+XI72jjmffmps+8micKyrfXgfwyQ==
X-Gm-Message-State: AOJu0YxUQRCTzHif5BZKi/XJt2MlOHyovQorCYoV3Nljpq5iw8Exqjvn
	NQDc/8u21/YEz4CtweiaHfGW2z1+OL1F8cD5x3tpLIqKQvDbkVmnLW+S7fxnR1s=
X-Google-Smtp-Source: AGHT+IEvBa0hrl+kogc4I8FzUMrSHkneR7bTpfzN5/rl3s2Uza/ABaW2Bf9Ndo6QneRpGwDZtFrP0Q==
X-Received: by 2002:a2e:8551:0:b0:2d4:6e5:2cd6 with SMTP id u17-20020a2e8551000000b002d406e52cd6mr455929ljj.25.1709947623080;
        Fri, 08 Mar 2024 17:27:03 -0800 (PST)
Received: from sleipner.berto.se (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.googlemail.com with ESMTPSA id 24-20020a508e58000000b00566f92f1facsm341474edx.36.2024.03.08.17.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Mar 2024 17:27:02 -0800 (PST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Sergey Shtylyov <s.shtylyov@omp.ru>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH] dt-bindings: net: renesas,etheravb: Add MDIO bus reset properties
Date: Sat,  9 Mar 2024 02:25:38 +0100
Message-ID: <20240309012538.719518-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The bindings for Renesas Ethernet AVB are from 2015 and contain some
oddities that are impossible to get right without breaking existing
bindings. One such thing is that the MDIO bus properties that should be
its own node are mixed with the node for the IP for Ethernet AVB.

Instead of a separate node for the MDIO bus,

    avb: ethernet@e6800000 {
            compatible = "renesas,etheravb-r8a7795",
                         "renesas,etheravb-rcar-gen3";
            reg = <0xe6800000 0x800>, <0xe6a00000 0x10000>;

            ...

            phy-handle = <&phy0>;

            mdio {
                #address-cells = <1>;
                #size-cells = <0>;

                phy0: ethernet-phy@0 {
                    ...
                };
            };
    };

The Ethernet AVB mix it in one,

    avb: ethernet@e6800000 {
            compatible = "renesas,etheravb-r8a7795",
                         "renesas,etheravb-rcar-gen3";
            reg = <0xe6800000 0x800>, <0xe6a00000 0x10000>;

            ...

            phy-handle = <&phy0>;

            #address-cells = <1>;
            #size-cells = <0>;

            phy0: ethernet-phy@0 {
                ...
            };
    };

This forces to all MDIO bus properties needed to be described in the
Ethernet AVB bindings directly. However not all MDIO bus properties are
described as they were not needed. This change adds the MDIO bus
properties to reset the MDIO bus in preparation for them being used.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 .../bindings/net/renesas,etheravb.yaml        | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
index de7ba7f345a9..d87f00a25877 100644
--- a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
@@ -93,6 +93,25 @@ properties:
     description: Number of size cells on the MDIO bus.
     const: 0
 
+  reset-gpios:
+    maxItems: 1
+    description:
+      The phandle and specifier for the GPIO that controls the RESET
+      lines of all devices on that MDIO bus.
+
+  reset-delay-us:
+    description:
+      RESET pulse width in microseconds. It applies to all MDIO devices
+      and must therefore be appropriately determined based on all devices
+      requirements (maximum value of all per-device RESET pulse widths).
+
+  reset-post-delay-us:
+    description:
+      Delay after reset deassert in microseconds. It applies to all MDIO
+      devices and it's determined by how fast all devices are ready for
+      communication. This delay happens just before e.g. Ethernet PHY
+      type ID auto detection.
+
   renesas,no-ether-link:
     type: boolean
     description:
-- 
2.44.0


