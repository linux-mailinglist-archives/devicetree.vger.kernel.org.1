Return-Path: <devicetree+bounces-230801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B06A6C06237
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 14:00:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8866C3B8A1F
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 335773164AD;
	Fri, 24 Oct 2025 11:50:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8291315D5E
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 11:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761306632; cv=none; b=myzY0gj7wGKcGu3A4K1RsZInM1C2N5cekW7Jum3sz+SJrV1Jdog9aNHq1uH47PYITIyC08yhZ86xwDoo9bt39L1JHl7Mz09RcvrNKCKLKjqgFCrLFHYoGALFwDO/1OLj8dwBkg1ThX4QG14Yc7z35MGPWVCqQhCxHpjT/fqCJoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761306632; c=relaxed/simple;
	bh=QgkBnM9xfqbsYlvy/dOII/9/euxbzsHAI0HqqgHuV7k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PsTTAvQGPmtk1Ugj7ihBFz5yhaIYqAxMhGeh6rtEVhgzmzg8ofiCquCnXaZEQEjByhLO4tovUkbfE0+G0AwlP4b29wn86NwytK6QsBQZew6SB2WYeS/LWKjDQuJvlsQMRIb4UWU9rFHc/IusnVORR4pig6ozEbNis+AsXKlg2kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vCGJA-0002FG-0S; Fri, 24 Oct 2025 13:50:12 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 24 Oct 2025 13:50:00 +0200
Subject: [PATCH v5 08/10] arm64: dts: socfpga: agilex5: dma coherent
 enablement for XGMACs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-v6-12-topic-socfpga-agilex5-v5-8-4c4a51159eeb@pengutronix.de>
References: <20251024-v6-12-topic-socfpga-agilex5-v5-0-4c4a51159eeb@pengutronix.de>
In-Reply-To: <20251024-v6-12-topic-socfpga-agilex5-v5-0-4c4a51159eeb@pengutronix.de>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Matthew Gerlach <matthew.gerlach@altera.com>
Cc: kernel@pengutronix.de, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 "Tham, Mun Yew" <mun.yew.tham@intel.com>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: "Tham, Mun Yew" <mun.yew.tham@intel.com>

Add dma-coherent property to device tree for XGMACs to resolve kernel
panic error on dcache_inval_poc for XGMACs.

Signed-off-by: Tham, Mun Yew <mun.yew.tham@intel.com>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index d0c139f03541e..63c0aa8550313 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -558,6 +558,7 @@ gmac0: ethernet@10810000 {
 			snps,tso;
 			altr,sysmgr-syscon = <&sysmgr 0x44 0>;
 			snps,clk-csr = <0>;
+			dma-coherent;
 			iommus = <&smmu 1>;
 			status = "disabled";
 
@@ -672,6 +673,7 @@ gmac1: ethernet@10820000 {
 			snps,tso;
 			altr,sysmgr-syscon = <&sysmgr 0x48 0>;
 			snps,clk-csr = <0>;
+			dma-coherent;
 			iommus = <&smmu 2>;
 			status = "disabled";
 
@@ -786,6 +788,7 @@ gmac2: ethernet@10830000 {
 			snps,tso;
 			altr,sysmgr-syscon = <&sysmgr 0x4c 0>;
 			snps,clk-csr = <0>;
+			dma-coherent;
 			iommus = <&smmu 3>;
 			status = "disabled";
 

-- 
2.51.0


