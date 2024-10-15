Return-Path: <devicetree+bounces-111708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4635699FBAB
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 00:48:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B9483B21BCE
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 22:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6FFB1E00BE;
	Tue, 15 Oct 2024 22:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="IvMKWL0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257DD1B6D07
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 22:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729032504; cv=none; b=TOUQcvZO9r8qvPU8+1cJS3rBNWr8wxrLcMZpnIn1r2n/D+3JT97qeZkAz13DHWF6XX2ex48b0Iq2CFlA/om8ZirU5voOiObuvRChqzldyTmvJrNqmQ05WgEeUlgdl45UEs5ZHnGAg9+oj73PjIsEKYwng1moEXzSo6sIdpP1VcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729032504; c=relaxed/simple;
	bh=IYeFdHGq7UAgvdz935F3N18dCTBfJ1d06OlXs20blCs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BpCQGvfSw03zMBDDdPzEdLSAD18/STm1AiPpK1oPvRjYyM9q4fWVsY8Yc1WrRJHSQIVdLsX2u9T4T5AgzE32699lPJn5X+Kf5aNUvr6tSOXfMlVBz16nnx4bJx/ENE+JpubLvvoNeYpnW/okBjjNC+redRVX+kWkGYMlQ60+2I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=IvMKWL0a; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=t8e73g0ZwOkpJ7ice19ovIlI3gus9d/Y5WjZUeume8c=; b=IvMKWL
	0a1TO3Ekz7XKjvwkvvabl7iw5fRsl+9sQDdu6jiyU0zEneO6xK1qp9Lf5ABd8K+Z
	38knRxpefLr1xHn0kKjT1uAQehUZAgC5OBn4t9IHAJ/UnoI2yybQLYLpepqmi9pT
	lKtlRM4G8kZIvh9zbKU4PFZIOuhLQotqJ7CKckoxfRjyX322U/+lsxhBywpy+Dzs
	6VVZDQJwSgPqto/4td5l2YEVqCN3sWaqY9K8oo/jGaqefoPnJVIOMRUP68ePFGlH
	rPfy1LxDlO5m6HEqMnGfDw8r8UFCDnljp3MPGVqytOG2Ofdr9uepHb88fZN4v32r
	xr/bsAVeXrcWsA0w==
Received: (qmail 2861195 invoked from network); 16 Oct 2024 00:48:19 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 16 Oct 2024 00:48:19 +0200
X-UD-Smtp-Session: l3s3148p1@Zn3lv4skvLIujnvF
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: renesas: r7s72100: add dma entries for MMCIF
Date: Wed, 16 Oct 2024 00:48:03 +0200
Message-ID: <20241015224801.2535-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241015224801.2535-4-wsa+renesas@sang-engineering.com>
References: <20241015224801.2535-4-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r7s72100.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r7s72100.dtsi b/arch/arm/boot/dts/renesas/r7s72100.dtsi
index 02ca28b521df..b831bbc431ef 100644
--- a/arch/arm/boot/dts/renesas/r7s72100.dtsi
+++ b/arch/arm/boot/dts/renesas/r7s72100.dtsi
@@ -332,6 +332,8 @@ mmcif: mmc@e804c800 {
 				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&mstp8_clks R7S72100_CLK_MMCIF>;
+			dmas = <&dmac 0x2cc9>, <&dmac 0x2cca>;
+			dma-names = "tx", "rx";
 			power-domains = <&cpg_clocks>;
 			status = "disabled";
 		};
-- 
2.45.2


