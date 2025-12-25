Return-Path: <devicetree+bounces-249696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97027CDE137
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 21:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E7B613000EBB
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 20:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB4E1D5ABF;
	Thu, 25 Dec 2025 20:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="N2CqD6rv";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="N2CqD6rv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5693D3A1E70
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 20:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766694730; cv=none; b=ktKScCNJdTngr0xjI+hnkqe4tstPKwqfD9wyWyto8SOwOCFR01h+rlJotnCxFdEIzpOjqjWZsva7GQM6mVPb8NNtzuWTStH49Up/voyyaONZigTU+FbZvOP1esKoDvgL2PTEYs8LurckTxKdHn+wO72XnWd8t+j+4VwBRGhSPsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766694730; c=relaxed/simple;
	bh=L2ODFCEIWrcpVeNIcspviFyOkd8/UWF55hgBt4ycF28=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jQhfNIRwYPNDmPEmiW7mwDLyjQmTRyTTUk7bQo3GC3HZXmziwoMW4PhV0rCdV14rooR4uT5Rg5ks35kAYSXxqt7LzruNQbDVgU/HoN3XpJi9QzH3GSFHAWsUVebThbiDOTs08EO24JR08AJJeuMenO47cbb/fgwEwJzj8yccsBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=N2CqD6rv; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=N2CqD6rv; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766694727; bh=L2ODFCEIWrcpVeNIcspviFyOkd8/UWF55hgBt4ycF28=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N2CqD6rvPdP67aQEqn7SQygNFoCQ1LPhgDoe3kyKnG0HNK0Xqhy6rg4e+NHm1yK+2
	 +xe2WY5ksHjEfYCpb1WHVECwsk/pRxnYG27GgYxZOsn/8IcXMy1cd8uPjYFb1BUB6s
	 daqqYTNHPCEAcFtGllcp+Ojt1aJjym7/wQAJsniAZiDr15e2INopdlXzp1TEDrUsn3
	 UedPVGtlUPHEhRjueu89q9RLFeCOT37pyQGRMtXZh4hfPY9/JeHPdnq12AUWkIOi6s
	 Z2TFlEItZMg/a8ZOluH6mM7BKCk4BUYUwPcqhcpQwQHdlyjOvGheQ29W3zyGyzVqwL
	 Mg7CsMzsT9Psg==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 9EC023E8CBC;
	Thu, 25 Dec 2025 20:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766694727; bh=L2ODFCEIWrcpVeNIcspviFyOkd8/UWF55hgBt4ycF28=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N2CqD6rvPdP67aQEqn7SQygNFoCQ1LPhgDoe3kyKnG0HNK0Xqhy6rg4e+NHm1yK+2
	 +xe2WY5ksHjEfYCpb1WHVECwsk/pRxnYG27GgYxZOsn/8IcXMy1cd8uPjYFb1BUB6s
	 daqqYTNHPCEAcFtGllcp+Ojt1aJjym7/wQAJsniAZiDr15e2INopdlXzp1TEDrUsn3
	 UedPVGtlUPHEhRjueu89q9RLFeCOT37pyQGRMtXZh4hfPY9/JeHPdnq12AUWkIOi6s
	 Z2TFlEItZMg/a8ZOluH6mM7BKCk4BUYUwPcqhcpQwQHdlyjOvGheQ29W3zyGyzVqwL
	 Mg7CsMzsT9Psg==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 288393E8B7A;
	Thu, 25 Dec 2025 20:32:07 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND 2/2] ARM: dts: lpc32xx: add DMA properties to NAND flash controllers
Date: Thu, 25 Dec 2025 22:31:57 +0200
Message-ID: <20251225203157.1414349-3-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225203157.1414349-1-vz@mleia.com>
References: <20251225203157.1414349-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251225_203207_665090_E41E946D 
X-CRM114-Status: UNSURE (   9.84  )
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


