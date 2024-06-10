Return-Path: <devicetree+bounces-74109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEDD902026
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 13:10:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80A9EB242B2
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 11:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E467D088;
	Mon, 10 Jun 2024 11:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="l7a8BC5L"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE1C7BB0C
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 11:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718017821; cv=none; b=C/lbtDmFvbpmqmBUPBDsmr13bW50RmX1C/Ly/YiuS3DeD3iRVtL8wUoa3FlQ4HV5PcCSU1aAm5Ei8v29qQ14yYlRcGKOWAdFG3s+rO3fx7ZetyefNJ418jid3psVYiG/2NLAz/d6IGsWsROSZDhNjISrcJGH52BtLQSiq7WWIYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718017821; c=relaxed/simple;
	bh=fpCXcSYLvaUiPvd8q8SOwFC8Rj+IsgRpPjmmEKBXl+s=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DtVsH1mp2+YvdxBhMdOw4eNm6oNokacwm6GfCspDnuzspfNh0nQM1E8W3I3UP5ONc3JWtvFnLzOjnRtEFZDNWfb6GpJ55+ESAvMMA3VCIep8w6qUCrlGlb+pomqSFLpQScUJAwPddZxCpmdUZm3T4VtnWrcXsu5hV1z/npKwm84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=l7a8BC5L; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1718017819; x=1749553819;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=fpCXcSYLvaUiPvd8q8SOwFC8Rj+IsgRpPjmmEKBXl+s=;
  b=l7a8BC5LItcXKwgHFANjGo9t8+2zmFiisu6qASm1nxx7aTqTI4cjGxfE
   7N6YGz8d0ttNO8aeNCPFaxMQHP/7RIflGEW+h0kIM0NX0LeuFS00Mci0w
   j6LjzwFdg/PrHp8F6V00V1ZaWjwIE94P0zjVys4mTVj3bp+I5s7YqSWiK
   sdQ2oc33uhiGCU97XWAr2porO9+VmFNTgVlzC59/OE51btqABvOnCQc7i
   H3ZGXMflq/lDjVNdqQO/J6jF5wlT6rgYVNOW7CGG3hINLarf0TJhs/D0W
   0hDAlx55GG6A+lwaLvKeKGUUbQ5UGXpGOemqHXJHvHD1+EF0GD0sPxmIG
   g==;
X-CSE-ConnectionGUID: BcDt+H4qQZa2Sjv9BSuOAw==
X-CSE-MsgGUID: LJkIoX+TSq+8v/JgPRiTJQ==
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; 
   d="scan'208";a="194602814"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Jun 2024 04:10:16 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 10 Jun 2024 04:09:45 -0700
Received: from wendy.microchip.com (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 10 Jun 2024 04:09:44 -0700
From: Conor Dooley <conor.dooley@microchip.com>
To: <linux-riscv@lists.infradead.org>
CC: <conor@kernel.org>, <conor.dooley@microchip.com>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, "Daire
 McNamara" <daire.mcnamara@microchip.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Samuel Holland
	<samuel.holland@sifive.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v1 5/5] riscv: dts: microchip: update pcie reg properties
Date: Mon, 10 Jun 2024 12:09:17 +0100
Message-ID: <20240610-panda-revenue-7248a5403dfc@wendy>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240610-vertical-frugally-a92a55427dd9@wendy>
References: <20240610-vertical-frugally-a92a55427dd9@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3109; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=fpCXcSYLvaUiPvd8q8SOwFC8Rj+IsgRpPjmmEKBXl+s=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGlp925bebxoODiN4/DmTXsbS+7b2H7I3rRqP9PE2Ty7VTcG P3GP7ihlYRDjYJAVU2RJvN3XIrX+j8sO5563MHNYmUCGMHBxCsBEqroY/qneU5um2Flwxqld1MLu2L zvhw9YLf/vI7nF4PH10He9kzcwMnRonJw6x+B+W33ytJkmXAuklZdNvlzUxD+x8b7L12zBtewA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Split the "apb" regions of memory on PolarFire SoC devicetrees PCIe
nodes into two regions, so that it will be possible to distinguish
between which root port instance is in use. Currently the "apb" region
points to the base of the root port region and the Linux driver uses
hard-coded offsets to find the "control" and "bridge" regions. The new
method for describing these regions explicitly passes the base address
for the two regions of interest.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi | 6 ++++--
 arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi    | 6 ++++--
 arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi | 6 ++++--
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
index 33e76db965bbc..f151aa2606d7b 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
@@ -45,8 +45,10 @@ pcie: pcie@3000000000 {
 			#size-cells = <0x2>;
 			device_type = "pci";
 			dma-noncoherent;
-			reg = <0x30 0x0 0x0 0x8000000>, <0x0 0x43000000 0x0 0x10000>;
-			reg-names = "cfg", "apb";
+			reg = <0x30 0x0 0x0 0x8000000>,
+			      <0x0 0x43008000 0x0 0x00002000>,
+			      <0x0 0x4300a000 0x0 0x00002000>;
+			reg-names = "cfg", "bridge", "ctrl";
 			bus-range = <0x0 0x7f>;
 			interrupt-parent = <&plic>;
 			interrupts = <119>;
diff --git a/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi
index 8230f06ddf48a..f5036126f2654 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi
@@ -20,8 +20,10 @@ pcie: pcie@2000000000 {
 		#interrupt-cells = <0x1>;
 		#size-cells = <0x2>;
 		device_type = "pci";
-		reg = <0x20 0x0 0x0 0x8000000>, <0x0 0x43000000 0x0 0x10000>;
-		reg-names = "cfg", "apb";
+		reg = <0x30 0x0 0x0 0x8000000>,
+		      <0x0 0x43008000 0x0 0x00002000>,
+		      <0x0 0x4300a000 0x0 0x00002000>;
+		reg-names = "cfg", "bridge", "ctrl";
 		bus-range = <0x0 0x7f>;
 		interrupt-parent = <&plic>;
 		interrupts = <119>;
diff --git a/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi
index 9a56de7b91d64..121b13f9c8bf4 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi
@@ -20,8 +20,10 @@ pcie: pcie@2000000000 {
 		#interrupt-cells = <0x1>;
 		#size-cells = <0x2>;
 		device_type = "pci";
-		reg = <0x20 0x0 0x0 0x8000000>, <0x0 0x43000000 0x0 0x10000>;
-		reg-names = "cfg", "apb";
+		reg = <0x30 0x0 0x0 0x8000000>,
+		      <0x0 0x43008000 0x0 0x00002000>,
+		      <0x0 0x4300a000 0x0 0x00002000>;
+		reg-names = "cfg", "bridge", "ctrl";
 		bus-range = <0x0 0x7f>;
 		interrupt-parent = <&plic>;
 		interrupts = <119>;
-- 
2.43.2


