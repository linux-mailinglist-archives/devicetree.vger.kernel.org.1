Return-Path: <devicetree+bounces-181359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41275AC723D
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 22:32:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E34C3ACFD3
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 20:31:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20ECC220F45;
	Wed, 28 May 2025 20:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="H/pj6v40"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4816B1FF1D1
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 20:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748464322; cv=none; b=aBijYcms6Ox5Dx5fpdWowgUq/bWfKfelVPvaDPeFGWXjxV015dwKnNotKSADEG4N05/Z2IaT6RyL4jp0E2R9tSduKrV9w5S9oJ+9lextMLfklJ6WcsItFHUgGs6xorUdlXwfRYd59NghwYIjgiJXLwd6rH2KArSdi80ekk0tA0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748464322; c=relaxed/simple;
	bh=BrBbR5CbQI4aYUBRypucmSqCUVq5TrcbJLGOVPXbW0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oCvMPev31I8EzvkX3VioVFW7YPiVfc16QV98UPcwJH1wVgFEBZJbSJ6niV7WNZeH4Wi9nbUuPy1HnAFIZ4Cb2ghSZqSKocL4klvK1RADCGIANWXeHleKCMs3/BqqcDFeOPynysdaNA0h9nHEgzg50fs3rda3h8ssRZw/WwbKsBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=H/pj6v40; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a37ed01aa0so153697f8f.2
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 13:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1748464317; x=1749069117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qSWXgr0Rc+W5KMUBLUdxw5Riulc06AxCHfqoKhxLOoQ=;
        b=H/pj6v40epSxPzsz5NOLTEW4bEevGT4CPwr8NtlX9ehbR5H/6Tj4P8D8mkVOsOaL0Q
         W0TvAf60MD5WKVjfx9y2t3uQ1XP0Hl7rpNyrK0VqVHWF+H8XRS/1jL2eG4ePBTESzMdu
         ojveZz2CbqP7rf95JslNfNh1M2o6NHXJEZOzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748464317; x=1749069117;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qSWXgr0Rc+W5KMUBLUdxw5Riulc06AxCHfqoKhxLOoQ=;
        b=Utz88mqmC46DsfesiON3TrHsk3SomFdr04csSPCTYlRV695y0FcToqf56VubDe5w5g
         kaX53K5duFhmu1s6JLvTRxNnbqB1svPDueRG5wCuPyQs4H+ZWEq+uOyCpyWKthGMJKBk
         IU6nZmt8wM33mQe5d0aeW5jN2Bj1EVsSUO5aSlS4kP5rjgAO1bRM+whjP3PiH01KeHAk
         igzqSV4d2k6pzSNKqRm06ETdPwReZf6OgWFpIYj4YMbpFe/GWauELnDCJWPjnF/X/iXP
         C4F74TgBNAcag2jErYxJKFuQwLzKPHN8PP5FTn5Scv0aO8cEgGYORkFNdmaNUJhOYS+E
         XwLw==
X-Forwarded-Encrypted: i=1; AJvYcCWvNy5+y++0dW0/VYMXoBuV9Me4QwdqVwyHnyiOoz8bRo5U4RtAiRis1NnwwIPu1FLIMxX+ZQtXhmbS@vger.kernel.org
X-Gm-Message-State: AOJu0YzKSBI2r9kUt4VWtqqE2QB19HH2stNDCsRgs7AHlWckzjlKVAOh
	EpFGacxMqlersPO5KPP6f3p5/OBFOyhZtSzfLUKxzwrYqXytxKFIYH3YpAq7wOmrExI=
X-Gm-Gg: ASbGncuipsO5pf3823WQmqrFgOoSg0zEqUCkmN5hemUBxtEfFc8QRhynncLU4TjlxJQ
	25Q9Oh0pwpXXMCqOHm24gnYLBiRcLMY8xMy+jrswpo7sE72pJshr3QHN1WmqXuOCu2H/IXtZz4z
	GseWUceumW3ehEsUf4Cz+Z8BFl7R41XM/uEZpJpDXaUyZPolAa34cs2TwUh6nf4EzXSY7/damzm
	/6gW1V0z5EWPBn6MjR+idE5fXlNskCgoh+9e+3tmeJpZNXINDGVpV9mTAA5/01f1va/SB68M9Ob
	G9kNuCrgRbqR1/614iAOwXAp8Uce+Ur1i0orenXVpj7PPWcv4T5MdonQcvbtB2c=
X-Google-Smtp-Source: AGHT+IFQ2szQOUKTYzQfDg5v2dEo7jM5cHq832S17GBiq2kI8tiPg0A1o7C6s+Meugy/KOsjoVv/2w==
X-Received: by 2002:a05:6000:2087:b0:3a4:e706:5328 with SMTP id ffacd0b85a97d-3a4e70655cbmr4586644f8f.48.1748464317574;
        Wed, 28 May 2025 13:31:57 -0700 (PDT)
Received: from heaven.lan ([2001:861:3080:b0f0:6448:db2c:bea7:b817])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4eacd8f0bsm2391181f8f.75.2025.05.28.13.31.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 13:31:57 -0700 (PDT)
From: Corentin Guillevic <corentin.guillevic@smile.fr>
To: Woojung Huh <woojung.huh@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: Corentin Guillevic <corentin.guillevic@smile.fr>,
	Woojung Huh <Woojung.Huh@microchip.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: net: dsa: microchip: add bit-banged SMI example
Date: Wed, 28 May 2025 22:31:51 +0200
Message-ID: <20250528203152.628818-1-corentin.guillevic@smile.fr>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

KSZ8863 can be configured using I2C, SPI or Microchip SMI. The latter is
similar to MDIO, but uses a different protocol. If the hardware doesn't
support this, SMI bit banging can help. This commit adds an device tree
example that uses the CONFIG_MDIO_GPIO driver for SMI bit banging.

Signed-off-by: Corentin Guillevic <corentin.guillevic@smile.fr>
---
 .../bindings/net/dsa/microchip,ksz.yaml       | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
index 62ca63e8a26f..6cab0100065b 100644
--- a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
@@ -242,3 +242,60 @@ examples:
         };
     };
 ...
+  # KSZ8863 with bit-banged SMI
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    // Ethernet switch connected via SMI to the host, CPU port wired to eth0:
+    ethernet0 {
+        phy-mode = "rmii";
+
+        fixed-link {
+            speed = <100>;
+            full-duplex;
+            pause;
+        };
+    };
+
+    mdio: mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "microchip,mdio-smi0";
+        gpios = <&gpioc 1 GPIO_ACTIVE_HIGH>,
+            <&gpioa 2 GPIO_ACTIVE_HIGH>;
+        status = "okay";
+
+        switch@0 {
+            compatible = "microchip,ksz8863";
+            reg = <0>;
+            reset-gpios = <&gpioa 4 GPIO_ACTIVE_LOW>;
+            status = "okay";
+
+            ethernet-ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                lan1: port@0 {
+                    reg = <0>;
+                    label = "lan1";
+                    phy-mode = "internal";
+                };
+                lan2: port@1 {
+                    reg = <1>;
+                    label = "lan2";
+                    phy-mode = "internal";
+                };
+                port@2 {
+                    reg = <2>;
+                    label = "cpu";
+                    ethernet = <&ethernet0>;
+                    phy-mode = "rmii";
+                    microchip,rmii-clk-internal;
+
+                    fixed-link {
+                        speed = <100>;
+                        full-duplex;
+                    };
+                };
+            };
+        };
+   };
-- 
2.49.0


