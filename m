Return-Path: <devicetree+bounces-249317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C13D5CDAC04
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 23:25:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 440ED30131CA
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 22:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1A52F9984;
	Tue, 23 Dec 2025 22:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="uRU49PUn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6FD145B3E;
	Tue, 23 Dec 2025 22:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766528703; cv=none; b=lmonVEb56MOccjBRlB5tO2/D7LSQMbxtgpU3Mw3tZo8vywuoisSVKxoa0dwjuuVBNZngvAqyrH92yr3ZQsdNfrHLsQgFcCVlMSVJSDy1gE5MdVLG4YKVohsRc2qOXuC0KG6RY5j7ECa8EDSBbhpSPrmVt6+0bQ+2ip0wILxncgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766528703; c=relaxed/simple;
	bh=/UhzCUqmK4qUQyWOJNX0MMLccQy5CJJj5Cms+KWwWDI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cTuCpWK0xTjQaG/vTOQ7lzoD+HOS2o0LSGXUKuPXUDuvXekz8qmpM/RISPXb/dXAo3sA7vV3Sv5k9qzbUXTpXjuo+rG0xmKwRGjNOwNzdcUAIxa5EOru1wjNzZd1V2SbTGDS61zaCmW5BlCGNrP/lanVVjRmhcmctzTNzTr42cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=uRU49PUn; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=zesieDMS+8jPaC30brfolPDkkyIu1P+PmJ186yiohqE=; b=uRU49PUnHSF4uxGmyh6FNrTZim
	VU0xUUxM3WKlb8nuTRR19m1I/zVhEPCtd/J0ulf/BZ2siXHrfx1YYMeQdi2WE6cqe6ZOAfY51EEpJ
	B7CgkXpdRfmCnuPhXEYrWZqPvYAURly5Dx5Chub6/jVH5Uq9pS3TYXd51HM/PD5jtEc2y+V+NSgR4
	Lm8ADAstRik6orcKiNjbAPT+yjoEq++ZQ9kEKd2Qdnh7sNKjzH+bfTP8l9LYqK2DSHpdjfGdpoYYL
	N7Qp9nUHM/tXHNOZ36QnZpPi4Tfrq6ECOTBWj51dl6rdoBsOigNNxGEy67RfEOnmkWgkHPsqv8Vi7
	Fzi7WUVg==;
From: Andreas Kemnade <andreas@kemnade.info>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH] ARM: dts: imx: imx6sl: fix lcdif compatible
Date: Tue, 23 Dec 2025 23:24:35 +0100
Message-ID: <20251223222435.538096-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix lcdif compatible according to bindings doc.

dtbs_check tested only, a glance at the datasheet shows that it should be
the correct fallback compatible.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/boot/dts/nxp/imx/imx6sl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
index 7381fb7f8912..13b0474aa42c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
@@ -776,7 +776,7 @@ epdc: epdc@20f4000 {
 			};
 
 			lcdif: lcdif@20f8000 {
-				compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <0 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_LCDIF_PIX>,
-- 
2.47.3


