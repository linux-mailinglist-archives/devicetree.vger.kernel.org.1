Return-Path: <devicetree+bounces-43957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A3985C002
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF1821F24A19
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 15:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55852762ED;
	Tue, 20 Feb 2024 15:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="XHT8V0Zv";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="sb3353eq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB5E762CC
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 15:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708443229; cv=none; b=i+kZVIZBlLte7VAb6uTf1n6tuz8qkUEBT5K+BC30fkrPpqTnrcAJCzKbxe4Z0WIaz1VEvl//wKmZu71h7edc19SU6ABmZzGJzCNG9GTSuADNb7zj6vhrhZKsTHVhXQwsTH8E1F1m/69EGAGXuxyVDXc1fxivfYhuHfAYSonZ1N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708443229; c=relaxed/simple;
	bh=efvt8RghXTaK1FMqP+3DoePPnIMq4YEfsABSWedKuBg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fF+XgiPsoY1+pLfmaHOObjdmujMP/YNTocOea1znUl7Xp+cnOfeAHuH9EfmA6sLDDBZlomajNkEga/wm0w6WnA1KXIuquYMsm8u8uMZA85n+YGOgILVq+L0x01hEXL/Md3PjM8UGsn2gfkmVafqUkJKybhEkT9i2bB28kkSSfaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=XHT8V0Zv; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=sb3353eq reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708443226; x=1739979226;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=qohCGHsyRdUwOe6AkBX/8MWBbEcVleQTJswxHaL5TeI=;
  b=XHT8V0Zvp0Q7NM/xB71TDX4xfabi8CY+qi8KrMhfqdvjAA4KvcJ0Z/7T
   4T6Naugu1d7783P9FnRS5i8niBDa3R69OPP9a4OXRTO/v7rGZsK2tzkVl
   AQsDBRgPpxDRuHnJFo+iP0uskEhv1SUqyR7Jcg250NioLDkqjheCszA2b
   xnYpeZY/poVNZAz64nU7vI9IpJYLNIaXSL0rAgQiVE3ZvlkOmXbOyfpeW
   Fhy729dC+hoEl9RZsT8A9LBuLlZrxHy7OW0WJkLoseNacScaZfgIUW53+
   dlO2EJixffdF7n0YvNMThWbOAdPEHsKK/pMi6DMSxUfQFWtPSLfLmA++d
   g==;
X-IronPort-AV: E=Sophos;i="6.06,174,1705359600"; 
   d="scan'208";a="35504028"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 20 Feb 2024 16:33:45 +0100
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 859D316F077;
	Tue, 20 Feb 2024 16:33:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1708443220; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=qohCGHsyRdUwOe6AkBX/8MWBbEcVleQTJswxHaL5TeI=;
	b=sb3353eqReo31Wu546d/dc2ibU2q7b30TKFF1AjpImRNOTEIxZdfDxabvbfy2/q8App5Qa
	yCiu8vnkAia97fEaDOw8ZKIiWrmFG97QtST5yyGy82Gf5oDeRXPNXoa/O7UX+dO/oiaZ7l
	AnjnM+n7NkWRs58eTETctCWnSo0ghIhK1qkZMHFolmFg6qF4L0zdGUhksv7XDTTjlHShAO
	N+F9EgP1MbrtjGI29PAwbckMsz4FQe0QzqQKEl81mPk1bW1Kje/H/zUgxNhRS7Ta5Hfrm8
	FNSsLinfPk0D2c3htv/EKL53D8BpAtxDw/YVkIeS95o2BLZnO8weE8OjwQvHpw==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: imx8mn: tqma8mqnl-mba8mx: Add missing USB PHY vbus supply
Date: Tue, 20 Feb 2024 16:33:34 +0100
Message-Id: <20240220153334.2624873-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240220153334.2624873-1-alexander.stein@ew.tq-group.com>
References: <20240220153334.2624873-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

VBUS 5V is statically provided to both USB host and on-bard USB-hub.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
index c07d59147ab55..5b682dd907578 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
@@ -86,6 +86,10 @@ &usbotg1 {
 	status = "okay";
 };
 
+&usbphynop1 {
+	vbus-supply = <&reg_hub_vbus>;
+};
+
 &iomuxc {
 	pinctrl_ecspi1: ecspi1grp {
 		fsl,pins = <MX8MN_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK	0x00000146>,
-- 
2.34.1


