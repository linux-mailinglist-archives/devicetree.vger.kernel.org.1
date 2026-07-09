Return-Path: <devicetree+bounces-323504-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id niRgKMNlT2rSfwIAu9opvQ
	(envelope-from <devicetree+bounces-323504-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:11:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C0272EBCA
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:11:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=heZO7ECA;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323504-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323504-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 874663068102
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 09:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB786403AFD;
	Thu,  9 Jul 2026 09:09:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3D54028E9;
	Thu,  9 Jul 2026 09:09:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783588180; cv=none; b=IyYWrgAUq/zIh12tTCRdIRoKjScN+irKGQBbshTAZkWUVsLrTIfjBNVuR3MAzeOercaMHbgwr0M5hfCpQbATrR/Lihy0wN9Tl9r9vDRUjyPDBdLCAHGCtLyJmBlzIc4lweIwd2M12OY/mAUu3VaQi/6Pml/5KMO4J8bo84px25Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783588180; c=relaxed/simple;
	bh=XJ04cbJWgWpRhq2ALtYH3X1VG7FvpTh38xNtTBiLr6k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KJ0tSUUEU5++smsL9QjJVA5Bo6s9JboNYz8EH8+p7voJBP6d9ct3HdfInmVccXtysdhimz5rfNAJ5zaWwJ2IbWnyd0sTdC3ITBjIdobtvxm2CQesaeesJvepvOvbqYb7v1Lv7pLgYfwXlmfyI019D6nl7Hq8YslkZ5/+Ao+rmak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=heZO7ECA; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783588177;
	bh=XJ04cbJWgWpRhq2ALtYH3X1VG7FvpTh38xNtTBiLr6k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=heZO7ECAQ9mRKIl0Y+zBtz9ZpfQ6bM6iPmJsIPDXSATZq84aCLnhv+KhsuTW9Tkv4
	 KGVPk4G8tA37nly9kOMuul/9J4eBJdkBrBhKvyWcWwwPOUX1yQG0fEZiif+Jbijnxz
	 suk5FGjTd5Zy4K7TTIrRNvkVEcUWxLZadixPjgxEPs9Lz2PxwVKRxfcX+PcrnXoxsq
	 pG7AzOjSIqq8ZC5h8Wboos+4p5WWCps5V6fyXhlxnY8aDRLNQYog1GVwFcS1+yjHdp
	 ZpeYDGcfzz8E2tVknHSls+D01T+FaEjWLUS35OSwxNBX9KoBbaDKY1mpFd3pJPmrx3
	 42HbEcKy/pI/w==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3BACE17E0EE1;
	Thu, 09 Jul 2026 11:09:37 +0200 (CEST)
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
Subject: [PATCH v3 7/7] arm64: dts: mediatek: mt8195: Add and use UART AP_DMA controller
Date: Thu,  9 Jul 2026 11:09:24 +0200
Message-ID: <20260709090924.27056-8-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260709090924.27056-1-angelogioacchino.delregno@collabora.com>
References: <20260709090924.27056-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323504-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 51C0272EBCA

This SoC has a DMA controller (AP_DMA) that provides one channel
for each data direction (transmit and receive) for all of the
UART controllers in the SoC.

In order to increase the efficiency of data TX/RX over the UART
controllers, add the UART DMA controller and assign the right
channels to each uart controller.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 37 ++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index c72e34c57629..9aaf8b6edcb5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -904,6 +904,31 @@ spmi: spmi@10027000 {
 			assigned-clock-parents = <&topckgen CLK_TOP_ULPOSC1_D10>;
 		};
 
+		apdma: dma-controller@10220880 {
+			compatible = "mediatek,mt8195-uart-dma", "mediatek,mt6835-uart-dma";
+			reg = <0 0x10220880 0 0x80>, <0 0x10220900 0 0x80>,
+			      <0 0x10220980 0 0x80>, <0 0x10220a00 0 0x80>,
+			      <0 0x10220a80 0 0x80>, <0 0x10220b00 0 0x80>,
+			      <0 0x10220b80 0 0x80>, <0 0x10220c00 0 0x80>,
+			      <0 0x10220c80 0 0x80>, <0 0x10220d00 0 0x80>,
+			      <0 0x10220d80 0 0x80>, <0 0x10220e00 0 0x80>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_APDMA_B>;
+			#dma-cells = <1>;
+			dma-requests = <12>;
+		};
+
 		iommu_infra: infra-iommu@10315000 {
 			compatible = "mediatek,mt8195-iommu-infra";
 			reg = <0 0x10315000 0 0x5000>;
@@ -1040,6 +1065,8 @@ uart0: serial@11001100 {
 			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&clk26m>, <&infracfg_ao CLK_INFRA_AO_UART0>;
 			clock-names = "baud", "bus";
+			dmas = <&apdma 0>, <&apdma 1>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -1050,6 +1077,8 @@ uart1: serial@11001200 {
 			interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&clk26m>, <&infracfg_ao CLK_INFRA_AO_UART1>;
 			clock-names = "baud", "bus";
+			dmas = <&apdma 2>, <&apdma 3>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -1060,6 +1089,8 @@ uart2: serial@11001300 {
 			interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&clk26m>, <&infracfg_ao CLK_INFRA_AO_UART2>;
 			clock-names = "baud", "bus";
+			dmas = <&apdma 4>, <&apdma 5>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -1070,6 +1101,8 @@ uart3: serial@11001400 {
 			interrupts = <GIC_SPI 723 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&clk26m>, <&infracfg_ao CLK_INFRA_AO_UART3>;
 			clock-names = "baud", "bus";
+			dmas = <&apdma 6>, <&apdma 7>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -1080,6 +1113,8 @@ uart4: serial@11001500 {
 			interrupts = <GIC_SPI 724 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&clk26m>, <&infracfg_ao CLK_INFRA_AO_UART4>;
 			clock-names = "baud", "bus";
+			dmas = <&apdma 8>, <&apdma 9>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
@@ -1090,6 +1125,8 @@ uart5: serial@11001600 {
 			interrupts = <GIC_SPI 725 IRQ_TYPE_LEVEL_HIGH 0>;
 			clocks = <&clk26m>, <&infracfg_ao CLK_INFRA_AO_UART5>;
 			clock-names = "baud", "bus";
+			dmas = <&apdma 10>, <&apdma 11>;
+			dma-names = "tx", "rx";
 			status = "disabled";
 		};
 
-- 
2.54.0


