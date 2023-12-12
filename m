Return-Path: <devicetree+bounces-24324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 179BF80EBC7
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:29:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2CA51F21019
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0571C5EE71;
	Tue, 12 Dec 2023 12:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="hFHrE6jm"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B6ED94
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:29:44 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id B7165240029
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 13:29:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1702384181; bh=XK2o029UFWRLUtVZMifdlCezK2kjfe6cbAx2NwU/6DI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:From;
	b=hFHrE6jmnoTzfrtLODa3H0mhc2HFou23qsyKLAETduwd1SPWsDptM7CJWqC/CfEZN
	 0bUkRFAlsmqiWS8/YAJ/WVeasY4VAGXbOopRnGTyxEksjJsJYzWaCbOaUh0OCD4hoY
	 erJAn09lxRAXgbM8LdMja/XIrQGlvGsDbvBzGdJmHSj1jaR5dYvjbLXdqdZ7OwqulH
	 sqjSyLFkiPC0L0sIAt/k0DlBdyCyy0+kQoSyqjSXC7BGFIjPOY2PxMzyx+hEUcBsL/
	 4wHIOfR4rHIm1DlGgvrubqVHOIrowfC5ZZ0hANcTlHWSwB9B4jfLyv5yuG6SUuOigc
	 Ab52Zz/gRFOkg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4SqHxC63NBz6tyQ;
	Tue, 12 Dec 2023 13:29:35 +0100 (CET)
From: Anne Macedo <retpolanne@posteo.net>
To: 
Cc: retpolanne@posteo.net,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC support),
	linux-sunxi@lists.linux.dev (open list:ARM/Allwinner sunXi SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: allwinner: Orange Pi One Plus PHY support
Date: Tue, 12 Dec 2023 12:28:30 +0000
Message-ID: <20231212122835.10850-2-retpolanne@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds compatible values to mdio subnodes for Ethernet PHY representing
Realtek 8211 PHY to Orange Pi One Plus.

Signed-off-by: Anne Macedo <retpolanne@posteo.net>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
index 29a081e72..7248ab72f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-one-plus.dts
@@ -37,7 +37,8 @@ &emac {
 
 &mdio {
 	ext_rgmii_phy: ethernet-phy@1 {
-		compatible = "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id001c.c915",
+			     "ethernet-phy-ieee802.3-c22";
 		reg = <1>;
 	};
 };
-- 
2.43.0


