Return-Path: <devicetree+bounces-206755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 204ADB2D6DC
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:41:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AC581C22C98
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576A82DC355;
	Wed, 20 Aug 2025 08:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="qY7l5EVB"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84102DAFC6
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755678954; cv=none; b=F8vuLEmQzINed4fXEzKGgwjF+FTVYe1vVAH/zW64/qDpoyjy7tYRlsnfaqWtS4hrrFI5arxEGhTL5oGIBH2sCVLNlzZZ+Kicgnq5C8QPdPjn1cD1FWJ8AoeuTe8d5dSyTL5qF91DHjFryWo5Pc888ecKwMik7ibBwLkEHJ+S3Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755678954; c=relaxed/simple;
	bh=OWGxcklWWo0vv0ZQ8Q6Q56zQqcy4rZKZZq9hhvEnZuk=;
	h=From:Date:Subject:MIME-Version:Message-Id:In-Reply-To:To:Cc:
	 Content-Type:References; b=oAqx/Wm1gj7W3WUmYpPxLsm4Jj/xAGpNMLW4MGW0hYPj84ppVkxjpz1T05PD+4xszD3qBCj8sJ0Vxr4w3RHn/pROlNiL1QFg8wIT+WoNJoHUgj2bO8IM/bUyHT1ZnWZgIfxQY4UAvE9gE0+C1O5/oNDT+gTRHmUBeIkALOuaz8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=qY7l5EVB; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250820083549euoutp024d7587d80030a7021cd34495a27b6724~dbLPNnfN01525515255euoutp02N
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:35:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250820083549euoutp024d7587d80030a7021cd34495a27b6724~dbLPNnfN01525515255euoutp02N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755678949;
	bh=nmhVn6OSCj5podj8kRrzheU5aifoU9hBWKaGqoQKYps=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=qY7l5EVBSyoTibkDSZAgEC/OSZ0t389E3cN1WBsvKWtJvVobjH96hpDJDC3Q28xAo
	 zXLo4V0seVWxrKZoK+ZM0bzh6DM03tEj3a/DxsTBOgZQ2ya2NbXlZrOCNMI6tpr6WK
	 Rn/47mfmbmvFVFd9hNtTm3tO2Qxgl3rT1V2INDLw=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250820083548eucas1p2a40775d53dfd9f8608671cc20003fd7d~dbLOs73AC2603926039eucas1p2h;
	Wed, 20 Aug 2025 08:35:48 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250820083547eusmtip28b019eaa1665ca84eb4f519f74035d0a~dbLNo2aZL3003530035eusmtip2L;
	Wed, 20 Aug 2025 08:35:47 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Wed, 20 Aug 2025 10:35:42 +0200
Subject: [PATCH v14 7/7] riscv: dts: thead: Add PWM fan and thermal control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-rust-next-pwm-working-fan-for-sending-v14-7-df2191621429@samsung.com>
In-Reply-To: <20250820-rust-next-pwm-working-fan-for-sending-v14-0-df2191621429@samsung.com>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,  Miguel Ojeda
	<ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,  Boqun Feng
	<boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,  Andreas
	Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,  Trevor
	Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>,  Michal
	Wilczynski <m.wilczynski@samsung.com>, Guo Ren <guoren@kernel.org>,  Fu Wei
	<wefu@redhat.com>, Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
	<krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Paul Walmsley
	<paul.walmsley@sifive.com>,  Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>,  Alexandre Ghiti <alex@ghiti.fr>,  Marek Szyprowski
	<m.szyprowski@samsung.com>,  Benno Lossin <lossin@kernel.org>,  Michael
	Turquette <mturquette@baylibre.com>,  Drew Fustini <fustini@kernel.org>, 
	Daniel Almeida <daniel.almeida@collabora.com>,  Benno Lossin
	<lossin@kernel.org>, Drew Fustini <fustini@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
	rust-for-linux@vger.kernel.org, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org
X-Mailer: b4 0.15-dev
X-CMS-MailID: 20250820083548eucas1p2a40775d53dfd9f8608671cc20003fd7d
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250820083548eucas1p2a40775d53dfd9f8608671cc20003fd7d
X-EPHeader: CA
X-CMS-RootMailID: 20250820083548eucas1p2a40775d53dfd9f8608671cc20003fd7d
References: <20250820-rust-next-pwm-working-fan-for-sending-v14-0-df2191621429@samsung.com>
	<CGME20250820083548eucas1p2a40775d53dfd9f8608671cc20003fd7d@eucas1p2.samsung.com>

Add Device Tree nodes to enable a PWM controlled fan and it's associated
thermal management for the Lichee Pi 4A board.

This enables temperature-controlled active cooling for the Lichee Pi 4A
board based on SoC temperature.

Reviewed-by: Drew Fustini <fustini@kernel.org>
Tested-by: Drew Fustini <fustini@kernel.org>
Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts | 67 +++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
index 4020c727f09e8e2286fdc7fecd79dbd8eba69556..c58c2085ca92a3234f1350500cedae4157f0c35f 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
@@ -28,9 +28,76 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	thermal-zones {
+		cpu-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <1000>;
+			thermal-sensors = <&pvt 0>;
+
+			trips {
+				fan_config0: fan-trip0 {
+					temperature = <39000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				fan_config1: fan-trip1 {
+					temperature = <50000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+
+				fan_config2: fan-trip2 {
+					temperature = <60000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+			};
+
+			cooling-maps {
+				map-active-0 {
+					cooling-device = <&fan 1 1>;
+					trip = <&fan_config0>;
+				};
+
+				map-active-1 {
+					cooling-device = <&fan 2 2>;
+					trip = <&fan_config1>;
+				};
+
+				map-active-2 {
+					cooling-device = <&fan 3 3>;
+					trip = <&fan_config2>;
+				};
+			};
+		};
+	};
+
+	fan: pwm-fan {
+		pinctrl-names = "default";
+		pinctrl-0 = <&fan_pins>;
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		pwms = <&pwm 1 10000000 0>;
+		cooling-levels = <0 66 196 255>;
+	};
+
 };
 
 &padctrl0_apsys {
+	fan_pins: fan-0 {
+		pwm1-pins {
+			pins = "GPIO3_3"; /* PWM1 */
+			function = "pwm";
+			bias-disable;
+			drive-strength = <25>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+	};
+
 	uart0_pins: uart0-0 {
 		tx-pins {
 			pins = "UART0_TXD";

-- 
2.34.1


