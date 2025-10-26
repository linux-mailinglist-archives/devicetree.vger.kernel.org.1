Return-Path: <devicetree+bounces-231111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BE2C0A70A
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 13:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 688CD3AC8C8
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 12:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9F525524C;
	Sun, 26 Oct 2025 12:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="GW/HxhpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C256212572
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 12:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761481763; cv=none; b=VsV4VGqkkVy34PsQ50dPEVjVclhenuf5g3W740rRbiLp3pzLnSHkO4EXjbnw64bU8ocuhaO2hHQcviaIlzEOmbA6i/EPOc9bQRWTsMEh5s1QSAL3UR629AIm6yatLx8C3mnQtOh9e23KAxN+IlNrIxvh2AvJUzJTKol/VpNsMAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761481763; c=relaxed/simple;
	bh=pzVG8b6JUQj2Bt9sXSZDDeW26gA2PpIPU+wUY7d6Xsk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KCkH5EcjXL8gRYkPupljuE21liUR/4l4Wf7+BXW6eaE7epozPnGb+pesBYde+874BrjVjXXlL7i3AI9JGdqX0n5k6rC7NoHvsQDL9p26kFsI81BupjDIHiB1PDCMXv8qw0v8GWW3Peb/ykepL9DqhIMSeZT+QXJRMsWxwY48Rac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=GW/HxhpZ; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-161-16.bb.dnainternet.fi [82.203.161.16])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 276F1AB4;
	Sun, 26 Oct 2025 13:27:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761481652;
	bh=pzVG8b6JUQj2Bt9sXSZDDeW26gA2PpIPU+wUY7d6Xsk=;
	h=From:To:Cc:Subject:Date:From;
	b=GW/HxhpZ225i9Tvtsc4U23VNmiAhwLYsTJ3RjLrnvkhZbEUkjAmNKDNwXOWW5j3ef
	 KheSpcpvBNMuK25qlcmu/lCiZqRQRba0bz3fp70o+uCfdU86P1GS+vnASzsLoR6ysW
	 wps6oAsvkagbrnHgvcNoLJgc4wHI0nsxcEknZUIY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: Daniel Scally <dan.scally@ideasonboard.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Stefan Klug <stefan.klug@ideasonboard.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: imx8mp-debix-model-a: Disable EEE for 1000T
Date: Sun, 26 Oct 2025 14:29:04 +0200
Message-ID: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Energy Efficient Ethernet (EEE) is broken at least for 1000T on the EQOS
(DWMAC) interface. When connected to an EEE-enabled peer, the ethernet
devices produces an interrupts storm. Disable EEE support to fix it.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
The exact reason for the interrupt storm is unknown, and my attempts to
diagnose it was hindered by my lack of expertise with DWMAC. As far as I
understand, the DWMAC implements EEE support, and so does the RTL8211E
PHY according to its datasheet. What each side does exactly is unknown
to me. One theory I've heard to explain the issue is that the two
implementations conflict. There is no register in the RTL8211E PHY to
disable EEE on the PHY side while still advertising its support to the
peer and relying on the implementation in the DWMAC (if this even makes
sense), so disabling EEE is the only viable option.

This patch is likely a workaround, but it fixes ethernet usage on the
board, so it's in my opinion worth being merged. If someone with better
knowledge of EEE and DWMAC, as well as an interest in getting it working
properly on the Debix board, wants to submit additional patches to drop
eee-broken-1000t, I will be happy to test them.
---
 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
index 9422beee30b2..4aa47f71425b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
@@ -102,6 +102,7 @@ ethphy0: ethernet-phy@1 { /* RTL8211E */
 			reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
 			reset-assert-us = <20>;
 			reset-deassert-us = <200000>;
+			eee-broken-1000t;
 		};
 	};
 };
-- 
Regards,

Laurent Pinchart


