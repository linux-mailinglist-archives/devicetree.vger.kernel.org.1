Return-Path: <devicetree+bounces-83369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E6692835D
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 10:01:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F5DB1F25244
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 08:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0762813C8F5;
	Fri,  5 Jul 2024 08:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="sYyGfoxp"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759FD13B7BC
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 08:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720166495; cv=none; b=Yr2ubbTCEvr4UM42yv+siduc2MPaqoWctqyCB64DjOlO6hOhn1LsQibHKi9koXoBLO2Jrx8bA67LjXh1qf/1ZZvLDfIl1YHectrwEqvvwE1wTe0QbBKdzfyiQxfUVbAWsLAVrdeV6kC7s5MMdgIa2lVp3FFPepiPEh296Yi1IxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720166495; c=relaxed/simple;
	bh=8EN05BqIsn4uXl12HCaIj9twZmAqNuPEOnkPawOqITM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uBmbhWVH89x3qmufbwIpdAiAJphzV7c0PcWFyDt+Zyt0Jw0DnXc7+cGH1AATJmHSXU0QjB7kOUzzR1kbgZsR3rNIHthgXolEL0lBqxKfqNH1ht9a+f+KeqFTatu3+0NWYncXH6ajo7Lv71X5gKK6EnPJnqYm3iV1RJ7v/2fV1O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=sYyGfoxp; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 613AE88582;
	Fri,  5 Jul 2024 10:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720166492;
	bh=MnhCLI681gPEUgDUmqb7TFJpXAtehnNsyv1YCshIkLo=;
	h=From:To:Cc:Subject:Date:From;
	b=sYyGfoxp/Gzj9Uti6PU7iQQTZqlmEGvMf1BkfbBzPAgFCKhdAmIGbkTLkOd7w4GUN
	 Ar2jwnltYYFKwyyJzuJ31Eu5dDoSQIfo1aec7QnqWWD1vjdhFYAlNcCrey5yXYILLh
	 ZmPGIa0W/OZ76BvTVx+tiIZ/Sze82Ie4XYiS7nZ/6EJzT0CN967M+tCPgoawz3oTxM
	 PE+j4U3tgKtz3suMWp8t089wdbMJq3GFlkUVPlyZazSCX+RCEM9bAB5PDf00sVGGCs
	 8DIF7LJ8p+Phum5Xr2Bmk4j42ZN8KN9LGLm0Y2oVUOK0eykcBRDXJmraowFgz+KgqW
	 esEoQ0avWXjxA==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: kernel@dh-electronics.com,
	Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christophe Roullier <christophe.roullier@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Disable PHY clock output on DH STM32MP13xx DHCOR DHSBC board
Date: Fri,  5 Jul 2024 10:01:02 +0200
Message-ID: <20240705080118.75899-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The RTL8211F PHY clock output is not used on DH STM32MP13xx DHCOR DHSBC
board, disable it to improve EMI characteristics.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Christophe Roullier <christophe.roullier@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
index 3cc9ad88d61bc..425deb5641c17 100644
--- a/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
+++ b/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dts
@@ -96,6 +96,7 @@ ethphy1: ethernet-phy@1 {
 			interrupt-parent = <&gpiog>;
 			interrupts = <12 IRQ_TYPE_LEVEL_LOW>;
 			reg = <1>;
+			realtek,clkout-disable;
 			reset-assert-us = <15000>;
 			reset-deassert-us = <55000>;
 			reset-gpios = <&gpioa 11 GPIO_ACTIVE_LOW>;
@@ -125,6 +126,7 @@ ethphy2: ethernet-phy@1 {
 			interrupt-parent = <&gpiog>;
 			interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
 			reg = <1>;
+			realtek,clkout-disable;
 			reset-assert-us = <15000>;
 			reset-deassert-us = <55000>;
 			reset-gpios = <&gpiog 8 GPIO_ACTIVE_LOW>;
-- 
2.43.0


