Return-Path: <devicetree+bounces-16066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2D17ED5BE
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:12:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13FBAB20CA2
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2CB645C12;
	Wed, 15 Nov 2023 21:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=permerror (0-bit key) header.d=tesaguri.club header.i=@tesaguri.club header.b="hDFr9S+8";
	dkim=pass (2048-bit key) header.d=tesaguri.club header.i=@tesaguri.club header.b="fP59CKIy"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 448 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 15 Nov 2023 13:12:01 PST
Received: from gagc1.tesaguri.club (gagc1.tesaguri.club [172.93.166.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC643C1
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 13:12:01 -0800 (PST)
From: shironeko <shironeko@tesaguri.club>
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=tesaguri.club;
	s=ed25519; t=1700082271;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=oSvdoJoa+tDicrSjvSDCBoLYrGylUcyxX94HD1Oe+7g=;
	b=hDFr9S+8LMGzFlhhh8TuP8B0/SONEnUhC/guXBbOwzhGs5F+r3RM5j8bokC9qb/oMnUFq/
	BxEgN+CoRU3RqUAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tesaguri.club;
	s=rsa; t=1700082271;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=oSvdoJoa+tDicrSjvSDCBoLYrGylUcyxX94HD1Oe+7g=;
	b=fP59CKIyEYSqQGZkTIAlvTAfe+d0s9dD/T5DZA16njKlJfsOnZSvU6Fhqb6Mlo47Oj0rJy
	aSs/FRcMakl3Uf2M9lIDKaTpt7dBMJKNyrpK2cqzyb1b3aLIGHW5yPHL8DMM7x/UABPASB
	t4kIGb/3SJ1C1beCTKmm4hxoBwbuIdnzPHD+XFfTsZ1P9NStvB0kQUZvlsHfrJyveZ10RJ
	X/tdwfJ51OBcXVpVJD3stFyBBdFy3iEIsdqDTz1qBR7SrntDK9gZ9RWjDh0aAa4KotZeCp
	/SeEYYui84HvZjG4UgJZRP5/z4rxQ+88EAS4ea/UJbGHtvAvmgBmtdM1+CXyzQ==
To: devicetree@vger.kernel.org
Cc: heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	shironeko <shironeko@tesaguri.club>
Subject: [PATCH] arm64: dts: rockchip: add missing tx/rx-fifo-depth
Date: Wed, 15 Nov 2023 16:04:17 -0500
Message-ID: <20231115210417.144134-1-shironeko@tesaguri.club>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Without fifo depths attempting to change the MTU will fail. These values
are from the RK3328 Technical Reference Manual, briefly tested with Rock64.

Signed-off-by: shironeko <shironeko@tesaguri.club>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index e729e7a22b23..1573250ac24e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -916,6 +916,8 @@ gmac2io: ethernet@ff540000 {
 		resets = <&cru SRST_GMAC2IO_A>;
 		reset-names = "stmmaceth";
 		rockchip,grf = <&grf>;
+		tx-fifo-depth = <2048>;
+		rx-fifo-depth = <4096>;
 		snps,txpbl = <0x4>;
 		status = "disabled";
 	};
-- 
2.42.1


