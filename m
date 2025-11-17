Return-Path: <devicetree+bounces-239537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CA6C663E3
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 409FD350A86
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65EA02459E5;
	Mon, 17 Nov 2025 21:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIyEQWSw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B218523A;
	Mon, 17 Nov 2025 21:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763414172; cv=none; b=PwLxjnVwiFULC+hm7lCqRRqGiS2QbOPc/ifAS+eDJsCwBHLyvOPG1e5+DBEUsfli+tUkcNCrcIR7k66z60gg2n86TXaA+rxYHQQ4MP8MSmYpio9Nxy4E5kDu55FqbhyGr9waO4NP0yYUfTpNusaPFJqWWzIc+wve1SBWn7h8q1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763414172; c=relaxed/simple;
	bh=Rny+jZeDLyUoMgfhLA3ZQW7WfCvb0CV4WmGd6tU/eWc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BbLGEZQbPzluJp4gW1tfptpwB+0RvU8x99uKAEwun3n/v2Wq9dvsk7ODd2gq2eK7s7dhEb4NioQ0tacQzbwdHD3GzBiyLzlW3nZGQCqm4ec7a4phD8Hpz7Qrhzqjz9maMnFK1YH3bs7GNxkQxgqAB3ZVnfyzBqggfKgcaMqorxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIyEQWSw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D717C2BCAF;
	Mon, 17 Nov 2025 21:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763414171;
	bh=Rny+jZeDLyUoMgfhLA3ZQW7WfCvb0CV4WmGd6tU/eWc=;
	h=From:To:Cc:Subject:Date:From;
	b=vIyEQWSwl0kz9lDIVLfMERzm2Wj3SjqPrxVg9KzGw//lkhCq1sZfv8E+vz1Ophr0E
	 0M9xuuVCaTzBOQbe3oyUzcP8kVqwvcWuQMUleuOlwk4g1ySQLbh646j4PI0hQn3dDA
	 l/oa8ezD12vjrVCKjI/5zkjeKEOU4Vv6tqpBs7AOg9XibEs4eCF8xS9HVDP0stZwVv
	 7FXEejjl8hH7TSxIJ1lkrtl9b4eyGy1iQBUUtlTAoTpMYFoV05S6zGeziv8d10vsdP
	 4Xks8WvLIF03Ht1tGic10617YiwquTbu7TKlPRhlBT/pMRaZqy9W+COROHtRVqyN8N
	 ovM5+//+3NIwg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andrea della Porta <andrea.porta@suse.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH] arm64: broadcom: bcm2712: Rework rp1 overlay handling
Date: Mon, 17 Nov 2025 15:15:02 -0600
Message-ID: <20251117211503.728354-2-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It's a requirement that DT overlays be applied at build time in order to
validate them as overlays are not validated on their own.

Simply adding a build time target is possible, but it's also not desirable
to have targets which include the overlay contents and apply the same
overlay.

Rework the targets such that there are 2 overlays: the existing RP1 overlay
and the board specific configuration of the RP1 (bcm2712-rpi-5-b.dtso).

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
The missing applying of rp1.dtbo will soon be a warning[1].

The comment in bcm2712-rpi-5-b.dts(o) needs updating or removing. The RP1
driver or userspace handling of the overlay probably needs updating to
handle the 2 overlays. IIRC, I think we can apply overlays to overlays
which may be useful here. If not, adding that to the tools should be
possible.

[1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.org/
---
 arch/arm64/boot/dts/broadcom/Makefile                 | 10 ++++++++--
 ...m2712-d-rpi-5-b.dts => bcm2712-d-rpi-5-b-base.dts} |  2 +-
 .../{bcm2712-rpi-5-b.dts => bcm2712-rpi-5-b.dtso}     | 11 +++++------
 3 files changed, 14 insertions(+), 9 deletions(-)
 rename arch/arm64/boot/dts/broadcom/{bcm2712-d-rpi-5-b.dts => bcm2712-d-rpi-5-b-base.dts} (95%)
 rename arch/arm64/boot/dts/broadcom/{bcm2712-rpi-5-b.dts => bcm2712-rpi-5-b.dtso} (92%)

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index 83d45afc6588..4957edec9d9f 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -6,9 +6,9 @@ DTC_FLAGS := -@
 dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
 			      bcm2711-rpi-4-b.dtb \
 			      bcm2711-rpi-cm4-io.dtb \
-			      bcm2712-rpi-5-b.dtb \
+			      bcm2712-rpi-5-b.dtbo \
 			      bcm2712-rpi-5-b-ovl-rp1.dtb \
-			      bcm2712-d-rpi-5-b.dtb \
+			      bcm2712-d-rpi-5-b-base.dtb \
 			      bcm2837-rpi-2-b.dtb \
 			      bcm2837-rpi-3-a-plus.dtb \
 			      bcm2837-rpi-3-b.dtb \
@@ -17,6 +17,12 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
 			      bcm2837-rpi-zero-2-w.dtb \
 			      rp1.dtbo
 
+bcm2712-rpi-5-b-dtbs := bcm2712-rpi-5-b-ovl-rp1.dtb rp1.dtbo bcm2712-rpi-5-b.dtbo
+dtb-$(CONFIG_ARCH_BCM2835) += bcm2712-rpi-5-b.dtb
+
+bcm2712-d-rpi-5-b-dtbs := bcm2712-d-rpi-5-b-base.dtb rp1.dtbo bcm2712-rpi-5-b.dtbo
+dtb-$(CONFIG_ARCH_BCM2835) += bcm2712-d-rpi-5-b.dtb
+
 subdir-y	+= bcmbca
 subdir-y	+= northstar2
 subdir-y	+= stingray
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b-base.dts
similarity index 95%
rename from arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
rename to arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b-base.dts
index 7de24d60bcd1..48a0ae118839 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b-base.dts
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /dts-v1/;
 
-#include "bcm2712-rpi-5-b.dts"
+#include "bcm2712-rpi-5-b-ovl-rp1.dts"
 
 &gio_aon {
 	brcm,gpio-bank-widths = <15 6>;
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtso
similarity index 92%
rename from arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
rename to arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtso
index b8f256545022..89d099c00035 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtso
@@ -15,19 +15,18 @@
  */
 
 /dts-v1/;
+/plugin/;
 
-#include "bcm2712-rpi-5-b-ovl-rp1.dts"
-
-&pcie2 {
-	#include "rp1-nexus.dtsi"
-};
+#include <dt-bindings/gpio/gpio.h>
 
 &rp1_eth {
 	status = "okay";
 	phy-mode = "rgmii-id";
 	phy-handle = <&phy1>;
+        #address-cells = <1>;
+        #size-cells = <0>;
 
-	mdio {
+	mdio@1 {
 		reg = <0x1>;
 		reset-gpios = <&rp1_gpio 32 GPIO_ACTIVE_LOW>;
 		reset-delay-us = <5000>;
-- 
2.51.0


