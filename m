Return-Path: <devicetree+bounces-245454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B57FCB11C6
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 22:09:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F90630D10B9
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 21:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D57D33191B2;
	Tue,  9 Dec 2025 21:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="nLAGgxKc"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367DC318152
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 21:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765314577; cv=none; b=OmHxVJ0q9K6TnTGrN460G5uB0cQXO5IKQ6CtvdAki3p/pdEo74KkDklAitgbYoBSylSYHN347nyy4q0Ac2pgY7ltz3SBZxgUdUqc46fzb8BftjTfG5nzI1IRq1LmJvQe7PKFcxIME7PwNnIn/dYYLNBMqkxFxlBTM4YYE9CaEgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765314577; c=relaxed/simple;
	bh=qJiKHFAzj9fzwdlWE5j3UbQ82N8DEnDoMSbQ0Pat0DY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rMFG5IhX1iVHNTV6TdPfwee3Jn9BEX+Fiu0SbDJAumj52+r8yZp+Ihm4wZocGoAmTBpBzynerHNkZJMHXMSWGR/k1DAbs0AtPzSfBHC/O5kdgaSZpOTGj5/mSLSoQ3S+rNLkU3AySdVsLZlt3fjYccnqurCFtOyb3z/O8ns1CT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=nLAGgxKc; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 6D7A8240027
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 22:09:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1765314574; bh=wF3GnrTWwt9u8gVRh0B7rm3VkNAnKwt/+N/TCp3T70Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:From;
	b=nLAGgxKcyHvnB9mHvreS3qIB2z1t90PDhDLN+8MsuzW/f6SAkzHVY8rvyCsnrTIhw
	 WutmSLtL3REy8Q6BRz1d8yAU7tTmwbQ49TAUrzcNduGpscV5sbYkad5IB66PE35FwI
	 AAft9vSCtEvxI9KoYo0QEkBsHTeRRCqYpzrrBrs/9YaibyAyFMOg7ZD/lK5SAE+6WB
	 SvSbufZgS2sJRTXouXKlyTs5+rbSNzTtg+GD9uvsAPZaRzDNmU7t6I8EQpjfAr2YY/
	 Khp88uoXdLKNmEHw9c6S3hqcuZf/gE/onUKVpq96L6XTGiuzilo6ozlk62ZufO20ey
	 pgpX+MBBVMZ/A==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4dQs191mWfz9rxK;
	Tue,  9 Dec 2025 22:09:33 +0100 (CET)
From: Adrian Kossmann <adrian.kossmann@posteo.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Adrian Kossmann <adrian.kossmann@posteo.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add compatible for Ethernet PHY
Date: Tue, 09 Dec 2025 21:09:33 +0000
Message-ID: <20251209210658.458506-2-adrian.kossmann@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Without the compatible string the Ethernet PHY is not bound to the
correct driver. This causes link instability under load, with throughput
eventually dropping to zero.
Add the explicit PHY ID compatible to ensure the proper driver is selected.

Signed-off-by: Adrian Kossmann <adrian.kossmann@posteo.de>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index a4bdd87d0729..4da5ff6f2572 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -163,6 +163,7 @@ mdio {
 		#size-cells = <0>;
 
 		rtl8211: ethernet-phy@1 {
+			compatible = "ethernet-phy-id001c.c916";
 			reg = <1>;
 			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
 			pinctrl-names = "default";
-- 
2.52.0


