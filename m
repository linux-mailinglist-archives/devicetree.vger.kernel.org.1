Return-Path: <devicetree+bounces-127055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1FD9E4419
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 20:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CE7028204D
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 19:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 302F11C3BE7;
	Wed,  4 Dec 2024 19:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="KgFfpaMT"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta1.migadu.com (out-184.mta1.migadu.com [95.215.58.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7813323919E
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 19:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733339227; cv=none; b=dbOEZJqc9OUj567lbtNGiWIIqwYVNh8Q3TWmwLMXUCOmJqsvP1FgyQ8UxLo2ekjPAmh2TLhtrGsQLByBTe/lscSpdQ7RFtcYbtIiwxBVOdzC3EiW0w3qcZd63+3DWU1+R4HMWQvE2CSNdLsCa8QpCoyycjZ2LgZcocb4LcHHoew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733339227; c=relaxed/simple;
	bh=apG21FKxNYbpSacX4sT2FYDMR8lU4RlroLE2wa8WqTo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JsDWBYGCX8NE/qJ3CN8L8Bm9242vm/ct1mgZYgHSBsqpawHhvf5L7upAXxJs5MVHIM2TSHs1SAQjP39yD5OnId6L+d8oc6tdaDIERBIwbczKBTXf2V2f19eo9DCd9YWNb2tQTBGuIQddoC61Ae/IIbjQphu11R0Lf2bSu3eqhHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=KgFfpaMT; arc=none smtp.client-ip=95.215.58.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1733339221;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hA1Zct/rwnmvySI7KTOv2r1Q/QKt2sFeFNVohs4OzEc=;
	b=KgFfpaMTyPV/Z3goJ/i9j09JOF0W5QDtzKQn2y8GUwYPIiLo3dfhtb03ZNguFxRFE9//Qr
	FOc4bBjTIxsPYr6NMWQ5UzcaUFsbdiEn3s0kbFQfAS2ct8HbpxbjTsUsIQL1LvPxVUd/0P
	idyWpf1FbvTzeag09O55Dndz/Wj06417MtAfueQ67q/XWSxrFALUCeMLax7B9k4lEqZ4dc
	wbeLS8Kg9NOyHgUKf9/oQMTo3GL+41NEC4S1NJ1hFfnHTU8TXprC5XwgCDhgWBG/WHUf/p
	F/xUyctTtT0EpY/6vRqSQb1VhVI659gqcIernJASTecdHYxt8/vZZLdho+IGlQ==
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
Subject: [PATCH 1/5] arm64: dts: mediatek: mt8516: fix GICv2 range
Date: Wed,  4 Dec 2024 16:05:04 -0300
Message-ID: <20241204190524.21862-2-val@packett.cool>
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

On the MT8167 which is based on the MT8516 DTS, the following error
was appearing on boot, breaking interrupt operation:

GICv2 detected, but range too small and irqchip.gicv2_force_probe not set

Similar to what's been proposed for MT7622 which has the same issue,
fix by using the range reported by force_probe.

Link: https://lore.kernel.org/all/YmhNSLgp%2Fyg8Vr1F@makrotopia.org/
Fixes: 5236347bde42 ("arm64: dts: mediatek: add dtsi for MT8516")
Signed-off-by: Val Packett <val@packett.cool>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index d0b03dc4d3f4..444429341302 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -268,7 +268,7 @@ gic: interrupt-controller@10310000 {
 			interrupt-parent = <&gic>;
 			interrupt-controller;
 			reg = <0 0x10310000 0 0x1000>,
-			      <0 0x10320000 0 0x1000>,
+			      <0 0x1032f000 0 0x2000>,
 			      <0 0x10340000 0 0x2000>,
 			      <0 0x10360000 0 0x2000>;
 			interrupts = <GIC_PPI 9
-- 
2.47.1


