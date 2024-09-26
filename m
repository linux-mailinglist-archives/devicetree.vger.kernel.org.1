Return-Path: <devicetree+bounces-105549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E6498712B
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 12:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AAD5D281EFB
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 10:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 250B81ACE0D;
	Thu, 26 Sep 2024 10:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="SJizzV2K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434D61ACDF6
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 10:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727346025; cv=none; b=lJXa9Rp2v9uoR8pEVpgBdwsSD8cK4V/UiD61/KPEPAMrgAsn3nTC1If/9uYcZVl1g4sfe9A/XSYRH5kVPW4i0OfetTo1Y9iIpf3orIWc+jF0P2BiK5KdTaxTaogjEeQeOwkvqZcvKwzzQ52GNmiaSXB47HIx/MjKMimIu8ol0O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727346025; c=relaxed/simple;
	bh=ECrYGmRV1GxtJF5TkxsaZawhiGOpMXSOAEji9zPozvo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kohNA7hcvnWS+w7Rd7UidfqMfLKbi3P5tQyTF/wyahEY/lEn6pA3GfwIlyUezAK7gnoATmSuvKGLXlbIzMvS/vbJ3g/2raioSPRzrWOZFzpXHPPbjc8cCPbsq9rLFdI0vq7G5KvBrrComVZJZTLBP8PgjZpqk5E0hO6dbFo9vtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=SJizzV2K; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=mw0ZBmYkud91LpELGHv6PYztlihbUqky9EPbTqU91QE=; b=SJizzV
	2K4ZxJ+1b+9rlLOYy5ruVJg881RY6XoJRwCaQ2K+ukL3wF9LNz/zZBFD+WoM4Cn5
	2dfQXYDGqLluIjSGvE1TZqPLd3bxaxTB1JUwLgPKHG2AM8uPq2THNuuNkDqmLBTC
	ybMjHACFMJng2A2I7eeCEe5S0se++1EPu4YGu8hKjVmfg6qo+8YSdq63DZuqCs7S
	L1rXL829VMhNc+XN8bYAasrl0Q9VSx/OBa3TpagSwv370d+MWYaXMmoinqpiM4yf
	5crYg3XKtszTbnXN6pphnlRgHGMsrJxgbyHTSjkvy6ldHkH5YW8p2Bx5Qd5EEv5B
	kl0RuufjZo5PT4LA==
Received: (qmail 946932 invoked from network); 26 Sep 2024 12:20:19 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Sep 2024 12:20:19 +0200
X-UD-Smtp-Session: l3s3148p1@6GjoFQMjttQgAwDPXzRXADDuo30Z+IZ9
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] ARM: dts: renesas: genmai: enable MMCIF
Date: Thu, 26 Sep 2024 12:20:08 +0200
Message-ID: <20240926102005.15475-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926102005.15475-5-wsa+renesas@sang-engineering.com>
References: <20240926102005.15475-5-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Luckily, I still had an MMC card lying around. Works fine.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r7s72100-genmai.dts | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r7s72100-genmai.dts b/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
index e93f444b2442..d0b2b4ea1734 100644
--- a/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
+++ b/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
@@ -88,6 +88,14 @@ led2 {
 			gpios = <&port4 11 GPIO_ACTIVE_LOW>;
 		};
 	};
+
+	vcc_mmc: regulator-mmc {
+		compatible = "regulator-fixed";
+		regulator-name = "MMC Vcc";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 };
 
 &bsc {
@@ -179,6 +187,16 @@ eeprom@50 {
 	};
 };
 
+&mmcif {
+	pinctrl-0 = <&mmcif_pins>;
+	pinctrl-names = "default";
+	cd-gpios = <&port3 8 GPIO_ACTIVE_LOW>;
+
+	vmmc-supply = <&vcc_mmc>;
+	bus-width = <8>;
+	status = "okay";
+};
+
 &mtu2 {
 	status = "okay";
 };
@@ -224,6 +242,20 @@ keyboard_pins: keyboard {
 		pinmux = <RZA1_PINMUX(3, 1, 3)>;
 	};
 
+	mmcif_pins: mmcif {
+		/* MMCIF: P3_8 is CD_GPIO, P3_10 up to P3_15, P4_0 up to P4_3 */
+		pinmux = <RZA1_PINMUX(3, 10, 8)>,	/* MMC_D1 */
+			 <RZA1_PINMUX(3, 11, 8)>,	/* MMC_D0 */
+			 <RZA1_PINMUX(3, 12, 8)>,	/* MMC_CLK */
+			 <RZA1_PINMUX(3, 13, 8)>,	/* MMC_CMD */
+			 <RZA1_PINMUX(3, 14, 8)>,	/* MMC_D3 */
+			 <RZA1_PINMUX(3, 15, 8)>,	/* MMC_D2 */
+			 <RZA1_PINMUX(4, 0, 8)>,	/* MMC_D4 */
+			 <RZA1_PINMUX(4, 1, 8)>,	/* MMC_D5 */
+			 <RZA1_PINMUX(4, 2, 8)>,	/* MMC_D6 */
+			 <RZA1_PINMUX(4, 3, 8)>;	/* MMC_D7 */
+	};
+
 	scif2_pins: serial2 {
 		/* P3_0 as TxD2; P3_2 as RxD2 */
 		pinmux = <RZA1_PINMUX(3, 0, 6)>, <RZA1_PINMUX(3, 2, 4)>;
-- 
2.45.2


