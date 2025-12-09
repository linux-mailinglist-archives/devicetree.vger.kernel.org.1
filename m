Return-Path: <devicetree+bounces-245373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0BACAFB2D
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89E6130C15A4
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2813931ED95;
	Tue,  9 Dec 2025 10:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="AY9PvIfW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37822EBB9E
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 10:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277648; cv=pass; b=RFQ4z49m5OmMduICNq3cfm2qKCjtMBvDq43TjOAaDxmYpBpid/ouIiwFD4sEZMiqtt849KY1j18yxmW8Eo9F4qyry92kjtNoFa0K/fnutOuWv8uhELzZn8FoH9k1t1q/ZCqLthGM9FW6g7IsUa1mdoQejGBQNt9mQ3ROrNI51Y4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277648; c=relaxed/simple;
	bh=6eQxmAaacP/aBW8Y3d+Wuo10K5fyUcZaZ5CsJYaQI1E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D/EqCBLuykVTncmF1rDbSTDWLvBSbxt1ZyAvkEjv4zgH9SXMvWHwYT0SW1Ao/q6HH8pvpvjpH80rDXeki9lM+Cno+bGjNN2ShNSB4fPcqoBimOZC99GviRIhvZWDG5MuoVYB3toqCbgUzjud6ITKzkdQOOlMCogZxnLO/VN9teI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=AY9PvIfW; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Nsa/tANqoPEYu2tcmKDNOq4Q7cxzL4+lOwJznVO+Sak=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765277615;
 b=FFtsU7u8FdliZS399JGtrVU2BvTdVS3rCe+a42b3Km5aOaIHSDWUjB5LIQaedeH+S9W74FlQ
 sGmf2KMxNWyTXJqeQbPH1d1p/CEUE4ykGjveMRLHeC5ckuj+QRzms3FfMQ7YyZfnqOJQEuPX/iG
 3ZjGZpGF+Dsbkzt/0zQTgrqSnl4ztDKNbHwlffmbi67rctNtC8eGe7TgRRUjuVrohbX2wpn2kB4
 quCkL4hDUwc+72AgN6AhSeUT7wUhVJAeNHCVA8+TN0GD91digmJbhth0j/5lABykcOUNNt9Hoo9
 wL9QCBWLtkOUa6QA2hbwpojgY+3PiqRsWUDdaU49nfUTQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765277615;
 b=CCF4p1HyLfPn23ZMbFtrtuZPRB77uehUxhmhjA6AkbISUTUWT7svfU2alOkTLm0Iek50f6fv
 MQZIBHjizhVBELED6PoHe7nUG0lUX1u84ZNLD19Md5SwUO3UVn+7ddU+3qDHJoeaTi2tuNKFGLX
 z42R7I3GgKY/dtzjHrYPb8N81/R3tRol/QmH3LEx4uEBJjT3iOcOpdZWAmPoJY5nciGdfuTLQ0S
 dJJq0l2EhEe2uvQ6pGaHI8AKMTdXHj1d2mtMqmkRngUKVucBo9GFco1T1hjfTE9KT+LEqFZkKlD
 MSZjMnt4uL/YpQBBXtfb5IZPGiyX9P9h4aypJw4pXULlQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Tue, 09 Dec 2025 11:53:35 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id A604ACC0E94;
	Tue,  9 Dec 2025 11:53:27 +0100 (CET)
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
Subject: [PATCH v2 6/8] arm64: dts: tqma8mpql-mba8mp-ras314: Fix Ethernet PHY IRQ support
Date: Tue,  9 Dec 2025 11:53:12 +0100
Message-ID: <20251209105318.977102-7-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4dQbLJ2sfpz1kNh56
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:ebb7bfe29a23ea3b3ca2efd1a9894abd
X-cloud-security:scantime:1.801
DKIM-Signature: a=rsa-sha256;
 bh=Nsa/tANqoPEYu2tcmKDNOq4Q7cxzL4+lOwJznVO+Sak=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765277614; v=1;
 b=AY9PvIfWcaOYbLmCfmlfIvTh549CT3XaWXWhxftzb4nZIXJ896lho7FnJrjDKChAtK8sXezp
 /nTDN/C83MtOwLhlwjcfrpsG/187I1eMuPAmsyE7eXUts4hd1oiw2zC99k8CygKygEi8xHANsGY
 BszUas+CSySb9jmCN4EBA9ViQnugnZbQAj+TEAOx755bdQns/I0Tdf4krqWlk+2nyUv8exqvhz1
 lyjAYwYdIrbisMWsxcNij+78lDAUrtTz5QJZ1QweaOgbvVO+B1sPDAnhSVrjFy7OBoXsPnLMUEz
 E6LaHkDNNsrDPFhmGCv/dAwKhWTjJYro2wYucRnRjlwlw==

Ethernet PHY interrupt mode is level triggered. Adjust the mode
accordingly.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index f7346b3d35fe5..67fe1f63fd93c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -190,7 +190,7 @@ ethphy3: ethernet-phy@3 {
 			reset-deassert-us = <50000>;
 			enet-phy-lane-no-swap;
 			interrupt-parent = <&gpio4>;
-			interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
@@ -222,7 +222,7 @@ ethphy0: ethernet-phy@0 {
 			reset-deassert-us = <50000>;
 			enet-phy-lane-no-swap;
 			interrupt-parent = <&gpio4>;
-			interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_25_NS>;
 			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
-- 
2.43.0


