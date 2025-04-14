Return-Path: <devicetree+bounces-166652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6F9A87EBF
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 13:15:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E73C97A2454
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 11:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122502D4B41;
	Mon, 14 Apr 2025 11:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="lUHis0yx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10EE2D3A72
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 11:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744629166; cv=none; b=ex1zsC0QU95WTIldTNiOC3XZ8BghuNjzLXCwmBk6t1xu/LWrvfk8Jdwe7njsu1GEbR7bIR6U2LzLhk/5AGyz7aQX4PmTWYSQt45wsChyM5HGljARpglXm4yeM3DLj4+UHLQuS1uy+ZEQyyGDwaVpsa7H8u6NjxJZg8RCbCpuWIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744629166; c=relaxed/simple;
	bh=ydWQx4emZ+BDbgopH/tUWILqV0Isr8UbzVbZ5KudTAc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tDOYCsoa0kHdLJJV9A29Yrtbbo2byROxCj+yLKs23FqntugAYIqUfwT4TBbu69sTEUH/gQIVhvfnndpv4sOLi/LcSjl0c1AVjAgRC4H76CBni2NzWyhMgHJLiznZWx0/NSOVFDxeOSM9X1iwxDKwgwAh9eP0DETX2/tvGWYcpi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=lUHis0yx; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=71YB8nio22l0KBvfcad+JWa/ZASnVxFnE6jKJ1Bz4PQ=; b=lUHis0
	yxIaSr9OBNTlauYeXW8GctBuY5XqsVFR98FPxcAWQBBK5D2AuE/8ygmdAYmlSz6B
	G5cd4Gudyb+yte+9exb5NobCXOzIZ50Oy1b1nm5AZKHiNeN3nA/kNbHXNZreddBc
	tMR+p8DPJdMdhEUoikkGR8RacSaRX1Xgo/SPKLiR563vWNGc/ymgeQcrYsb9bChU
	Sm+Ej1V+/CyfoKrXOo+ISv3ZY66qrc3yo9Sz8oTSpivqgnYLbh5+Wa1qP4kJ92qU
	vT/XoKIR4/ZzS3Ob+E0AgWkPW8rPjrjSWnT+REEqcplfQk5/OvzlevWZrGwIM/Kh
	a6LDwJU0GlyaPKxg==
Received: (qmail 2268576 invoked from network); 14 Apr 2025 13:12:40 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 14 Apr 2025 13:12:40 +0200
X-UD-Smtp-Session: l3s3148p1@u6pWIbsyfJoujnth
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 2/2] ARM: dts: renesas: r9a06g032-rzn1d400-eb: describe 9-pin SubD-serial port
Date: Mon, 14 Apr 2025 13:12:20 +0200
Message-ID: <20250414111218.7641-6-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250414111218.7641-4-wsa+renesas@sang-engineering.com>
References: <20250414111218.7641-4-wsa+renesas@sang-engineering.com>
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
 .../boot/dts/renesas/r9a06g032-rzn1d400-eb.dts    | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
index 975446b2ac97..e103a18ccc24 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
+++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-eb.dts
@@ -145,6 +145,14 @@ pins_sdio1_clk: pins-sdio1-clk {
 		pinmux = <RZN1_PINMUX(96, RZN1_FUNC_SDIO)>;
 		drive-strength = <12>;
 	};
+
+	pins_uart3: pins_uart3 {
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
+&uart3 {
+	pinctrl-0 = <&pins_uart3>;
+	pinctrl-names = "default";
+	status = "okay";
+	uart-has-rtscts;
+};
-- 
2.47.2


