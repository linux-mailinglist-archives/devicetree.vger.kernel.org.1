Return-Path: <devicetree+bounces-182319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77774ACB9F9
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 19:05:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CDD2402B75
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 17:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08D24224AFC;
	Mon,  2 Jun 2025 17:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="FJW8+aBS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054A21D5AB5
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 17:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748883921; cv=none; b=XjDGibvWV9M1QvyznfHNm1M0bqACbAxaIR+lK15HslEmk2M2trWe4ke/yNY+fbRcT+1Wuol4sotQftIghRaQ6FJkMCr0CffOVDNepqhRkXjnWVs98X5wX6AGOcQmx+EKC5nxjoKGRIPWeGuYt2UH+DO4jQEZeN1JdvHcdnZv5bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748883921; c=relaxed/simple;
	bh=EVmWrbes+DrEvV763dUtaIkINBe+NAnCg0Oomi3YIH8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZepPGm8x6LTf2ufCkhvFxSEZF6YkfDmB+T2rOvSWz/SLtY2qx7SRNTVcqUqLE/lFsvTaew5zZo6ln9O9VRpVI3hrCtU/ph1fq6q+aR7FEmzmAdkAWVZkxg8eKludjHpbwPNU47NUKpL0x516OFvnbTIOLSGVUaVkpj6q8MSflvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=FJW8+aBS; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-450d668c2a1so22758155e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 10:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1748883917; x=1749488717; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iSmzenDLo0lOAHDwohwCizehWGuiTqHtMMxqt2ZXZoU=;
        b=FJW8+aBSU1ViX3aAlBdDU1g1V82oZVBStctV6LDBTzxorn7QZgtx67KzS3yE0WOvtN
         tXTS03QaEFb4NOib5J/jFHtRnRYxo4kyzjFODH/S5V0JiUWcOH0eiggjLiuZ0G09ze3a
         DMCTMz4EXRKqNVBYqkz8lswqLwum82x3P2zzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748883917; x=1749488717;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iSmzenDLo0lOAHDwohwCizehWGuiTqHtMMxqt2ZXZoU=;
        b=YI3WA0jOHyuaymYLqQ/NX8tEMAc5ysyq568Sbl1nv9he8e9hhSGJiUShsOLvTLDzwr
         ulifYbfuAzUNC07GqN/LvT4yVnkboWOGYKezCIPnpeVlYyLOkRgjsqJFBZPW2AatJqHO
         zSYMxpZDWee8+H4CowzqcKuoLYTWaeQNjaaIDDA2mmZtPHtDxZSJYK/BDmHXx51Pdnbr
         Y6kPLMuh27xOaASe9fWUwMDMaAa7eSi81u3cD5vHmB9TGrvhaQYZIhTsvWxQNQtteIdP
         mx2y3p9BK9pvs4B+SC26ZTcK6E723DHi5IuUcAkr+Vu3wOx4WEactYg4WRnMkZmjQu8B
         jAoA==
X-Forwarded-Encrypted: i=1; AJvYcCU8Bxa6lXWiE8iKXSjX6UW7eDRaK9f73+Z5BpS+xz9wUOqNpAlgtxwkJK/kcWw792oduHZdEDAmZidz@vger.kernel.org
X-Gm-Message-State: AOJu0YymK++CfjCsOrNeOYDqg1T4lrVaUoGVFQRpvk+ElnB74OcdaeRC
	7i0eA1hdjFGFMDWC/l07unulrQPtmGX8uQsp2QwztLC1IeUWImeVd6VirymWe1EGn3g=
X-Gm-Gg: ASbGncstwyHMb1yZC4OKOPjG7nz8Ve+SaP5xS7zHSadFMd4rP/C56EcqyZhPyfY399w
	5U+K7LlC3OEyz+Y39u5LpsURYT3UbTuYFrjycua0iVrt4/zVtmAViCF4IstRcHMKUeHhPGuoDrR
	07DaIo/TCab0VHBnmiP/a5pTLney5yQP6kvAkLPqW2ohn+wHJxQ+u2rLUzXCruBOZEhMEaiFKeo
	0AvsAzC6y4xNQVCuOg8wm3lqXbz7ybltZ82Q6zAsD4WCuSSXyhoiBSs06UcMKU0mdfQoYM98w+M
	Qh7JeM27D6ZFsvNMWckaMRJilXv4lpMI263MoDwu+oNmqPHuQhjA2MaS/0nCXDLaNfttTA==
X-Google-Smtp-Source: AGHT+IEeIEyfIdg3dwyZenyn+vmwOhfjrZrRF2OqaliD83zxTjDsg4j4B6iszO5xYR2iPbGvRrtfkA==
X-Received: by 2002:a05:600c:1906:b0:43b:c857:e9d7 with SMTP id 5b1f17b1804b1-451e39566cemr2068175e9.5.1748883917210;
        Mon, 02 Jun 2025 10:05:17 -0700 (PDT)
Received: from heaven.lanfs.local ([62.161.254.42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d7f8ed27sm135293415e9.2.2025.06.02.10.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jun 2025 10:05:16 -0700 (PDT)
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
Subject: [PATCH v2] dt-bindings: net: dsa: microchip: add bit-banged SMI example
Date: Mon,  2 Jun 2025 19:04:57 +0200
Message-ID: <20250602170458.125549-1-corentin.guillevic@smile.fr>
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
Changes in v2:
- Fix dt_binding_check errors

 .../bindings/net/dsa/microchip,ksz.yaml       | 59 ++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
index 62ca63e8a26f..33a067809ebe 100644
--- a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
@@ -241,4 +241,61 @@ examples:
             };
         };
     };
-...
+
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
+    };
-- 
2.49.0


