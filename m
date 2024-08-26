Return-Path: <devicetree+bounces-96862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2026C95FC19
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 23:50:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 847F5B23E10
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 21:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4920919D091;
	Mon, 26 Aug 2024 21:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="fWQ6mrlo"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC6019CCF4
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 21:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724709015; cv=none; b=QVurSqXEQ7JivLFOYCYXt53jE6DGUcYjWYc5ArRj1UZCjcqmda/9WajQPhAOz7wUhk86L6zjQpbjNuNBGhmGy/OG7/EQhJqYRHY4wVVX1ytYpuXDIbu3zNayBo9JfaXzPe55VPIb/hSy54XUFPCovRbJ7NVYc371v+AOcHhrwZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724709015; c=relaxed/simple;
	bh=2Fxy3wyOfsMl5sdn0mn+jCpfHnxjJ1MIT5PBmEDXiI4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kM/H8a0VzCEkI2JuCyAcbEOPZB6xdmaOVYrizte5nj8JqCO8cgscDzt1pQTFaWoOTRAEXy/I2+EAO7eRniS2Nn7Pkc6A9R6A12iYizaIvk2wxc20WG2M0Ek1kETMC39G+HqYx1444slY+/3go19mrLH0YKsQVmrROJGmw8pirPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=fWQ6mrlo; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 202408262150105b5b42e0b859aa498e
        for <devicetree@vger.kernel.org>;
        Mon, 26 Aug 2024 23:50:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=994WEgmSr6YSmkCGjFYWFV2N5vlQvq3ltUdhvovY9/Y=;
 b=fWQ6mrlokKpcAlZRjvv9k/sEOKAeZfbYRBzUI/aXL4jnsJTWidaInKi/Bpax7Z+XYzdHcC
 KHaTbIuqNCp4BQCsRfTFJ4wRSVG1kz7ppvySCrQ6WUAyzsFWLHn9oYS/YUfE0j+tUIq2YIwC
 ky225tsoPR7RHnL7ITAGgPgcDBd8ywSDQngVh4j6IrWON/cniknJ37rrTKWge4TCBYwuBLIt
 M6rgbKIRRYYPcrd5qAaInwIqvqJIZTXYPVFc12y1i0p4dV6Ym7TGPdIMFvx4rHtubdfhE12k
 jEDZUkOR/Ulkj49I3FDGFTBJ61EbLBihaxrWZO540mOZB5wMPGw3QAbg==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v2 4/6] arm64: dts: ti: k3-am65-main: Add VMAP registers to PCI root complexes
Date: Mon, 26 Aug 2024 23:50:05 +0200
Message-ID: <869aa7a440cb0722e4dbd24cad7158fcdcba3519.1724709007.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1724709007.git.jan.kiszka@siemens.com>
References: <cover.1724709007.git.jan.kiszka@siemens.com>
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

Rewrap the long lines at this chance.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index a8664b246795..c91969ddcf4d 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -867,8 +867,13 @@ main_gpio1: gpio@601000 {
 
 	pcie0_rc: pcie@5500000 {
 		compatible = "ti,am654-pcie-rc";
-		reg = <0x0 0x5500000 0x0 0x1000>, <0x0 0x5501000 0x0 0x1000>, <0x0 0x10000000 0x0 0x2000>, <0x0 0x5506000 0x0 0x1000>;
-		reg-names = "app", "dbics", "config", "atu";
+		reg = <0x0 0x5500000 0x0 0x1000>,
+		      <0x0 0x5501000 0x0 0x1000>,
+		      <0x0 0x10000000 0x0 0x2000>,
+		      <0x0 0x5506000 0x0 0x1000>,
+		      <0x0 0x2900000 0x0 0x1000>,
+		      <0x0 0x2908000 0x0 0x1000>;
+		reg-names = "app", "dbics", "config", "atu", "vmap_lp", "vmap_hp";
 		power-domains = <&k3_pds 120 TI_SCI_PD_EXCLUSIVE>;
 		#address-cells = <3>;
 		#size-cells = <2>;
@@ -888,8 +893,13 @@ pcie0_rc: pcie@5500000 {
 
 	pcie1_rc: pcie@5600000 {
 		compatible = "ti,am654-pcie-rc";
-		reg = <0x0 0x5600000 0x0 0x1000>, <0x0 0x5601000 0x0 0x1000>, <0x0 0x18000000 0x0 0x2000>, <0x0 0x5606000 0x0 0x1000>;
-		reg-names = "app", "dbics", "config", "atu";
+		reg = <0x0 0x5600000 0x0 0x1000>,
+		      <0x0 0x5601000 0x0 0x1000>,
+		      <0x0 0x18000000 0x0 0x2000>,
+		      <0x0 0x5606000 0x0 0x1000>,
+		      <0x0 0x2910000 0x0 0x1000>,
+		      <0x0 0x2918000 0x0 0x1000>;
+		reg-names = "app", "dbics", "config", "atu", "vmap_lp", "vmap_hp";
 		power-domains = <&k3_pds 121 TI_SCI_PD_EXCLUSIVE>;
 		#address-cells = <3>;
 		#size-cells = <2>;
-- 
2.43.0


