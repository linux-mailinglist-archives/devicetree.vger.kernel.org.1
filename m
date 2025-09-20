Return-Path: <devicetree+bounces-219514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F356EB8C10F
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 08:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 744064E1CEC
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 06:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6C462D595E;
	Sat, 20 Sep 2025 06:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="BLjx2Q/H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599512D6E44
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 06:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758350698; cv=none; b=n70zBgFul34cWtwvaVysMibfClKmubu6AsUeP66lcvla38SzgUiqRqJXW4DXEPLJAJ6au5I9bOQ96yyM/j6Ed4SJP+yKoWmNL53zofpJ92DL/8nfa/jfnwnCCupib7e5mFmI6Ini7YzC63aIEVjkxQdqJRl7Fvoclh9d6wvhotk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758350698; c=relaxed/simple;
	bh=wl0fnt3abRNUGrYJFkB2YYTAdyz8LuISSKunpUBoYyo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ke3UQgZXU2Ji+cO/4wIEf0Nzinmo+cTkTLN+AtmptOecoyMmsYVIQv3uOpY+78jOrd8yT89OyLHN6AlJbx/8zt3zpStySSz6SZpixTSrgsYu/bPsOIHFGKtDBQBFcn1xWd7LPZlGq74vH0HzqI0+yh1OoDGPQNO7u0xQFA/RrVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=BLjx2Q/H; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=HLkk2qiU/3c7u3l1dC2ibDa04BrDGSbeYzes5V0fB4U=; b=BLjx2Q
	/HhdwOmKVZAiaUAR5aTSb036oy5abm2qr7VybtTG7zQBRGYmSr8gfUHpAEIpPZtH
	h/byxfGe8YZ0e7KzwN6eu+V+c9mBc6JcQprPeOJRr9DPsuJ8vro1N83zw7MRHJAM
	Jb4qmWKetv5HsKZ8CDSG2n0X+qJh6n8RHPPtC0LoWx5Pkdz33FOMHD84CU9/bDOw
	Skc1N2w/imJ2P53ChAHr3lwhIoR8OJAGNGRc91kJm1bLRzvyRZY0W+jwqrqPdkFv
	z9eSqg2NasX4FXnmGKRqmVWqulDFB035GIsG0Cl8AwiyJ1s6CwllDB2oe5I9JtDk
	1SWi+CmPpuMqsyrw==
Received: (qmail 4169339 invoked from network); 20 Sep 2025 08:44:44 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 20 Sep 2025 08:44:44 +0200
X-UD-Smtp-Session: l3s3148p1@joXq6zU/cMkgAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 4/6] arm64: dts: renesas: r8a77965: add SWDT node
Date: Sat, 20 Sep 2025 08:44:31 +0200
Message-ID: <20250920064428.5544-12-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250920064428.5544-8-wsa+renesas@sang-engineering.com>
References: <20250920064428.5544-8-wsa+renesas@sang-engineering.com>
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


