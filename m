Return-Path: <devicetree+bounces-206766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4397B2D75D
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:00:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 369D756041A
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E0232DE1E4;
	Wed, 20 Aug 2025 08:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="JJrb8xlq"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B512DCC1A
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755680179; cv=none; b=tfkzg1L2sq7KyW+x4W2qba9w/caffU1bwTxFGVLwWmD8KMzO8OsZBuQL2QUv9DHXXEiOt93PuG2ieN8EN3oN+98OAK5r+yXfA9BwY/+aQ79mMcS2bi1SkzS/lwmFHEx9Kk0Vexf5oQiqCie7Y8/nL+NEWmpIqNRrfpktKhbzlNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755680179; c=relaxed/simple;
	bh=P7It3FMf29uKY5DKZnUmXnhqoBhVLO35ws15wFY52ZM=;
	h=From:Date:Subject:MIME-Version:Message-Id:In-Reply-To:To:Cc:
	 Content-Type:References; b=c1Udn5jrTOB11nAe35b+ccYoO9YzUFMsCDFLhggn68fCItOQV9htsXqD1PAZsUKfcgl7rSt0C/bPJve7U0GvEvqIQldxwYHFa1EgvfIkEgsUcHj4EvKLiDlZwezHaMF8MgOWMAA5YhqUaZ9lLV+QsdrG4gjEFLyiXUCREb4XZT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=JJrb8xlq; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250820085613euoutp0143c87b335fa288f21cbc68fc8955cd01~dbdC8vTVX0819108191euoutp01t
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:56:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250820085613euoutp0143c87b335fa288f21cbc68fc8955cd01~dbdC8vTVX0819108191euoutp01t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755680173;
	bh=VfsQJvjq5c9ev8IN+DYZ8WbeMJC6AfqTnoMPHMtlcaY=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=JJrb8xlqPmw0pORK2O6ow2zutp+fxIhJXIBnObwFO/ffULF7UEehbXIvMmjtZsI1v
	 qTCjSXPJU0wysrONwOrcwsrqukNJFdSWvd+dl+PUwGvJKzm6NvkTGxiYdnGpChbP0X
	 /W187OX+dKvz9NyBhzsKTLjhcwbxNjbUurf2/9rA=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250820085611eucas1p28b42ff015f422b418e95555d4e696521~dbdBGYjjO2080120801eucas1p2z;
	Wed, 20 Aug 2025 08:56:11 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250820085609eusmtip17cc6e9d6bf4a3cad28ebdbe29fd72020~dbdAHpkfv0460704607eusmtip1Z;
	Wed, 20 Aug 2025 08:56:09 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Wed, 20 Aug 2025 10:55:55 +0200
Subject: [PATCH v12 3/4] riscv: dts: thead: th1520: Add IMG BXM-4-64 GPU
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-apr_14_for_sending-v12-3-4213ccefbd05@samsung.com>
In-Reply-To: <20250820-apr_14_for_sending-v12-0-4213ccefbd05@samsung.com>
To: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,  Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
	<conor+dt@kernel.org>,  Michal Wilczynski <m.wilczynski@samsung.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Philipp Zabel <p.zabel@pengutronix.de>,
	Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,  Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,  David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,  Paul Walmsley
	<paul.walmsley@sifive.com>,  Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>,  Alexandre Ghiti <alex@ghiti.fr>, Ulf Hansson
	<ulf.hansson@linaro.org>,  Marek Szyprowski <m.szyprowski@samsung.com>, 
	Drew Fustini <fustini@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org,  Bartosz Golaszewski
	<bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.15-dev
X-CMS-MailID: 20250820085611eucas1p28b42ff015f422b418e95555d4e696521
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250820085611eucas1p28b42ff015f422b418e95555d4e696521
X-EPHeader: CA
X-CMS-RootMailID: 20250820085611eucas1p28b42ff015f422b418e95555d4e696521
References: <20250820-apr_14_for_sending-v12-0-4213ccefbd05@samsung.com>
	<CGME20250820085611eucas1p28b42ff015f422b418e95555d4e696521@eucas1p2.samsung.com>

Add a device tree node for the IMG BXM-4-64 GPU present in the T-HEAD
TH1520 SoC used by the Lichee Pi 4A board. This node enables support for
the GPU using the drm/imagination driver.

By adding this node, the kernel can recognize and initialize the GPU,
providing graphics acceleration capabilities on the Lichee Pi 4A and
other boards based on the TH1520 SoC.

Add fixed clock gpu_mem_clk, as the MEM clock on the T-HEAD SoC can't be
controlled programatically.

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Drew Fustini <drew@pdp7.com>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 42724bf7e90e08fac326c464d0f080e3bd2cd59b..6ae5c632205ba63248c0a119c03bdfc084aac7a0 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -225,6 +225,13 @@ aonsys_clk: clock-73728000 {
 		#clock-cells = <0>;
 	};
 
+	gpu_mem_clk: mem-clk {
+		compatible = "fixed-clock";
+		clock-frequency = <0>;
+		clock-output-names = "gpu_mem_clk";
+		#clock-cells = <0>;
+	};
+
 	stmmac_axi_config: stmmac-axi-config {
 		snps,wr_osr_lmt = <15>;
 		snps,rd_osr_lmt = <15>;
@@ -500,6 +507,20 @@ clk: clock-controller@ffef010000 {
 			#clock-cells = <1>;
 		};
 
+		gpu: gpu@ffef400000 {
+			compatible = "thead,th1520-gpu", "img,img-bxm-4-64",
+				     "img,img-rogue";
+			reg = <0xff 0xef400000 0x0 0x100000>;
+			interrupt-parent = <&plic>;
+			interrupts = <102 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk_vo CLK_GPU_CORE>,
+				 <&gpu_mem_clk>,
+				 <&clk_vo CLK_GPU_CFG_ACLK>;
+			clock-names = "core", "mem", "sys";
+			power-domains = <&aon TH1520_GPU_PD>;
+			resets = <&rst TH1520_RESET_ID_GPU>;
+		};
+
 		rst: reset-controller@ffef528000 {
 			compatible = "thead,th1520-reset";
 			reg = <0xff 0xef528000 0x0 0x4f>;

-- 
2.34.1


