Return-Path: <devicetree+bounces-139572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C414A1638E
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 19:35:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD05D3A5D97
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 18:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A20C1DFDAD;
	Sun, 19 Jan 2025 18:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="tLnnxtgr"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CD11B0403
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 18:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737311703; cv=none; b=UUOer4AGeV8fc0KU4JONXool80VroiB7Qsd9ehoHh9vAlLupMYCTeOg6hiz9nKHmDd3HorACSdUQfmpFcIfHNLpH7s0O5wAxS/AXr89n313r0JuXuCLj38AkrRe1DFymRROc/5A72e09AvqVme8EZescewU8m5fmFOiGKlZTMzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737311703; c=relaxed/simple;
	bh=vgKqXw1GDVF1Qfw7XSC2NSzrDeBNZ6mBd2vy2WV2pU8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HnGsGwznWtZW6WMX4AXphq2FtaKvThB76AfL/wG/YbkNqYjWSbPeVr+w5Cw6Vt8oH9hAeSVnGdBDhUENGptRfcQXnr1H5rw8LRnpYtMOYas2B0Zvg2KY3b6nx5fdSzlVFxjvEQkWj2N7aKJltTDEbTVEVUOKRCZEYBXmBqKr/zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=tLnnxtgr; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from terra.vega.svanheule.net (unknown [94.110.49.146])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id 8B7FC5A7E53;
	Sun, 19 Jan 2025 19:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1737311693;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gM3VAja4azBv7tGCoJD/bZC70hqkrjzsEu4n8T1L1dU=;
	b=tLnnxtgrlm0BFF/nT4TZNDRbn6Uv8CiYo0+ldjpQwvE/U9x/Qg87NdSgPgsKXkTtRDsny5
	av9O0A0IQu1A+ZT/QSxbdvvxUskHLUgu4cHwEbVLkgNVEtwDRDG4frhbrjYI0nof5I3oCS
	WOWlybpx+3lGlCEHGQvm0k2w4GZRorTmZiH4PmQYdC0WCHyBv6LybN3MZT66QZVhQsEfwA
	wbdNJVs0woqtk4bOnKqewmtU9+dX166U0wVUm/8BETL6oA/VIwfTTV0WdPEryOLz/WWJw+
	dJ2TxwpRldzXQ7glAWNeWSFwPAnf0ZIyMN6ypyyS3OB4mXpxulvuWhyK0cndgg==
From: Sander Vanheule <sander@svanheule.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Sander Vanheule <sander@svanheule.net>
Subject: [PATCH 7/9] mips: dts: realtek: Replace uart clock property
Date: Sun, 19 Jan 2025 19:34:22 +0100
Message-ID: <20250119183424.259353-8-sander@svanheule.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250119183424.259353-1-sander@svanheule.net>
References: <20250119183424.259353-1-sander@svanheule.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a fixed clock to define the clock frequency of the Lexra bus and use
this for the two uart nodes instead of a separate clock-frequency
property.

Signed-off-by: Sander Vanheule <sander@svanheule.net>
---
 arch/mips/boot/dts/realtek/rtl838x.dtsi | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/mips/boot/dts/realtek/rtl838x.dtsi b/arch/mips/boot/dts/realtek/rtl838x.dtsi
index e3183a71765e..246f4f607128 100644
--- a/arch/mips/boot/dts/realtek/rtl838x.dtsi
+++ b/arch/mips/boot/dts/realtek/rtl838x.dtsi
@@ -34,6 +34,12 @@ cpuintc: cpuintc {
 		interrupt-controller;
 	};
 
+	lx_clk: clock-lexra {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <200000000>;
+	};
+
 	soc@18000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -44,7 +50,7 @@ uart0: serial@2000 {
 			compatible = "ns16550a";
 			reg = <0x2000 0x100>;
 
-			clock-frequency = <200000000>;
+			clocks = <&lx_clk>;
 
 			interrupt-parent = <&intc>;
 			interrupts = <31>;
@@ -61,7 +67,7 @@ uart1: serial@2100 {
 			compatible = "ns16550a";
 			reg = <0x2100 0x100>;
 
-			clock-frequency = <200000000>;
+			clocks = <&lx_clk>;
 
 			interrupt-parent = <&intc>;
 			interrupts = <30>;
-- 
2.48.1


