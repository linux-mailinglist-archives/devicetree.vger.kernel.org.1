Return-Path: <devicetree+bounces-245368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAF8CAFB12
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A469E304A764
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C49A830216A;
	Tue,  9 Dec 2025 10:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="pd+QhcQi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay139-hz1.antispameurope.com (mx-relay139-hz1.antispameurope.com [94.100.133.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B9B2E093E
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 10:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.185
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277646; cv=pass; b=PfmMGm+vdhgmTwHC8DeriGZnuUth5z3m8EcfLhGeJ0irUqUmm6nMln2Iwbspqk+xHTi9ZuFM8yGeY5/YwUGKPrgzx/KYeGv0dxG/w/xWO8DvMKzs5kJPJWB371J6ONb7DwiAXrW5PDBhXlTPO7c/acZywd2w1ekMI5PELS/WnuU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277646; c=relaxed/simple;
	bh=JFUWcdpEGbTltfBwlAPAUn1P1VLeYsooLhnf4XEIOgI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qa8lLFTlSBvXkRZHLXCqxs5CdJ+bS0/xA1ZzzAXiN4vHuTlc/zvMn+x052BomETDNZi2HpRySSDpwWh+qtz5DaUOhOOOxXFaQYxe6XAblzwyl5eA43drz6Lau4+Q7+HFcLS38lHfR7ErBhwQKykfpNXHejwFodZ+6aBGAn7dwpU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=pd+QhcQi; arc=pass smtp.client-ip=94.100.133.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate139-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=8IED3rJ3zsfdXQmpcDwAq+hG+sXvjgA7/waaA9T5c3Y=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765277612;
 b=Ippn7uCx2e4HnoStGf4kuTJupik5Z7+Xxpdaj7BtDWA9IJ966k03CgXkek3Vo7iOZv6SdRwq
 W6PUrxbtl/LE8GeVeLBm1tTcPlOykSVEVNRADk2PVxV2nktOqDVDBfkuyF11TkWRrFtqUcpGGzg
 OrCvE0L3lMObvVYJ5aHhZ1OsE1xX5R6/S0Krjz/VC5yH38+n4Q8Ise3d0DxXWHvNuD2wj6WFmjj
 KVN97P5Qycsd29982DQTIi8a2xWsyGeytfFUfOQqadGeAKkatML75p3qNW8RaDB3yncRpRABqmr
 OHOVMQlu3B1o8ARJut6u5rlF6NTZDOI1UGMn/9FlwKmeg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765277612;
 b=ku51P7M+JZWrYH2irzYhGw8E4IUQxOIl+8gamBRQ7apdq3lYBkowtTDUQi38DHz8YW+0P43Z
 FttNXb6VMIK89LpEPaXnPfFb9x4Q0eFHLyJQdKmAQdAem6lJjD6v1sQpO7ibGVwJbJRqtBsdTb2
 yCe4MsLJUtdwiP8NS/Rrd0F2znxD3V4Lw6cIQVV/ldFoiJpHZvMjhCSYLDeCBgT5yCee+lxXIhL
 4Z6pnBD4KV0Eeq1yy0ZPggNHKwY0YfLTbTB60fO1u9dLcXbbetD8r/D30JeMk0cfxdwrTK+VcBo
 11P6z0MjnLrH0GikLIAVjfNJcQR32eulegyLfb94gGKpA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay139-hz1.antispameurope.com;
 Tue, 09 Dec 2025 11:53:32 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 12EF5CC0CB7;
	Tue,  9 Dec 2025 11:53:23 +0100 (CET)
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
	linux-kernel@vger.kernel.org,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 2/8] arm64: dts: tqma8mpql-mba8mpxl: Fix Ethernet PHY IRQ support
Date: Tue,  9 Dec 2025 11:53:08 +0100
Message-ID: <20251209105318.977102-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
References: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay139-hz1.antispameurope.com with 4dQbLC5gtczNwGg
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:a09f991505044410bd11d1a9cce7d8b4
X-cloud-security:scantime:2.263
DKIM-Signature: a=rsa-sha256;
 bh=8IED3rJ3zsfdXQmpcDwAq+hG+sXvjgA7/waaA9T5c3Y=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765277612; v=1;
 b=pd+QhcQibLQ2tXvHu8vdsKAl+tFccNzs/yznScnQZenCyf1Pt+qVcYw83/IHdmThznCJ9th4
 eUnvsG8jGMXjtN53i3Btjf7wX4g5H1TaDoOAPnvrFK1ktEKag/bSw7uJwuoN9BuEWRBCl0SPIGs
 VOrVURAFYJ663yrHxSFKn2REKEDG4wtMjC2iC5DQ215SufgQb2sV7posR45b4ZYi17VvFBEh7eS
 Vs8Oxz/oCgf11G97AAG9NF3ShFge5RLVHPkGD/GhtT1XCwD5AViL6TE0XuNEr9abdlf/WcZK5bl
 5wGqXN/ELHpuQ6hOiIJPqb2BX9zwlsPp4bevI03vyGBlA==

Ethernet PHY interrupt mode is level triggered. Adjust the mode
accordingly.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
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


