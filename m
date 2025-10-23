Return-Path: <devicetree+bounces-230550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C320AC0390F
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 23:40:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9FE134E1AE1
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 21:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 616AD245006;
	Thu, 23 Oct 2025 21:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJNd7Nuy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9EEEEB3
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 21:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761255622; cv=none; b=M7ltIyppCP0LOltRQGme5mAZz66oE0D8dML6mBnO4VgU/nfYttFMu3Srzg/n3kAX4dTNvh6dElx1I+AxONYq3GeBkNRBG7DDV41oNumLi5e/M+AAolikxJoFKO4G+TOguqgwxLCWnei0ro83axCAMNwIu/y55NeDt27hSzxi05k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761255622; c=relaxed/simple;
	bh=hluzGc1wtjQ2Ej5WWRRgfVkx/PZf7eOob9DZ2PX8wco=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WO/GhNIh+FII/ifJt2srYXRri3bg8D95os12qEyF+HJj7kEJsD81+FKILFNlJ9j+YZCH3eyidIca1XOXTlv/AY9eemhEsqUUfn4eyxxK+InyVpW9+CasDoGgSgUD2YuZAiOG/FP24Ig2UVlHZH1MFV0V+Gsh/GY17Onkd4tJDEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJNd7Nuy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 991A8C4CEE7;
	Thu, 23 Oct 2025 21:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761255620;
	bh=hluzGc1wtjQ2Ej5WWRRgfVkx/PZf7eOob9DZ2PX8wco=;
	h=From:To:Cc:Subject:Date:From;
	b=GJNd7NuyMOPeKvq9DL/PjgzAfWK1Um5omT0MJpvg3r/DnAtFoSBetAQ8jJN4h8Guz
	 OTdEcIWZQFfxepxNydXgHJd50p0syahaw1CCf0/f0UUK6FXRosz7an2dana3qIKz6E
	 9JgDPb1BNMI/GMpxQFChqWbHcVHQl1LYTZ5MEe5PtAoYlUY4xjclDYpM1JcBc32pXF
	 sMoMOqazrKnA9wXXab5lCkdzX6sAmTpGMFLGr7ncrGN3rOrflUYF1cjZh+/RDgt3fR
	 WCH+49Pcww9yBgoahVuRH3ZDvljsnPg9xJaLnXJwrNgCuIKq1zuy4SbeFGzLI5VFjD
	 zvdT0XNipJgYw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH] arm64: dts: socfpga: agilex5: add generic "snps,dwxgmac" to ethernet
Date: Thu, 23 Oct 2025 16:40:12 -0500
Message-ID: <20251023214012.283600-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ethernet hardware node on Agilex 5 needs a generic "snps,dwxgmac"
binding. Without this binding, the ethernet driver will not be able to
correctly set the has_xgmac variable.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index a22cf6a211e2..33ca5a5f2d56 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -505,7 +505,8 @@ qspi: spi@108d2000 {
 
 		gmac0: ethernet@10810000 {
 			compatible = "altr,socfpga-stmmac-agilex5",
-				     "snps,dwxgmac-2.10";
+				     "snps,dwxgmac-2.10",
+				     "snps,dwxgmac";
 			reg = <0x10810000 0x3500>;
 			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
@@ -617,7 +618,8 @@ queue7 {
 
 		gmac1: ethernet@10820000 {
 			compatible = "altr,socfpga-stmmac-agilex5",
-				     "snps,dwxgmac-2.10";
+				     "snps,dwxgmac-2.10",
+				     "snps,dwxgmac";
 			reg = <0x10820000 0x3500>;
 			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
@@ -729,7 +731,8 @@ queue7 {
 
 		gmac2: ethernet@10830000 {
 			compatible = "altr,socfpga-stmmac-agilex5",
-				     "snps,dwxgmac-2.10";
+				     "snps,dwxgmac-2.10",
+				     "snps,dwxgmac";
 			reg = <0x10830000 0x3500>;
 			interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-- 
2.42.0.411.g813d9a9188


