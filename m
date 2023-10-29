Return-Path: <devicetree+bounces-12639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3BE7DAACE
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 05:28:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C9314B20F28
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 04:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24DEA523C;
	Sun, 29 Oct 2023 04:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="lT8K7AO9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E6B63A4;
	Sun, 29 Oct 2023 04:27:57 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62528D6F;
	Sat, 28 Oct 2023 21:27:48 -0700 (PDT)
Received: from localhost (unknown [188.24.143.101])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7B716660738C;
	Sun, 29 Oct 2023 04:27:46 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698553666;
	bh=PHON8ijCTHS0JtMsAgOPwRF7WOfbum611F0K1TIiSeA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lT8K7AO9nvKHATkyZcUyBAN8PE8D+dp7VT6rXaazWSOoq+gzBHL15IsqfyPlZU/3Y
	 BHc5LXSwaqdsyuU8Put466sAI4Ckam/d+2KkmLsYh3rpI928HXYnHdzkpp2fwnCGR3
	 HUX4RSEj9XvfBDLwSjULDrYUzq65W058DGFUEpY5sLN4juAjQVYH6mL7Y6h+7qosvX
	 rEcgd9D7BxPFpfQ5I7QUzp4A47wrzPNZjuvE9quB8jrgoUbmMfYir0HmQhlTxFPHSD
	 bOZhhJnUkdz46w1l4UBmyBpcY9CRkki+9ghroThq1ITBbmbVzVXhAWihbRArW/vvne
	 AXjtMopS+12nw==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Samin Guo <samin.guo@starfivetech.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v2 09/12] riscv: dts: starfive: jh7100: Add sysmain and gmac DT nodes
Date: Sun, 29 Oct 2023 06:27:09 +0200
Message-ID: <20231029042712.520010-10-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231029042712.520010-1-cristian.ciocaltea@collabora.com>
References: <20231029042712.520010-1-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Provide the sysmain and gmac DT nodes supporting the DWMAC found on the
StarFive JH7100 SoC.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/riscv/boot/dts/starfive/jh7100.dtsi | 36 ++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index a8a5bb00b0d8..e8228e96d350 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -179,6 +179,37 @@ plic: interrupt-controller@c000000 {
 			riscv,ndev = <133>;
 		};
 
+		gmac: ethernet@10020000 {
+			compatible = "starfive,jh7100-dwmac", "snps,dwmac";
+			reg = <0x0 0x10020000 0x0 0x10000>;
+			clocks = <&clkgen JH7100_CLK_GMAC_ROOT_DIV>,
+				 <&clkgen JH7100_CLK_GMAC_AHB>,
+				 <&clkgen JH7100_CLK_GMAC_PTP_REF>,
+				 <&clkgen JH7100_CLK_GMAC_TX_INV>,
+				 <&clkgen JH7100_CLK_GMAC_GTX>;
+			clock-names = "stmmaceth", "pclk", "ptp_ref", "tx", "gtx";
+			resets = <&rstgen JH7100_RSTN_GMAC_AHB>;
+			reset-names = "ahb";
+			interrupts = <6>, <7>;
+			interrupt-names = "macirq", "eth_wake_irq";
+			max-frame-size = <9000>;
+			snps,multicast-filter-bins = <32>;
+			snps,perfect-filter-entries = <128>;
+			starfive,syscon = <&sysmain 0x70 0>;
+			rx-fifo-depth = <32768>;
+			tx-fifo-depth = <16384>;
+			snps,axi-config = <&stmmac_axi_setup>;
+			snps,fixed-burst;
+			snps,force_thresh_dma_mode;
+			status = "disabled";
+
+			stmmac_axi_setup: stmmac-axi-config {
+				snps,wr_osr_lmt = <0xf>;
+				snps,rd_osr_lmt = <0xf>;
+				snps,blen = <256 128 64 32 0 0 0>;
+			};
+		};
+
 		clkgen: clock-controller@11800000 {
 			compatible = "starfive,jh7100-clkgen";
 			reg = <0x0 0x11800000 0x0 0x10000>;
@@ -193,6 +224,11 @@ rstgen: reset-controller@11840000 {
 			#reset-cells = <1>;
 		};
 
+		sysmain: syscon@11850000 {
+			compatible = "starfive,jh7100-sysmain", "syscon";
+			reg = <0x0 0x11850000 0x0 0x10000>;
+		};
+
 		i2c0: i2c@118b0000 {
 			compatible = "snps,designware-i2c";
 			reg = <0x0 0x118b0000 0x0 0x10000>;
-- 
2.42.0


