Return-Path: <devicetree+bounces-251313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3F1CF13F3
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 20:15:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A16943013EE6
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 19:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3AC2314B91;
	Sun,  4 Jan 2026 19:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="xy8zIJpA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF062DC332;
	Sun,  4 Jan 2026 19:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767554113; cv=none; b=gxa83dSX0yJCy+2rt0cblC+/VP8T1RCNAIg0O4DKOIdLdf1hcWLDYV/ivfi1vcPFFh+bdytCHbxAhpmRhe0E8oqdZPz/Nj2nwhRpu5ctWbL2KgqyuD7C7HYvo1Desqq9IYK2aPEg548TLJ8fFZsp0tbyOyWhG5Qe28tli98g5Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767554113; c=relaxed/simple;
	bh=hJ3jrEEjkN3O32GbC6qCB6f4VASXfHjg6HAUsL9DwWQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GDYgd9UPCuDJm1z0iS2NfvlHxA4rfR+2deRrnrMMlFgSusTpQPgGj/hCFigfnuak+xSVK3GWgsuyMbbQmnaT3UAqs6rM/Gh1IczTUlq3k6m15H8uE8ovKLsxzBSMEs6+3hpyIFeCJmfFyiMaWWG17ZFJWxn9Li56ddVznG30uz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=xy8zIJpA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=HSw1IaweIkWmZgcN12gmjxMT6CneZYi7udZOkO6OjGE=; b=xy8zIJpAk7m1GpF2Bkk3AECZCe
	LKk6E0njVq1w5pJ36IxnE+1tb7mLD52w0SgJxFINIE3wYmIw3fLwuNXpk3+gmW+VAOJr5R+GCK7sY
	RqpCJYtgaXYPBQuC0wpdCp58wWzlbwf+z3kyVstq8WjOm6fQNIiq2Nyzjekk5sAHm84s39IlVU+XM
	Ric9GhEp09mRkW7IMbiZIYrHPUpX/QQN8BgIGBosSYPyQh9iiK2JZrwmx19f4Tv0xZhGk822G6QK6
	B/KdyhtCHLSN+DgDHmGAIH1rsAf9e+mWHCdfHDYeDuSoMxYLvm7ku9wWLzZLJ9GqKvQr5APp/JQ9z
	CfA+wWag==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcTZA-0012Mf-DJ; Sun, 04 Jan 2026 20:15:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] arm64: dts: rockchip: Fix the common combophy + SATA on QNAP TSx33 devices
Date: Sun,  4 Jan 2026 20:14:45 +0100
Message-ID: <20260104191448.2693309-3-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104191448.2693309-1-heiko@sntech.de>
References: <20260104191448.2693309-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The common used SATA controller on all TSx33 devices is actually SATA2.
So move the SATA controller + combophy enablement to their correct
position between shared dtsi and board devicetrees.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts  |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts  |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi | 10 +++++-----
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts
index 9a7d58e7ccc0..e76502180788 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts
@@ -18,8 +18,8 @@ aliases {
 	};
 };
 
-/* connected to sata2 */
-&combphy2 {
+/* Connected to usb_host0_xhci */
+&combphy0 {
 	status = "okay";
 };
 
@@ -93,7 +93,7 @@ hdd2_led_pin: hdd2-led-pin {
 	};
 };
 
-&sata2 {
+&sata1 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 02d0974d79be..708e7f1f8d0d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -28,8 +28,8 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
 	};
 };
 
-/* connected to sata2 */
-&combphy2 {
+/* Connected to usb_host0_xhci */
+&combphy0 {
 	status = "okay";
 };
 
@@ -151,7 +151,7 @@ hdd4_led_pin: hdd4_led-pin {
 	};
 };
 
-&sata2 {
+&sata1 {
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi
index c372ca40fd50..482d8584ec88 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi
@@ -112,13 +112,13 @@ vcc5v0_usb: regulator-vcc5v0-usb {
 	};
 };
 
-/* connected to usb_host0_xhci */
-&combphy0 {
+/* Connected USB3 on TS133 / SATA1 on all the others */
+&combphy1 {
 	status = "okay";
 };
 
-/* connected to sata1 */
-&combphy1 {
+/* Connected to SATA2 */
+&combphy2 {
 	status = "okay";
 };
 
@@ -484,7 +484,7 @@ &pmu_io_domains {
 	status = "okay";
 };
 
-&sata1 {
+&sata2 {
 	status = "okay";
 };
 
-- 
2.47.2


