Return-Path: <devicetree+bounces-35092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DEC83C527
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 078491C24636
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F6D46EB49;
	Thu, 25 Jan 2024 14:49:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [195.130.132.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F536E2CD
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194151; cv=none; b=scWJcv+rO2iyuKPaVSyZJ3/sZoD11+TRD3L/LFYahQaMW8r5vNrr11jvzMTgDre0u2OgYoi4xq6MUFtXnLwTDigxol9bZH9WVaKxXtySEHF/iXDInN2ZyAYtdbLamVkQoieD6ncRjtLjsDy0hwBPjG1W/9u55JmxzjFM7sUjCsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194151; c=relaxed/simple;
	bh=h2S7gudS05g3P6ahM94tO5OpEENw4AIqEsDRznUjj7k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=D1Z8dZf8MNFXWFr/F9i13JTx1lTwMpqIPEZzLFOh9IQ7mW3pa5qnnrLqQzv815RNdv2ixjRCICVi3b1dHZSGC5oyHeOwamD6NfQH/5rRQTatD2OLACyqurBpwyE5PD4v8vXq7nbkSwWCEZ+T6mqZX/7c7WnhixrE6Lyi4Teq8EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:bc9e:fcb8:8aa3:5dc0])
	by baptiste.telenet-ops.be with bizsmtp
	id f2p02B00Q58agq2012p0l7; Thu, 25 Jan 2024 15:49:01 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT11W-00GUs3-Jd;
	Thu, 25 Jan 2024 15:49:00 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT12K-00Flu0-J7;
	Thu, 25 Jan 2024 15:49:00 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v2 3/9] arm64: dts: renesas: white-hawk-cpu: Restore sort order
Date: Thu, 25 Jan 2024 15:48:53 +0100
Message-Id: <f375293d6e21659ee30a86e2b46e4998a75ea3b5.1706192990.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1706192990.git.geert+renesas@glider.be>
References: <cover.1706192990.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Geert Uytterhoeven <geert@linux-m68k.org>

Alphabetical by node name.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
v2:
  - New.
---
 .../boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi    | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
index 19ca831756f78124..6d53b4006db3c27f 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a779g0-white-hawk-cpu.dtsi
@@ -25,6 +25,12 @@ chosen {
 		stdout-path = "serial0:921600n8";
 	};
 
+	sn65dsi86_refclk: clk-x6 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <38400000>;
+	};
+
 	keys {
 		compatible = "gpio-keys";
 
@@ -135,12 +141,6 @@ reg_3p3v: regulator-3p3v {
 		regulator-boot-on;
 		regulator-always-on;
 	};
-
-	sn65dsi86_refclk: clk-x6 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <38400000>;
-	};
 };
 
 &avb0 {
-- 
2.34.1


