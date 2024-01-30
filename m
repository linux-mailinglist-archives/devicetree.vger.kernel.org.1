Return-Path: <devicetree+bounces-36575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD01841DD8
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE2A21C2626D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 08:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB9533CE5;
	Tue, 30 Jan 2024 08:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pschenker.ch header.i=@pschenker.ch header.b="P/qiTMd0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc08.mail.infomaniak.ch (smtp-bc08.mail.infomaniak.ch [45.157.188.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1AA5645F
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 08:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706603675; cv=none; b=RiJt5RYleQNMpze+4S1Km0ASw0UJLv3dcLVD8Ni6KiJjyCmXnhgtJcZSqFssPO1ixrIGxrkao+fmq/mj3+Tw0OGsD5tXO6IK0vCdjEqjADz1AsdVTaF4HIgOC8FdQLL1t/o4207+Jjm9fZX3iY/L9HkR8EMizV1ihI+zCtZkMow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706603675; c=relaxed/simple;
	bh=b7D0N4YKP47U9+x1vEpEBNEqcBI+X3ofjmaQzmp+nqU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=N0uoL1JRNkYuw2x+hVlyMbCnBUnwwEptbf8b2frGc8Sl0iS9mdUiPEEH7foNPtyaUIz5A1q5lr9owpzMBTmj8gJgyXE5K4cvcOcoo5t7V0NIinv8uPDVjbDxrHg6r9A995fZkm19cLp55bPwedGyAU4IbwCXW6wgWsZETw9i++Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pschenker.ch; spf=pass smtp.mailfrom=pschenker.ch; dkim=pass (1024-bit key) header.d=pschenker.ch header.i=@pschenker.ch header.b=P/qiTMd0; arc=none smtp.client-ip=45.157.188.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pschenker.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pschenker.ch
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TPJPC2LQwzMqFgL;
	Tue, 30 Jan 2024 09:34:23 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4TPJPB2D8TzDMG;
	Tue, 30 Jan 2024 09:34:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
	s=20220412; t=1706603663;
	bh=b7D0N4YKP47U9+x1vEpEBNEqcBI+X3ofjmaQzmp+nqU=;
	h=From:To:Cc:Subject:Date:From;
	b=P/qiTMd0OHXoyQwMDg8Npj7xT+/KBznigjnFa3HVjXwlHQfWrVWZY2vzW+hAld8NB
	 uDEkfkhUph4/fGD8Y1msnw6r+8vTqWKts/LdoF7B8Ts7hG8QZe8B0oy/jbmlGerJlb
	 nZPzzJfWABw+rAGwEvvbvQbOFdjUcrKSWzUlb1Tk=
From: Philippe Schenker <dev@pschenker.ch>
To: netdev@vger.kernel.org
Cc: Paolo Abeni <pabeni@redhat.com>,
	linux-kernel@vger.kernel.org,
	Marek Vasut <marex@denx.de>,
	Vladimir Oltean <olteanv@gmail.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	UNGLinuxDriver@microchip.com,
	devicetree@vger.kernel.org,
	"David S . Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	stefan.portmann@impulsing.ch,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Philippe Schenker <philippe.schenker@impulsing.ch>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH net-next v3 1/2] dt-bindings: net: dsa: Add KSZ8567 switch support
Date: Tue, 30 Jan 2024 09:34:18 +0100
Message-Id: <20240130083419.135763-1-dev@pschenker.ch>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha

From: Philippe Schenker <philippe.schenker@impulsing.ch>

This commit adds the dt-binding for KSZ8567, a robust 7-port
Ethernet switch. The KSZ8567 features two RGMII/MII/RMII interfaces,
each capable of gigabit speeds, complemented by five 10/100 Mbps
MAC/PHYs.

This binding is necessary to set specific capabilities for this switch
chip that are necessary due to the ksz dsa driver only accepting
specific chip ids.
The KSZ8567 is very similar to KSZ9567 however only containing 100 Mbps
phys on its downstream ports.

Signed-off-by: Philippe Schenker <philippe.schenker@impulsing.ch>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v2)

Changes in v2:
- Describe in commit message why this is necessary
- Add Conor's Acked-by. Thanks!

 Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
index c963dc09e8e1..52acc15ebcbf 100644
--- a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
@@ -31,6 +31,7 @@ properties:
       - microchip,ksz9893
       - microchip,ksz9563
       - microchip,ksz8563
+      - microchip,ksz8567
 
   reset-gpios:
     description:
-- 
2.34.1


