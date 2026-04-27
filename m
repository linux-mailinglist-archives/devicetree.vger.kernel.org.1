Return-Path: <devicetree+bounces-290375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wF90OUgC72lz3QAAu9opvQ
	(envelope-from <devicetree+bounces-290375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 08:29:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A37546D8EE
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 08:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9280F3003EA7
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 06:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8884370D54;
	Mon, 27 Apr 2026 06:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b="dUkLNg4b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731117.qiye.163.com (mail-m19731117.qiye.163.com [220.197.31.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A22F248166;
	Mon, 27 Apr 2026 06:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.117
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777271340; cv=none; b=p5xhIIXZBreKZQACnG8daQsFqYwozvMzm5JdRUOX6H1dM+eSY2efdCZmKPoc9LSYJUHKDwGn9QgXdpt4KWs2K91xgbSvezu448pnHPgeKxYNoQ7+Fhvj9r/bugBoRzgt3719pAP6UCfPYQA+z51UKvG1WN4CB6odZ9VBHFySHBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777271340; c=relaxed/simple;
	bh=hzIoHfnPdYQMF9GtwItmBDS7TD1MqyYSOUvBP3HWYXU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sCwDJR7MqbUknrRkcY2Ky5D0VAkM4uWQ+sY3oVExDMxzGP1w3UOkVx5cbWzN/ysxd7gZ9WpVGGTTq8XKsd3+nzLoJQSE2dw2djsPQB1w+y8sykkwyotBYkB4Ldm/58G1x0hiTyPl/sei0yU2x2wto1yrQW2zZ3pzI/0HgS9k7Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com; spf=pass smtp.mailfrom=thundersoft.com; dkim=pass (1024-bit key) header.d=thundersoft.com header.i=@thundersoft.com header.b=dUkLNg4b; arc=none smtp.client-ip=220.197.31.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thundersoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thundersoft.com
Received: from albert-OptiPlex-7080.. (unknown [112.65.126.162])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3c40fa9e6;
	Mon, 27 Apr 2026 14:23:27 +0800 (GMT+08:00)
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
Date: Mon, 27 Apr 2026 14:23:24 +0800
Message-ID: <20260427062326.3715732-2-yangzh0906@thundersoft.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260427062326.3715732-1-yangzh0906@thundersoft.com>
References: <20260427062326.3715732-1-yangzh0906@thundersoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9dcd9b696e09cckunm8f7dadf41a30ac
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDT0pCVh5JSUxMTRhKTUtITlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlKSklVTU5VSklNVUpNSVlXWRYaDxIVHRRZQVlPS0hVSk
	tJT09PSFVKS0tVSkJLS1kG
DKIM-Signature: a=rsa-sha256;
	b=dUkLNg4bBJdd4jvIx6m6lYRzxha71NN9rvvOO3g42oQs1IT+FXjxyAgjbh+AMo5PcVCmX0aQSwSlcxm5rEA1+RyRJVVQD9wI4ZSxAtK8rbYFM17Ssdw6EuC20ZwoUhCI46PTr3qvx57/kmmNoiTNf3c5mt2kQAF84rVI/tgI8kw=; c=relaxed/relaxed; s=default; d=thundersoft.com; v=1;
	bh=I/Qf+Jt8jBH61yX/14Jp1btkMWzHWiNR5UF+Cn43c64=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Queue-Id: 4A37546D8EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[thundersoft.com,none];
	R_DKIM_ALLOW(-0.20)[thundersoft.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290375-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yangzh0906@thundersoft.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[thundersoft.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1.244.125.0:email,thundersoft.com:email,thundersoft.com:dkim,thundersoft.com:mid,1.82.190.192:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1.49.76.64:email,bst.ai:email,0.78.188.64:email,48.71.158.128:email]

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


