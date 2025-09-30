Return-Path: <devicetree+bounces-222746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B898BAC703
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:17:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D557F320F1E
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1281F2F83C5;
	Tue, 30 Sep 2025 10:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="I37uLeVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2C52F8BE4
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 10:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759227450; cv=none; b=oejiMaHE/MeCqBtHtOuQ7FwMFZSLWiaq0DUfD8WI3Fd3CygFGD53zqMJ7BngOfuGG8hUmFmm4mkHW/G185zdDKixZN091LboWvr6SbLaWcWXBDQ34yhdQSEP/9IwQWUujTPGr6yktb2D5g71hOKLxFIc5CHZZk0VecRdR1S8u+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759227450; c=relaxed/simple;
	bh=uUyph4IDK+HprZvIDtIADzsojt0S5xcqCsVwjWEWhY0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DcAjdq0rQ05tObocCVZmdTSS8YriUy0yZoOq2+8uJr1ZNf/gFiGnvWXJ31Ow30FDx6JiOoePIUVnNjorpm3ZiJzL9tJxT8Zr79oTZmbCypaeNk46Fhs/VUUMg11j3JSmCqleovRDeE4Ais1FHAO9K3isLUz/nWokvGvg9ZoTSfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=I37uLeVS; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=RIcR+LcPNpBDzXPIFbyyTrUeCQNfdTzWDRfojVkuuHY=; b=I37uLe
	VSOm+AZTHl39AdroLMmuhltMH4B0AtzY9p7krbuhbKBWXbB5CnrxzTWwsYXzD5GE
	gmjluGj8SmQNWjguT7zt1geAxOT9FKrAARqsZB5H0yyoPzaEv/3/CX2icu3HvIJS
	5U8+7MnS0ykvGxGFV3YzgMXqLHYI3+SM2ECq+r6WFmGfSrXuyl73DeXSj0GC/b4B
	vi8H+ThPmfO7JCeVKTaC/WJ6T8/KisnXR4RuXklo0ZluH8jJk5Txq2M3ZyJLYpXB
	aiLHw2hnfAzjGcdi0nEJ50bc+uoQzbvo6QPXilkXYTJnT6WDqE+2ubc4lz1EgFdD
	BjQVtcqLsUTn/Y8Q==
Received: (qmail 3595963 invoked from network); 30 Sep 2025 12:17:17 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 30 Sep 2025 12:17:17 +0200
X-UD-Smtp-Session: l3s3148p1@VG99DgJARIsgAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 4/4] ARM: dts: renesas: rskrza1: mtd-rom has no clock and power domain
Date: Tue, 30 Sep 2025 12:17:00 +0200
Message-ID: <20250930101656.33435-10-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250930101656.33435-6-wsa+renesas@sang-engineering.com>
References: <20250930101656.33435-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clocks are now marked as critical to avoid regressions with XIP based
systems.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts b/arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts
index 91178fb9e721..4e206ebaae9b 100644
--- a/arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts
+++ b/arch/arm/boot/dts/renesas/r7s72100-rskrza1.dts
@@ -32,8 +32,6 @@ memory@8000000 {
 	flash@18000000 {
 		compatible = "mtd-rom";
 		reg = <0x18000000 0x08000000>;
-		clocks = <&mstp9_clks R7S72100_CLK_SPIBSC0>;
-		power-domains = <&cpg_clocks>;
 		bank-width = <4>;
 		device-width = <1>;
 		#address-cells = <1>;
-- 
2.47.2


