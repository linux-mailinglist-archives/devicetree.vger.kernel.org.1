Return-Path: <devicetree+bounces-189287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 660F9AE7789
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 08:52:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D0B14A02AF
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 06:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEEC92040B6;
	Wed, 25 Jun 2025 06:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zc2I3mZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92CE1F9F61
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 06:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750834293; cv=none; b=h7d2WuK3uyxzH2yxJKFp16fOOgrYHBKjcSW+wnqxr0kLaA3493cYfzq6+awDK+Dw4/l8vAEibnt8gJD+KFPUubm3xl1VymV88z45iaktpWhnaK/dpErmnv8JDWgH79APmXK0BJUFteStusAbn1CLuPqfxGS03VTo6/Evju1ekXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750834293; c=relaxed/simple;
	bh=z6Kz5bD4u/oRkUGzxnPtmh+omOzikpiX32b2U7bHqsU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZpE9mlV7HiwhC22L8yjkhkLNhrV6sMAFRTON8fjLzbcDCPFLV9mh+45kDybJ7rt+PdtA89BxAGgeVjZBjilyQsHWUg49/xL0omiHlQ+OFBcB2b8CpY0W2FOrJcbzurahHl3gGeXH/XA+yjDJEKiOJzpRWniaeDgT2HiOB91Z1Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zc2I3mZJ; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-553b9eb2299so563022e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 23:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750834290; x=1751439090; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yFMXvfPRa0UOBO3cgLQ7m54Pq8rDrCd82zZaQNRL0CM=;
        b=zc2I3mZJujUaO+eByZTnQFKmzGEskQ/fE2I2CrdRAbexx9pV6vaeUPw5ey14BDPETF
         FknYJaCd8cB26rirlpAIvnxRDZvJs1qRSWoHKmtpZVf/uR1qyVeX4t6zvIDSCE+Q/+8u
         oTmyhydOL7+j4QO/QOplLBNoscdWDhDJC9VxbYU4vjEZP8oXY4++tK11JIRwomO0YGtQ
         hIIGmrfF3/6D8D4XEBPpmWX9Cx5oVOZfmdv+5B+TMjYlj2xK105e8Nh09mn0jJAEkBNN
         4mWOnX3Fm9twC2S9KM+LUm8sDT+FY2UVcH5xXgqkqcXT4SvOdMszxlN+9JWQ72qeZkOs
         DeEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750834290; x=1751439090;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yFMXvfPRa0UOBO3cgLQ7m54Pq8rDrCd82zZaQNRL0CM=;
        b=XCOKcohyTfFswA8Uj5iDEXbEpsFIYPdpFBVgqJH3zXZCGAQlwmYwRjbgihZ90clTHU
         9pQJM91aQsJUZDDNKOOaakgR5RSZV5XOO4D49Mz/PFWjBfCLOXBdWOKNjffL96/fc996
         hJ8GneA4Zkni4BQEpQELxG+X2ENKu8bad+2jvRiHMdIP69IuWk/0hfkUHBdAghOMGU7P
         huvut7Eawvu00Co0cmkpvhMJTzECWpr9OGp/tTEWomnVxQvTPbQV/JPC62jOQ1TzCSNm
         /zz8wZLmeZiTrV9Iq3tUcLEkqXu7cG0v/ekWKkZa3M/EKnzvMnn83LkxGMy/XrejF4yG
         MdBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQxehjtO9pmrwlrM7F3o57RIfYMfNAhtkBA6ORi8jn2NWTmtN8PGryLjv1ihGJvq0vceTdDxf46Tyv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9atqlVn4NT0+2BXwyKWEp+w16ZtLJ5n/ySL1ZHMBnYqsh5nFT
	2qw1nZseom9CgFtzkS9QT5+dOEK81VyshFXIrm7ic3PVK4g2FXhNxK+7Mb3ER1+3NjE=
X-Gm-Gg: ASbGncs0qWVxPLrB+uKq2dtVQSsHEecfBlijw/U2545EBso8YzGvjgV4d6QBWOnggmT
	BClcCmFBZNaYkytHisAo/U7mVqn3UU8F01mUEu6kldHJdTeRQlTs1zhndh7mH7wq1cpYL/8y/uw
	LOsSLuvBKcnasKVwu5zVfBvgRsjpii/x+kKqH5gp6/5jqwQeBc0dzK+EFshpXEIXxkSELYhnzWC
	LWUpYabOEWNGSiLI9EptIjxvsqYnT1tp1e+uXQN2Y0h23Hl1Sjv818Crxw18OMqnxxopr5fogZJ
	9ace73RdgoE0mBJGBO226j/Q8GMzERq1FmStx7QzrbPGLJo7PaDFLeXYxu2lBbSeNEqdr59o
X-Google-Smtp-Source: AGHT+IEpOdWfGaIgmGGQGacKIf79G9PXPpppGhcO3CSNb7whwyehyVUgDBPPDwEao2GZGf+BOMyDBA==
X-Received: by 2002:a05:6512:2214:b0:553:268e:5011 with SMTP id 2adb3069b0e04-554f5cdcc8cmr2153322e87.26.1750834289792;
        Tue, 24 Jun 2025 23:51:29 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41c3dc4sm2068379e87.157.2025.06.24.23.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 23:51:29 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 25 Jun 2025 08:51:25 +0200
Subject: [PATCH net-next v2 2/2] ARM: dts: Fix up wrv54g device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-ks8995-dsa-bindings-v2-2-ce71dce9be0b@linaro.org>
References: <20250625-ks8995-dsa-bindings-v2-0-ce71dce9be0b@linaro.org>
In-Reply-To: <20250625-ks8995-dsa-bindings-v2-0-ce71dce9be0b@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Imre Kaloz <kaloz@openwrt.org>
Cc: Frederic Lambert <frdrc66@gmail.com>, Gabor Juhos <juhosg@openwrt.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

Fix up the KS8995 switch and PHYs the way that is most likely:

- Phy 1-4 is certainly the PHYs of the KS8995 (mask 0x1e in
  the outoftree code masks PHYs 1,2,3,4).
- Phy 5 is the MII-P5 separate WAN phy of the KS8995 directly
  connected to EthC.
- The EthB MII is probably connected as CPU interface to the
  KS8995.

Properly integrate the KS8995 switch using the new bindings.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts  | 92 ++++++++++++++++++----
 1 file changed, 78 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts
index 98275a363c57cde22ef57c3885bc4469677ef790..cb1842c83ac8edc311ea30515f2e9c97f303cf17 100644
--- a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts
+++ b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts
@@ -72,10 +72,55 @@ spi {
 		cs-gpios = <&gpio0 5 GPIO_ACTIVE_LOW>;
 		num-chipselects = <1>;
 
-		switch@0 {
+		ethernet-switch@0 {
 			compatible = "micrel,ks8995";
 			reg = <0>;
 			spi-max-frequency = <50000000>;
+
+			/*
+			 * The PHYs are accessed over the external MDIO
+			 * bus and not internally through the switch control
+			 * registers.
+			 */
+			ethernet-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				ethernet-port@0 {
+					reg = <0>;
+					label = "1";
+					phy-mode = "mii";
+					phy-handle = <&phy1>;
+				};
+				ethernet-port@1 {
+					reg = <1>;
+					label = "2";
+					phy-mode = "mii";
+					phy-handle = <&phy2>;
+				};
+				ethernet-port@2 {
+					reg = <2>;
+					label = "3";
+					phy-mode = "mii";
+					phy-handle = <&phy3>;
+				};
+				ethernet-port@3 {
+					reg = <3>;
+					label = "4";
+					phy-mode = "mii";
+					phy-handle = <&phy4>;
+				};
+				ethernet-port@4 {
+					reg = <4>;
+					ethernet = <&ethb>;
+					phy-mode = "mii";
+					fixed-link {
+						speed = <100>;
+						full-duplex;
+					};
+				};
+
+			};
 		};
 	};
 
@@ -135,40 +180,59 @@ pci@c0000000 {
 		};
 
 		/*
-		 * EthB - connected to the KS8995 switch ports 1-4
-		 * FIXME: the boardfile defines .phy_mask = 0x1e for this port to enable output to
-		 * all four switch ports, also using an out of tree multiphy patch.
-		 * Do we need a new binding and property for this?
+		 * EthB connects to the KS8995 CPU port and faces ports 1-4
+		 * through the switch fabric.
+		 *
+		 * To complicate things, the MDIO channel is also only
+		 * accessible through EthB, but used independently for PHY
+		 * control.
 		 */
-		ethernet@c8009000 {
+		ethb: ethernet@c8009000 {
 			status = "okay";
 			queue-rx = <&qmgr 3>;
 			queue-txready = <&qmgr 20>;
-			phy-mode = "rgmii";
-			phy-handle = <&phy4>;
+			phy-mode = "mii";
+			fixed-link {
+				speed = <100>;
+				full-duplex;
+			};
 
 			mdio {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				/* Should be ports 1-4 on the KS8995 switch */
+				/*
+				 * LAN ports 1-4 on the KS8995 switch
+				 * and PHY5 for WAN need to be accessed
+				 * through this external MDIO channel.
+				 */
+				phy1: ethernet-phy@1 {
+					reg = <1>;
+				};
+				phy2: ethernet-phy@2 {
+					reg = <2>;
+				};
+				phy3: ethernet-phy@3 {
+					reg = <3>;
+				};
 				phy4: ethernet-phy@4 {
 					reg = <4>;
 				};
-
-				/* Should be port 5 on the KS8995 switch */
 				phy5: ethernet-phy@5 {
 					reg = <5>;
 				};
 			};
 		};
 
-		/* EthC - connected to KS8995 switch port 5 */
-		ethernet@c800a000 {
+		/*
+		 * EthC connects to MII-P5 on the KS8995 bypassing
+		 * all of the switch logic and facing PHY5
+		 */
+		ethc: ethernet@c800a000 {
 			status = "okay";
 			queue-rx = <&qmgr 4>;
 			queue-txready = <&qmgr 21>;
-			phy-mode = "rgmii";
+			phy-mode = "mii";
 			phy-handle = <&phy5>;
 		};
 	};

-- 
2.49.0


