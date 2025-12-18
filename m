Return-Path: <devicetree+bounces-247897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B539BCCC81C
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:37:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EB0930A9240
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:31:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A51B354ACB;
	Thu, 18 Dec 2025 15:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="AzwsLSsM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5352352FA3
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766071319; cv=pass; b=LxXPSRN1/Y7TwZwShYZpN3Us8DeMya9SUH08eBQSkjeRnf5De7/fawkBKVu0c5RZAdOsQQvJL+KeFoXJU5g2dVo3Psg2J2HOH9vJPDBB6NyAWaIfZmSoUluOqkGQfRs7NmCTw6YihAvGKytGPFDBXJd+QNu+j48X7I3feMg5CTo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766071319; c=relaxed/simple;
	bh=6cFJMMBpfqYHtmXLgEpDrCdBFuoUEsV5n0RZlhvD924=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bB2SuqqYhfSe1PVFu/Ub/tv4oq9II/zwAeZzAJqlQ+phy2suSZmbNDwjna/d6Jcixv9ho1+c9Sdow+lmMs/cNCTXuzCdlsEELowlM20FHbLmQRrcZCSBUwxlEiUQetXXj+2SmPpDU6xVNk9+gQ6d2NJVa6JvQ2V2Ga7osuNPA+s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=AzwsLSsM; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=718S0BdFz8xiVCzU8aXFCL2DNXNEbKnbIjEDDeQ51yA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1766071277;
 b=lBAhJ9EzoYcZg98yTDMJnsWZFY1JQ3xZyN3XY9zo4po/CywPece96uvfh7AhLDFLcd3oH/WA
 61Ela2lwBEvjoC6DoQQvw+Q7P6nJb+PAq3/CXUAkjpRdt14IjOUpueGwBzNBqc8ZjJHUCp/2F2c
 dCCK7zPz6OLlulUPSaPiq1RRJ4M90xU1bsOZyiuvDg4jeuuLMwR4IfOlkRMI6F8bIgGEZUNEUTx
 GBVebUCCTNARu8dhUnrkD3vA4hcDZYYNxTGXzx0bfgQrqKpGyny1OS/hQT74pMMU0atY84ytZAK
 Kir4FJcSQvigBUrM3GVb3xKnwGhjidysmohEreV1nawrA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1766071277;
 b=AhYo/+WXHPmdShNsCOCh87s+5j0cqu+aX3dPI1AOLcNDwZGa3nbvl4jgW5UXQNJd/TR6ZvoS
 FDPb/NPvdtrBgiqwJueSSJUvonQ35TaJPuCCIRhCfxxXByb3WkSgNKmyDK/UHdRVfmc94mDpFXA
 susB1xumzGemayt5k1AOuAe33hg4vh9e5rkOP/22ZJtqqY5aFj2ycUbQqC37bav5SkLr66vhLOw
 DJEtQ2CfbMf4BI5pzOWX+PCwD8WlUkM+CXfghuNAD8qi7b5uehy4Iaczb6EtvKBl5P1uaxf8gXt
 Zw9y8Wa0C+3I9ade3VS2O9fzR33nW6sV4csaDSU3vgbtg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Thu, 18 Dec 2025 16:21:17 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id DC1C2CC0D53;
	Thu, 18 Dec 2025 16:21:08 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Peter Chen <peter.chen@kernel.org>,
	Pawel Laszczak <pawell@cadence.com>,
	Roger Quadros <rogerq@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-usb@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: [PATCH 3/6] arm64: dts: imx8qm-ss-hsio: Wire up DMA IRQ for PCIe
Date: Thu, 18 Dec 2025 16:20:50 +0100
Message-ID: <20251218152058.1521806-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
References: <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4dXDs20KQZz3yY5w
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:af1e11a75574753d5df662a88887dfc6
X-cloud-security:scantime:1.983
DKIM-Signature: a=rsa-sha256;
 bh=718S0BdFz8xiVCzU8aXFCL2DNXNEbKnbIjEDDeQ51yA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1766071276; v=1;
 b=AzwsLSsMa51D+UijUnBWZbJIibDvv0EqZ6xiEywROnIsHC0o8hsv/R1gqNsbf2iwT38J6oNe
 //qu8HJtzqfVWSIeAzspvrSXUpVxwOAaGMZY8FdNe9aNQ7bOqnmjviiora75y/isV7rMvEctgf2
 jg/Sxk03nE9OoD9piQtMxbIoydyvMNpCR6YOR7B2WV2dktdCFHeY9LDqvyIVrZFm3vO92/AqYt9
 vKV2n7L8nnaV6uEI+sZavzOq9hDqsQJrGJ624GSdbwFNCN4qgYShwWfSaOdBkYLJm3K/AmcbFtY
 +dMjjNF/0QYp12PAv/UWtobH/FR9+DeqEaAw9zGyqkxlw==

IRQ mapping is already present. Add the missing DMA interrupt. This is
similar to commit 0b4c46f9ad79c ("arm64: dts: imx8qm-ss-hsio: Wire up
DMA IRQ for PCIe")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi
index bd6e0aa27efe9..f2c94cdb682b9 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-hsio.dtsi
@@ -20,8 +20,9 @@ pcie0: pciea: pcie@5f000000 {
 		ranges = <0x81000000 0 0x00000000 0x4ff80000 0 0x00010000>,
 			 <0x82000000 0 0x40000000 0x40000000 0 0x0ff00000>;
 		#interrupt-cells = <1>;
-		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "msi";
+		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "msi", "dma";
 		#address-cells = <3>;
 		#size-cells = <2>;
 		clocks = <&pciea_lpcg IMX_LPCG_CLK_6>,
-- 
2.43.0


