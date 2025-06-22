Return-Path: <devicetree+bounces-188164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C78AE2FBF
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 14:07:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A5923AEA84
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 12:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2739B1DF990;
	Sun, 22 Jun 2025 12:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3/mVZQi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0327B1990B7
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 12:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750594072; cv=none; b=DcYvcvReHhHvZKZ0oJujwfvF2FIOLfxOhwcvltZV8D3zVYVtCfgLidvjU7BTnZRpYRiOSfkArEAEaSsvWUDNfSNZYYu9lmA1EAzU89d2jciqmkO9rtjPC1gOHKrzdx5Z2olVtoftUVmhBpxdHdVSBaFyFUPwU2pqUtYBeFf3dJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750594072; c=relaxed/simple;
	bh=9ZnKHni6gEfGg+QFw1ik3FKLDuP2nvJHIUTi5E0Io7E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bwOmqJXqfs2juFIhPrsMiHILVZ/PsL6T9Eo5nTJmuz0Sdb1UY7a0pqUCc4s66r2Pxqe4SC4m9y2i0Vu1B1PzZlO6Gfm0ME+kzH5TPQWEI2WyezlYPuq2FyDK7VpaScOs3feoixQly+UYl5yza1Dm7xu1lZMZIaumJrnJbgLZvag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3/mVZQi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14BB6C4CEF0;
	Sun, 22 Jun 2025 12:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750594071;
	bh=9ZnKHni6gEfGg+QFw1ik3FKLDuP2nvJHIUTi5E0Io7E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V3/mVZQiZnkXMU/k5xABoOoTU+c6AtoQqy3wCqGSN2k0+2ECgCmEOxDcmVxLP2qmm
	 UgPO2pHBifraJHjLy3TBAWzW0lQsRndgodxdipNwlmxuqVQRnA3xCIHw2G1TIngRhV
	 ZX8Buvb5fcT6yw3fXVKELyPURsGdpUeqUiIC8mRIXQdphZp351/eDib6nuVNevhsfd
	 g49nWuy9YPf/3VAiJLhRE5olqw7X0kMlsAH6EgeHHKqE1QtuWBqw7dpWCYw/FKACJQ
	 gJo2c3KTNNrF0AE6IRBowPvzFCTZpqYL4rqdfumwR+wsUvvobJvRz26N44CwNnGTXb
	 bZYYEncqAOSgg==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/6] arm64: dts: stratix10: add clock-frequency to FPGA fixed-clocks
Date: Sun, 22 Jun 2025 07:07:34 -0500
Message-ID: <20250622120737.600336-4-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20250622120737.600336-1-dinguyen@kernel.org>
References: <20250622120737.600336-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an arbitrary 100MHz for clock-frequency for the following clocks:
cb-intosc-ls-clk and f2s-free-clk.

This will fix the following warnings:
socfpga_stratix10_swvp.dtb:
cb-intosc-ls-clk: 'clock-frequency' is a required property
f2s-free-clk: 'clock-frequency' is a required property

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index f0f659139f22..d024200c3031 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -130,16 +130,19 @@ clocks {
 		cb_intosc_hs_div2_clk: cb-intosc-hs-div2-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <100000000>;
 		};
 
 		cb_intosc_ls_clk: cb-intosc-ls-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <100000000>;
 		};
 
 		f2s_free_clk: f2s-free-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <100000000>;
 		};
 
 		osc1: osc1 {
-- 
2.42.0.411.g813d9a9188


