Return-Path: <devicetree+bounces-45633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D06862904
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 04:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C00D281F77
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 03:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BCFE7465;
	Sun, 25 Feb 2024 03:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="AUkUiFz3"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FE85C83
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 03:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708832066; cv=none; b=i1rK6ZW2UKp6zRfXACvpSE8PZ33AwPUeGGtYTnh8ZlsTrBeQylPhT3wZHfxd2fN1kTl0AG6K9VgSUqYD3oGxdA5n6m+uqudEInvYQv7SkSt8lcbSH4uPSu6Wz/neASYqcj/IV28ATHMCS0CuM48W8D8hegblZYMMjdbdUb+B9bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708832066; c=relaxed/simple;
	bh=3+JzArUDujqjI4Zb41bAjZyik7+oSRSBMgH2T7+B/w4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UcOhpptLQXLuL7zkQLKfnaTdlWMiOeuKj3U78d4YO8TEOOoZaJztqAqYa046gUP4LKbRhlppqiO/8Fd/tvY1gD8tMA125xLkW3zfmpk1zGB05F3t8An1ImziKWTbK1Vj2CdFQ3fSM3xu7FzqkRgpe5bKD72cC7PwX9dDTRuaFJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=AUkUiFz3; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 14A8287D5C;
	Sun, 25 Feb 2024 04:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1708832055;
	bh=N3KTScLAICd2PiZbTeOAyPrVI26JSW/+lk2PTDfFH1M=;
	h=From:To:Cc:Subject:Date:From;
	b=AUkUiFz3B8hgEBakN8sxCzkgPEPpn3V5mpNfRCobeNh9GmGnQLLIEKIoluiiMkLqf
	 ir4EwXoddGc0V6lXglA1c6pljiao2wi19bKKXfPTFJu19qRrLy9dxiy++yy8jqD3Y4
	 cgCXzYqAtwyi/GqlahGHFJK8K5zGmbIVp8EhPQGpHsSaNNtD1zleGnHhfmXORQ63l7
	 rb1bNAd5EU0yhhYg94ceaJ886X6TsHSlXkiU5tSW4sUu31yHeANW92ewpjdVrYtr7G
	 0iL4CppOjR89TKLEMJaG55lHI/eRdQqo//adOTlGPz4/ck4td+QQoExAYDsjAupqba
	 0fVYMJXKHNIIg==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: [PATCH] arm64: dts: imx8mp: Fix TC9595 reset GPIO on DH i.MX8M Plus DHCOM SoM
Date: Sun, 25 Feb 2024 04:33:42 +0100
Message-ID: <20240225033359.416169-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The TC9595 reset GPIO is SAI1_RXC / GPIO4_IO01, fix the DT accordingly.
The SAI5_RXD0 / GPIO3_IO21 is thus far unused TC9595 interrupt line.

Fixes: 20d0b83e712b ("arm64: dts: imx8mp: Add TC9595 bridge on DH electronics i.MX8M Plus DHCOM")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index d8963f32ec84c..1f3fbfb9749d3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -255,7 +255,7 @@ tc_bridge: bridge@f {
 				  <&clk IMX8MP_AUDIO_PLL2_OUT>;
 		assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL2_OUT>;
 		assigned-clock-rates = <13000000>, <13000000>, <156000000>;
-		reset-gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio4 1 GPIO_ACTIVE_HIGH>;
 		status = "disabled";
 
 		ports {
-- 
2.43.0


