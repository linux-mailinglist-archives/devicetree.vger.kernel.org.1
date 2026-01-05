Return-Path: <devicetree+bounces-251667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6C8CF56C0
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 20:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0795F3008F54
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 19:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B0F27FD6E;
	Mon,  5 Jan 2026 19:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvPttCa0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96F422D7B0;
	Mon,  5 Jan 2026 19:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767642415; cv=none; b=nfFhCZZwaUzK1me8bj8BPbVcE+dBUetd2l+vzR0J6ItrO03jjxqu9FMBHr9pUcwtVW77V4NQ2IKB+LDE13ALLCS2IWl7O8nsaFS04chG0bn/hXBFvcTwjuJcs57wL6y85YMN2k2hEOEWfMa52kzuEBy/lQsy5s6KdxvTv21SOFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767642415; c=relaxed/simple;
	bh=1iZEURVnC5EHBu7RqBBmRA9ws4DI038EuiShk+6L6ak=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=spxEJJW18ZZsmeZZMrTofRWFuDY5bKbHFeub4iGQmm+NQhMVHwXVTu7ldojV9eyGlWOG0HiNWPtRjZRgIcARfV8Nmv90CxVy+yvnLWmReoq9/gLnAHqNZzDpx1clJSxYLy9Nn/wj2vGManYlJLcUdCAn4HvxzXdkX59X9rhZdmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvPttCa0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E0DEC116D0;
	Mon,  5 Jan 2026 19:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767642415;
	bh=1iZEURVnC5EHBu7RqBBmRA9ws4DI038EuiShk+6L6ak=;
	h=From:To:Cc:Subject:Date:From;
	b=XvPttCa0iUhdJKH1lrTp45IYnscelYmdPBYoAOUheFKu85kDzl4aNNNcDVIAF+xQs
	 o714Lsu8J8IhefgiLzEUpOSVCaamuNHhcgUG/8NAqkk5TrAWH5Oj8Au49r6L/nLr6x
	 6bfKoXBR6X7ohBQDKHA2VWBmKCWfiNgQhn1pRC10PF0X6J/IxVbAJlSE8NOo7YYAXx
	 +LPuud+fgAygUa/MzIu3k9X+MiC580Trksqedx+fLZt53kkpao3SllRQnaYDV/XWRY
	 EnDhsGojwSraPGlc30iVhw/0E4wN9O+x6aqjNI5Ht4j4vp5EGdLFAhZRwbx09xdZfs
	 AWoGqYkVMHveg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: marvell: change regulator-gpio to regulator-fixed
Date: Mon,  5 Jan 2026 13:46:52 -0600
Message-ID: <20260105194653.3189515-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A "regulator-gpio" must have a GPIO control, hence the name. There's no
GPIO on a couple of Marvell platforms at least as far as the DT is
defined, so change the regulator type from GPIO to fixed.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts | 9 ++-------
 arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi | 3 ++-
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
index 9f4bafeddd82..a881a3326dba 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
@@ -26,16 +26,11 @@ memory@0 {
 	};
 
 	vcc_sd_reg1: regulator {
-		compatible = "regulator-gpio";
+		compatible = "regulator-fixed";
 		regulator-name = "vcc_sd1";
-		regulator-min-microvolt = <1800000>;
+		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-boot-on;
-
-		gpios-states = <0>;
-		states = <1800000 0x1
-			3300000 0x0>;
-		enable-active-high;
 	};
 
 	keys {
diff --git a/arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi b/arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi
index 6f3914bcfd01..71c225221617 100644
--- a/arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi
@@ -15,8 +15,9 @@ / {
 };
 
 &ap0_reg_sd_vccq {
+	compatible = "regulator-fixed";
 	regulator-max-microvolt = <1800000>;
-	states = <1800000 0x1 1800000 0x0>;
+	/delete-property/ states;
 	/delete-property/ gpios;
 };
 
-- 
2.51.0


