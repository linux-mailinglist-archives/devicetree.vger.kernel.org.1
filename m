Return-Path: <devicetree+bounces-102034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BE1975307
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:58:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1829F1C22046
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:58:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 451D77E591;
	Wed, 11 Sep 2024 12:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="IzzA2EBo"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED9F1885B4
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 12:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726059512; cv=none; b=QxI5nd/MNd8CotXN+G3V7efuG2WsB5jhEw/Q6gx7SMk2ga/3Gd6D/4G5jidWg4f+NDW+Rm2tX/chCv1t4D8EVjSPyGy0dllMcDkwqNuavHHvYy0DqSIUKBKJj5Nc8OFr9MxjHcsYU0aP075MdDCQ78XNItIOJqF8OsTgPuMsi9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726059512; c=relaxed/simple;
	bh=BH2ZrelUubVJCF6wTv9S6Cqu7h+JqUuIXV9011jFZ24=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ldgKhQyNwOmx8bUcqnv3BaAeZhatH8Apfoc7+bfOCWJ07hEJRUCi+hOCgYawAEK4tK5vbpCE+OzvLAhl8pn0ec5S7mUZ2EbNysBndBEtDCMg6MNfkmgnuyorAklhEoJpPk4Ez5U/9/mFWi12L5d1EGHPeIeo/X6nhIbwpR4KPy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=IzzA2EBo; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1726058586; x=1728650586;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BH2ZrelUubVJCF6wTv9S6Cqu7h+JqUuIXV9011jFZ24=;
	b=IzzA2EBoZBVxYVSe5VLEUjJJbMIvYF78OHPhnguODwpt/SYKQg5DnHXllKAJ0Moi
	rnRc5OW3K/WQlDXlw3AyTQQNd4d8lCAwVAkj/oNzqOYm8WdSB0C82U/pfeF+VAgg
	4MvhsT3LJINycvNIOUiATDhRIGT+2F2k1uEwwpNgVS0=;
X-AuditID: ac14000a-4577e70000004e2a-e0-66e1905995fa
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id EA.35.20010.95091E66; Wed, 11 Sep 2024 14:43:05 +0200 (CEST)
Received: from augenblix2.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Wed, 11 Sep
 2024 14:43:05 +0200
From: Wadim Egorov <w.egorov@phytec.de>
To: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
CC: <d.schultz@phytec.de>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
Subject: [PATCH 2/3] arm64: dts: ti: k3-am64-phycore-som: Add M4F remoteproc nodes
Date: Wed, 11 Sep 2024 14:42:50 +0200
Message-ID: <20240911124251.702590-2-w.egorov@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240911124251.702590-1-w.egorov@phytec.de>
References: <20240911124251.702590-1-w.egorov@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrELMWRmVeSWpSXmKPExsWyRpKBRzdywsM0g02frS3W7D3HZDH/yDlW
	i+WfZ7NbvJx1j81i0+NrrBaXd81hs3jz4yyTxf89O9gtut+pW/w/+4Hdgctj06pONo/NS+o9
	+rtbWD2O39jO5PF5k1wAaxSXTUpqTmZZapG+XQJXxs3LZ1gKXghUvDm5nLWB8SRvFyMnh4SA
	icTttbuYuxi5OIQEljBJHD/1gA3Cecwosf7IXiaQKjYBdYk7G76xgiREBNoYJVb+vQ5WxSww
	iVHiwr+fLCBVwgJBEosbHoHZLAKqEl8vr2UHsXkFLCSebN7FDrFPXmLmpe9gNqeApcTzkxvZ
	QGwhoJpLj1ug6gUlTs58AjaHGai+eetsZghbQuLgixfMEPXyEi8uLWeBmTnt3GtmCDtUYuuX
	7UwTGIVmIRk1C8moWUhGLWBkXsUolJuZnJ1alJmtV5BRWZKarJeSuokRFC8iDFw7GPvmeBxi
	ZOJgPMQowcGsJMLbb3cvTYg3JbGyKrUoP76oNCe1+BCjNAeLkjjv6o7gVCGB9MSS1OzU1ILU
	IpgsEwenVAOji1SZ+/3N6nNmV1eu3MR2PCxX+lDynKKehM3tk4wZ1jJcDfuxvfRfm0ze51+h
	/Mvqyp9NSc9drq8rz2A8LcXz9TKGa5/D3Xlr9mf4Bxwyu/lxzjrtQwVRPL3XpVLuKUyprI9N
	fXNevbKa7+U2zeaHmzfPS4nmUtVe8vZN+w8u5vLfEzfWS21XYinOSDTUYi4qTgQAAnLk+IUC
	AAA=

The AM64x SoCs of the TI K3 family have a Cortex M4F core in the MCU
domain. This core can be used by non safety applications as a remote
processor. When used as a remote processor with virtio/rpmessage IPC,
two carveout reserved memory nodes are needed. The first region is used
as a DMA pool for the rproc device, and the second region will furnish
the static carveout regions for the firmware memory.

The current carveout addresses and sizes are defined statically for
each rproc device. The M4F processor does not have an MMU, and as such
requires the exact memory used by the firmware to be set-aside.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 .../boot/dts/ti/k3-am64-phycore-som.dtsi      | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
index ea7c58fb67e2..ea3ce3338783 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
@@ -87,6 +87,18 @@ main_r5fss1_core1_memory_region: r5f-memory@a3100000 {
 			reg = <0x00 0xa3100000 0x00 0xf00000>;
 			no-map;
 		};
+
+		mcu_m4fss_dma_memory_region: m4f-dma-memory@a4000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa4000000 0x00 0x100000>;
+			no-map;
+		};
+
+		mcu_m4fss_memory_region: m4f-memory@a4100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa4100000 0x00 0xf00000>;
+			no-map;
+		};
 	};
 
 	leds {
@@ -242,6 +254,15 @@ mbox_main_r5fss1_core1: mbox-main-r5fss1-core1 {
 	};
 };
 
+&mailbox0_cluster6 {
+	status = "okay";
+
+	mbox_m4_0: mbox-m4-0 {
+		ti,mbox-rx = <0 0 2>;
+		ti,mbox-tx = <1 0 2>;
+	};
+};
+
 &main_i2c0 {
 	status = "okay";
 	pinctrl-names = "default";
@@ -335,6 +356,13 @@ &main_r5fss1_core1 {
 			<&main_r5fss1_core1_memory_region>;
 };
 
+&mcu_m4fss {
+	mboxes = <&mailbox0_cluster6 &mbox_m4_0>;
+	memory-region = <&mcu_m4fss_dma_memory_region>,
+			<&mcu_m4fss_memory_region>;
+	status = "okay";
+};
+
 &ospi0 {
 	status = "okay";
 	pinctrl-names = "default";
-- 
2.34.1


