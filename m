Return-Path: <devicetree+bounces-174932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6391FAAF4E8
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 09:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA2811C0599D
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 07:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30849221DB9;
	Thu,  8 May 2025 07:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="dwYe0g5e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79987221D8D
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 07:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746690206; cv=none; b=IHwpSji2N1YhwzS6QCZPuVgbCTuzWpdKo/B0mFmSbJcLah62MHt9lbIow9hqUizeM0BP2JyJElhU4/oGO+SVVZddT1muPW+sT2v75tkHozFYodP7svW2Sd+Pd7wKQdl6/CJvRbHIG9I+zqwoD5WeVtV4cAkCBHdaEmueE47DJ1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746690206; c=relaxed/simple;
	bh=N8WIrVHEFfG/PlA7AmSmKswvh3uXo/en90OIxy80blw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TtqzrWLR2ZRy5x3hCemvrFGHA9U5GSyi7Y7GIWXIK4tXpxYXi9jf4qkwXB7yyEuqyPl+/m772Oq1fVOW5XdyxArYTkVHAfh4RFVYVLWXss5XWpS/VUKdck3xBzSxWAsa2e1QBM7uz1nNU2ll6RyUpi2xrt9S3QITjtDCZ/KPSG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=dwYe0g5e; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=fPxoPWllw0zJI5DQ1Z2pOI1pmSr79HZxGkSZaMYLxAI=; b=dwYe0g
	5eBCtMwUS0NdQN8JtpBfPO5/7ZtZW8shSXDgsG9J+5C/9navX4forJCsrMtX9P2u
	B/OrkTQKKS2LK99T/KJ52dYXqmxWKd0PRlL5urfXVmGHzlRmmGOMdax7bmxmMSyk
	akSiV7nIfqwvloBWiwkWwaJTLVylqd7lSXpoR+9bQFVvisH3Sj+TELIVL4EU6hbR
	UEx+OynZVadDhqUX2epKdtHThM7q1tgw2aEe1kgrrEdF43i+EVMcaRJHs+FreqMa
	xhBIiHn93TPca+FMfWhdeRL8/R3c6K5FBhVJ9U2VXs04LmPtmGS1byJ/wYVe5GMA
	thnnOo5iNY2+TUCQ==
Received: (qmail 3712219 invoked from network); 8 May 2025 09:43:19 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 8 May 2025 09:43:19 +0200
X-UD-Smtp-Session: l3s3148p1@uTHYAJs0gsMgAwDPXxyAAIlRla1HkD11
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] ARM: dts: renesas: r9a06g032-rzn1d400-db: add pinmux for the CPLD
Date: Thu,  8 May 2025 09:43:13 +0200
Message-ID: <20250508074311.20343-5-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250508074311.20343-4-wsa+renesas@sang-engineering.com>
References: <20250508074311.20343-4-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The CPLD has no dedicated driver, so apply the pinmux settings with the
pinmux driver instead.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
index 328cb35547d7..92b390f7f0e7 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
+++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
@@ -170,6 +170,9 @@ &mii_conv5 {
 };
 
 &pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pins_cpld>;
+
 	pins_can0: pins_can0 {
 		pinmux = <RZN1_PINMUX(162, RZN1_FUNC_CAN)>,	/* CAN0_TXD */
 			 <RZN1_PINMUX(163, RZN1_FUNC_CAN)>;	/* CAN0_RXD */
@@ -226,6 +229,13 @@ pins_mdio1: pins_mdio1 {
 		pinmux = <RZN1_PINMUX(152, RZN1_FUNC_MDIO1_SWITCH)>,
 			 <RZN1_PINMUX(153, RZN1_FUNC_MDIO1_SWITCH)>;
 	};
+
+	pins_cpld: pins-cpld {
+		pinmux = <RZN1_PINMUX(119, RZN1_FUNC_USB)>,
+			 <RZN1_PINMUX(120, RZN1_FUNC_USB)>,
+			 <RZN1_PINMUX(121, RZN1_FUNC_USB)>,
+			 <RZN1_PINMUX(122, RZN1_FUNC_USB)>;
+	};
 };
 
 &rtc0 {
-- 
2.47.2


