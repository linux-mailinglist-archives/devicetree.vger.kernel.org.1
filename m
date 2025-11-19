Return-Path: <devicetree+bounces-240181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC19C6E506
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:46:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4D7CE4F0D92
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236C33570B1;
	Wed, 19 Nov 2025 11:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="E5MA3Nyb"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAE73563F8
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763552382; cv=none; b=P8VlGunWXNVczkUO4AZ5UDZStJFDeMrAdAYEZVsTlhMroHQ8HrOukai4wQf3ispzeo4Bff/2cBx6PKiNI0y0dj3LVkezA3yfgBTstHj/8TgczteVRLOpDQAzODRv2BF32fhjAtmLIPgyCtJeVwbEUUcEyXkldbaHt8kL0BOrBhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763552382; c=relaxed/simple;
	bh=k5hIADBypGcybnfbSM8TRse78kpyDwoADTio53/HvOU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=bPxTJ5XgUp9FeyzDgCNbrK0dabCZpn1THVJ2OEkjLR+404xGYxWU1/Lk2GeHLLiZlMj1/qY6aBDtCkrOdXcNU36toOcr7i593DoT1u4lsuf9cgGfr0c/EwMmtF0SI9sr7O7SDvdUYpY4ib2viplJA6QabVWqk8gMeO9u4zJjNDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=E5MA3Nyb; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20251119113938epoutp02fd2c438d44bd0219bab75b9c4586b0f3~5ZYtxKO9f1126711267epoutp02X
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:39:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20251119113938epoutp02fd2c438d44bd0219bab75b9c4586b0f3~5ZYtxKO9f1126711267epoutp02X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1763552378;
	bh=CcQiGlovkeFcjFc5JZjlVmKquIqKzeXBNrL2Z5Uqv8g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=E5MA3Nybls5NWTKxKJJrK7YLDq/pPmKZ85LiwBgcVMNz8qRbMADITrqCUt6vFIpL+
	 8PH3urBGxw53s+Fs93APcFMVzCNdBNslCUEN9zpZJNBHcidoOPeVyQrmfx8Dqsp8FT
	 dMSaR3ODckgopnJwd2hB2frinp8rFGgzGK+fX0dk=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20251119113937epcas5p43f50181cd74baf3daf44533219033400~5ZYs3nd322804328043epcas5p4X;
	Wed, 19 Nov 2025 11:39:37 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.89]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4dBKJm5DwVz6B9m5; Wed, 19 Nov
	2025 11:39:36 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20251119113935epcas5p33c4cac5a961ce334bde5988ef74b09ed~5ZYrC1mxs0938209382epcas5p3B;
	Wed, 19 Nov 2025 11:39:35 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20251119113931epsmtip1c63488c77b1b53387ef8149f3ec9e37c~5ZYmxJzlr0166601666epsmtip1U;
	Wed, 19 Nov 2025 11:39:31 +0000 (GMT)
From: Raghav Sharma <raghav.s@samsung.com>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com,
	alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org,
	robh@kernel.org, conor+dt@kernel.org, sunyeal.hong@samsung.com,
	shin.son@samsung.com
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, chandan.vn@samsung.com,
	dev.tailor@samsung.com, karthik.sun@samsung.com, Raghav Sharma
	<raghav.s@samsung.com>
Subject: [PATCH 3/3] arm64: dts: exynosautov920: add CMU_MFD clock DT nodes
Date: Wed, 19 Nov 2025 17:17:44 +0530
Message-Id: <20251119114744.1914416-4-raghav.s@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251119114744.1914416-1-raghav.s@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20251119113935epcas5p33c4cac5a961ce334bde5988ef74b09ed
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251119113935epcas5p33c4cac5a961ce334bde5988ef74b09ed
References: <20251119114744.1914416-1-raghav.s@samsung.com>
	<CGME20251119113935epcas5p33c4cac5a961ce334bde5988ef74b09ed@epcas5p3.samsung.com>

Add required dt node for cmu_mfd block, which provides
clocks for MFD IP

Signed-off-by: Raghav Sharma <raghav.s@samsung.com>
---
 arch/arm64/boot/dts/exynos/exynosautov920.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
index 6ee74d260776..02bf2ca52fdc 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
@@ -1462,6 +1462,17 @@ cmu_mfc: clock-controller@19c00000 {
 				      "wfd";
 		};
 
+		cmu_mfd: clock-controller@19e00000 {
+			compatible = "samsung,exynosautov920-cmu-mfd";
+			reg = <0x19e00000 0x8000>;
+			#clock-cells = <1>;
+
+			clocks = <&xtcxo>,
+				 <&cmu_top DOUT_CLKCMU_MFD_NOC>;
+			clock-names = "oscclk",
+				      "noc";
+		};
+
 		pinctrl_aud: pinctrl@1a460000 {
 			compatible = "samsung,exynosautov920-pinctrl";
 			reg = <0x1a460000 0x10000>;
-- 
2.34.1


