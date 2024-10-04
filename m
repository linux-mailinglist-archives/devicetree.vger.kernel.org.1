Return-Path: <devicetree+bounces-107869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64723990435
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 15:27:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BBA61C21B1F
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 13:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A21BB217301;
	Fri,  4 Oct 2024 13:22:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004BA215F7C
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 13:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728048170; cv=none; b=SiX21Qt49wf01HqTmEktHPcGR1nlfFgDzq6HBVNQ6y8UsfZqLP1iAOmG7wpnlsYcN/K8yXEA5fV0+ISmv+z2GJrxmcrGgiyvdsiftCFd0InKDW41lEcCxmkPxEbmsd7mHKYUtaJW+710GuVUud+S9dzvoDOJMDEjjBx7JVlCfIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728048170; c=relaxed/simple;
	bh=TaHAlMVbe4ttfgir7gaZkpIdYpdq0Wy4/hRIBWI0qKw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=sumg4Mp2YK2gGi2tUwNnbfMzovmKhwT+Q2LN9S41oF1m/EMnDPuRe2WiUSZL6R5qDQ7CZgBK1cE7wBZ/+BEcTLl3qJvtR9xwe9OIVtWpuGvcto/mNy0eCS8iveprX+4uLo2NJwzko3/5KfvyfFHZGBs0+ZmE6yGcfreBl5l/IWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:5518:aeb:d9c0:fc7c])
	by michel.telenet-ops.be with cmsmtp
	id LDNc2D00A4NXpdT06DNce2; Fri, 04 Oct 2024 15:22:37 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1swiGJ-001ElS-Vc;
	Fri, 04 Oct 2024 15:22:36 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1swhnu-006yUk-Lv;
	Fri, 04 Oct 2024 14:53:06 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 14/20] arm64: dts: renesas: Use interrupts-extended for I/O expanders
Date: Fri,  4 Oct 2024 14:52:56 +0200
Message-Id: <8409a184db92b8d03d95beffde2cc9a9752366a9.1728045620.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1728045620.git.geert+renesas@glider.be>
References: <cover.1728045620.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the more concise interrupts-extended property to fully describe the
interrupts.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi  |  3 +--
 arch/arm64/boot/dts/renesas/ebisu.dtsi               |  3 +--
 .../boot/dts/renesas/r8a779h0-gray-hawk-single.dts   |  3 +--
 arch/arm64/boot/dts/renesas/ulcb-kf.dtsi             | 12 ++++--------
 .../boot/dts/renesas/white-hawk-cpu-common.dtsi      |  3 +--
 5 files changed, 8 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi b/arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi
index 5a15a956702a6be8..4a9d20249eaa9bc0 100644
--- a/arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi
@@ -130,8 +130,7 @@ pca9654: gpio@20 {
 	pca9654_lte: gpio@21 {
 		compatible = "onnn,pca9654";
 		reg = <0x21>;
-		interrupt-parent = <&gpio5>;
-		interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
+		interrupts-extended = <&gpio5 25 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		gpio-controller;
diff --git a/arch/arm64/boot/dts/renesas/ebisu.dtsi b/arch/arm64/boot/dts/renesas/ebisu.dtsi
index 4d16b8f0eae5474b..54ebffcd82d4337b 100644
--- a/arch/arm64/boot/dts/renesas/ebisu.dtsi
+++ b/arch/arm64/boot/dts/renesas/ebisu.dtsi
@@ -392,8 +392,7 @@ io_expander: gpio@20 {
 		reg = <0x20>;
 		gpio-controller;
 		#gpio-cells = <2>;
-		interrupt-parent = <&gpio2>;
-		interrupts = <22 IRQ_TYPE_LEVEL_LOW>;
+		interrupts-extended = <&gpio2 22 IRQ_TYPE_LEVEL_LOW>;
 	};
 
 	hdmi-encoder@39 {
diff --git a/arch/arm64/boot/dts/renesas/r8a779h0-gray-hawk-single.dts b/arch/arm64/boot/dts/renesas/r8a779h0-gray-hawk-single.dts
index b1d035ca4d97a51a..58eabcc7e0e07f49 100644
--- a/arch/arm64/boot/dts/renesas/r8a779h0-gray-hawk-single.dts
+++ b/arch/arm64/boot/dts/renesas/r8a779h0-gray-hawk-single.dts
@@ -248,8 +248,7 @@ &i2c0 {
 	io_expander_a: gpio@20 {
 		compatible = "onnn,pca9654";
 		reg = <0x20>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+		interrupts-extended = <&gpio0 0 IRQ_TYPE_LEVEL_LOW>;
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-controller;
diff --git a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
index 5a5dd5ecb75e0e7c..f7330b2262b8af0c 100644
--- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
+++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
@@ -235,8 +235,7 @@ gpio_exp_74: gpio@74 {
 		#gpio-cells = <2>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
-		interrupt-parent = <&gpio6>;
-		interrupts = <8 IRQ_TYPE_EDGE_FALLING>;
+		interrupts-extended = <&gpio6 8 IRQ_TYPE_EDGE_FALLING>;
 
 		audio-out-off-hog {
 			gpio-hog;
@@ -296,8 +295,7 @@ gpio_exp_75: gpio@75 {
 		#gpio-cells = <2>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
-		interrupt-parent = <&gpio6>;
-		interrupts = <4 IRQ_TYPE_EDGE_FALLING>;
+		interrupts-extended = <&gpio6 4 IRQ_TYPE_EDGE_FALLING>;
 	};
 };
 
@@ -317,8 +315,7 @@ gpio_exp_76: gpio@76 {
 		#gpio-cells = <2>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
-		interrupt-parent = <&gpio7>;
-		interrupts = <3 IRQ_TYPE_EDGE_FALLING>;
+		interrupts-extended = <&gpio7 3 IRQ_TYPE_EDGE_FALLING>;
 	};
 
 	gpio_exp_77: gpio@77 {
@@ -328,8 +325,7 @@ gpio_exp_77: gpio@77 {
 		#gpio-cells = <2>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
-		interrupt-parent = <&gpio5>;
-		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
+		interrupts-extended = <&gpio5 9 IRQ_TYPE_EDGE_FALLING>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/renesas/white-hawk-cpu-common.dtsi b/arch/arm64/boot/dts/renesas/white-hawk-cpu-common.dtsi
index 209cba75adec6d6c..337ba68342c475b5 100644
--- a/arch/arm64/boot/dts/renesas/white-hawk-cpu-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/white-hawk-cpu-common.dtsi
@@ -215,8 +215,7 @@ &i2c0 {
 	io_expander_a: gpio@20 {
 		compatible = "onnn,pca9654";
 		reg = <0x20>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+		interrupts-extended = <&gpio0 0 IRQ_TYPE_LEVEL_LOW>;
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-controller;
-- 
2.34.1


