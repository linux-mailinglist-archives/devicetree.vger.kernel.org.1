Return-Path: <devicetree+bounces-135170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 904F29FFF95
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 20:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C72DA1883AC3
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 19:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E70D81B4F08;
	Thu,  2 Jan 2025 19:46:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB0F1B4141;
	Thu,  2 Jan 2025 19:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735847162; cv=none; b=hilNT+olo2kyEk2mVuHL1GqNuJNs0oNouNz/x8//p+cW1qTZbmgAupbFZM4rM0NuAtQMyIvs1vacrm2iucpkOwWyGGRTTPdqLPamE6IXu8zwO7ZGPH5LmAvAWB8d6NTswdAY2uTEVby9jgcVVBmZuXSCYZUhkTdt96RhxZBC9Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735847162; c=relaxed/simple;
	bh=k5zemtKb9cqTfoEwHPm3n/xJjZu9qtoiUaaLZMS5lXU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mWryBCU5fhU5pq1ElzKOQmD+ba+9CnDvdRLWkHYPZ8ZGfRn5IWWPkvlljbPDB2166MuTzj5uUL2x2j6g1AtCqxmWElaKLEpV7yf8jJUDu1eLL8iTIiuDtnfSe0WloLGA7LMidey14XgdASp+2QkFMLo7OPoy1HQ0MzC1q1Ob7iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c8:31de:bf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id A104BB4B2B73;
	Thu,  2 Jan 2025 20:45:54 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org,
	E Shattow <e@freeshell.de>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 1/5] riscv: dts: starfive: jh7110-common: replace syscrg clock assignments
Date: Thu,  2 Jan 2025 11:45:07 -0800
Message-ID: <20250102194530.418127-2-e@freeshell.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250102194530.418127-1-e@freeshell.de>
References: <20250102194530.418127-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace syscrg assignments of clocks, clock parents, and rates, for
compatibility with downstream boot loader SPL secondary program
loader.

Signed-off-by: E Shattow <e@freeshell.de>
---
 arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
index 48fb5091b817..55c6743100a7 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
@@ -359,9 +359,15 @@ spi_dev0: spi@0 {
 };
 
 &syscrg {
-	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>,
-			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
-	assigned-clock-rates = <500000000>, <1500000000>;
+	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_ROOT>,
+			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
+			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
+			  <&syscrg JH7110_SYSCLK_QSPI_REF>;
+	assigned-clock-parents = <&pllclk JH7110_PLLCLK_PLL0_OUT>,
+				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
+				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
+				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;
+	assigned-clock-rates = <0>, <0>, <0>, <0>;
 };
 
 &sysgpio {
-- 
2.45.2


