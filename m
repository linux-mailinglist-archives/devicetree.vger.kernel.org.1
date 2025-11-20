Return-Path: <devicetree+bounces-240497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C71D5C71E83
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 03:59:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C55DC4E3CCA
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 02:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E752F690E;
	Thu, 20 Nov 2025 02:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU3+po3n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03828257825
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 02:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763607509; cv=none; b=nHlxs8QObj1IOmYd4QK9rmI0SN7Q2NfzwNsSAsQTQYh7Unfn7l/h4evBELkxcX/OBZJoiqJZPVSeS7MmVce1dtj5UBPY83bUbVe0vJT25y81M6KZFnZkEyDJdW1HpvqOU+zqJt0El2IW2RIjWN9DD4nA0632sVnOQMiS5b36xOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763607509; c=relaxed/simple;
	bh=X9+rm6myaqpgrEEm+7kDSLyiy70YzaqIAxGVu65WriU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o+DG8u4k/yNGiRm1jI0+aKwIyk792HBAQvqCso/PAw1XEA5Zr2gofGRu+5cehZB6Yk0X12M/cs2q4gWIPOZBn8Urf3MRdJnKVdpecrHDvpg+ZI0WEASo68zkd+r9rnM3Y0gbdA4ncIq1VKD+VK4Bd8AubWxkpAuCBkN7QBU/xDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU3+po3n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15B23C116D0;
	Thu, 20 Nov 2025 02:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763607508;
	bh=X9+rm6myaqpgrEEm+7kDSLyiy70YzaqIAxGVu65WriU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DU3+po3nfwqi7ovgu+9qZ951Gq5x4F0G/YqQSXwUs2wLAfgwk25A84QH7WrbFLqD3
	 V7xeXk++Z8DRPcndYcFoydVcR97qmI2TFIDTEWhIaksRjAJji7BIQj/mfHxYZICKZI
	 EnthQv1ifNrEs1Tjq3OCSRNt7KnS4Xoi9PrgENMpFr2ewbbe/WOq2nVpO18u+ePvPS
	 bP03kszFGSlWS6UlbArDi3b1LTMCaiCenaA1E6e7FsI1aTgvbaQWSdS4/H3AU/AaB2
	 oU65Yukq0obu4rQhkbB/0/amRHzodkxFYrZXxt9phozQuYDamd08FCO0ZnUd0ZamYP
	 tlMdATWjreUkQ==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org,
	Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>
Subject: [PATCH 2/2] arm64: dts: intel: agilex5: Add fallback compatible for XGMAC
Date: Wed, 19 Nov 2025 20:58:20 -0600
Message-ID: <20251120025820.41308-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20251120025820.41308-1-dinguyen@kernel.org>
References: <20251120025820.41308-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>

commit 343ea11a2fe3 ("arm64: dts: Agilex5 Add gmac nodes to DTSI for
Agilex5") added the support for the platform specific GMAC controler on
Agilex5. We also need to have a fallback generic compatible, "snps,dwxgmac"
so the driver can load correctly in cases when the specific compatible
is missing.

Fixes: 343ea11a2fe3 ("arm64: dts: Agilex5 Add gmac nodes to DTSI for Agilex5")
Signed-off-by: Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index 04e99cd7e74b..83581e7a85ab 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -489,7 +489,8 @@ qspi: spi@108d2000 {
 
 		gmac0: ethernet@10810000 {
 			compatible = "altr,socfpga-stmmac-agilex5",
-				     "snps,dwxgmac-2.10";
+				     "snps,dwxgmac-2.10",
+				     "snps,dwxgmac";
 			reg = <0x10810000 0x3500>;
 			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
@@ -601,7 +602,8 @@ queue7 {
 
 		gmac1: ethernet@10820000 {
 			compatible = "altr,socfpga-stmmac-agilex5",
-				     "snps,dwxgmac-2.10";
+				     "snps,dwxgmac-2.10",
+				     "snps,dwxgmac";
 			reg = <0x10820000 0x3500>;
 			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
@@ -713,7 +715,8 @@ queue7 {
 
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


