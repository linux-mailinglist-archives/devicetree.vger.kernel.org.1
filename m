Return-Path: <devicetree+bounces-170406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB37BA9AA76
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:35:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9818467C54
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F96F22688C;
	Thu, 24 Apr 2025 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="dCGohNxE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32457221708
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490503; cv=none; b=IfygfySZMAUe8AqNHKpfdvS2qgFhntjV2qs9NGN9uSOIx2q/2XMkqGcigDj//6Lf6uipElqMVxaR49pOQ0LIi5Jf8TXUqgTAxPC/oGKoWiO/WY+Z919I7TxqyxzqhQIGv0BivT7tRQNkRrICg7p1mC+t+USOGv80h0CnNAALZGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490503; c=relaxed/simple;
	bh=vrAKG7Lx3qa5JLQ9fxq/eaVfUElTdLHUHPWt2T0832Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=U6gY6wnCV5baQ07QJm6nqjBRvEskQeSqmx/9DGHOGADRCCz6bnMdq/3GdXOQ4biUI2RtOq0CwJY1TpPzH/ql1KtUJGnVoLAo0n0SveTVqkcOZ+IbWontJ/Eihh3svcoZ5SJQrMCnDSzuv2qFGC0td3bv5pDX5TlDPo6JzOFejGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=dCGohNxE; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=2o9xcqci/VZ+tL
	KevXd39tPI7C2ev0SC4m+UbMEsw7A=; b=dCGohNxEnrIcMyaCtCDx6+bPLFw898
	4XDZEE1hNj/M/KpBee968UOlRFQzVhReISedzUs+qlpHwYX9lZZpYp4CluwZjIqW
	HnzviufR8a2ZSBVAX8z3+1bG3vM1VgWNxFvDvvOSbz8bMd+uwrAoypSUWmEF6Ofw
	DRn6lSrq7VKuV26q3znEWDA1+w3ds+LiIcisRsMaacBvkpzqEHVquWFsYj/SN4Jz
	VmR86kCcOUhgSxTpN1D1dqo1t3QSdBtemlNM8UYvp9dqv7F4qQEpnyg7QbxdJNt8
	IvBgS+ppLFfqNtxnXU3djsNuM5uEpWKP2h35PUryaD58aLGaDCeCgQiw==
Received: (qmail 3415492 invoked from network); 24 Apr 2025 12:28:10 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 24 Apr 2025 12:28:10 +0200
X-UD-Smtp-Session: l3s3148p1@nIGbrIMzoqogAwDPXx6JAAunYj8Nf7DC
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: renesas: r9a06g032-rzn1d400-eb: describe 9-pin SubD-serial port
Date: Thu, 24 Apr 2025 12:27:30 +0200
Message-ID: <20250424102805.22803-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A simple CTS/RTS capable UART on a good old SubD connector.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Change since RFC:
* kept the UART numbering

 .../boot/dts/renesas/r9a06g032-rzn1d400-eb.dts    | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
index 975446b2ac97..a3ef9d407a95 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
+++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
@@ -145,6 +145,14 @@ pins_sdio1_clk: pins-sdio1-clk {
 		pinmux = <RZN1_PINMUX(96, RZN1_FUNC_SDIO)>;
 		drive-strength = <12>;
 	};
+
+	pins_uart2: pins-uart2 {
+		pinmux = <RZN1_PINMUX(105, RZN1_FUNC_UART2)>,
+			 <RZN1_PINMUX(106, RZN1_FUNC_UART2)>,
+			 <RZN1_PINMUX(107, RZN1_FUNC_UART2)>,
+			 <RZN1_PINMUX(108, RZN1_FUNC_UART2)>;
+		bias-disable;
+	};
 };
 
 &sdio1 {
@@ -221,3 +229,10 @@ &switch_port3 {
 	phy-handle = <&switch0phy1>;
 	status = "okay";
 };
+
+&uart2 {
+	pinctrl-0 = <&pins_uart2>;
+	pinctrl-names = "default";
+	status = "okay";
+	uart-has-rtscts;
+};
-- 
2.47.2


