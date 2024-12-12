Return-Path: <devicetree+bounces-130254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D63869EE623
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6FCF81887765
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 12:03:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10CE72135A3;
	Thu, 12 Dec 2024 11:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="hymluluv"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982B01F7544
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 11:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734004706; cv=none; b=Zy9ZrUJ5SDgnSgvxNaehlnZ7AD/XuG1ENMVQudhCPnFBQAhfdOMWA6Cdt2eJ6jerGyO5Rpy0O9bYMQ6VqBpXyJV4g8VvawHOXrWc9EzUVEWrnAnH4nQC61IDwYuubxwj5bvcWqOe6COAi1Ah1FT+hKG2BojcxoFR7vXIYt17BEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734004706; c=relaxed/simple;
	bh=69fGNWzCyJREg1W8CmN1cPlziufS7I1nm0dRBaIRWN8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 References; b=ZQf7YC7oWJKHyuEQdqgTO+Bvd1QmtrzSu1EWpNq1a2SCufU/G1FhFDywbY7A/mtf1jkUF1QuqIwsnsD7C/QW79MpUGKnOlkwZWXCDr5gx794A8G8EufR3u6nSEhLDn6l4yGTfUNzphtoUCxYOBqSTOV7OQfXoDgfoU7VMwIwbcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=hymluluv; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20241212115819epoutp04dbf12983293680cfc51b74fcd8a0acd3~QbBZE15F42174121741epoutp04H
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 11:58:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20241212115819epoutp04dbf12983293680cfc51b74fcd8a0acd3~QbBZE15F42174121741epoutp04H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1734004699;
	bh=18tjd2ktEzJYa4dH82gKDc5oU6OSnSI0zl/xqkXqmVc=;
	h=From:To:Cc:Subject:Date:References:From;
	b=hymluluvocD1YLWPrrXkBwuG/2z1ltWUjTC13ImRMFbVIYPNmTgG0iY9mMMbr3Pqt
	 4JHEvDV2J3bhk5RErZP3/L9sJuev64K6xD1pMMBdedR/LvJ/n6RWZ+8mQdJJZC+20C
	 B6BtDIdAJMNNCGaJJS4WH6RMCaI6rG87FkWz4/Js=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTP id
	20241212115818epcas5p240624ef4524b5d60c11e21d69d1d6ba0~QbBYdfkN_3230132301epcas5p2S;
	Thu, 12 Dec 2024 11:58:18 +0000 (GMT)
Received: from epsmges5p2new.samsung.com (unknown [182.195.38.179]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4Y89w808wqz4x9Ps; Thu, 12 Dec
	2024 11:58:16 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
	epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	A3.1D.19933.7DFCA576; Thu, 12 Dec 2024 20:58:15 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20241212115815epcas5p29fdba4ddb93d08035f422444cb826ec3~QbBVXmNp42730227302epcas5p2y;
	Thu, 12 Dec 2024 11:58:15 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20241212115815epsmtrp21d8fd2d891ade87b352b3d22ff21b372~QbBVW3Wgv3179531795epsmtrp2M;
	Thu, 12 Dec 2024 11:58:15 +0000 (GMT)
X-AuditID: b6c32a4a-c1fda70000004ddd-25-675acfd7ad71
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	50.53.18949.7DFCA576; Thu, 12 Dec 2024 20:58:15 +0900 (KST)
Received: from INBRO002811.samsungds.net (unknown [107.122.5.126]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20241212115814epsmtip2d9d9e373a3c13c47b871fba95f50445d~QbBUEv6eB2581925819epsmtip2n;
	Thu, 12 Dec 2024 11:58:13 +0000 (GMT)
From: Faraz Ata <faraz.ata@samsung.com>
To: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, alim.akhtar@samsung.com,
	rosa.pila@samsung.com, Faraz Ata <faraz.ata@samsung.com>
Subject: [PATCH v2] arm64: dts: exynosautov920: Add DMA nodes
Date: Thu, 12 Dec 2024 17:27:05 +0530
Message-ID: <20241212115709.1724-1-faraz.ata@samsung.com>
X-Mailer: git-send-email 2.46.0.windows.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCKsWRmVeSWpSXmKPExsWy7bCmpu7181HpBv9mW1k8mLeNzWL+kXOs
	FtduLGS3eDnrHpvFpsfXWC1mnN/HZPF/zw52iy8/HzA7cHhsWtXJ5rF5Sb1H35ZVjB6fN8kF
	sERl22SkJqakFimk5iXnp2TmpdsqeQfHO8ebmhkY6hpaWpgrKeQl5qbaKrn4BOi6ZeYAXaGk
	UJaYUwoUCkgsLlbSt7Mpyi8tSVXIyC8usVVKLUjJKTAp0CtOzC0uzUvXy0stsTI0MDAyBSpM
	yM74f3Mmc8EniYq1e3kaGNeIdDFyckgImEi8/DmHqYuRi0NIYDejxJwLr6CcT4wS7f+7WSGc
	b4wSM552ssC0tO9byAaR2MsocXHqPnYI5zujxN5d7xlBqtgE1CVm3jgC1iEikCExZ+sjVhCb
	WaBWYsnPj2A1wgK2Ev2TnrOB2CwCqhK7Hn8Eq+cVsJR4vfI3I8Q2TYm1e/cwQcQFJU7OfMIC
	MUdeonnrbGaQxRICp9glpv++C3Wei8SFlilMELawxKvjW9ghbCmJz+/2skHYPhKTj34DWsAB
	ZGdI3FkLDQx7idULzrCChJmB9q7fpQ+xik+i9/cTJohqXomONiGIalWJU42XoQZKS9xbco0V
	wvaQuLvuHlhcSCBWYu20pawTGOVmIXlgFpIHZiEsW8DIvIpRMrWgODc9tdi0wCgvtRwelcn5
	uZsYwclPy2sH48MHH/QOMTJxMB5ilOBgVhLhvWEfmS7Em5JYWZValB9fVJqTWnyI0RQYqhOZ
	pUST84HpN68k3tDE0sDEzMzMxNLYzFBJnPd169wUIYH0xJLU7NTUgtQimD4mDk6pBibNg/I3
	Xm49OHnWPGYNtS1nw5j2HpIT7mzyTHmroHdu9THmeGGTaRe7Nn3iujJvIeMPPo/YFSEfDrsd
	k3l82E5yO7/OMy/XnY9vcU5umeiwhkNPzOmAk5wzg/uVvyfNywOrL33eweDz9fwlrTyBIw1b
	Syrr2zkOc2ernjuVEMW9Ji7n20P+nZ27GZqMLN33fbl/7urmj3urIp+9mWgwVTLyyssA4/bI
	k1fm3H3S+ne1lOrLUk+tMHcrkeLjh8ITvA5KsdgdYT2wfads4u2Fm9t6ZtZd/Ju0xrChu6Zx
	yyTLX5wq5/ZZHd3fZ/HzhHSr0o1snvDG9ftVPuxvTfe5cexayN6zz0tFfi/a/yRz8ml1JZbi
	jERDLeai4kQA8QVF1AcEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHLMWRmVeSWpSXmKPExsWy7bCSvO7181HpBjN6RC0ezNvGZjH/yDlW
	i2s3FrJbvJx1j81i0+NrrBYzzu9jsvi/Zwe7xZefD5gdODw2repk89i8pN6jb8sqRo/Pm+QC
	WKK4bFJSczLLUov07RK4Mv7fnMlc8EmiYu1engbGNSJdjJwcEgImEu37FrJ1MXJxCAnsZpR4
	s3sjE0RCWuL1rC5GCFtYYuW/5+wQRV8ZJeZ9agUrYhNQl5h54wgLiC0ikCPx4kwTE0gRs0Aj
	o8SO+R1gRcICthL9k56zgdgsAqoSux5/BGvgFbCUeL3yN9QGTYm1e/cwQcQFJU7OfAJWwywg
	L9G8dTbzBEa+WUhSs5CkFjAyrWKUTC0ozk3PLTYsMMpLLdcrTswtLs1L10vOz93ECA5SLa0d
	jHtWfdA7xMjEwXiIUYKDWUmE94Z9ZLoQb0piZVVqUX58UWlOavEhRmkOFiVx3m+ve1OEBNIT
	S1KzU1MLUotgskwcnFINTCIVPLwyaxxElsv0rpI5w+a9cMq/j2z+jTc+uPZfPfD/xiT+52aP
	5HIXCLAVxZ4sXnrMdLJ4B9tK522/rjiFaAo+iVp80vuVtLpMe3xE2HHF7zrMk1exP0iPmDA3
	+MLKlqVW2jE3lbMnrttR1Jyz7NxUx+6uX9dFU5ZaLM+4Ve0Vp9ndqR1fWftSsFNLUFCIO0Hk
	HmPR+kMi7tq3I4r72accuHareYr1wa8zz85azrH91/PH5nPOTjx8bo8uk27+i6wMU6mZPTF8
	UmnnrPJWKW2LPKX9aGa1QmdlpvvB09zPzOZoisbP2HHgi3T73tzHyj/1ZRJFPJKmv3MSn5kc
	kqQsdepyzu8lf+fZKFQGKrEUZyQaajEXFScCAEO++sHBAgAA
X-CMS-MailID: 20241212115815epcas5p29fdba4ddb93d08035f422444cb826ec3
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20241212115815epcas5p29fdba4ddb93d08035f422444cb826ec3
References: <CGME20241212115815epcas5p29fdba4ddb93d08035f422444cb826ec3@epcas5p2.samsung.com>

ExynosAutov920 SoC has 7 DMA controllers. Two secure DMAC
(SPDMA0 & SPDMA1) and five non-secure DMAC (PDMA0 to PDMA4).
Add the required dt nodes for the same.

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Faraz Ata <faraz.ata@samsung.com>
---
Changes in v2:
- Fixed review comments from Krzysztof and Tudor as below,
- Fixed typo s/adds/add, s/node/nodes.
- Changed DMA base addresses to lowercase hex.
- Link to v1: https://patchwork.kernel.org/project/linux-samsung-soc/patch/20241204122335.1578-1-faraz.ata@samsung.com/
---
 .../arm64/boot/dts/exynos/exynosautov920.dtsi | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
index c759134c909e..dd984dc2bdcd 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
@@ -193,6 +193,69 @@ gic: interrupt-controller@10400000 {
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		spdma0: dma-controller@10180000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x10180000 0x1000>;
+			interrupts = <GIC_SPI 918 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_misc CLK_MOUT_MISC_NOC_USER>;
+			clock-names = "apb_pclk";
+			#dma-cells = <1>;
+		};
+
+		spdma1: dma-controller@10190000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x10190000 0x1000>;
+			interrupts = <GIC_SPI 917 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_misc CLK_MOUT_MISC_NOC_USER>;
+			clock-names = "apb_pclk";
+			#dma-cells = <1>;
+		};
+
+		pdma0: dma-controller@101a0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x101a0000 0x1000>;
+			interrupts = <GIC_SPI 916 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_misc CLK_MOUT_MISC_NOC_USER>;
+			clock-names = "apb_pclk";
+			#dma-cells = <1>;
+		};
+
+		pdma1: dma-controller@101b0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x101b0000 0x1000>;
+			interrupts = <GIC_SPI 915 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_misc CLK_MOUT_MISC_NOC_USER>;
+			clock-names = "apb_pclk";
+			#dma-cells = <1>;
+		};
+
+		pdma2: dma-controller@101c0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x101c0000 0x1000>;
+			interrupts = <GIC_SPI 914 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_misc CLK_MOUT_MISC_NOC_USER>;
+			clock-names = "apb_pclk";
+			#dma-cells = <1>;
+		};
+
+		pdma3: dma-controller@101d0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x101d0000 0x1000>;
+			interrupts = <GIC_SPI 913 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_misc CLK_MOUT_MISC_NOC_USER>;
+			clock-names = "apb_pclk";
+			#dma-cells = <1>;
+		};
+
+		pdma4: dma-controller@101e0000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x101e0000 0x1000>;
+			interrupts = <GIC_SPI 912 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu_misc CLK_MOUT_MISC_NOC_USER>;
+			clock-names = "apb_pclk";
+			#dma-cells = <1>;
+		};
+
 		cmu_peric0: clock-controller@10800000 {
 			compatible = "samsung,exynosautov920-cmu-peric0";
 			reg = <0x10800000 0x8000>;
-- 
2.34.1


