Return-Path: <devicetree+bounces-249567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDE6CDCE71
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4CC6C301840F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68530331206;
	Wed, 24 Dec 2025 16:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="dbtUgE2C";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="dbtUgE2C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8F01A00F0
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 16:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766595531; cv=none; b=GP8y055efNrQUkUnjWKIw2/1McJzZkKSeea/FFBUmX6GjmExeIszOi+7o5/WHbKbs0fVvab584fOEg3uU1k5Bjb4YdISWl8RxYV6pTyEaFjkgSAT/NaGO4rsdlkRgUqRhJFmOyS/SgbveJpRT6xK17fguJKTYpEzwjpXY4cntR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766595531; c=relaxed/simple;
	bh=wEFs4mTiDo0ClYnjqZcnDlX0QwitP+M2KZrX9mPhHrc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PWV3PJ6xamXrUSwgrT2JaskxJiV4O3DVBiUWI5XzyFx/Jz5VA1FRfSNLGag0JeZXy9jSOxZZ9DzFNPy3+5qrbzwR4/5tfbUu/4tAiLCt945MkSXRIFJJDCle8yJO39Czn/iyl1gB4AIBVLZQiWtDY1qP/XaPdcTxRL28frqocoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=dbtUgE2C; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=dbtUgE2C; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766595528; bh=wEFs4mTiDo0ClYnjqZcnDlX0QwitP+M2KZrX9mPhHrc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dbtUgE2CO+zOXXPZCEKY286KCynRymPPNdq7tf8Oa+rdf+isGSczP0xZjndEdA26R
	 Tp0lGhtCQDzGeM14M7kATFMV6ZEQfheVxIJB4Tv07kTSRoPMvkdIMquzEbARY6532O
	 cNwySBBQLiZtZuSvov0XLJWmQlnplamMPrb9PBsysJMAIJlzxFqtQHKgClkV5xHu0k
	 JIPyVdSykPW/elnmV4lOpyjx14wdSQZjFELZha5OsCvHPSFDkaXbUktAPF+ts90cCG
	 NrfzG4MdrjVl1HRMyJfrZd+wFkuyfiR6UUjn1TqZy3asa7w1LgxjB9GwAFeQ/CNTKA
	 eCeUqqvXnfGsw==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 665C33E837D;
	Wed, 24 Dec 2025 16:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766595528; bh=wEFs4mTiDo0ClYnjqZcnDlX0QwitP+M2KZrX9mPhHrc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dbtUgE2CO+zOXXPZCEKY286KCynRymPPNdq7tf8Oa+rdf+isGSczP0xZjndEdA26R
	 Tp0lGhtCQDzGeM14M7kATFMV6ZEQfheVxIJB4Tv07kTSRoPMvkdIMquzEbARY6532O
	 cNwySBBQLiZtZuSvov0XLJWmQlnplamMPrb9PBsysJMAIJlzxFqtQHKgClkV5xHu0k
	 JIPyVdSykPW/elnmV4lOpyjx14wdSQZjFELZha5OsCvHPSFDkaXbUktAPF+ts90cCG
	 NrfzG4MdrjVl1HRMyJfrZd+wFkuyfiR6UUjn1TqZy3asa7w1LgxjB9GwAFeQ/CNTKA
	 eCeUqqvXnfGsw==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id DF0623E8AFF;
	Wed, 24 Dec 2025 16:58:47 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: lpc32xx: change NAND controllers node names
Date: Wed, 24 Dec 2025 18:58:44 +0200
Message-ID: <20251224165845.1261926-2-vz@mleia.com>
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
X-CRM114-CacheID: sfid-20251224_165848_436591_5C3F0C63 
X-CRM114-Status: GOOD (  11.47  )

The device tree node name of NAND controllers shall be 'nand-controller',
while 'flash' name is the name of NAND chip device tree nodes.

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 206c66bdfe41..3d5a59b2886c 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -62,14 +62,14 @@ iram: sram@8000000 {
 		/*
 		 * Enable either SLC or MLC
 		 */
-		slc: flash@20020000 {
+		slc: nand-controller@20020000 {
 			compatible = "nxp,lpc3220-slc";
 			reg = <0x20020000 0x1000>;
 			clocks = <&clk LPC32XX_CLK_SLC>;
 			status = "disabled";
 		};
 
-		mlc: flash@200a8000 {
+		mlc: nand-controller@200a8000 {
 			compatible = "nxp,lpc3220-mlc";
 			reg = <0x200a8000 0x11000>;
 			interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.43.0


