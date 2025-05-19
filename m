Return-Path: <devicetree+bounces-178424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9201ABBC3E
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:21:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9076017A1BF
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9770B2749F2;
	Mon, 19 May 2025 11:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="NAER0lU/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EB72749EA
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747653677; cv=none; b=IPXNxz7xuoM7Q/LBrA+rCji0E2JpekVaLj7tu6ad3P19gi5KyBWbOQyv3m/krHdHF+Ao5SwFOXY/2uJ5AeJQyr2vXiSAoPiukS3BX8tAiqgjKng1MhEU7w7kiVGv9mHuje3MUoY1ipWiwWK4bPvx+OmllOMGrxRHLlY4RL6jWNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747653677; c=relaxed/simple;
	bh=5Tdd/8xVDb26Gv4iC10mugp+E8qwYpIjv7FdyI/u4/8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L4dErgPYf5wYJlacZdJzBd6C7yYn4J63zvgSD4WL5AyhbFzb1ZvFP8xtlPxh0cNTdTUR7LwhxdBVaY7+TtJSfP+eXFO3GjLLYzes/FlinIIaVvEAalGzHuB+8IsF6rinY7IDNe+LhYIsT78CGQYCjl5cola6LlcgrlLhAGwL7cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=NAER0lU/; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=WM1F0yTIN5cpPxOhrbZdFGHhmihUiPTtOsGIJfZowNs=; b=NAER0l
	U/bqcYMG96MRbiB0tKjS2qjoHtzZyv74kYZPdkgu/A/ySME7o6pzkX9k8cgc1mS1
	/C04Gdn4A+DSK0AYe3nDWXNLegmoRTRDmXBx6870BoiKZZZCMjbjjlhVPO8EZ3P+
	7jaL6HEvtFEu3+1VINnGe7ECPA2AySgwJ8XG5OKlTHv3F25T8jDrGscMCpXX2fM+
	MozgVqHwnd2TDK5HxnkXOLQMnRsEZyOUZgfKhkzXBxAPK8Pspljx3QtyIb7hd7+3
	nS2G3X5pKEa17FgRT+EL2TMSjDuxiRV9pVa0TAbnSmwuUWm6wUxGXvbxcspIZ856
	F022ZIDY9UZN6xmQ==
Received: (qmail 2456870 invoked from network); 19 May 2025 13:21:13 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 19 May 2025 13:21:13 +0200
X-UD-Smtp-Session: l3s3148p1@rQ9VVHs1+N1Zz6+V
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/4] ARM: dts: marvell: kirkwood: use recent scl/sda gpio bindings
Date: Mon, 19 May 2025 13:21:04 +0200
Message-ID: <20250519112107.2980-3-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
References: <20250519112107.2980-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We have dedictaded bindings for scl/sda nowadays. Switch away from the
deprecated plain 'gpios' property.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi b/arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi
index 52baffe45f12..259cb3d5f16d 100644
--- a/arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi
+++ b/arch/arm/boot/dts/marvell/kirkwood-km_common.dtsi
@@ -27,8 +27,8 @@ serial@12000 {
 
 	i2c {
 		compatible = "i2c-gpio";
-		gpios = < &gpio0 8 GPIO_ACTIVE_HIGH		/* sda */
-			  &gpio0 9 GPIO_ACTIVE_HIGH>;		/* scl */
+		sda-gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
+		scl-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
 		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
 	};
 };
-- 
2.47.2


