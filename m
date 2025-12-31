Return-Path: <devicetree+bounces-250869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA6ECEC9E7
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 22:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2438300A35C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 21:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC4F30EF88;
	Wed, 31 Dec 2025 21:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="sfVxD4Vl";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="sfVxD4Vl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A04330EF7B
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 21:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767218303; cv=none; b=A8sAVXWft05XeU2NURBjFu62vrdva+HWycgTRYWiZhZWPGj/ncn8ARz70mWlKuyIRKvHWK86pqtoGLAJ9Ym6uXhmnffEtCw/pyBJxbwcVJyN1n6dPANJ3hvWbg91OFOMz6kFFt8ptz/IN9GxzQDBTRS7Ls/J+/vfRsz1EmTynLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767218303; c=relaxed/simple;
	bh=m+mdNbHBwSu7JNOSxE57TwouE4jZO/PptGoxHs28w1A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pk7IfRT9pgMIovhJyenCnEtGD8d8DdR8vZTHoknYwskWlyD3lk96hwGDfqBqXiHZqSnrQ39jAtbfJzcEZhbGzG23gVUU5DtEFHiqYX+2wNawzh9b30Z2rurdS+a9zCFhNbC/9yn/2q5mgOt3jP1nF09ztRV5CZf0mG0jOqzVIYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=sfVxD4Vl; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=sfVxD4Vl; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218300; bh=m+mdNbHBwSu7JNOSxE57TwouE4jZO/PptGoxHs28w1A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sfVxD4Vl40LWt1+x3YeEcNvL8mp9yvmqrVrVyA5yG4lRBeFLyt+yE+ME4zStY85lc
	 91si9N7iJY7R4ShWdRp1Eul0svyEFjce+cUqyAVf53hemKUlFX64MNuPtmnWPqUqDS
	 hXE0jH001SMCk2bm+9HqJWc80UgeKxohwxu0X45ZZFSj8/ke2CxAouAAgDOvnEU+V7
	 eUNLBXorvaqE7UXiovMQ32ZH2Q2OdNOG+f41d5yQ+478+54uZ9uRvwEaJqSFFraG5X
	 FO2Gi9Y2Cd/CAFVkK12DT21RE7C5h1jn8SaU4y3B+ezlI4V9LV9ScI/EuPS4hLM1Vb
	 zShuEYBLg19RQ==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 5A6F73E99A9;
	Wed, 31 Dec 2025 21:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218300; bh=m+mdNbHBwSu7JNOSxE57TwouE4jZO/PptGoxHs28w1A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sfVxD4Vl40LWt1+x3YeEcNvL8mp9yvmqrVrVyA5yG4lRBeFLyt+yE+ME4zStY85lc
	 91si9N7iJY7R4ShWdRp1Eul0svyEFjce+cUqyAVf53hemKUlFX64MNuPtmnWPqUqDS
	 hXE0jH001SMCk2bm+9HqJWc80UgeKxohwxu0X45ZZFSj8/ke2CxAouAAgDOvnEU+V7
	 eUNLBXorvaqE7UXiovMQ32ZH2Q2OdNOG+f41d5yQ+478+54uZ9uRvwEaJqSFFraG5X
	 FO2Gi9Y2Cd/CAFVkK12DT21RE7C5h1jn8SaU4y3B+ezlI4V9LV9ScI/EuPS4hLM1Vb
	 zShuEYBLg19RQ==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id CB2A83E99AB;
	Wed, 31 Dec 2025 21:58:19 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 5/5] ARM: dts: lpc32xx: Add missing properties to I2S device tree nodes
Date: Wed, 31 Dec 2025 23:57:54 +0200
Message-ID: <20251231215754.2222308-6-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251231215754.2222308-1-vz@mleia.com>
References: <20251231215754.2222308-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251231_215820_410486_3C6531FE 
X-CRM114-Status: GOOD (  11.54  )

From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>

Add NXP LPC32xx I2S controller device tree properties in accordance to
nxp,lpc3220-i2s.yaml.

Link to the original change:
* https://lore.kernel.org/linux-arm-kernel/20240627150046.258795-7-piotr.wojtaszczyk@timesys.com/

Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
[vzapolskiy: changes to the commit message]
Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 389777ee6850..53e12679ba5b 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -238,8 +238,11 @@ spi2: spi@20090000 {
 			i2s0: i2s@20094000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x20094000 0x1000>;
+				interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk LPC32XX_CLK_I2S0>;
 				dmas = <&dma 0 1>, <&dma 13 1>;
 				dma-names = "rx", "tx";
+				#sound-dai-cells = <0>;
 				status = "disabled";
 			};
 
@@ -256,8 +259,11 @@ sd: mmc@20098000 {
 			i2s1: i2s@2009c000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x2009c000 0x1000>;
+				interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk LPC32XX_CLK_I2S1>;
 				dmas = <&dma 2 1>, <&dmamux 10 1 1>;
 				dma-names = "rx", "tx";
+				#sound-dai-cells = <0>;
 				status = "disabled";
 			};
 
-- 
2.43.0


