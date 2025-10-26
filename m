Return-Path: <devicetree+bounces-231108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE6AC0A6E2
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 13:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DAA83A5DF8
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 12:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBD357483;
	Sun, 26 Oct 2025 12:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="sspobyoC"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D642110
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 12:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761481075; cv=none; b=GPVyeUpg5A4qMxG9OF21YOAHWDoNrVzbuVC42lJaCP/QkwHUIRF63YEY4ixpQR7lts7c+O4XdVuHJk8jVknOHw1GtbVRk++H5oHn+pHIJYj/hnbKUub/2K4/iwPF+5b+Bb99GyYbtK/eO3eB6Bm6i8YmQ6JdA5tAfKdPJrZlipQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761481075; c=relaxed/simple;
	bh=pHvVW51hUAo2aNW/gQRr/0MjdLTqCw0S3nlYseOuy+s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YHB33HMkSvrTMTMYv0cmGUsiun5OhQqLhdfSoq0+Vl0q0GI7uG0toqCK3lVYkrgJGWz1HYYAoQY67lm7bzbCMmcwSRts6KkC94t6wQOvu+gF7Kd4ws+BUxXB1Bofz6V7d9QfhDg5hiIbvRIcZ/W2Ll9YqwFgbrukQWR0ie90l0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=sspobyoC; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-161-16.bb.dnainternet.fi [82.203.161.16])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 89E40AB4;
	Sun, 26 Oct 2025 13:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761480957;
	bh=pHvVW51hUAo2aNW/gQRr/0MjdLTqCw0S3nlYseOuy+s=;
	h=From:To:Cc:Subject:Date:From;
	b=sspobyoCwiECwCsLChzGMnceyt/ZBkjgTq795NxsuiqU436Q32dlAoRnsDk3lXGup
	 3TwotcpVaEDAwPO5+dDkp0uHAk02WQPCg1Pb5moBX5nJpV8JA9BZkqm8NyZDT0QdOR
	 sXOw+5zgrGzzDipOaxfxzGGgNvyY6r7i6NMeRdl8=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Daniel Scally <dan.scally@ideasonboard.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: imx8mp-debix-model-a: Fix ethernet PHY address
Date: Sun, 26 Oct 2025 14:17:29 +0200
Message-ID: <20251026121730.13197-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RTL8211E ethernet PHY on the Debix Model A board it located at
address 1. Replace the broadcast address with the correct unicast
address.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
index af02af9e5334..9422beee30b2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
@@ -96,9 +96,9 @@ mdio {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		ethphy0: ethernet-phy@0 { /* RTL8211E */
+		ethphy0: ethernet-phy@1 { /* RTL8211E */
 			compatible = "ethernet-phy-ieee802.3-c22";
-			reg = <0>;
+			reg = <1>;
 			reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <20>;
 			reset-deassert-us = <200000>;

base-commit: 211ddde0823f1442e4ad052a2f30f050145ccada
-- 
Regards,

Laurent Pinchart


