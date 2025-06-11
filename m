Return-Path: <devicetree+bounces-184733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD18AD5030
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 11:40:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC2DC7A35DF
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 09:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977982609EF;
	Wed, 11 Jun 2025 09:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="UIeuaE9w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D706242D90
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 09:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749634806; cv=none; b=IPv3ZK+gSA4ZWCsmjnsxCxBZas+5rcMQQnCf4d19rgmbgGsHF0QmD/lV/D+Ql6uDxAVeybFXTnJtvOHAlj0GTFyz/RLyv0brKxTb5Xe/xuPZDL4M62dMv+iDxNCLmcyEUcjvrC0Q5kHSw4y7cEX9WZ3lk4OASB1GGjFtzsZ4muQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749634806; c=relaxed/simple;
	bh=NjJRQ447SLzo+xAwZdFav77XARwhlWa/d/7Kqo1DAOw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FMq7mZqNGbug9NKaYDxB9R7VB2CSE642bKACsQo26ecWz8jPF2lwz3rGEET7rp6uTB38eSkF67fXHtGpjx74/VMFEwHfMVnZnQ0+jZ+rVJVIz4SBY7+vsYaixjNnncFTFRsC1lPLs4B67mZOZU/sJwFXSgd7mbH69C7EHWjvFP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=UIeuaE9w; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=Kqs/H+CBtxbb23empgnvt63YytbE/B9wCPbdSONHjXk=; b=UIeuaE
	9wtiBe03LlHmbFO5bj8mrBHpnr11mo3PXBS2+jko0C6iflEyf8837tMO37wD6jMl
	8Datxw0s8UJQ8EODlFuVolcCl6mA9fKkQSqRybvDdQRmUdHaHSjl3nPq2T7P6jnN
	7DhUiC36Qijfzz4SzIWUCJRUpQ/0sl5YK4F4oDhEn1+njmRISTpPDyTLa6MYsQRU
	7e3ytNHA9IcvNrzyqUVOUA2n3/vPsOaV5VIYKmtUvHqKwbtn1oGO3d/fsX6hpLaN
	oCv+xzHEYRg3E42XFzxsESUISnVS/0CqbRNkTE69IrU/41D7b1HirjwAvfv92TYj
	Be7c3uAJGpgZ5j/w==
Received: (qmail 3186468 invoked from network); 11 Jun 2025 11:39:54 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Jun 2025 11:39:54 +0200
X-UD-Smtp-Session: l3s3148p1@3jBkmEg3+rAgAwDPXy2/ACpZfVCNKldR
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Quynh Nguyen <quynh.nguyen.xb@renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH RFC 5/7] arm64: dts: renesas: r9a08g045: Add I3C node
Date: Wed, 11 Jun 2025 11:39:29 +0200
Message-ID: <20250611093934.4208-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250611093934.4208-1-wsa+renesas@sang-engineering.com>
References: <20250611093934.4208-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Quynh Nguyen <quynh.nguyen.xb@renesas.com>

Add I3C node to RZ/G3S SoC DTSI

Signed-off-by: Quynh Nguyen <quynh.nguyen.xb@renesas.com>
[wsa: rebased, moved bus frequencies to board file]
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 35 ++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 0364f89776e6..03de06209d3c 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -272,6 +272,41 @@ channel@8 {
 			};
 		};
 
+		i3c: i3c@1005b000 {
+			compatible = "renesas,r9a08g045-i3c", "renesas,i3c";
+			reg = <0 0x1005b000 0 0x1000>;
+			clocks = <&cpg CPG_MOD R9A08G045_I3C_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_I3C_TCLK>;
+			clock-names = "pclk", "tclk";
+			interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 290 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 294 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 295 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 296 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 297 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 298 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 299 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 311 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "ierr", "terr", "abort", "resp", "cmd",
+					  "ibi", "rx", "tx", "rcv","st", "sp",
+					  "tend", "nack", "al", "tmo", "wu", "exit";
+			resets = <&cpg R9A08G045_I3C_PRESETN>,
+				 <&cpg R9A08G045_I3C_TRESETN>;
+			reset-names = "presetn", "tresetn";
+			power-domains = <&cpg>;
+			#address-cells = <3>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		vbattb: clock-controller@1005c000 {
 			compatible = "renesas,r9a08g045-vbattb";
 			reg = <0 0x1005c000 0 0x1000>;
-- 
2.47.2


