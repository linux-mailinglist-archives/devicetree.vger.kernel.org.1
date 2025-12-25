Return-Path: <devicetree+bounces-249683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CB02FCDE035
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 19:02:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 95EE7300509E
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 18:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA23927F736;
	Thu, 25 Dec 2025 18:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="hygZHdnu";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="hygZHdnu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3553E23EAB4
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 18:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766685756; cv=none; b=Lf8DVvuUu3aD6TUAuwFP6lmcyhJKYJlsojIogNkDV9WnNKvFtAkDNvYSV0rGSrq4fC03jADfcVFCfWclloNkRR6W2cY9HW7rLRkRgNHSRkHLYnQ72ncxTS+XwLezsgQEJw+bBGU6BLHOzbETi9t/q6iz+ia9c/PRAKS71afYoyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766685756; c=relaxed/simple;
	bh=L2ODFCEIWrcpVeNIcspviFyOkd8/UWF55hgBt4ycF28=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V8X/0EdCt+2OOHkcl4zQl0PQ2Y/d0rgb0Eb3Lf9hK3VpCvhwgL9edtTMNVoOtvOtTit+fdDNWQ5KyDM5uD/jmjR/bl3DiuHsEGEUozHOgRYFGuDz4KtN5Ibq2CoVgxci2/M6WLfqgCzVfjZnj4xXNrJJ9yX1iGPhyFs5lPIegZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=hygZHdnu; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=hygZHdnu; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766685753; bh=L2ODFCEIWrcpVeNIcspviFyOkd8/UWF55hgBt4ycF28=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hygZHdnuNmu27YDz0TAa6+giO7vx4f2qa0gTjdd26iYtg0r+fffs+zhzWDIkR1IMu
	 c/G2XZEwP3H9ltJ80aG0SeeT3wWehaRP06Rm1GbNYWysEjWXGS8n9GlRZTe75xsucl
	 uroryB1nrrc7/Qsdx4oADGzzEnlmnFzyu0LouOAhq04ybDdH1YUDfFwGhNrPwGdCMX
	 pgsD5vfYA+Tt1noL0l3ZQSgmRw9RtSUL3qqVMzk9pEbfk1Jy4q214JQn6GFnxE4TUa
	 WxLNshGi/amH6uheZeXKGEhqo6/40Gp5maKQ9msnWFLpoOc5y16E3upLAhZgsk/VnW
	 LXY22Ie+S9DIg==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id AB2D53E8C81;
	Thu, 25 Dec 2025 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766685753; bh=L2ODFCEIWrcpVeNIcspviFyOkd8/UWF55hgBt4ycF28=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hygZHdnuNmu27YDz0TAa6+giO7vx4f2qa0gTjdd26iYtg0r+fffs+zhzWDIkR1IMu
	 c/G2XZEwP3H9ltJ80aG0SeeT3wWehaRP06Rm1GbNYWysEjWXGS8n9GlRZTe75xsucl
	 uroryB1nrrc7/Qsdx4oADGzzEnlmnFzyu0LouOAhq04ybDdH1YUDfFwGhNrPwGdCMX
	 pgsD5vfYA+Tt1noL0l3ZQSgmRw9RtSUL3qqVMzk9pEbfk1Jy4q214JQn6GFnxE4TUa
	 WxLNshGi/amH6uheZeXKGEhqo6/40Gp5maKQ9msnWFLpoOc5y16E3upLAhZgsk/VnW
	 LXY22Ie+S9DIg==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 2C7CB3E8C83;
	Thu, 25 Dec 2025 18:02:33 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org, lists.infradead.org@web.codeaurora.org
Subject: [PATCH 2/2] ARM: dts: lpc32xx: add DMA properties to NAND flash controllers
Date: Thu, 25 Dec 2025 20:02:30 +0200
Message-ID: <20251225180230.1400420-3-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225180230.1400420-1-vz@mleia.com>
References: <20251225180230.1400420-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251225_180233_714545_3D952B26 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message. 

Add descriptions of DMA request signals for SLC and MLC NAND flash
controllers, for reference see Table 69 from NXP LPC32x0 User Manual.

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index a49b8e794126..9107476fd071 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -67,6 +67,8 @@ slc: nand-controller@20020000 {
 			reg = <0x20020000 0x1000>;
 			interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk LPC32XX_CLK_SLC>;
+			dmas = <&dma 1 0>;
+			dma-names = "rx-tx";
 			status = "disabled";
 		};
 
@@ -75,6 +77,8 @@ mlc: nand-controller@200a8000 {
 			reg = <0x200a8000 0x11000>;
 			interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk LPC32XX_CLK_MLC>;
+			dmas = <&dma 12 0>;
+			dma-names = "rx-tx";
 			status = "disabled";
 		};
 
-- 
2.43.0


