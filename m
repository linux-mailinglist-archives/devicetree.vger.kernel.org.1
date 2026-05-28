Return-Path: <devicetree+bounces-303827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPUkIEI8GGo1hggAu9opvQ
	(envelope-from <devicetree+bounces-303827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 14:59:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C01705F2619
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 14:59:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CAE931E93EC
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 12:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B177F3F1643;
	Thu, 28 May 2026 12:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="iF7PR6ZQ"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEF33F0A86;
	Thu, 28 May 2026 12:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779972858; cv=none; b=IV9bqD3mx+gfRw1RB/EmBOiSoq2Whk0bVegQPW46yQPe8GiCbLQIQJiSavJllDo3xMgw3J2iNiAJLNJo62nLYxLipfnRV7wr8/1PAE1pXs5D15qrAeprrPfvkZBY9lcGQMxBJcnaAS/+lQzV6GKl5uNEP46ePmfebAmnCox4mV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779972858; c=relaxed/simple;
	bh=N8Ms7YOn2QGbjugFPA+v2r5GXvn1LfJmcXoB+uWICwg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H0bewh+4FlOadlrHLxqsx0XnwRuBnIqpQ2dA92ov1Y560C/oiBWZdazsvF2JPw8f/cjvOcuIfi/aLr0iYaXsYxxukMTQ0dbenh52zjtB5S9rWBBzaNCLH7VZhK6vBP7JGHcmw4PPr1xGVX6imzLk52c9O0Pny+ebRpFUvE2Wfy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=iF7PR6ZQ; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 741918E0;
	Thu, 28 May 2026 14:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1779972834;
	bh=N8Ms7YOn2QGbjugFPA+v2r5GXvn1LfJmcXoB+uWICwg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iF7PR6ZQ8QJn8Hu3ZZAWmfFaFjSCLiL6APBTb7cwWTlmYORcvTeUwwxT5Erg7CHj8
	 mNa9t3qXgJqlyt8/iQD11ubJD7mJ30nKmSG1HOIzjTE+tMCIpHtpHm2dv11UONWanm
	 4enypFlR3vS0BhYMxjAn8S18iITTOvcIMOD/k7Ps=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Thu, 28 May 2026 15:53:43 +0300
Subject: [PATCH 2/6] arm64: dts: ti: k3-am62*: Rename 'clock-controller' to
 'clock'
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260528-ti-main-conf-v1-2-a54ac5c8d081@ideasonboard.com>
References: <20260528-ti-main-conf-v1-0-a54ac5c8d081@ideasonboard.com>
In-Reply-To: <20260528-ti-main-conf-v1-0-a54ac5c8d081@ideasonboard.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abraham I <kishon@kernel.org>, 
 Roger Quadros <rogerq@kernel.org>, Devarsh Thakkar <devarsht@ti.com>, 
 Swamil Jain <s-jain1@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2881;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=N8Ms7YOn2QGbjugFPA+v2r5GXvn1LfJmcXoB+uWICwg=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBqGDrxycB6BmSQ73NfGywRkMJaWPk95dIft+pl0
 pC3j6SSW3CJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCahg68QAKCRD6PaqMvJYe
 9S57D/41uTXC6qUiMePqkwVikrfRbAWayLx4/hlL1jjsnHqPWf5jtuFBB7RGmpb67dfu9eNrowO
 JQVZ0M8Ru6vcwdmggb3Kzc3saLgWRUmfwwUoqfxGwSusXp55BwUs87h8LQybFE3der5/RmD5Ekg
 l/hNikkF5Q/VaWtWWjmcwVFqby3gv16fWwfcJOLzQppsJ08ZegKgwFkrm2pfdc9BlvtPXhqCUd5
 kJQkBuN8SDfJ1fsFPOLAEcZZiovQ3sO8XoPCVfb89KhYwHzU8R3uXpSaihqw6OJWgmMhbxIDT8b
 2tiWKvUq4m1vZ5qje38Y0bVTBcrGIUKHpINvQFw+vPtbohPEHJpQ2R+t3tGaHQloimVLyBWFKQZ
 eOTXwUJUWEZJKCVpuq3qLLnRrOB+kozfzA+B/AB8Ikd4yvuG3MJ+x0TJcFnTHh5NO4720+iA8v2
 v1gplCnM9t3WRqBgUHpFPSBetPc/stl5WDGHu3PXu1Mo81pVxJojFolgFc05deC8OKeK7NnIFeq
 aWyNOR6OT52eDzN6h3AnYXAUAqDVo8RgZnPlSh4WkjyIdVqhNqNqUTjrAghRIWj6S410M+i1fUa
 bp3qJNHuR36cGy/icGjPLttMb4eelGV0mrYIayPsQTvZAhiIt7EW/A92pN7K789wr0ao8VH7gxL
 bX65LPwyI3ib8Eg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303827-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomi.valkeinen@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[82e4:email,0.1.134.160:email,ideasonboard.com:email,ideasonboard.com:mid,ideasonboard.com:dkim,0.0.16.34:email,82e0:email]
X-Rspamd-Queue-Id: C01705F2619
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Multiple dtsi files have clock nodes with 'clock-controller' names.
Rename them to 'clock' to be more in line with the fact that it's just a
single clock.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi               | 4 ++--
 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi              | 4 ++--
 arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
index c5ee263d34a6..228f8c3e8bf6 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
@@ -59,7 +59,7 @@ epwm_tbclk: clock-controller@4130 {
 			#clock-cells = <1>;
 		};
 
-		audio_refclk0: clock-controller@82e0 {
+		audio_refclk0: clock@82e0 {
 			compatible = "ti,am62-audio-refclk";
 			reg = <0x82e0 0x4>;
 			clocks = <&k3_clks 157 0>;
@@ -68,7 +68,7 @@ audio_refclk0: clock-controller@82e0 {
 			#clock-cells = <0>;
 		};
 
-		audio_refclk1: clock-controller@82e4 {
+		audio_refclk1: clock@82e4 {
 			compatible = "ti,am62-audio-refclk";
 			reg = <0x82e4 0x4>;
 			clocks = <&k3_clks 157 10>;
diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
index 9e5b75a4e88e..9287d7be7cc8 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
@@ -60,7 +60,7 @@ epwm_tbclk: clock-controller@4130 {
 			#clock-cells = <1>;
 		};
 
-		audio_refclk0: clock-controller@82e0 {
+		audio_refclk0: clock@82e0 {
 			compatible = "ti,am62-audio-refclk";
 			reg = <0x82e0 0x4>;
 			clocks = <&k3_clks 157 0>;
@@ -69,7 +69,7 @@ audio_refclk0: clock-controller@82e0 {
 			#clock-cells = <0>;
 		};
 
-		audio_refclk1: clock-controller@82e4 {
+		audio_refclk1: clock@82e4 {
 			compatible = "ti,am62-audio-refclk";
 			reg = <0x82e4 0x4>;
 			clocks = <&k3_clks 157 10>;
diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
index f130c7cb998d..7c2f03780885 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
@@ -46,7 +46,7 @@ main_conf: bus@100000 {
 		#size-cells = <1>;
 		ranges = <0x00 0x00 0x00100000 0x20000>;
 
-		audio_refclk0: clock-controller@82e0 {
+		audio_refclk0: clock@82e0 {
 			compatible = "ti,am62-audio-refclk";
 			reg = <0x82e0 0x4>;
 			clocks = <&k3_clks 157 0>;
@@ -55,7 +55,7 @@ audio_refclk0: clock-controller@82e0 {
 			#clock-cells = <0>;
 		};
 
-		audio_refclk1: clock-controller@82e4 {
+		audio_refclk1: clock@82e4 {
 			compatible = "ti,am62-audio-refclk";
 			reg = <0x82e4 0x4>;
 			clocks = <&k3_clks 157 18>;

-- 
2.43.0


