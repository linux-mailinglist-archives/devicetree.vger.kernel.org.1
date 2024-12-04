Return-Path: <devicetree+bounces-127059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 722E09E4422
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 20:08:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 071C5283B36
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 19:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AFEC1C3C01;
	Wed,  4 Dec 2024 19:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="agI3ERp/"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F9D1C3BF5
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 19:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733339256; cv=none; b=aphmARgUYcdpPekqCQ3K6KqYPn6chcKmpQN8L7WATKZ8e+RG/4i8dXZXOMZv+rzG9Jy3DM1JOWRYNUW0RG4FJ3IFu5mkiOCqgaTVGAd5RxNF8ulfeGMHa5rd/C1GzYZoLr2BDAzZeaEygDv5aMgS0fRbcxDB7YhH/0Da1sIiNR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733339256; c=relaxed/simple;
	bh=AI7XLVFzEzY5wWdqwbkqdkWKgNZuzYTsYopnNF2mj+0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C4HaPBruTUrHj4J6dVOr04eXLaweke5zG0tq5D0+8o1JBO60d5hnsRRasjmRujZsJTLW4Rj9yv60QhvNqpkZ9VjhGdMBlvwG1eubXnZHmlBLuVsF8h2+qfo8gL71cHcZEddo2zdYIoUSWP9kftme5K4AoAO32QvRjRzdaKV8WmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=agI3ERp/; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1733339253;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=42ELpOH5Qo1NSXKOzoDjJnFG2AmNC61cPGL5UWKFmqU=;
	b=agI3ERp/r5e409B96kRDTranILhj9qOcVh/fpjlqRK7ao6K4JxofakzHN3JPthCW1CHzLQ
	zI1ofe+UcBUB8A0XyazJFcWahUXmejP1ZqmX1psLHGNoNUqY6haYJJX9AIpkw+NNJ6SKgS
	ELeQC0BKsYz3rxXwMiUcLW6OlVGn7KIF3dJawAX7CKr5X3Ed11MkSyimcmZcWgT0+0VtlZ
	qm1DR06IaPyGQdnlr47E6rgIUPvQYxPmR2ksHEiA8ph0+c3He7YjAGBEvaFCizL3kQPq5k
	VFCarITlR4BqJubPjjQDwkY9C+00WiPLgEm0Df9o18o2ZMiZQHP8WD8MCIsA+w==
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Fabien Parent <fparent@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 5/5] arm64: dts: mediatek: mt8516: add keypad node
Date: Wed,  4 Dec 2024 16:05:08 -0300
Message-ID: <20241204190524.21862-6-val@packett.cool>
In-Reply-To: <20241204190524.21862-1-val@packett.cool>
References: <20241204190524.21862-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add a keypad matrix node for the MT8516/MT8167 SoC.

Signed-off-by: Val Packett <val@packett.cool>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index e30623ebac0e..3beb9f74ec79 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -220,6 +220,16 @@ timer: timer@10008000 {
 			clock-names = "clk13m", "bus";
 		};
 
+		keypad: keypad@10002000 {
+			compatible = "mediatek,mt6779-keypad";
+			reg = <0 0x10002000 0 0x1000>;
+			wakeup-source;
+			interrupts = <GIC_SPI 149 IRQ_TYPE_EDGE_FALLING>;
+			clocks = <&clk26m>;
+			clock-names = "kpd";
+			status = "disabled";
+		};
+
 		syscfg_pctl: syscfg-pctl@10005000 {
 			compatible = "syscon";
 			reg = <0 0x10005000 0 0x1000>;
-- 
2.47.1


