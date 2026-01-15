Return-Path: <devicetree+bounces-255725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8470D27789
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:26:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D292C30D4762
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACF1C2D9488;
	Thu, 15 Jan 2026 17:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b="OF3HzrUW";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=valla.it header.i=@valla.it header.b="TZ7Z9gYo"
X-Original-To: devicetree@vger.kernel.org
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B885C2D7DED;
	Thu, 15 Jan 2026 17:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=185.56.87.10
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768498907; cv=pass; b=gHrdulAt+bgWLuHsX3LN3V2UFMqIZKTzBdsUfExyBuXkvmFXl4iZgeDCNkiZA191T3jBmEgUhk3KqFRVYFtk3BImTCPRCcGopDPkhtI7dhrWGKWBfVH6F0IPLiCBGkrekltswieHFCNjBdr4eFAEyb0o/8oIEz9F8dGcwb+1JbA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768498907; c=relaxed/simple;
	bh=5/XD5yQ0m8hyHLQyOtvSUiqjwL8A3Rz39CJULnOQ52s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=j00WSihKmlnSuLeHPoQp3YTWFNCMN0xQ2sTGU74sjCw7seG9tZ2EDsaRiEwgAf5FCH/EJE2gBwTgEh/Bcr5uBZCC5ULhFyQC82oOgJRxLVkOeaNHwCgCm0LlpYUc9TawwNoherAa7HMkRhgbAHSyKLtTyjn0kYQfWJS9uuu4280=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it; spf=pass smtp.mailfrom=valla.it; dkim=pass (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b=OF3HzrUW; dkim=pass (1024-bit key) header.d=valla.it header.i=@valla.it header.b=TZ7Z9gYo; arc=pass smtp.client-ip=185.56.87.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valla.it
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-n57h.prod.antispam.mailspamprotection.com; s=arckey; t=1768498905;
	 b=FxV99l98WwFysXT9QPyjRVVSqnOfXvfo/jG0TGe6tLJ55DskMLAHBn6Nbr/pt7NTlfH2TUhrX9
	  BFbwTtk/PS7d6Wa4nBFTGGu+pSth09/Wv1HBe+a3BP07q+2W0QAmvPt0cXM4LiZCXat/D9Hj0K
	  n8tJCQMtjUzO1azMMxHjaZO1s9i2PeWIErfq9JhnaDVQrGd3ZhfAQO7wPish3GbWRWZwhptDx/
	  YC4scHVhw93MdYujuPtcyYH5f6z/6OxSdNiZlbhMg0DiCA2hNEMGBdGamSM+MvVNLm9xtQlpQL
	  dynRxMbHXZCyIGMe4SxiAzd4hvikIbKEGk3M+l2iv3GbTg==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-n57h.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-n57h.prod.antispam.mailspamprotection.com; s=arckey; t=1768498905;
	bh=5/XD5yQ0m8hyHLQyOtvSUiqjwL8A3Rz39CJULnOQ52s=;
	h=Cc:To:Message-ID:Content-Transfer-Encoding:Content-Type:MIME-Version:
	  Subject:Date:From:DKIM-Signature:DKIM-Signature;
	b=nsqPkz2nIdJOHXYcDO9/yjpmxvIOj3KQ0g2KOSjRwJK0LmvyDvIC+hI8jVV8LRrhUv0bl5Ob6s
	  gG2Ni+q8P/ryRpPMIBOTBjh2Eqkmv4n0nz0dz+g3QO+nnwUmqfI2M6Ez8sHT0Fh8rm6LiMtsDU
	  ZWaCqsVgxItsDCEjAmCoNQa/FayUpdjPBPCIbKFBMhVI+aJJBQUjLSJlRqLy97QKxhiCaFidFR
	  5uRL01wZTiOESCdK7NI/8EMrfUBlyDgMH5UnAs57Enyl5IZ3s3hOephqWXiUxVz+0W2avcEYP2
	  n6H71t3QcQAyq80DsOoL+27tvJFUhx1/BRBylWFvtji4xg==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject
	:Date:From:Reply-To:List-Unsubscribe;
	bh=jJqqqqDzvQYfjmXmI2SSP0LJ2xmIAbyCRmg3AON9Ljg=; b=OF3HzrUWLYbMeDcc8vrX0jLW0f
	pLsMTerbtVhK0IgfU8yNrB0gsPHer7YPcNngn+xz1wpX1eeSvK2S+5RcdbSpj3bfn2iOUxorG820j
	EQuI6it2vNElytb90aqc5731/S6plodY0iQ4ozSJoZLT36E0+Y0/RFh5V3WrWGfoUpUY=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-n57h.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vgRLj-000000095xG-09pR;
	Thu, 15 Jan 2026 17:41:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Cc:To:Subject:Date:From:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=jJqqqqDzvQYfjmXmI2SSP0LJ2xmIAbyCRmg3AON9Ljg=; b=TZ7Z9gYoE0x9KQFQfTCiumIhue
	cnE4MJ0WfjTdEz8W/NYBZ7Kz29i31LOBGil/USpbVC0JQzfAlYyUUr4TmXwgmnJJ5mnnLRSGL9Pnw
	STje4iDM59UVxJEbXTpSt6/KSMMKPJoKam0gWafoxaA5CAOPtiJwva2QUqUu/LPhMUM8=;
Received: from [95.248.141.113] (port=62797 helo=[192.168.178.65])
	by esm19.siteground.biz with essmtpa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <francesco@valla.it>)
	id 1vgRLb-0000000092k-3uy4;
	Thu, 15 Jan 2026 17:41:27 +0000
From: Francesco Valla <francesco@valla.it>
Date: Thu, 15 Jan 2026 18:41:10 +0100
Subject: [PATCH] arm64: dts: imx91-11x11-frdm: fix CAN transceiver gpio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-imx91_fix-v1-1-9351c3fac76a@valla.it>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0NT3czcCkvD+LTMCl1TA8sUEwNTi5QkMxMloPqColSgMNis6NjaWgB
 s/JISWwAAAA==
X-Change-ID: 20260115-imx91_fix-509d4058db64
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Francesco Valla <francesco@valla.it>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1138; i=francesco@valla.it;
 h=from:subject:message-id; bh=5/XD5yQ0m8hyHLQyOtvSUiqjwL8A3Rz39CJULnOQ52s=;
 b=owGbwMvMwCX2aH1OUIzHTgbG02pJDJmZagddFkgdyxWrnVXyX2DBGbfZSdxm7dI8ZaqPJlfwd
 SvPKRPvKGVhEONikBVTZAlZd+Penrnm39I2MD6CmcPKBDKEgYtTACYiq8Hwh5evy/zzw1K+NcuZ
 piWs/Fv79eGWeQdija/Ok/RXzNb4kMHwv8iZ9yZ7rQ+Tv7VkZaQchwWHXiHD/gqHk0/S7eZxLWP
 kBQA=
X-Developer-Key: i=francesco@valla.it; a=openpgp;
 fpr=CC70CBC9AA13257C6CCED8669601767CA07CA0EA
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: 303d4a6953d9979f43ba568160e7455b
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1vgRLj-000000095xG-09pR-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-n57h.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none

According to the HW schematic, the CAN transceiver does not have an
enable pin but a silent one. Fix the GPIO property name and polarity.

Fixes: b4bf5e55899e ("arm64: dts: freescale: Add FRDM-IMX91 basic support")

Signed-off-by: Francesco Valla <francesco@valla.it>
---
 arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts b/arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts
index 0d1acf8a55a5b4ac649fc8eb7c7aa2c0724b267d..c25561574d3fc5a9823f187c9d62eb9032b7ef7d 100644
--- a/arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts
+++ b/arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts
@@ -39,7 +39,7 @@ flexcan_phy: can-phy {
 		compatible = "nxp,tja1051";
 		#phy-cells = <0>;
 		max-bitrate = <5000000>;
-		enable-gpios = <&pcal6524 23 GPIO_ACTIVE_LOW>;
+		silent-gpios = <&pcal6524 23 GPIO_ACTIVE_HIGH>;
 	};
 
 	gpio-keys {

---
base-commit: 9b7977f9e39b7768c70c2aa497f04e7569fd3e00
change-id: 20260115-imx91_fix-509d4058db64

Best regards,
-- 
Francesco Valla <francesco@valla.it>


