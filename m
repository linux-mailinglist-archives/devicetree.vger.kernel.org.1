Return-Path: <devicetree+bounces-229158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC6DBF4900
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 06:02:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D4F4464DD9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 04:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1D1C8615A;
	Tue, 21 Oct 2025 04:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSPXB6fI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1A42556E
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 04:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761019364; cv=none; b=QDV6+mrhlJtT3RCF+Elfi9ZHStcaDG2L9ZQMty4gH/HUloKr89nnOMu/H7sfznd84KNiQKvYSTKTpFEkwO+aX1EZcawbL2qv8g60cTXzEqgairPQ/TfE/V0wlfc3guTBrT12RansOeQLdAhdX0S9aXhhynBBKmq4mwNfiFXn8gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761019364; c=relaxed/simple;
	bh=oMIL2boHagMSa1tBywQN370zBuWYPvdhUTxhA8V4S1Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bP3UiUJkEAjBh01DA1L9d//DZF7AimF0Kd7as9oRGyeVXmkRKTwsl7CwNIh4YC2GRkG+wLwAIGKd9VmlITFGJgI0nF7V7kNVOUGw8C1NaQFTouWHBs+yLqH7V8zQDTYU+nMJgWaTcrjxe4MpbwkbiBktM9UkRnsK7dFxsiqjsOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSPXB6fI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E39BC4CEF1;
	Tue, 21 Oct 2025 04:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761019364;
	bh=oMIL2boHagMSa1tBywQN370zBuWYPvdhUTxhA8V4S1Q=;
	h=From:To:Cc:Subject:Date:From;
	b=VSPXB6fIThKXxQ9Pl24Qf8cQgjoc5csVqXGSUq3rIUVHu36NwsBopcAZSfZfzG6td
	 WljJ5HVHLUcecoVRYL7Pjvv2aUAFmZghaA5cblFkt3W+cuhcH5dDPCYD9a++4RPEtO
	 bEHMyRw1u7GvnYeXzfLpn2snT7+Ter6kjcGEq+RgaDn9tjWx3E5j+3m7bhOnuSVq5T
	 m8scwTN9REjpbOxMsQ0nLJcSjkeZOS15+oXmAXwQlKiznyLJnwJPp2jegjOb029uAv
	 5HrSMSJc5FOUwgLLfPjYomnkmcRaMU0h+6lJXRXa3aDnIjSM2dny3qMYJEOxQJxY+2
	 oiKY0ROj5IFww==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 1/3] arm64: dts: socfpga: move sdmmc-ecc to the base DTSI file
Date: Mon, 20 Oct 2025 23:02:28 -0500
Message-ID: <20251021040230.759832-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ECC manager entry for sdmmc should be a chip level entry, not a
board entry.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi   |  9 +++++++++
 .../boot/dts/altera/socfpga_stratix10_socdk.dts     | 13 -------------
 .../dts/altera/socfpga_stratix10_socdk_nand.dts     | 13 -------------
 3 files changed, 9 insertions(+), 26 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index effd242f6bf7..657e986e5dba 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -630,6 +630,15 @@ emac0-tx-ecc@ff8c0400 {
 				interrupts = <5 4>;
 			};
 
+			sdmmca-ecc@ff8c8c00 {
+				compatible = "altr,socfpga-s10-sdmmc-ecc",
+					     "altr,socfpga-sdmmc-ecc";
+				reg = <0xff8c8c00 0x100>;
+				altr,ecc-parent = <&mmc>;
+				interrupts = <14 4>,
+					     <15 4>;
+			};
+
 		};
 
 		qspi: spi@ff8d2000 {
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 4eee777ef1a1..6aa262fc7f99 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -50,19 +50,6 @@ ref_033v: regulator-v-ref {
 		regulator-min-microvolt = <330000>;
 		regulator-max-microvolt = <330000>;
 	};
-
-	soc@0 {
-		eccmgr {
-			sdmmca-ecc@ff8c8c00 {
-				compatible = "altr,socfpga-s10-sdmmc-ecc",
-					     "altr,socfpga-sdmmc-ecc";
-				reg = <0xff8c8c00 0x100>;
-				altr,ecc-parent = <&mmc>;
-				interrupts = <14 4>,
-					     <15 4>;
-			};
-		};
-	};
 };
 
 &pinctrl0 {
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index 7c53cb9621e5..92954c5beb54 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -50,19 +50,6 @@ ref_033v: regulator-v-ref {
 		regulator-min-microvolt = <330000>;
 		regulator-max-microvolt = <330000>;
 	};
-
-	soc@0 {
-		eccmgr {
-			sdmmca-ecc@ff8c8c00 {
-				compatible = "altr,socfpga-s10-sdmmc-ecc",
-					     "altr,socfpga-sdmmc-ecc";
-				reg = <0xff8c8c00 0x100>;
-				altr,ecc-parent = <&mmc>;
-				interrupts = <14 4>,
-					     <15 4>;
-			};
-		};
-	};
 };
 
 &gpio1 {
-- 
2.42.0.411.g813d9a9188


