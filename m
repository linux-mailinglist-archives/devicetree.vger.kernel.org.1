Return-Path: <devicetree+bounces-233229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB508C20179
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2BBA400B3F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D3EC350D60;
	Thu, 30 Oct 2025 12:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="ezSrzxiM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay112-hz1.antispameurope.com (mx-relay112-hz1.antispameurope.com [94.100.132.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F75340DB8
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.104
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828666; cv=pass; b=g2xE4geunWFQt+pzSx2eBD2HUyddSQlmzYKkXb+1awKwN7dNayAio5LBZ/YF95r1JdSlRHexIFCu+3prpSzPC3xsdQqz3UrlNZPNY0Nu4rA9n83+Q6v9fdkbI6RkxH9vpXlDl3jbe8PNvoBLPw4G6ivR5dsP8X+IEoJ5bZFNFsk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828666; c=relaxed/simple;
	bh=teC6RCLwcJ4ofs3BMnvnxEBibhOhTeiU3GjJARNrkN0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MMKrw1Yiyztr/d6qTK+avFw26utj84Mq0gVVoO/3hkxa08x+6rsGcHY3kaj1KW3Q5w7GkmMf0a4fzL9gZlYHFvVbjGixi1Xf15/RdxZeVjs1uh4tiB0Lgw5Dy6OIHDonC2ANSHrACsxueYuStIWlQtoiSwSuFbGxCNRTnNTTj78=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=ezSrzxiM; arc=pass smtp.client-ip=94.100.132.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate112-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=vSkO+SAblxo65xQY7HUYugCLYQ6GKYpvPpD8mR1I6BI=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828602;
 b=HHY2CBZ40rPxnD5YflA9NH9mBAwXIWajcLK9OjXcW5MY1bcr+K/rpRQiLYZ9VHzOQxkCOfgs
 1nAR1ZNshXD+P7mIjMd4D6K9X3SMccli/sd2wKNmYnCQkNraEkTjpZctO4ZPkvFR7dUlUQLG+pe
 mLYEC37wZVrFFITSXipEP2GZTVekhO92Ar1y21BWtV0/pjBNw4e9Oyh0dilIjZsenSmYUcTbrbx
 1gzXDy7jirLGC5ZH//DeVmfBjBjxHtSBLr6qO0BVAbgKriV8iCf10znEFwvkxumkHXzLtL2Kku7
 S1VPHh/Pnqh0pnnn2mT8nHfw2IgrIL6w70wNUkXB9jkuQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828602;
 b=Nad/9G1WXLTRBwuc8faVT2MCGkvgPc1RkyeeviV6aNDqAWJ9JJ3ZfCHYdc4dzx+h0+NoSYpK
 SXcR/Ns0ir8g9UXurT3FD6Rw0wU1qzQPiejb+EDJVFsVxDcneyp0ZXknSYyFN5jGr55VMNliJEk
 ywZfTxkHngDu53ipQ/9fzgobGPOS4GDPRtMqzawvEDXn2SR0yUCXBQsJ4sQpM6DOxuEhukmZSOl
 1OoV/5gVbrYPIDNjk8q1U7wyHdYRRRHiCOi3Vq7Ji0GnhdOIXQTaxtAxFAvofVs7+UNcFFyTI27
 fr01TywYte6CSC0YFXKTUnkgLjSMk2nVbAQoscCjtQBcg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay112-hz1.antispameurope.com;
 Thu, 30 Oct 2025 13:50:02 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id AEA39220D31;
	Thu, 30 Oct 2025 13:49:53 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 03/19] arm64: dts: imx95-tqma9596sa: increase flexspi slew rate
Date: Thu, 30 Oct 2025 13:49:10 +0100
Message-ID: <20251030124936.1408152-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay112-hz1.antispameurope.com with 4cy3q62w4KzwRkZ
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:17f1ace8efd12130408b4857dfad62cb
X-cloud-security:scantime:2.238
DKIM-Signature: a=rsa-sha256;
 bh=vSkO+SAblxo65xQY7HUYugCLYQ6GKYpvPpD8mR1I6BI=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828601; v=1;
 b=ezSrzxiMs+lFwpDVkoEpmO1RGt4iF52+3tbC6CW76u7JA2PIEOn4QT9Hd37tM+mI9uFWmMkD
 O2KtLCw1DhEEtkhr5n5aVHVPm8yecPCODuTSwR0xjS4bNlVzuOr7fQeU6+GybgJJfNzwNhMrMJq
 tTbJiynRp9mhQpcde8VaAPfseWKUup59REfyVYXFd9vcnbr3Twhs1p9OA9mSeWoUPj4fkuGW6HC
 01fhGrerKq4thuAUltg8q3btVsu8sEN8iWGPfLxxSqdGbPp0w61YhhBCKc1eFjOE0u/J6aI0nNl
 G4/z7W2ApjsHHu0ailtwECvHXnLVR8klDop1exgYZV3BA==

Switch to fast slew rate.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index 16c40d11d3b5d..52355a65a62da 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -497,12 +497,12 @@ pinctrl_flexcan3: flexcan3grp {
 	};
 
 	pinctrl_flexspi1: flexspi1grp {
-		fsl,pins = <IMX95_PAD_SD3_CLK__FLEXSPI1_A_SCLK		0x11e>,
-			   <IMX95_PAD_SD3_CMD__FLEXSPI1_A_SS0_B		0x11e>,
-			   <IMX95_PAD_SD3_DATA0__FLEXSPI1_A_DATA_BIT0	0x11e>,
-			   <IMX95_PAD_SD3_DATA1__FLEXSPI1_A_DATA_BIT1	0x11e>,
-			   <IMX95_PAD_SD3_DATA2__FLEXSPI1_A_DATA_BIT2	0x11e>,
-			   <IMX95_PAD_SD3_DATA3__FLEXSPI1_A_DATA_BIT3	0x11e>;
+		fsl,pins = <IMX95_PAD_SD3_CLK__FLEXSPI1_A_SCLK		0x19e>,
+			   <IMX95_PAD_SD3_CMD__FLEXSPI1_A_SS0_B		0x19e>,
+			   <IMX95_PAD_SD3_DATA0__FLEXSPI1_A_DATA_BIT0	0x19e>,
+			   <IMX95_PAD_SD3_DATA1__FLEXSPI1_A_DATA_BIT1	0x19e>,
+			   <IMX95_PAD_SD3_DATA2__FLEXSPI1_A_DATA_BIT2	0x19e>,
+			   <IMX95_PAD_SD3_DATA3__FLEXSPI1_A_DATA_BIT3	0x19e>;
 	};
 
 	pinctrl_gpio1: gpio1grp {
-- 
2.43.0


