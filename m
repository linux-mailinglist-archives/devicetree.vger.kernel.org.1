Return-Path: <devicetree+bounces-69362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 754E48CFB86
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:34:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1590AB21172
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B04AD7BAE4;
	Mon, 27 May 2024 08:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="AhSQaRZl";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="BrBlwXH+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0564B5B1E4;
	Mon, 27 May 2024 08:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716798858; cv=none; b=hDZzKFR4PNa3VKP88/YDEP/24cn34d5kLfi4kOlcqQV8mjHwgvnLWJf9sdwdQbAPue0CpJ15ExbyfJ9aUQK1tpH7beVoR/uEpexI+Vh/2LYOJjaykJo/Ou3VnC12tLO/XnDP5NFBOlcF6QWmADMrQY+Md8hnELEe2E9fgPZiFFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716798858; c=relaxed/simple;
	bh=elvAq7UtGknIb6crDSiKS9oRZqkD//5l72kIWJITzhI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CZS7G/NA1/w87XsyfhrH4ASscwC1Elw8aU6I6tiF4Ty3vecLdkVbycVYuI/rcJoxQZw/CW7eBACHbhE+r1IE61/i2esQWi7coaMps1w/EBfZATEGBsskw3F6egOt76oB7IjIapFcyuh4h4WWgV8i4XAo+HbXEh8SsvDNRk0RfO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=AhSQaRZl; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=BrBlwXH+ reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1716798856; x=1748334856;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=T2u4zEaRlGBpo4Yx+BpIMgm18+yuNbm2IErR00tf+e4=;
  b=AhSQaRZl2iUIV4cIBm/YzNTRxhmaDrs8v1OrX631xTLvfFS41wD4DLde
   JK0ycHprkFLBHZGPka1K8E+uCeFv8Szkytt09pXb/5VTvnRwVHJA/kMmY
   whuTg1XqOFo065KCwNao0WJE0YHJ44giUxQbY60oBj1e2ECOZ/q4avjSM
   ZYXTl5hwTvkDy4BgHDGkD9hP3A26i5pG0sZE1h0mN3WNvACs06/TmckXn
   2tj8PwkgPrmVeqwDZI+NvF00ogFnhFgaRBPTyNcngHUfcsiLUEWGVMY0/
   QiooKni3U2isWuMTzJH7Q3cBdcBZ9QFkSOjevIpakVkVLFEzsTiZrrPrz
   A==;
X-CSE-ConnectionGUID: 8vsgpL6VTwWCVQLLxj0/wA==
X-CSE-MsgGUID: RAdqJ1+nT8u3Kz6/TV/Efg==
X-IronPort-AV: E=Sophos;i="6.08,192,1712613600"; 
   d="scan'208";a="37075690"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 27 May 2024 10:34:13 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 48DA91637E4;
	Mon, 27 May 2024 10:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1716798849; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=T2u4zEaRlGBpo4Yx+BpIMgm18+yuNbm2IErR00tf+e4=;
	b=BrBlwXH+vb0bJYpSEVvH44dcHo2m7o4ZlufZo+JWmxaBrttOwlEfpW7KeO9P6LfqaqnfCE
	tnta6HaB1ohjmBzMEtiRSS82j2RKlNiIRF/WvNZB6wPhSA1R4ckr01I6uQ42p2k8HcAdUv
	gO30Fols+6nJ5tQcIEoUW7jr+i3+3rlX91fXaill3BZbpOIrWNangmtkoKYOY4ga7jfLt4
	yBw/hqlBMOBEYLnF2LK+o4zU26vfR1yplKurEf29Xr/o2tquS7KT/WYewuVuAssgphLxpz
	WIeXD4BqXBgsW2tv8uE6XEKpzRuUFjQoCuYQTnDD7pHL4pXKGEgSjH1rlv20Qw==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Lucas Stach <l.stach@pengutronix.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/2] arm64: dts: imx8mp: Add imx8mp-specific irqsteer compatible
Date: Mon, 27 May 2024 10:34:02 +0200
Message-Id: <20240527083402.30895-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240527083402.30895-1-alexander.stein@ew.tq-group.com>
References: <20240527083402.30895-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

i.MX8MP irqsteer has power-domain support, so use a dedicated compatible.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 8eb9f24007d00..fdaf7d5314384 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1996,7 +1996,7 @@ hdmi_blk_ctrl: blk-ctrl@32fc0000 {
 			};
 
 			irqsteer_hdmi: interrupt-controller@32fc2000 {
-				compatible = "fsl,imx-irqsteer";
+				compatible = "fsl,imx8mp-irqsteer", "fsl,imx-irqsteer";
 				reg = <0x32fc2000 0x1000>;
 				interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 				interrupt-controller;
-- 
2.34.1


