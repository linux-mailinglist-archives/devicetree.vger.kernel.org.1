Return-Path: <devicetree+bounces-290447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFUZNvgx72mb8wAAu9opvQ
	(envelope-from <devicetree+bounces-290447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 11:52:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3704702B2
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 11:52:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CA4FB3004F2D
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 09:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C183B38BF;
	Mon, 27 Apr 2026 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b="XrhtiPlI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49195.qiye.163.com (mail-m49195.qiye.163.com [45.254.49.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076333B38BB;
	Mon, 27 Apr 2026 09:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777283573; cv=none; b=gFCJGbu8rfWGDFL0WJtCbwilsxH0tOTXdAuMbYt/NQpbgV0K5YRTKOQMl+4fnVxa28yHt8eZD9kI95PojkYF6f5X/fypOqmYn5BvBqMp3+ofJx5RHrAYnnqLOqyPFwBWpZBzvaUAzF0H3+2PF/1YlS1HYQrB8cMRwJYfYu5khWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777283573; c=relaxed/simple;
	bh=hzIoHfnPdYQMF9GtwItmBDS7TD1MqyYSOUvBP3HWYXU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jGggxt9e5RLYarklZTmMO6vTJxVc4yIA6EnGFYKngnnF5VU2HqFhArmNLZcZTgB69jU6HnXUvnbUK6sij6w0E4hR6ELfo0z5/qJhb4w2pvbAOjJTA5JdFMV2Jn3zQLBr2FviL6qHCoBQF/dxtu14Bm6mgH6/cO5aKTYsRnyoaEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com; spf=pass smtp.mailfrom=thundersoft.com; dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b=XrhtiPlI; arc=none smtp.client-ip=45.254.49.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thundersoft.com
Received: from albert-OptiPlex-7080.. (unknown [112.65.126.162])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3c40faa06;
	Mon, 27 Apr 2026 14:23:31 +0800 (GMT+08:00)
From: Albert Yang <yangzh0906@thundersoft.com>
To: gordon.ge@bst.ai,
	krzk@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	arnd@arndb.de,
	catalin.marinas@arm.com,
	will@kernel.org
Cc: bst-upstream@bstai.top,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/2] arm64: dts: bst: enable eMMC controller in C1200 CDCU1.0 board
Date: Mon, 27 Apr 2026 14:23:28 +0800
Message-ID: <20260427062329.3715925-2-yangzh0906@thundersoft.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260427062329.3715925-1-yangzh0906@thundersoft.com>
References: <20260427062329.3715925-1-yangzh0906@thundersoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9dcd9b778c09cckunmcd249b321a30d5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTR1DVkJJHUkfTExKGE1MSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlKSklVTU5VSklNVUpNSVlXWRYaDxIVHRRZQVlPS0hVSk
	tJT09PSFVKS0tVSkJLS1kG
DKIM-Signature: a=rsa-sha256;
	b=XrhtiPlIUTegFw1ieLby/O9MrO+eVqF8NCzfQhVAjPOSKWC+C1R44nkBhylZU6fXR6U2hHqH1qW6ki4UPYuR2uKpAS22EYCT5tNHb8Uju7Ispb8TpIf9K/i9qdr5ln7DQiuxqCVtF4C+QyAreOZ0Te/EaHaqGvSVJIUUry30PIA=; c=relaxed/relaxed; s=default; d=thundersoft.com; v=1;
	bh=I/Qf+Jt8jBH61yX/14Jp1btkMWzHWiNR5UF+Cn43c64=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: CF3704702B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[thundersoft.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[thundersoft.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-290447-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[thundersoft.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yangzh0906@thundersoft.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_PROHIBIT(0.00)[1.82.190.192:email,48.71.158.128:email,0.78.188.64:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,1.244.125.0:email,1.49.76.64:email]

Add eMMC controller support to the BST C1200 device tree:

- bstc1200.dtsi: Add mmc0 node for the DWCMSHC SDHCI controller
  with basic configuration (disabled by default)
- bstc1200.dtsi: Add fixed clock definition for MMC controller
- bstc1200-cdcu1.0-adas_4c2g.dts: Enable mmc0 with board-specific
  configuration including 8-bit bus width and reserved SRAM buffer

The bounce buffer in reserved SRAM addresses hardware constraints
where the eMMC controller cannot access main system memory through
SMMU due to a hardware bug, and all DRAM is located outside the
4GB boundary.

Signed-off-by: Albert Yang <yangzh0906@thundersoft.com>
Acked-by: Gordon Ge <gordon.ge@bst.ai>
---
Changes for v8:
- Collected Acked-by: Gordon Ge <gordon.ge@bst.ai>
- Rebased onto v7.1-rc1
- No code changes

Changes for v7:
- No code changes; resend with corrected recipients

Changes for v5:
- Split from platform series per Arnd's feedback

Changes for v4:
- Change compatible to bst,c1200-sdhci
- Move bus-width and non-removable to board dts

Changes for v3:
- Split defconfig into dedicated patch

Changes for v2:
- Reorganize memory map, standardize interrupt definitions
---
 .../dts/bst/bstc1200-cdcu1.0-adas_4c2g.dts    | 19 +++++++++++++++++++
 arch/arm64/boot/dts/bst/bstc1200.dtsi         | 18 ++++++++++++++++++
 2 files changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/bst/bstc1200-cdcu1.0-adas_4c2g.dts b/arch/arm64/boot/dts/bst/bstc1200-cdcu1.0-adas_4c2g.dts
index 5eb9ef369d8c..178ad4bf4f0a 100644
--- a/arch/arm64/boot/dts/bst/bstc1200-cdcu1.0-adas_4c2g.dts
+++ b/arch/arm64/boot/dts/bst/bstc1200-cdcu1.0-adas_4c2g.dts
@@ -17,6 +17,25 @@ memory@810000000 {
 		      <0x8 0xc0000000 0x1 0x0>,
 		      <0xc 0x00000000 0x0 0x40000000>;
 	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		mmc0_reserved: mmc0-reserved@5160000 {
+			compatible = "shared-dma-pool";
+			reg = <0x0 0x5160000 0x0 0x10000>;
+			no-map;
+		};
+	};
+};
+
+&mmc0 {
+	bus-width = <8>;
+	memory-region = <&mmc0_reserved>;
+	non-removable;
+	status = "okay";
 };
 
 &uart0 {
diff --git a/arch/arm64/boot/dts/bst/bstc1200.dtsi b/arch/arm64/boot/dts/bst/bstc1200.dtsi
index dd13c6bfc3c8..9660d8396e27 100644
--- a/arch/arm64/boot/dts/bst/bstc1200.dtsi
+++ b/arch/arm64/boot/dts/bst/bstc1200.dtsi
@@ -7,6 +7,12 @@ / {
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	clk_mmc: clock-4000000 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <4000000>;
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -72,6 +78,18 @@ uart0: serial@20008000 {
 			status = "disabled";
 		};
 
+		mmc0: mmc@22200000 {
+			compatible = "bst,c1200-sdhci";
+			reg = <0x0 0x22200000 0x0 0x1000>,
+			      <0x0 0x23006000 0x0 0x1000>;
+			clocks = <&clk_mmc>;
+			clock-names = "core";
+			dma-coherent;
+			interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
+			max-frequency = <200000000>;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@32800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x0 0x32800000 0x0 0x10000>,
-- 
2.43.0


