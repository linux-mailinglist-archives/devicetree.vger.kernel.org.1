Return-Path: <devicetree+bounces-221311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F9EB9E6FA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:40:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BAAB18969DA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E062E974D;
	Thu, 25 Sep 2025 09:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="LTKQKFlf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E6D2E9EA4
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793225; cv=none; b=ZozIzY9Gsay+DKYl6/3heKqywfA0lkcewQUIe1Jbfe7WJACZ+XerqqsOekvsutIAo/jRapVxUYJPulOokkONZqhzBV7oIhfDzMYY2NYsvjUAy/NwTG/psiYDaYuHs3btvwVhoa1RLiHr+W3yP2X6yqcRnDgDkMrWpGItDlY4zF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793225; c=relaxed/simple;
	bh=wl0fnt3abRNUGrYJFkB2YYTAdyz8LuISSKunpUBoYyo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dvWG+gJB9GOmQ0fcSklpSSlOqlxin8oDOQLXEra8EY3GkiOOCCldtR+EXLrbUwPgi2pvICICLfGWsuwI1/qpxmPCdWsrWSvAwHPc+h2JIfAbLdbjhEqLpgBHtbO0OT5/ct+LfptKbDN5cgkLjs22a0VW5/RlYrg6igKLcSJJYsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=LTKQKFlf; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=HLkk2qiU/3c7u3l1dC2ibDa04BrDGSbeYzes5V0fB4U=; b=LTKQKF
	lfTDaKH0amB2hBI0jIUGHlZTZyXVQWPSgp0zy95KUZs65FnR2X+74KI79hI3LjAk
	G5skoT9+KeWwGi66UP7w8mYeIJAKToP2oDIpyz7Kh1UCWvgSc2Pg1et9GIlYId+k
	ApxNdIz6Ewb0+Y3ufX+EkJqIhdXnIl41qMgrh7Z6l3KyRNs+Qls/7HVbRB4iH7dw
	d7q6QuQ7ODAn9CEhzi1bvQ9OLNwbsJmM30RcnLfAiwGbDHDNG61yv+N8LbIRL9cu
	/AMmMCi2Yxdo6UB0YcjrlA5BomD4XaE/10GzdFqF+CevgHy+U0JCHkkJEjltW/IC
	btdl67pB1aaafF5g==
Received: (qmail 1813260 invoked from network); 25 Sep 2025 11:40:17 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 25 Sep 2025 11:40:17 +0200
X-UD-Smtp-Session: l3s3148p1@Ombx9Jw/tsQgAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 04/12] arm64: dts: renesas: r8a77965: add SWDT node
Date: Thu, 25 Sep 2025 11:39:43 +0200
Message-ID: <20250925093941.8800-18-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250925093941.8800-14-wsa+renesas@sang-engineering.com>
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/r8a77965.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77965.dtsi b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
index 353a77187089..2c414179f53c 100644
--- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
@@ -201,6 +201,16 @@ rwdt: watchdog@e6020000 {
 			status = "disabled";
 		};
 
+		swdt: watchdog@e6030000 {
+			compatible = "renesas,r8a77965-wdt", "renesas,rcar-gen3-wdt";
+			reg = <0 0xe6030000 0 0x0c>;
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_CORE R8A77965_CLK_OSC>;
+			power-domains = <&sysc R8A77965_PD_ALWAYS_ON>;
+			resets = <&cpg 401>;
+			status = "disabled";
+		};
+
 		gpio0: gpio@e6050000 {
 			compatible = "renesas,gpio-r8a77965",
 				     "renesas,rcar-gen3-gpio";
-- 
2.47.2


