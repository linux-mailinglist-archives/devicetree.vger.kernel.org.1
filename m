Return-Path: <devicetree+bounces-173819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F45AA99A3
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 18:48:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5781188B78A
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 16:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5596268FD5;
	Mon,  5 May 2025 16:48:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B08EA61FF2
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 16:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746463686; cv=none; b=MlPRC4M6Jm3aDxRX3At1Z1YwqY7MYxnmzGfXnsvuMvwoARcBgrD+AWEAuCO5RGZpLQX1dYEkWqs69+3HpxvOKyyRCwYhaj5jxILHv3MsvAOSqFt34/XdoMrnyaydibUX7GHibzN87QI0fcvxnDPNLe31eDz8wBVXPQNW/00wWB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746463686; c=relaxed/simple;
	bh=GYiUqu9W+RNyJTt9zqndg5EmsRnLvNotMFXCCJHlIJM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GtSlIdi6eK26MVWd2r2OqzGP5z4fH2gdRcY0Jrb+DeoCOOFlp4mmzjauFDlysCUHJaZ5TQcVCEf3qlNLsGjw4FgJ0NWoAx6+5qfYX7+B+2awtF2TgbGpkU2yepdNztr60YyTtc7Ke5YVr4wCeYUI02h10Sd35a+6sNdRonUY5bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF0AF1063;
	Mon,  5 May 2025 09:47:53 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 90B0E3F673;
	Mon,  5 May 2025 09:48:01 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Cody Eksal <masterr3c0rd@epochal.quest>,
	Philippe Simons <simons.philippe@gmail.com>,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: Add Liontron H-A133L board name
Date: Mon,  5 May 2025 17:47:28 +0100
Message-ID: <20250505164729.18175-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.46.3
In-Reply-To: <20250505164729.18175-1-andre.przywara@arm.com>
References: <20250505164729.18175-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Liontron H-A133L is an industrial development board using the
Allwinner A133 SoC.

Add its compatible name to the list of valid board names.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index cb354c2c61b26..7807ea6132589 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -492,6 +492,11 @@ properties:
           - const: lamobo,lamobo-r1
           - const: allwinner,sun7i-a20
 
+      - description: Liontron H-A133L
+        items:
+          - const: liontron,h-a133l
+          - const: allwinner,sun50i-a100
+
       - description: HAOYU Electronics Marsboard A10
         items:
           - const: haoyu,a10-marsboard
-- 
2.46.3


