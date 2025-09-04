Return-Path: <devicetree+bounces-212995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641BB445BB
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:47:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 631211CC1271
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:47:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B075F258CE5;
	Thu,  4 Sep 2025 18:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="nt5bCXiU";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="nt5bCXiU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40974222594
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011627; cv=none; b=jq/i236BwmWm2ix3eAojhzGQ0eJ9Z9w5cSPOJiTJZoGjHZ6Ho7VjpNmEDiSdS8YHs8cPBnwRYeybnAyDpvIap8o5cZZYT0NMeed0MxzeWxfqP5wWb2cH+EPT3qXn+AuJOJaeR1snnTaYlkgtcMTfF90pXSucXNZGmny9E5BQ6B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011627; c=relaxed/simple;
	bh=prnAyS9oB3iXuhsZrQun3UGULWKH8i7HvUSp/Azsj6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=irhiOvY46FyNdhLL3QKa/mOSDHPMuRn7QZRwNVPy/upqLzMGdraxhqLXIYrGeOdgzJg0TnX52Ii9XikoQYZiC/ZXZ7cQw6Tkt31BzNxxYJmoCWuXNSj4Kk88yYlNbi9o42ieV5v806my/PRx4/RWZrhufit/OJz1SBw5OFq9oys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=nt5bCXiU; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=nt5bCXiU; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011624; bh=prnAyS9oB3iXuhsZrQun3UGULWKH8i7HvUSp/Azsj6Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nt5bCXiU/Oc7kycmGmLua4QB1qLcJuO/X0X94EMYLeZyoumLHW0gMw/U1Xe0xySO2
	 980t9CSWi26AacHmVWO/gI+I2WdJoIxlaDdY1NdJJnqGhARQEC3lTD7c00y8mDKxa9
	 raYT+jGYQYRUxWP6kmbw1pYBXm+cJkzyz3giTuqeOdcg6YsgQGhHeleFJlFlDy1/k+
	 NQQyIg1JYCt2LHZ0b/uo8CVo55c7updjVKZQyalRh8C45uAE1XR4GWRc0xXd89Qxqk
	 +I2ZgsL/NOIML2FhR6glu9gOjAICYA5U4vKtmXvJbc4+KIt1UUpbfPprV3tZHDFxn3
	 gMm3hHScg0TTg==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 610783D2189;
	Thu,  4 Sep 2025 18:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011624; bh=prnAyS9oB3iXuhsZrQun3UGULWKH8i7HvUSp/Azsj6Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nt5bCXiU/Oc7kycmGmLua4QB1qLcJuO/X0X94EMYLeZyoumLHW0gMw/U1Xe0xySO2
	 980t9CSWi26AacHmVWO/gI+I2WdJoIxlaDdY1NdJJnqGhARQEC3lTD7c00y8mDKxa9
	 raYT+jGYQYRUxWP6kmbw1pYBXm+cJkzyz3giTuqeOdcg6YsgQGhHeleFJlFlDy1/k+
	 NQQyIg1JYCt2LHZ0b/uo8CVo55c7updjVKZQyalRh8C45uAE1XR4GWRc0xXd89Qxqk
	 +I2ZgsL/NOIML2FhR6glu9gOjAICYA5U4vKtmXvJbc4+KIt1UUpbfPprV3tZHDFxn3
	 gMm3hHScg0TTg==
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/7] ARM: dts: lpc32xx: Specify #dma-cells property of PL080 DMA controller
Date: Thu,  4 Sep 2025 21:46:46 +0300
Message-ID: <20250904184647.397104-7-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250904184647.397104-1-vz@mleia.com>
References: <20250904184647.397104-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20250904_184704_412236_99F7354D 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message. 

For DMA controllers it is required to specify a number of the cells for
users.

The change eliminates the next build time reported warning:

    dma@31000000: '#dma-cells' is a required property

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 522d616a9205..a38f3c6dbe47 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -83,6 +83,7 @@ dma: dma@31000000 {
 			interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk LPC32XX_CLK_DMA>;
 			clock-names = "apb_pclk";
+			#dma-cells = <2>;
 		};
 
 		usb {
-- 
2.49.0


