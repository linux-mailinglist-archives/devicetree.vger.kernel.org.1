Return-Path: <devicetree+bounces-99899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7555496B7AA
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:01:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A86C41C246C8
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 10:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC321CF2A8;
	Wed,  4 Sep 2024 10:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="iHHOmMoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1686C1CF2B5
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725444035; cv=none; b=Jz1ISnH5iNcvRUpYFBtxwuwU+FCx4VB/5mU+RiHmyP8r4mMAlngqiNA62cf5X4BmEA69aO9DRBiSj+HkyESv01gD1j4n1nRTQ6584PzV4w7AirHsA10OnMSHLb1O96NPt/16/ISLyWhBIPEFChmw/GGfGPY5lH4YCHPjQ0J400M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725444035; c=relaxed/simple;
	bh=YFhEhD2DDFAzOc5YRN506WbRhSuqs9WezZihnyy8brI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nnBhcVVnBXCyrD0OczpNWyZjXM2zLTG4bb8PrBB/NNamwgYf5JGbqPfDTZp90nNWOTgB/8fg8QeDmG2g9rtgr+nkPYSnZMvO6TRD4scL9heZO+/HRMgggIBLGBqozEz8qpZmKVV8p2Fn4iJwGjnf0yWsBBRXPgx3J0HtdVuIiJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=iHHOmMoV; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 202409041000262c9f880be2721bcd71
        for <devicetree@vger.kernel.org>;
        Wed, 04 Sep 2024 12:00:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=lEToRIXgwmYCaLisxjDuneMdvn7veaPhbgDLaE9G4uY=;
 b=iHHOmMoVcZFuR+nky3DJJ5bQVU/pwKB1ZiLGben6Aw2OOlNx3oKT/cGsei2xoGzjLyHzrS
 LmYTbLt4D11d3747JqhRi+d/aigd4e47RrnL5SjpRYQkzrgTymG1iljtI1eXIUCwzZWLmQmw
 U99uzEQuPaJA5YOQBQlpKFrBGJ2Eep1RNdi1JTMyHTGYeyjsyJF4j/s1R+Ij+g6JMNAK5GEQ
 R+f5T4GCmxQbk9Tg3ZcemAwsP+hoZ1uENRVbxmRkyDtR/56mCKq919+F2vpfpEHs479g38fm
 Ah19/ak3PiyEPJD+3Z7xj7dJebiCTIjWODcqq7cBK7SBbcpYSWETd+yQ==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v4 5/7] arm64: dts: ti: k3-am65-main: Add PVU nodes
Date: Wed,  4 Sep 2024 12:00:14 +0200
Message-ID: <7a4695fd0d076a535cf34a736f0660082901e1b5.1725444016.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1725444016.git.jan.kiszka@siemens.com>
References: <cover.1725444016.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Add nodes for the two PVUs of the AM65. Keep them disabled, though,
because the board has to additionally define DMA pools and the devices
to be isolated.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index ba43325c0eec..2582dad68dff 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -841,6 +841,26 @@ main_cpts_mux: refclk-mux {
 				assigned-clock-parents = <&k3_clks 118 5>;
 			};
 		};
+
+		ti_pvu0: iommu@30f80000 {
+			compatible = "ti,am654-pvu";
+			reg = <0 0x30f80000 0 0x1000>,
+			<0 0x36000000 0 0x100000>;
+			reg-names = "cfg", "tlbif";
+			interrupts-extended = <&intr_main_navss 390>;
+			interrupt-names = "pvu";
+			status = "disabled";
+		};
+
+		ti_pvu1: iommu@30f81000 {
+			compatible = "ti,am654-pvu";
+			reg = <0 0x30f81000 0 0x1000>,
+			<0 0x36100000 0 0x100000>;
+			reg-names = "cfg", "tlbif";
+			interrupts-extended = <&intr_main_navss 389>;
+			interrupt-names = "pvu";
+			status = "disabled";
+		};
 	};
 
 	main_gpio0: gpio@600000 {
-- 
2.43.0


