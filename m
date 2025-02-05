Return-Path: <devicetree+bounces-143220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8627BA288F0
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 12:12:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C00E3AF860
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 11:06:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C7A522CBC9;
	Wed,  5 Feb 2025 11:03:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gauss.telenet-ops.be (gauss.telenet-ops.be [195.130.132.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BCF622CBDF
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 11:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738753414; cv=none; b=h379gRTlO/AglpkZRcGMKGn3k/p+RV4AK3xZWQ/WEycALYYTreWTbMkhWwEP/UEbmCU4K2BYk170vxQ7yqy2eghXXQr6T68R9F76iVgFrIqTrlAF8joRIsQpko74kM9mw6Ru8IItGEViPsEoWndwWtJud65VQZqz/gVRY6M50kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738753414; c=relaxed/simple;
	bh=Gb8T/2ma94I3zk+0P0WpSFqJJHsKr/c2dnhyu/mr/7s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mTBOgIPkNOwxqAjofyA0uxkVhCYzoMXpZKtzkBqpqjFyrep3OOXYYl0IuMN+KSjHgdfHqVjbbDwnN++dpPJhykddiEt4IRGHiPRemw3/dg6FeCTwhr1aFJVCnG5qx+6MjU/o9kovq4gBjU3PjP0PPaUUktgBp+eskR98aUQ8ZsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
	by gauss.telenet-ops.be (Postfix) with ESMTPS id 4Yny5Z3xpPz4x52N
	for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 12:03:30 +0100 (CET)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:c448:5c9f:5d50:ad45])
	by laurent.telenet-ops.be with cmsmtp
	id 9n3M2E0045P95W301n3MM5; Wed, 05 Feb 2025 12:03:22 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tfdBU-0000000Fss8-3JJ8;
	Wed, 05 Feb 2025 12:03:20 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tfdBg-00000006O1x-3TeW;
	Wed, 05 Feb 2025 12:03:20 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2] arm64: dts: freescale: Switch to hp-det-gpios
Date: Wed,  5 Feb 2025 12:03:19 +0100
Message-ID: <accb30064064bb5987520b8c7e74a941b08140e6.1738753123.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace the deprecated "hp-det-gpio" property by "hp-det-gpios" in
Freescale Generic ASoC Sound Card device nodes.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Dependency commit cfd1054c65eefec3 ("ASoC: fsl-asoc-card: Add missing
    handling of {hp,mic}-dt-gpios") is in v6.13.
---
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts     | 2 +-
 arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
index 50fd3370f7dce9b3..fe186b4bcb48ccbf 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
@@ -249,7 +249,7 @@ sound-wm8960 {
 		model = "wm8960-audio";
 		audio-cpu = <&sai1>;
 		audio-codec = <&wm8960>;
-		hp-det-gpio = <&lsio_gpio0 31 GPIO_ACTIVE_HIGH>;
+		hp-det-gpios = <&lsio_gpio0 31 GPIO_ACTIVE_HIGH>;
 		audio-routing =	"Headphone Jack", "HP_L",
 				"Headphone Jack", "HP_R",
 				"Ext Spk", "SPK_LP",
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index be79c793213a53f6..190a19b0a2f5a445 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -213,7 +213,7 @@ sound-wm8960 {
 		model = "wm8960-audio";
 		audio-cpu = <&sai1>;
 		audio-codec = <&wm8960>;
-		hp-det-gpio = <&lsio_gpio1 0 GPIO_ACTIVE_HIGH>;
+		hp-det-gpios = <&lsio_gpio1 0 GPIO_ACTIVE_HIGH>;
 		audio-routing = "Headphone Jack", "HP_L",
 				"Headphone Jack", "HP_R",
 				"Ext Spk", "SPK_LP",
diff --git a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
index 8bc066c3760cb13b..4ba86a6e7e28907b 100644
--- a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
@@ -183,7 +183,7 @@ sound-wm8962 {
 		model = "wm8962-audio";
 		audio-cpu = <&sai3>;
 		audio-codec = <&wm8962>;
-		hp-det-gpio = <&gpio2 11 GPIO_ACTIVE_HIGH>;
+		hp-det-gpios = <&gpio2 11 GPIO_ACTIVE_HIGH>;
 		audio-routing = "Headphone Jack", "HPOUTL",
 				"Headphone Jack", "HPOUTR",
 				"Ext Spk", "SPKOUTL",
-- 
2.43.0


