Return-Path: <devicetree+bounces-248685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AACCD51EF
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D1213079AA3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 08:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 739B63126C4;
	Mon, 22 Dec 2025 08:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="TGLLFbvR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay37-hz1.antispameurope.com (mx-relay37-hz1.antispameurope.com [94.100.133.213])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56D23126B3
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.213
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766391547; cv=pass; b=eT/h8iD8kZFAwDIQa58wQhYp/rcUwhfhVR69CSU1cl9lPx54uaqErgT6aDjFek+Lolv1VVh6ExIw+2eMtVJoqOApxydyU1OL+tsRbFRqrL/K5nQijh6qTyx74AGAhWefbIpsXfKm+6ijy2A4htIs3v4ksVB3iGgtUyJ+0h3kcfg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766391547; c=relaxed/simple;
	bh=VZ3Rp6U+xMdsGwsMUPytKZdQfwzTwhM8ZpFGjBnSL0w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AmshedrFeAnOPg9x0ohQ2nKaGb5aJwn0GzB0OGil1DK58ynzjDKE0LRK8KqAKNxN078ICDFSN44UkLxQQcPaec58kS9tSrQTidt9/aAcpOGl1AlL6uNnuUP1+1ySDiloLXeUaD7CG991yQmZMHs9omf/jqh5wAiVJudMnHqj/oY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=TGLLFbvR; arc=pass smtp.client-ip=94.100.133.213
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate37-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=kABrYCRuxfjnmNnzzhb9u7inWlE7qpx9z7CqlAxlLjA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1766391503;
 b=qrlCdQjTtBzfZBdqzslnUojW+jp4kIbPeGdJFwrYV2xgIMXTnp4/kmmqev7uFuIAN1CpKECA
 3WoBS9uPqNa5qKhNHhKyo2mfRWH2jv0scYK+/nGMyAdVe1VbS2MI5JqjWerWFvqXcuvJpIN+ex5
 i4OSEDT6b/FiMu9Gox3B0jDExJ3Tk5Bj1o0i1EI/VnUtRFN4m+QE0zB8PPtrb2k0OQy3/GjGrlt
 Vaq38k9HglpVCryFO5EhKslmcl2pA2dPwhOkSDeikNw1vPyuN4bTMGBeUU3FoeDgABtuSl4S5+m
 HH3gRycrI7nhwnO+/466sgiXUFdJsmxZ0yz77xy5Rml0A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1766391503;
 b=QSMS+gXXakRzRAHayj2P7GdRrZ2W3MN9DBk/wKuGjt7u692QlhRkKHu0MwsQn5n/FD/Z1jls
 rdKvESpbXu2/IOSFmQ+yEfwnJem/babyDUmxGJfSYKb/q0t4gf2/tj6qaPsAgH1Vxal2yyvzUJB
 7ZaB0V8v8yPyQz5fkzMnFOkHzE8527zP3GPAnVSLdF47SJHa4BGCZ6h6lyYDWxK3C+MvcIhxWN0
 1DYcS5X60i2OZtfPS6bb+rhn2UC9lZROm4b724/N8C9+HJvueuqA1rmsIur5XDWJZLoG8eGzTYW
 V3mQIx/4LNvsWFcaBXgiqsK1+EQrH4N7Fq3P3C5mDWYhg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay37-hz1.antispameurope.com;
 Mon, 22 Dec 2025 09:18:23 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id C8BC2220C57;
	Mon, 22 Dec 2025 09:18:16 +0100 (CET)
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
Subject: [PATCH 1/2] arm64: dts: tqma8mpql-mba8mpxl: Configure multiple queues on eqos
Date: Mon, 22 Dec 2025 09:18:08 +0100
Message-ID: <20251222081812.1120998-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay37-hz1.antispameurope.com with 4dZWHF30qtz2YfPq
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:3b6200eff25a10e53cebf53f6f11a937
X-cloud-security:scantime:1.715
DKIM-Signature: a=rsa-sha256;
 bh=kABrYCRuxfjnmNnzzhb9u7inWlE7qpx9z7CqlAxlLjA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1766391503; v=1;
 b=TGLLFbvRn3u3ZnFyppugiqRWM6p2JC9mMjd+Y3vftlwYcpsCMkFz+59w8k9tqfduO8d7bKLn
 UIXC9GRYIIhl71ZaSCR0frADZxnCVPqpkEBjL58MixP6uZXLNs4nPYscZwU21SsCZ0M/iWtfO/N
 7+TcR0xPv2ckHt5GCqv09qnIO387kUTG1TLVE8RE8IcUUDg91l01d4Hcnl5kig6dLHzAKLJM+3Y
 1MO3mfgVGhpgis1AFOZUlwrMU1Pb1Rc0aqjSbo74+TAAvrQXpia6u0zguk5lJpaHA2QgwNUTA/D
 7zSeJjShI2Rj36Cbp17g/HUlgdtXEtLlzGff9A4+v3FpA==

The MBa8MPxL mainboard has an integrated PHY connected to the EQOS
ethernet controller which can support up to five queues. Configure
these queues in the same manor as done on the imx8mp-evk.
Setting DMA to threas mode is necessary to prevent FIFO overflows, see
commit 0bc3e333a0c82 ("arm64: dts: imx8mp-evk: configure multiple queues
on eqos")

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 68cecb0987b6b..eb25828f3b26d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -360,6 +360,9 @@ &eqos {
 	pinctrl-0 = <&pinctrl_eqos>, <&pinctrl_eqos_phy>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy3>;
+	snps,force_thresh_dma_mode;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+	snps,mtl-rx-config = <&mtl_rx_setup>;
 	status = "okay";
 
 	mdio {
@@ -404,6 +407,70 @@ led@2 {
 			};
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


