Return-Path: <devicetree+bounces-221823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB023BA3467
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 12:04:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B1133A7791
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 10:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0688279DC3;
	Fri, 26 Sep 2025 10:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="APhIChd9"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84B4433AD;
	Fri, 26 Sep 2025 10:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758881045; cv=none; b=FkKeT06gaPc9m+0HGNjmjklSSNroP4DghIiOWPYJBcB2NUKe1+SHTOpjDr1GcO4INAEMe736Gp2py1biWgPShU2CgXfT3rG9iTiwIb+oVJRes0CCLftgt1yrWvtnudbjqOWWwLNCkzpFW7AXrf/DIOxSsiG7hMYlFZjx0DdTsPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758881045; c=relaxed/simple;
	bh=Fa5X8ypRIB0wKIk1gLTyYc5yK49dLyfzlhOeK6Kv40c=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NRagk/EXOFrWSnSPS4EuhxpVmuVd9NDHXhsmtJ9Cche2u2Qd87tOrgJbo+iel4uIMLQrEqHUl2My6SZmgNACxTj6Kk3xJkHbGEuvsN2b+C2mgjkxR9PeMBZQGjIkQtjmYH23GvMe7718SM4PWZZNyw6EL+I+tOMlOScCwojeNTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=APhIChd9; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 58QA3uac2127473;
	Fri, 26 Sep 2025 05:03:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1758881036;
	bh=PCNWgN7+R9x4RA0msvoyt/YSQxIRBw+hjf5jLQlB9MI=;
	h=From:To:CC:Subject:Date;
	b=APhIChd9b3/pKwFI8jYbZSL4pwVmNEtPIVFapmpERNPQgTqwkrjF7texxhm7hBfIA
	 +5NPqGPhJEPIJ1OungLydXElHvA5ZxM/SclfkXwZ1x6qrl7CYosAbqFjSaQOyPeVuA
	 CIpJW2yz5PVEM4dqqo/ey7q+fqbAaZte49gnGxYM=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 58QA3uLK3346862
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 26 Sep 2025 05:03:56 -0500
Received: from DLEE200.ent.ti.com (157.170.170.75) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 26
 Sep 2025 05:03:55 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 26 Sep 2025 05:03:55 -0500
Received: from HP-Z2-Tower-G9.dhcp.ti.com (hp-z2-tower-g9.dhcp.ti.com [10.24.68.200])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 58QA3oPj852736;
	Fri, 26 Sep 2025 05:03:51 -0500
From: Shiva Tripathi <s-tripathi1@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <praneeth@ti.com>
CC: <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <kamlesh@ti.com>, <t-pratham@ti.com>, <vishalm@ti.com>,
        <k-malarvizhi@ti.com>, Shiva Tripathi <s-tripathi1@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am62: Add RNG node
Date: Fri, 26 Sep 2025 15:32:29 +0530
Message-ID: <20250926100229.923547-1-s-tripathi1@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Add EIP76 Random Number Generator (RNG) node within crypto engine for
AM62 and AM62A SoCs. The RNG hardware is integrated in crypto
subsystem at address 0x40910000.

Mark the RNG node with status "reserved" as it is intended for use by
OP-TEE for secure random number generation. If required, this hardware
can also be used through Linux kernel by enabling this node.

Signed-off-by: Shiva Tripathi <s-tripathi1@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi  | 10 ++++++++++
 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi | 10 ++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
index 40fb3c9e674c..00148a5ebaa6 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
@@ -209,6 +209,16 @@ crypto: crypto@40900000 {
 		dmas = <&main_pktdma 0xf501 0>, <&main_pktdma 0x7506 0>,
 		       <&main_pktdma 0x7507 0>;
 		dma-names = "tx", "rx1", "rx2";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x00 0x40900000 0x00 0x40900000 0x00 0x30000>;
+
+		rng: rng@40910000 {
+			compatible = "inside-secure,safexcel-eip76";
+			reg = <0x00 0x40910000 0x00 0x7d>;
+			interrupts = <GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>;
+			status = "reserved"; /* Reserved for OP-TEE */
+		};
 	};
 
 	secure_proxy_sa3: mailbox@43600000 {
diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
index 829f00adea6e..9e5b75a4e88e 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
@@ -247,6 +247,16 @@ crypto: crypto@40900000 {
 		dmas = <&main_pktdma 0xf501 0>, <&main_pktdma 0x7506 0>,
 		       <&main_pktdma 0x7507 0>;
 		dma-names = "tx", "rx1", "rx2";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x00 0x40900000 0x00 0x40900000 0x00 0x30000>;
+
+		rng: rng@40910000 {
+			compatible = "inside-secure,safexcel-eip76";
+			reg = <0x00 0x40910000 0x00 0x7d>;
+			interrupts = <GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>;
+			status = "reserved"; /* Reserved for OP-TEE */
+		};
 	};
 
 	secure_proxy_sa3: mailbox@43600000 {
-- 
2.34.1


