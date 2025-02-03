Return-Path: <devicetree+bounces-142350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD3EA2512A
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 02:52:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2DD016309D
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 01:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 920A82AD04;
	Mon,  3 Feb 2025 01:51:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8983C8F6C;
	Mon,  3 Feb 2025 01:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738547509; cv=none; b=S0wYCn1IsO9TsGhmqk2QP54gbY6F3TdipkZZbm66QqwW4kRAH10AUaxwIocqI4x0MHZDZdHfz124cAUWwPJOBM5+v0FNWH6ivEEoJpKdSbfZNsCSNoC6i8uglwJW71ef1fzZ/ynEsK8LzQ8QrWarEAqvZlnEGm77Ftib9kOrQ+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738547509; c=relaxed/simple;
	bh=kpoM3FTfZs/LaHNWSO1ENNtwjcyGDyFGoCyFnhgDVLM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VGSB6VLNmco59YRsDe//74SQx+5P0CR6NHmlyWuFS62p9w80C6yxgEZutNyPf1DkrgvppWCMyaFk/ylVNE0lB+IHk0Ui77/6Ma1GPKAOycGms6lEAvPMHv5NxDt362SuaZPqlv4ATr3OFWVOjZ9NRtThXacsehBp9YiAghJoiZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c0:20f3:a400:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 6EE5BB223497;
	Mon,  3 Feb 2025 02:41:42 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Conor Dooley <conor@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	E Shattow <e@freeshell.de>
Subject: [PATCH v2 1/5] riscv: dts: starfive: jh7110-common: replace syscrg clock assignments
Date: Sun,  2 Feb 2025 17:37:07 -0800
Message-ID: <20250203013730.269558-2-e@freeshell.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250203013730.269558-1-e@freeshell.de>
References: <20250203013730.269558-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace syscrg assignments of clocks, clock parents, and rates with
default settings for compatibility with downstream boot loader SPL
secondary program loader.

Signed-off-by: E Shattow <e@freeshell.de>
---
 arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
index 48fb5091b817..a5661b677687 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
@@ -359,9 +359,14 @@ spi_dev0: spi@0 {
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
 };
 
 &sysgpio {
-- 
2.47.2


