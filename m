Return-Path: <devicetree+bounces-318436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W4g4HDIHRWqJ5QoAu9opvQ
	(envelope-from <devicetree+bounces-318436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:25:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C74B06ED486
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:25:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=OXWkJBtg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318436-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318436-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65B7D314D300
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5F2481FC4;
	Wed,  1 Jul 2026 12:19:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D333F481ABA;
	Wed,  1 Jul 2026 12:19:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908376; cv=none; b=QWZAm2NiAOJHLIR+J/RSKArx+r7hOXyBQsg/A7TyRu/atmMPMBm9zVEOgYc2Y4AdfJHTejvA0hgfsUrpARHfNlsSQiJufn/1qoGazwHn1o/Qx+mkky2dyVnlUcId8AfT08sVWHKaG5j2AOslQsZ6OAnkPWsQRkQMRVHp8a6xiMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908376; c=relaxed/simple;
	bh=E1CBk7APT/eenltiF4Kqbk0fUMyDWyiwKz3ErWVdHxo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iOiMLIwo32Wlbe/YrnmXQBNo1jlLbpvWQAe8CRkTLOcrBJHf47gw15tjo68ip4CVjtcMrlv6YGEqE3sUgGX+Qp+iR7EL/Yijoj0OH5PVYMfKjCQhKE+UTPytX0/Aie0v/efi8qGotp+nDk80mM5Vgx6Xa53/kRDGMg4t883YdzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OXWkJBtg; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908373;
	bh=E1CBk7APT/eenltiF4Kqbk0fUMyDWyiwKz3ErWVdHxo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OXWkJBtgYUjAz+A2EaCfYJg8FPKgJ2dp5Npivukgi+7imoGSRFNq07oR3hlyAkEpB
	 7M/zELTldgZ4ZOh49GIunPR0K8x8Ru6QBw92XH0N0A/oY+W6FWdMj/JInn83ByE9rp
	 FOCALyttzH+s258kiBzBA20+j0bj5iewk0dP5nzrxso8EGdjBmXDo0I6JwXXxH3l0i
	 DvcV8Z1+JJodtt0l2AeG5IZdd2ja75GMOCBjv5B5sGWcBpmZL/qJqw6xAyiSZNgslA
	 7oiIQkLpXiSChMwS0WWNMLxF8NrniaAzNaQEIZMXr9N2hvz+V8PcWX4ut/DjQeg9m7
	 G3T0F1Qukoe6Q==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EACEE17E116D;
	Wed,  1 Jul 2026 14:19:32 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	justin.yeh@mediatek.com
Subject: [PATCH 4/7] arm64: dts: mediatek: mt8186: Add and use UART AP_DMA controller
Date: Wed,  1 Jul 2026 14:19:26 +0200
Message-ID: <20260701121929.19374-5-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701121929.19374-1-angelogioacchino.delregno@collabora.com>
References: <20260701121929.19374-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318436-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,mediatek.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-mediatek@lists.infradead.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:kernel@collabora.com,m:justin.yeh@mediatek.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C74B06ED486

This SoC has a DMA controller (AP_DMA) that provides one channel
for each data direction (transmit and receive) for all of the
UART controllers in the SoC.

In order to increase the efficiency of data TX/RX over the UART
controllers, add the UART DMA controller and assign the right
channels to each of the three UART controllers.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index 3fa85185e2c8..3784c1f38620 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1134,6 +1134,22 @@ systimer: timer@10017000 {
 			clocks = <&clk13m>;
 		};
 
+		apdma: dma-controller@10200d80 {
+			compatible = "mediatek,mt8186-uart-dma", "mediatek,mt6577-uart-dma";
+			reg = <0 0x10200d80 0 0x80>, <0 0x10200e00 0 0x80>,
+			      <0 0x10200e80 0 0x80>, <0 0x10200f00 0 0x80>,
+			      <0 0x10200f80 0 0x80>, <0 0x10201000 0 0x80>;
+			interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 377 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 378 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 379 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 380 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 381 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_AP_DMA>;
+			#dma-cells = <1>;
+			dma-requests = <6>;
+		};
+
 		gce: mailbox@1022c000 {
 			compatible = "mediatek,mt8186-gce";
 			reg = <0 0X1022c000 0 0x4000>;
@@ -1210,6 +1226,8 @@ uart0: serial@11002000 {
 			interrupts = <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&clk26m>, <&infracfg_ao CLK_INFRA_AO_UART0>;
 			clock-names = "baud", "bus";
+			dmas = <&apdma 0>, <&apdma 1>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -1220,6 +1238,8 @@ uart1: serial@11003000 {
 			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&clk26m>, <&infracfg_ao CLK_INFRA_AO_UART1>;
 			clock-names = "baud", "bus";
+			dmas = <&apdma 2>, <&apdma 3>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -1474,6 +1494,8 @@ uart2: serial@11018000 {
 			interrupts = <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&clk26m>, <&infracfg_ao CLK_INFRA_AO_UART2>;
 			clock-names = "baud", "bus";
+			dmas = <&apdma 4>, <&apdma 5>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
-- 
2.54.0


