Return-Path: <devicetree+bounces-234129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 01634C2919E
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 17:09:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C2BB188BA9B
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 16:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7CA3229B18;
	Sun,  2 Nov 2025 16:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="xdgeWQmi";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="MRaUoExj"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E063A21E082
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 16:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762099788; cv=none; b=Eymi3bB1Td2tqSHqEv/nuP3Ei1xFYInAC4Di7Dpvn9CRE1MvJ3qXMvYxoowMUk6mEp4XuFSUNDPNlqQ0hsEs2ujB3X8MMxuWu52vzjAfLb7PeEhhu5ygplOHoSKyGDVPeUyc3PSYyLKe7wRtPGcujv/XJHzeX/eFoIQuB9Ln8hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762099788; c=relaxed/simple;
	bh=fS68DYSDaplvIxfzRfxGWCzukoJot2/o/22sZm55vLY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dh5fMWnZsO4NpykTnW4x7W9oV+mpvuH2FQcwhtprhSXp2R/EhlYD9F0amJpwUpXjkvn/FMyCaMGkKU5S36Dk+B+qOYpXwNgBHSDhcGhq/uXk5G5DKbzeBi3T2rFn4R0jXXoLgTxKbDuNqlWSiUFw5rE0V+Q5RhbrVbZcW+9M1V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=xdgeWQmi; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=MRaUoExj; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4d006H722Yz9tTm;
	Sun,  2 Nov 2025 17:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1762099784;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/8jI1PnoD5u+P2s7QZ0IqUPfw31d0/RtxfNA17x2epg=;
	b=xdgeWQmiGqWJmEqnZh5Azy2yHg8aJu8BAFANh9wJkc4JmqH94OTDufBoTecm3zFjFRzPuh
	0eWt06HTLy2lHcns/ikwZIOixazfW1TWd1ENpwFrXblNoK167IDuVMqxxocSThTDwhsanM
	d68I+K1GW0EdHTHHcHvn62k9mwbQF2pRuTrXsRJWgFHdRfuLW15GkD527HAftOl5RLMKmo
	TYi0f6w4PzxyXP/d8y1CRiGurlepronFJQDPkXBLAe/GGb+iQJiSFqXvvinqHVFUuiXa1b
	eKtisQgXR7ylweMv2xCE5lDLtp1u1IvEgbvF19NNWo1M+ZRIfnI9KOam7m9ELg==
From: Marek Vasut <marek.vasut@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1762099782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/8jI1PnoD5u+P2s7QZ0IqUPfw31d0/RtxfNA17x2epg=;
	b=MRaUoExjPwW6UANMn1StuJJlPtiwXmvK9Oa1ASdu38ETQoKfDZCcdnmIupVzhvKOEupJF/
	/Tb3cPTK9/V43hJz2yjmL9L9k7lNLS5+qusEgHafz6+LjdLW+DXVg8PD+J2imROzl41WM5
	Im5dyXH7r8rb9tS96b/NpWqsHd9fk9OBlQzf0FDd0MoQm/yx5b0cS2Wz15IBp0GPWYOqeT
	5WmSBaIFKmK/yypGiC1q8BVaPbrPTPJqfHrhnEnHlFF21sK4nqZr9WJj+fkF4IeMC1Al8i
	Nk0gu7vIb4kODLovsuNTb7vSOYwqjQhv28yv6Bpfe2RxL//jQDcmjC+j2Ac8aQ==
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marek.vasut@mailbox.org>,
	Frank Li <Frank.Li@nxp.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	"Jiyu Yang (OSS)" <jiyu.yang@oss.nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sre@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Steven Price <steven.price@arm.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Xianzhong Li <xianzhong.li@nxp.com>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev
Subject: [PATCH v4 2/2] arm64: dts: imx95: Describe Mali G310 GPU
Date: Sun,  2 Nov 2025 17:09:07 +0100
Message-ID: <20251102160927.45157-2-marek.vasut@mailbox.org>
In-Reply-To: <20251102160927.45157-1-marek.vasut@mailbox.org>
References: <20251102160927.45157-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: uq1wffcpx3ha4pqpnp75bfqhkcccepny
X-MBO-RS-ID: 4d6a5d9a7fbc3d07ad0

The instance of the GPU populated in i.MX95 is the G310, describe this
GPU in the DT. Include dummy GPU voltage regulator and OPP tables.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>
---
Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Jiyu Yang (OSS) <jiyu.yang@oss.nxp.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sebastian Reichel <sre@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Steven Price <steven.price@arm.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Xianzhong Li <xianzhong.li@nxp.com>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
---
V2: - Drop regulator-{always,boot}-on from fixed-gpu-reg regulator
    - Keep the GPU and GPUMIX always enabled
    - Switch from fsl, to nxp, vendor prefix
    - Fix opp_table to opp-table
    - Describe IMX95_CLK_GPUAPB as coregroup clock
    - Sort interrupts by their names to match bindings
V3: - Drop perf power domain
    - Drop reset block controller
V4: - Add RB from Frank
    - Drop the now optional GPU regulator
---
 arch/arm64/boot/dts/freescale/imx95.dtsi | 37 ++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
index a91e1724ab1a4..e45014d50abef 100644
--- a/arch/arm64/boot/dts/freescale/imx95.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
@@ -250,6 +250,28 @@ dummy: clock-dummy {
 		clock-output-names = "dummy";
 	};
 
+	gpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-hz-real = /bits/ 64 <500000000>;
+			opp-microvolt = <920000>;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-hz-real = /bits/ 64 <800000000>;
+			opp-microvolt = <920000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-hz-real = /bits/ 64 <1000000000>;
+			opp-microvolt = <920000>;
+		};
+	};
+
 	clk_ext1: clock-ext1 {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -2139,6 +2161,21 @@ netc_emdio: mdio@0,0 {
 			};
 		};
 
+		gpu: gpu@4d900000 {
+			compatible = "nxp,imx95-mali", "arm,mali-valhall-csf";
+			reg = <0 0x4d900000 0 0x480000>;
+			clocks = <&scmi_clk IMX95_CLK_GPU>, <&scmi_clk IMX95_CLK_GPUAPB>;
+			clock-names = "core", "coregroup";
+			interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 290 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 288 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "job", "mmu", "gpu";
+			operating-points-v2 = <&gpu_opp_table>;
+			power-domains = <&scmi_devpd IMX95_PD_GPU>;
+			#cooling-cells = <2>;
+			dynamic-power-coefficient = <1013>;
+		};
+
 		ddr-pmu@4e090dc0 {
 			compatible = "fsl,imx95-ddr-pmu", "fsl,imx93-ddr-pmu";
 			reg = <0x0 0x4e090dc0 0x0 0x200>;
-- 
2.51.0


