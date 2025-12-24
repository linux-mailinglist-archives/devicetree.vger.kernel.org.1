Return-Path: <devicetree+bounces-249568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55078CDCE77
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:58:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45AAE300D424
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9C87335BB4;
	Wed, 24 Dec 2025 16:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="bvjsHsMS";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="Huvin09i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738452356C6
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 16:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766595531; cv=none; b=I3pv64p7UD9yYWtMb6El+U4nc4aKQF2jUIev3WImb4cVA21GwfHT+8FtD2o+2ilEr/rtgiL2zI2I1mQS+BUq9cbpD6JNuFKpj2hRNffbTBPNgGM21okbWk65nX9V7dx3uUX0B3g3n0ZF102Ym1RUu/W5F6oZNyDWQynqE8ikzz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766595531; c=relaxed/simple;
	bh=zQ1Ae8voxAofrFTWjcms3M0G8PDIugbtXfYgGxo4OPE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JC1muT+f5QfrSRXMihoBmyPbVswr9hOFiQqwqW+vgtKnsL5TqKUY2Jh8/mkVYs5h4TuaUt94e2V9WDiE9fwTn/M+m8PgjXVKm+sOTqoQwJ0K16cojCFSY3QswsKy1mDCE+SQtp75Zh8d97zoqKEypqAG38HwJZtzaz8+cZva0UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=bvjsHsMS; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=Huvin09i; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766595529; bh=zQ1Ae8voxAofrFTWjcms3M0G8PDIugbtXfYgGxo4OPE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bvjsHsMSHmMZqWJz0aIy4+XeEO+ADCx4CjbMFY9OrwF3PclngJ1qRr9r4lAyqtA4Q
	 K0lFpqYw0/QqL3JiJ4Smp5VFJWdXoPEyWaSrmJTnFHuZLuFOLveuBzsfbhk/kYoZXG
	 l3SLFSul15YJtOLfrW/tm0FLJoWJwTBQpD3LCVkNJ+Xuhy2PQkTaBUNvyxpOrC8xGq
	 8IS1WbC2t9M05wTbhO3m9pljMmw5Ao26PrZ259NtKWDWJq2TtRyaTnDdQTCODOSc7D
	 egc7qkz4YiH7SoE6GQ5VC1+uvD5tcj3U9wznNm5j+xQTzYHpQFOJffmUXZ4t62seW7
	 LQrUGDUAtgejQ==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 024D13E8AFF;
	Wed, 24 Dec 2025 16:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766595528; bh=zQ1Ae8voxAofrFTWjcms3M0G8PDIugbtXfYgGxo4OPE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Huvin09iJXRkscJmU5/H9t1cr15T/8bFbYm1sK3pzzDwCtfKhLxwxdwd8V4Y+9UQz
	 NKQi98K1FV3C3E805iijbWtI3NTo6E+PC6yQwXsOL+0TMyZuLXc8s4L+Bv33KDIcuW
	 AP2UJDG/QrOFhWcmPeXL/q3rUYtLFcNlkR5S1wBPnRmh0MSXtXzRJjtZe6YuDQkNAp
	 P067g7VfKfDMyuELl7pFYX1uG5ePM8I0qsl6/8CCe1MOwxMEucaLPYqcBSm1CFJrli
	 55F0tW1OW4f83QfraC3G8HMvFfbkPjaFPLH8DH9h5wk4ALVLikYyK5P9PCEqAE5Wh4
	 pzJJ9WE1fGNdw==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 72C4D3E8B01;
	Wed, 24 Dec 2025 16:58:48 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: dts: lpc32xx: describe FLASH_INT of SLC NAND controller
Date: Wed, 24 Dec 2025 18:58:45 +0200
Message-ID: <20251224165845.1261926-3-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251224165845.1261926-1-vz@mleia.com>
References: <20251224165845.1261926-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251224_165849_025348_EC4AAD55 
X-CRM114-Status: GOOD (  10.61  )

SLC and MLC NAND flash controllers fire the muxed interrupt FLASH_INT to
the SoC, add the interrupt property to the SLC device tree node.

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 3d5a59b2886c..5ddaea8c481a 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -65,6 +65,7 @@ iram: sram@8000000 {
 		slc: nand-controller@20020000 {
 			compatible = "nxp,lpc3220-slc";
 			reg = <0x20020000 0x1000>;
+			interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk LPC32XX_CLK_SLC>;
 			status = "disabled";
 		};
-- 
2.43.0


