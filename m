Return-Path: <devicetree+bounces-248686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BF1CD51C5
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11C6030496DF
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6E7312806;
	Mon, 22 Dec 2025 08:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="LjgF+cCf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay36-hz2.antispameurope.com (mx-relay36-hz2.antispameurope.com [94.100.136.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6489730C37B
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766391547; cv=pass; b=fabr3Oh6TNJPKsBBfjQ75o2aPJs49UaW+tdy8r2eDENVZhXSxQAMzLDPsTp6EJAl3TsZCEBRTRsBcaFvIbMTjGmz9puA4MJqjOWT6GK6PGjv5NAjtWpUKoR5bw/G1GpYlWoRnu9q0dTOCqzuuhynDymQE+YyT/GDxLYe7inxNdQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766391547; c=relaxed/simple;
	bh=7Kha4etk7Ta02lxni42PAENRkKky7hBrerq9amiVqr4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ftZ/XQsVhOcHFQdyWahkszA/W8S5t0IApr0tBIrMmSxxPGmfzKe7NNHeIdOT0REp7ksuUppDWaloh+Cx56jZERdjhEsQfZNYsBzGhmBWgCFcMvay1quS+dvtzcF3bjIymmMjymxH+lvPv8iap/iG8lMmyfemAebTGF4aa4yrfk0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=LjgF+cCf; arc=pass smtp.client-ip=94.100.136.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate36-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=80hdS/w+v0x8DWisrHsGxaZlP+KSYRcYUlXhBDOL7cg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1766391509;
 b=oLqyGIXCpJzMHz3PJbq6e4GRyKeUHAQUcSZdihAdGFHN+cIFtWfuZlqb2G4kZa45IK7F5S6v
 59FNZimIGfOlou7/ixz9f+EfqBSYDZYXUZfpUOwMYp/e0MY9GScz4HPSNXuwIuJxgGrJhRRb4bl
 dIOrWx2Y0DsOwOda0OL+5hai+mci5SWsJ1wSG2KxqioWr3GEStPcPtVY3uTod/uOQzRnxOss5VM
 q6c4OXLYNH6WiXvcQEvnftFdCYx89eLeSB/dMIlRizOkQ89eu4HqojB1E+ic/WS3/NaC1KX3PvH
 i/VVUfbpwQ27L6Ut+AbIPsmh9bNOVH3LN76NX+PtS798g==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1766391509;
 b=kY+mfVZxAkvDDeQWWJ7p4B5Prr6t2g9O6Xo5LLKxr7MIG2hstgUAgNXOaIud/C6MVo6WjR0D
 JbrtNOGO5M402HcOoaq0Eq+sRpmOdpDKZhahHVDSCeDPOvEUYLU39/oafSrc7CYlO1hrUGg7XJz
 r3wENPtF25iHDQ8llD8VuL07aIYP6kNGMm4CACA1DAWnVCHrn3UaIPiWhVFewYntetPvMBimDxR
 7hr++/2HJAjTvtvp5ssWhQhZ370aUZEzqGqRNH3d2yoqfG6ZkUlqIc3ruj6qMtZ5lf6fcnBZs0n
 emoBLtmfB3FpXbdS6gJEZpQkeWanw/umLjijO3jNwjMqg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay36-hz2.antispameurope.com;
 Mon, 22 Dec 2025 09:18:29 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id A8402220D99;
	Mon, 22 Dec 2025 09:18:18 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: tqma8mpql-mba8mp-ras314: Configure multiple queues on eqos
Date: Mon, 22 Dec 2025 09:18:09 +0100
Message-ID: <20251222081812.1120998-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251222081812.1120998-1-alexander.stein@ew.tq-group.com>
References: <20251222081812.1120998-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay36-hz2.antispameurope.com with 4dZWHK4xCLz1S5Vj
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:99bff2056c426201606ecfd6bb8a64f5
X-cloud-security:scantime:2.201
DKIM-Signature: a=rsa-sha256;
 bh=80hdS/w+v0x8DWisrHsGxaZlP+KSYRcYUlXhBDOL7cg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1766391508; v=1;
 b=LjgF+cCf2IX32KOOOm9Q8Xch+7IMPbqxJlu0Mxcm3oDv3PD37N5ZxVp+6ximzHH7yEw2ucFF
 hncOb5gwLPNEa5htvn1Nejw01aAZIhrlfhpHCXkaBrBu4t1DlILeKcCm/2JVat1EGlLYKdg3A91
 rSE/NvhN3PfKxj33LVGfIhiS0jbVE4E2b0GmdCkdqC4kzZrK7w3TWTVXEk+ZWRlRQNTdDY6mBpU
 OqVE93dAINQiOPLsphiCow2TGRpN/JdavEMlMTBDUxaikZ78qYpiB71YElJ5xXqrlwaHA9UZS6H
 MeC4cSvoKSoMVnMMAkQGcmMCXxReb7H5/pyVlsVyADbGQ==

The MBa8MP-RAS314 mainboard has an integrated PHY connected to the EQOS
ethernet controller which can support up to five queues. Configure
these queues in the same manor as done on the imx8mp-evk.
Setting DMA to threas mode is necessary to prevent FIFO overflows, see
commit 0bc3e333a0c82 ("arm64: dts: imx8mp-evk: configure multiple queues
on eqos")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../imx8mp-tqma8mpql-mba8mp-ras314.dts        | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index 204bbf0719890..b0d058833fbbb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -184,6 +184,9 @@ &eqos {
 	pinctrl-0 = <&pinctrl_eqos>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy3>;
+	snps,force_thresh_dma_mode;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+	snps,mtl-rx-config = <&mtl_rx_setup>;
 	status = "okay";
 
 	mdio {
@@ -209,6 +212,70 @@ ethphy3: ethernet-phy@3 {
 			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
 		};
 	};
+
+	mtl_tx_setup: tx-queues-config {
+		snps,tx-queues-to-use = <5>;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,priority = <0x1>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,priority = <0x2>;
+		};
+
+		queue2 {
+			snps,dcb-algorithm;
+			snps,priority = <0x4>;
+		};
+
+		queue3 {
+			snps,dcb-algorithm;
+			snps,priority = <0x8>;
+		};
+
+		queue4 {
+			snps,dcb-algorithm;
+			snps,priority = <0xf0>;
+		};
+	};
+
+	mtl_rx_setup: rx-queues-config {
+		snps,rx-queues-to-use = <5>;
+		snps,rx-sched-sp;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,priority = <0x1>;
+			snps,map-to-dma-channel = <0>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,priority = <0x2>;
+			snps,map-to-dma-channel = <1>;
+		};
+
+		queue2 {
+			snps,dcb-algorithm;
+			snps,priority = <0x4>;
+			snps,map-to-dma-channel = <2>;
+		};
+
+		queue3 {
+			snps,dcb-algorithm;
+			snps,priority = <0x8>;
+			snps,map-to-dma-channel = <3>;
+		};
+
+		queue4 {
+			snps,dcb-algorithm;
+			snps,priority = <0xf0>;
+			snps,map-to-dma-channel = <4>;
+		};
+	};
 };
 
 &fec {
-- 
2.43.0


