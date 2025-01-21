Return-Path: <devicetree+bounces-139993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C820A17BB8
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:31:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F32F160D03
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7FBB1C1F05;
	Tue, 21 Jan 2025 10:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="IY1UV6ws";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="sx0RZGSj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7633D1C173C;
	Tue, 21 Jan 2025 10:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737455448; cv=none; b=s66NeAv/xCb0Oh6ARZq7dd3VPsImjVOeiJUlwx5H8JTA3xfxYIZ3AeJWTHZNBJ7JHM3LYW3cOCcF8prsFot6N0IWP8MK2UjxbQqGs23nO1e50S57WnLZDjNwuCFJhBS4Ls5fSH1z6qi1PSvuXSuq2hjzBCC0PxQQEYDOKnC9IxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737455448; c=relaxed/simple;
	bh=y/9WtCwjY1asJUaJ7F6fIYTYTnnFPQ7VO65IbB+pg0Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ujEKbid3S9WuLu8fnlbd/cPEq+qPHLvpo5bZVWPGp9x3abKcbKuo+vrc8eJfmlWp51pv4k33BQLw9y4b44YPq9wif/DiAGOFBTAA+4+1TOtFIBRlwVEECkXr+3QDiOp4VEBNCZtSQ7vEA0kDZIdARgae5/r2TBdGNni++zw0I2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=IY1UV6ws; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=sx0RZGSj reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1737455445; x=1768991445;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=vlr5cUwPRRPdmdrxfHfnoxx2HdPSWBufIchZ2vqklZk=;
  b=IY1UV6wsdBSQDvBmGfMVJ1hT9uCDNUjM/d4AeLN8Jycw/uT4UsqJzk3I
   25igdxJ4mv/dheHH2hHXkVWR96gRU4ggTj4yYKxpnD2rCzkJb2xuBEoeR
   NCIUvuiSSqRDFkMZ+k3Qv21BzULRVoFuq4dV1+NsgKNXfg0pZt15HMzNJ
   aASuRJpRKtt0+Zi/LxGhDvYXiXR8ZDKPf3dlXTXn7h6bxYlZNjgji3MSp
   xDc671G1SxBYYZziyobGoY8GXg0lMkSZzwapcmoInuqQhYNZVu9fpioz8
   8DlcfHwKSH0IyOqVIHMXqjHPR9W6Sa30IxS1sEgPaS1cgK3lMo664Gli5
   g==;
X-CSE-ConnectionGUID: VLxxD6TwSP2QjGRQNpkVoQ==
X-CSE-MsgGUID: NOYYOwoHRY+NVxiinLL4Tg==
X-IronPort-AV: E=Sophos;i="6.13,221,1732575600"; 
   d="scan'208";a="41196365"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 21 Jan 2025 11:30:41 +0100
X-CheckPoint: {678F7751-A-31397509-E321C4C4}
X-MAIL-CPID: EA44B9009F17B461DEBA4D0C8EEB203A_0
X-Control-Analysis: str=0001.0A682F25.678F7751.0071,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 433D2163631;
	Tue, 21 Jan 2025 11:30:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1737455436;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vlr5cUwPRRPdmdrxfHfnoxx2HdPSWBufIchZ2vqklZk=;
	b=sx0RZGSjlZosl5kPDCZiO1SYdeThTPbiGYy06XUhzZuko/HoS5jbx6IVui/+0/PDbomMPn
	W7Jgcx46OPYHN8x2l3T1oBKXM8FH6cOllWOn57YZgwCXE+ieTukBtb6dWyl35bnZSPZ2K3
	n1fbLZ0miOhXbvZPdB+aK8THlLt+Aqvx5s4G3ZyDE+iHdE7clkKbBC36+BM7aieEK8RW55
	w48q7gZ0jmJCSiGwW+CbEV8di4kZrE+x/mHFXVzuiBDdpCTugw3qIijpgB766Z00DBM0i9
	EpaSADrkj2NMx2zS3/k0mT2/13CLSZGvI7rPG/qgWK4I0njjVzJAjUUl2YFXOA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] arm64: dts: freescale: tqma8mpql: Add vcc-supply for spi-nor
Date: Tue, 21 Jan 2025 11:30:22 +0100
Message-Id: <20250121103026.1404856-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

(Q)SPI NOR flash is supplied by 1.8V. Add the corresponding supply.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
index 2ca87d2f0b590..f00730ba4e1c0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql.dtsi
@@ -50,6 +50,7 @@ flash0: flash@0 {
 		spi-max-frequency = <80000000>;
 		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <4>;
+		vcc-supply = <&buck5_reg>;
 
 		partitions {
 			compatible = "fixed-partitions";
-- 
2.34.1


