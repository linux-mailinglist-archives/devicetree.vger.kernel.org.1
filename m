Return-Path: <devicetree+bounces-239343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BADC64202
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:42:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 43CE44EFC14
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 748D832E743;
	Mon, 17 Nov 2025 12:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="gZxeW1C/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay145-hz1.antispameurope.com (mx-relay145-hz1.antispameurope.com [94.100.132.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1F732E6B0
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.199
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383088; cv=pass; b=Xrs4232f3LdMRNiaXhb7MrdsOzMuUhWNiyh44zhDSbg+N6YFcEmk4BOh6FVTKZHi+YF+d4HCzNTRFUh2tdxfCByj+FKnIo4298oC2At3g8xpco1H740iYjIKD2HXFHCuNMJL2YHf72/EwGcezGa60KhCPaEVyJ3h08I8fSQIQfs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383088; c=relaxed/simple;
	bh=OreMUx8tsLMnCWCJGptvTAVbbagI5B6MtaZEHvHhcJg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XRuSNgn0xzZdc20BrHGzuW7CPQ4XXAFy+vQGI/L1OhgH8Y3nHSgJmqclJIfBHt+SDBRkYksOZIFRot3XqG84iqpwKQQgLWnc/UWqjIkqhAvojEA5ojtRcAbIIX3S180WN9Fh6gv2vMSrrDB8a4tZCCDinrm/o+Z1vZcAYKrMBE8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=gZxeW1C/; arc=pass smtp.client-ip=94.100.132.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate145-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=5OLdSYVCdTLS2HuLb5QQT3DyBBHRkyJ4iL6VN6xx+YE=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763383019;
 b=f5ZedxvXORfe33yDZaiYt5x/Jf7tcpK36SwyuOnM42uR1GoXSy3U40zQH3i2l/4KqE3HcNZV
 ePerLP7ZQLrCHfUNpXLnLPbAdlCmhPpFRymJmOQPC4XlXPStiZ792NWOA+fFRZg7woM9EUuKB0B
 0YHlwnl3DjR2oLJ865+Qq3nLykoAn6jRux+FwaTmGiuWAdDZOuzlHbB6IFWMgSDlxOC0U/wgSMs
 oL7hKUgQ7e3Xrh6UVXKXgaGPesdO1eD8SJ7znp4VSJQciEscXTev5Hizdg5lI4jzaOmclzG5JNE
 ygsC83ee46PCWch0p+t+nTdS96U1vwOIp/btx13STsQ4A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763383019;
 b=Ut4nHvVa77/Khud9kqKEPf/djHGP5xPsV4dBRLknKzpheQ311HPGb+hnY8+vBmq0JioyCDvh
 wqdmMolQ7JWTkf2WaAzxkgjLeOc8IxAhTAZ0f84G794m8f8y1DquX8aHNFoc9Xyo/SDrHL6H/Bt
 vJ28fWssgtwYbu+M5LAMQbiAhe/1XUescBgeyxt9po9DkEvegm9KVlEavoCqcZnM2WRwlzJKP4J
 6c66TMlDuhqs4pVcwS+UR2OmHVdgeQGB4yiP3Nl0go0j6/9VtK+uL9buAMIi3H4SBtDjvXJHPvq
 paqDVOCHKfNM1YdA9jyoseILAtRHkktwREeMmtajT4n6A==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay145-hz1.antispameurope.com;
 Mon, 17 Nov 2025 13:36:59 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 5E984CC0E8C;
	Mon, 17 Nov 2025 13:36:51 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] arm64: dts: tqma8mpql-mba8mpxl: Fix Ethernet PHY IRQ support
Date: Mon, 17 Nov 2025 13:36:29 +0100
Message-ID: <20251117123643.711968-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
References: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay145-hz1.antispameurope.com with 4d96gm0GPmz22k9c
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:9fb16085ca7376dc03f1681f369c23cf
X-cloud-security:scantime:1.993
DKIM-Signature: a=rsa-sha256;
 bh=5OLdSYVCdTLS2HuLb5QQT3DyBBHRkyJ4iL6VN6xx+YE=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763383019; v=1;
 b=gZxeW1C/0/CNOtFlyXrBqzr836cSBjGh/NHoZIUG9i5UM9kKvSBRtxcn/QaHtYrxjRqOAAnr
 xvrs+CatTQhqGVfIoBDZMJyq18LhD3B6P9bmKjCxsNXGqBNyDUbAtNUB5fRw5HEGihMFZEKO5dg
 nVGENKJ/yn5YpcRyo5J23Qly9lYzc/42AnWQSCjGdPo5agxBiLpOEu/neptCFqjbdDZKvdJAthq
 ShtTOP8CVs4KtGvcWRO9LRzFJqs8iacf+CwYz/lS4ENxbYPl/X505f58nZ/KAsxmFi8zT3s2UVi
 nbXL4+w3auBpNYlroMmzw0G/nXp4+Ag5BqzAqjhEEn7bQ==

Ethernet PHY interrupt mode is level triggered. Adjust the mode
accordingly.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 0605cf2faf83b..ff2bacf24bfd2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -345,7 +345,7 @@ ethphy3: ethernet-phy@3 {
 			reset-deassert-us = <50000>;
 			enet-phy-lane-no-swap;
 			interrupt-parent = <&gpio4>;
-			interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 		};
 	};
 };
@@ -375,7 +375,7 @@ ethphy0: ethernet-phy@0 {
 			reset-deassert-us = <50000>;
 			enet-phy-lane-no-swap;
 			interrupt-parent = <&gpio4>;
-			interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
 		};
 	};
 };
-- 
2.43.0


