Return-Path: <devicetree+bounces-101133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC11970903
	for <lists+devicetree@lfdr.de>; Sun,  8 Sep 2024 19:33:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B68811C20D9D
	for <lists+devicetree@lfdr.de>; Sun,  8 Sep 2024 17:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0925B179953;
	Sun,  8 Sep 2024 17:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="YwB9DV+p"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E12176AB4
	for <devicetree@vger.kernel.org>; Sun,  8 Sep 2024 17:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725816768; cv=none; b=U6GayoGYY2HpDzVXWZ7x0eBHuzO5XY6L6puGYQ+1UubFd2MXE5Vzr6xA6HVWgtt/xE/YSzCw0kRsKbaLWGu2j7cLDKOPR4vfgHq0bPV0ADCre/LyGaeilPCM+KJ/OjrFd7V8KSJN4p4iVaqHFENrsA84wzLGfVPDnAZCbkN8eZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725816768; c=relaxed/simple;
	bh=ZQ5xnhl5tcxpDnHE2vmK0Jg4RiH5lFRh8/aBKQ90dWw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r++kJU8zK+Sup/cCkyiVjHFQHCz9A3FAMK4gvU8b0yhPOOIBUXCHlvOSbzpfon5BdJ/EoOPQ1cWcHebRmPaZ+jS+Wd5Ec8GhSMAxGUTNZgomvpoHcWm961EXcU3LlePwysg5KRnitQ5cYWXWaWOtSq9hB8pcYMmFtwu5NXInIug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=YwB9DV+p; arc=none smtp.client-ip=185.136.64.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20240908173238c9debc86bab8a67ddb
        for <devicetree@vger.kernel.org>;
        Sun, 08 Sep 2024 19:32:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=AbNAvrLHi+QFmGP7oAo1eWelX8ED/CVynTahfKnv7FE=;
 b=YwB9DV+pv3hp+qwU1+WfztkiyCULXVSKEwqb1fc8BorF1yBVTY59kpDbjqXKVDWBUlAjzi
 OlzCvzH6vxNYZ/XApsW9r1IhuZS85ZGZh9uhJ8Xd1/s3nyI670G7xxgLYl0QMq13kQik6Ia+
 Z7mZS1yxTyr1iEh8ebNAkCJTcgAUYnMzgd69j71Btib2NHCyKxdwwAgWpHazBAPZusMg6n7n
 dZmEogRs92e1SoQ33deY7wuqxlBtUESVtP/NijaX22q/Ba4zi8hNLXMyq2LZuW/cTm9kKNzQ
 18Jlwt5hb3Dbg/4CjqISjZwen4HEIp6L34TdYvJJIjH73GkPW0IdliWg==;
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
Subject: [PATCH v5 6/7] arm64: dts: ti: k3-am65-main: Add VMAP registers to PCI root complexes
Date: Sun,  8 Sep 2024 19:32:32 +0200
Message-ID: <e62e520c4611ba987478fe60c3c24739b334d8e5.1725816753.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1725816753.git.jan.kiszka@siemens.com>
References: <cover.1725816753.git.jan.kiszka@siemens.com>
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
index 2582dad68dff..08a11ab38fbd 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -895,8 +895,13 @@ main_gpio1: gpio@601000 {
 
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
@@ -916,8 +921,13 @@ pcie0_rc: pcie@5500000 {
 
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


