Return-Path: <devicetree+bounces-182678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F733ACDA2C
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 10:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 316297AA828
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D296328C2D1;
	Wed,  4 Jun 2025 08:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="FO2GpQMs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E65E1A08DB
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 08:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749026554; cv=none; b=lI2iQAqUx37ClqDY9dHmL1GMIgOhrXL24n4RYUocmdAp7TULiEhtCC7+SLB4Mf96Q2zTQQxv5tqYzSibuDhYjIi7Tb5iatGGR2rzHI4aUJNfSEeQqJlYmLzW2+bUNsg642gdz8RMicbtLGf9vP2JDZXq43PwLxbfPIoTPgtZCEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749026554; c=relaxed/simple;
	bh=3KXZ36bjgvwRNYbPcmB8g6fofPogiE4xXUfm3MPpVJM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hMtdQPAwRphmUma2YiRYw/YhQhrLGsk28aoNsFNl+pN6I1wYwyf8xk/5XtD5e9/CQuod4L63X8w/whfH8Zq6c80P6q/heJx4dPB15RKaxOa93rvMboh4U/Si4exi+Va5YVHp3YD82BWQMqg78AXmWm9XT5K1NkdeotxxYBgqeVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=FO2GpQMs; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=fQRuu5rJsvX8dr
	rFhp+JLn+JPuN/g7wQEM7sqG7g1Rc=; b=FO2GpQMsTXzn9HrG4db5AGAHcTkLGE
	a5r7xtKE/AlHWg5uu9GTLt1VoimOr6PLoOv1vQhz23SFCVIx6Qf4yb5Fi2cMmY+p
	nBlAdzDhZR8VJ/ByFErEKgI4sQpCKtuxfTXUM9Hy44U2Bb4Ga89YnORhNiFLu26B
	J6DcBNMpAdHX5WDYav5qPTuHTAvdv8nCgQ+InleuvTEW1G6fBmBqZoQFYiaWHcDe
	aBzg0ugcqFaputjNyF4MeC/injyQWg0Dnt8R5NNwbc49auzHf+eTbhmP4Zw9k2Q4
	6+QHAtP67/jyVK3PWOVoSLYXBg8Kcf3a3oEOWZ+OMUM4Z47M1c6YRKhQ==
Received: (qmail 596258 invoked from network); 4 Jun 2025 10:42:26 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Jun 2025 10:42:26 +0200
X-UD-Smtp-Session: l3s3148p1@w/cB+ro2XrMgAwDPXx36AJSQ3b6GkO36
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: renesas: r9a06g032: add second clock input to RTC
Date: Wed,  4 Jun 2025 10:40:11 +0200
Message-ID: <20250604084211.28090-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The external rtc clock is populated on the RZ/N1D module, so describe it
and add a reference to the RTC node.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

The dependencies are now in -next, so we can update the DT, too.
Discussion leading to this result is here:

https://lore.kernel.org/r/20250319110305.19687-2-wsa+renesas@sang-engineering.com

 arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts | 4 ++++
 arch/arm/boot/dts/renesas/r9a06g032.dtsi            | 4 ++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
index d734a432b3ec..3258b2e27434 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
+++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
@@ -171,6 +171,10 @@ &eth_miic {
 	renesas,miic-switch-portin = <MIIC_GMAC2_PORT>;
 };
 
+&ext_rtc_clk {
+	clock-frequency = <32768>;
+};
+
 &gmac2 {
 	status = "okay";
 	phy-mode = "gmii";
diff --git a/arch/arm/boot/dts/renesas/r9a06g032.dtsi b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
index 80ad1fdc77a0..13a60656b044 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
+++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
@@ -73,8 +73,8 @@ rtc0: rtc@40006000 {
 				     <GIC_SPI 67 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 68 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "alarm", "timer", "pps";
-			clocks = <&sysctrl R9A06G032_HCLK_RTC>;
-			clock-names = "hclk";
+			clocks = <&sysctrl R9A06G032_HCLK_RTC>, <&ext_rtc_clk>;
+			clock-names = "hclk", "xtal";
 			power-domains = <&sysctrl>;
 			status = "disabled";
 		};
-- 
2.47.2


