Return-Path: <devicetree+bounces-212996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC45B445BC
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DB5D77B927A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5BE9258CF8;
	Thu,  4 Sep 2025 18:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="BsAn4G2D";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="a2ZIN1LY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466DA25743E
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011627; cv=none; b=sip2C+lfypw2vYexr1IuCMBNphLpW4AeCGwrMab1KHnjxtjfePxn+tYV9e3PSHsO0N2z3euXQiePuFf5S4wtE8fHWSDfYBwn1ymqxdnv1FkxMrAku/9o0JUFoB1VDP9a/8yNGxvcj7rzeJ5OesIs27DYqcCHug2eXSh0c1EAw3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011627; c=relaxed/simple;
	bh=7mCH8/8S4sBInifv/+Psyx02yABDs8NiX2T6iejMDXQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AyaW1PJHsSK9H5ozofdyCZTSjiJwOc3b3+1O/Wx1WXioIVGpUno39QC2REo1iR+ahh0KiUANcigPFm+UgmTE6isrB56sCCXmh/I3mLGVEBjGJUJ6psQgrmK1ZOrPE/C6FuITW1RXQuVZ+OglTBVqLucTQ+3FfAjrPcf3EFCN9Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=BsAn4G2D; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=a2ZIN1LY; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011625; bh=7mCH8/8S4sBInifv/+Psyx02yABDs8NiX2T6iejMDXQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BsAn4G2D/0/rOaUi/EWOikiyyE6MWgc1vbA4ftu06X/igJKHy0ydDP2g1ycHajr9k
	 MezaTRmE3PbQkR6xlJLi39PwBx86ZLwaBUrObBoQkszj4doxcFUJt3wT/2PMdZ4PUg
	 ya1eulKb88xd4t/dayuMQd7ZmD2WMfx92guambUu2T1blQbh7Z8svJBiQ2j49S61M7
	 aL9GheOJxAF/bzPh4rnxtp119r1fJ5rJkh5NbaMLNuLbBa/EFj4GcNFPfisliPXIN+
	 7b5tjr4Qu4Os2T2dEUxXUbANV0MsIaypQPnOgn6zJ2WMAOytwDsBTuntobeeX5Jqem
	 HcHtJueOuAwJQ==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id EDF203D218C;
	Thu,  4 Sep 2025 18:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011624; bh=7mCH8/8S4sBInifv/+Psyx02yABDs8NiX2T6iejMDXQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a2ZIN1LYQt5Bho/wWQyZdVbIq030FL6fVbNk1NW9ez0/b7L2LWLUe/vPUtQ/RmoMe
	 KFnfUhq2PjevqUOAV5x8rpucHkSWptS9VUcDRa5xfAp08yRbCozX2kSUMLwVTg+mTC
	 ro4wsaL3JK8N4U2Ur1c3gqJs/DL+wMwADzXBZxOnnnbBfBjTyI8EjJb8lU/jrSzjPS
	 9I55RwrEAIQWGZkSb39DV9LRO+PUybAlxDUnQO/n20NhXhzCRR/mo0qFVV6tYk5nbf
	 +r/BpPWZZNwPdSbNv4R3tPO+2UmTuuz69CCsY5rkNsHifbDvqYMSnkSAdoOI+Rb9+4
	 rNMlhNQ/57k3A==
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/7] ARM: dts: lpc32xx: Correct PL080 DMA controller device node name
Date: Thu,  4 Sep 2025 21:46:47 +0300
Message-ID: <20250904184647.397104-8-vz@mleia.com>
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
X-CRM114-CacheID: sfid-20250904_184704_997260_47ED5C42 
X-CRM114-Status: GOOD (  10.81  )

Rename PL080 DMA controller device node name to the expected one.

The issue was reported by a dt binding checker:

    dma@31000000: $nodename:0: 'dma@31000000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index a38f3c6dbe47..2236901a0031 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -77,7 +77,7 @@ mlc: flash@200a8000 {
 			status = "disabled";
 		};
 
-		dma: dma@31000000 {
+		dma: dma-controller@31000000 {
 			compatible = "arm,pl080", "arm,primecell";
 			reg = <0x31000000 0x1000>;
 			interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.49.0


