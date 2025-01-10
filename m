Return-Path: <devicetree+bounces-137380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFA9A08D43
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:03:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A2FE167B75
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C0B1209F5E;
	Fri, 10 Jan 2025 10:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="rO+pXUmK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6BE2080DC
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 10:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736503420; cv=none; b=Fyt/MzxpcXL7zndge6Sk1udEUuJStXZqqsnUx3ZN4MpfpV3kErQ8wXT/ieBRc4qjAIm4DliKfmzm7YB6/DskUf9RswUKzgcJvCtNyonW98maTOBJZY3iXROkHyM2YRT9Q51bozjPbT8ntDgARhtY0Y+DkI5ZcwkA2RoyeKwVyOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736503420; c=relaxed/simple;
	bh=s486OBEkMwJuMAjIgvcUMKQweOGBuZF3xKIN3EYjDRM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=drMetOVDwEl9GFLGgqH1Qz+//YlKklGoMsyu6JnJQ1hyvl7+rWs5BtlHpy7LEfAULmsghN9oxEccBpUSYEaZuOx8JA/BAx8H+XV2Qxwqtt5048FBZWMFUpUInnEZmHaJXYtNbXl0A5gN3cl9LPND5ymvL73UePf6Jz3Q3Vljay8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=rO+pXUmK; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38a8b17d7a7so989904f8f.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 02:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1736503416; x=1737108216; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jlu2z2pHdwrGgG2KP5sY+xg4s8F2B2cTQIqPiS7nzHw=;
        b=rO+pXUmKyZaMSQGljWDt6Zb+PB6D6c/MFfYhviJhmDY8gnwPcNaROOoYlVwO6ngK6A
         jWh6g1Q6uOSWcOOPQwyklubGlJ4T611ZTO9Q8afM0TG4Yg1cFIFo7yQn2jF8mr2bx3lv
         FiIFAYqzsxozS+MfKkRY708y3eXX9GAcJhm60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736503416; x=1737108216;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jlu2z2pHdwrGgG2KP5sY+xg4s8F2B2cTQIqPiS7nzHw=;
        b=KD0rt+4NQUK0nsNcPhn7AdnLqTXJXuQSfcrTYHRi4QVjADnGfUlpBkl2hopTFuuD2e
         i6E3RbjWGZMvdhhI87xkKB6ojuwQENQYLUfL7wyAbt3NH4YM9BsoNxHsC8MPrWyfjNc9
         s8JiXsGUXFCTlWybET+4S7FsLVPuyr2top8rIoyTbhoFkp9sbVbCcilIwzECqicRHXTh
         4LK1hTW8ZB6t16a/jsB32JEajN9c5Z71ouzJuSbSs3bE9KpJybNIHf6KaSvCjF4jmb1K
         oYD/OxvawloOJ0feQIw0g00qIW6qIV58uuoDVVPovnkM/LVYahdegcpRtPujhsEquUXX
         +i3A==
X-Gm-Message-State: AOJu0YyEYORmKfXaw2XvwZ9uUUrcMOuRAGIrJXSFOtqZy5EjgHtm1suz
	76fel7Q4tWSV7GmTdss0K9QtJxvW5RlJ6lI3GmZWe5moUUa4g2TOx3gbUkJ5JXx1hRsmtkA9Rub
	q
X-Gm-Gg: ASbGnct3XKtdpuAiU9esaiWGV+q42eR8BWwJW6hrIbHbb4XoUQ4QILWMaM3NggAX+Nc
	aerQtzwXlCn+aYe/bglA5bLna6iB7kMhYnc8tJLrDJSsQk6t5SA6G4zEwDcy1Pq9J7IiYcBzuwW
	Bo2mJTJMtE6LIgXdY1feQH7Cy5tDwTa/sJM7c+Yxh8mXENpdHYjrlTGDCA9sYst1pwz88/FHx2C
	G3Dk9BhbgzWwDq9e2EcEWQ4uV/BAmyKQAeXoOnL+y0kJNZ5JVJVJSBh2F6tlWlibpqe77aKC6v8
	kyVUD0e/uO9LC2uRpT9Z1dCEgXSeZ/XiQLzHu/vTaKF8m/yC4eKUmA==
X-Google-Smtp-Source: AGHT+IHyEAHWU5ly3eyj+DcRzpVdOPzllhfmOMWBbwpJQcUozRmuiIObKmwQNUj7Xey7hrqWhL/MZA==
X-Received: by 2002:a5d:588a:0:b0:385:fc32:1ec6 with SMTP id ffacd0b85a97d-38a87355087mr8406629f8f.50.1736503415656;
        Fri, 10 Jan 2025 02:03:35 -0800 (PST)
Received: from P-NTS-Evian.home (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e37d085sm4198483f8f.13.2025.01.10.02.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 02:03:35 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kristo@kernel.org,
	vigneshr@ti.com,
	nm@ti.com,
	afd@ti.com,
	Romain Naour <romain.naour@skf.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Subject: [PATCH v5 2/2] arm64: dts: ti: k3-j721e-beagleboneai64: Enable ACSPCIE output for PCIe1
Date: Fri, 10 Jan 2025 11:03:31 +0100
Message-ID: <20250110100331.1642242-2-romain.naour@smile.fr>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250110100331.1642242-1-romain.naour@smile.fr>
References: <20250110100331.1642242-1-romain.naour@smile.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Romain Naour <romain.naour@skf.com>

Unlike the SK-TDA4VM (k3-j721e-sk) board, there is no clock generator
(CDCI6214RGET) on the BeagleBone AI-64 (k3-j721e-beagleboneai64) to
provide PCIe refclk signal to PCIe Endponts. So the ACSPCIE module must
provide refclk through PCIe_REFCLK pins.

Use the new "ti,syscon-acspcie-proxy-ctrl" property to enable ACSPCIE
module's PAD IO Buffers.

Using "ti,j721e-acspcie-proxy-ctrl" imply to use use "Proxy1"
address (1A090h) instead of "Proxy0" (18090h) to access
CTRLMMR_ACSPCIE0_CTRL register:

  CTRLMMR_ACSPCIE0_CTRL Register (Proxy0 Offset = 18090h; Proxy1 Offset = 1A090h)

So use "syscon@1a090" for acspcie0_proxy_ctrl node.

Cc: Siddharth Vadapalli <s-vadapalli@ti.com>
Signed-off-by: Romain Naour <romain.naour@skf.com>
---
With this patch, we can remove "HACK: Sierra: Drive clock out" patch
applied on vendor kernel for BeagleBone AI-64:
https://openbeagle.org/beagleboard/linux/-/commit/ad65d7ef675966cdbc5d75f2bd545fad1914ba9b

v5:
  - update the acspcie0_proxy_ctrl node address to use really use the
    "PROXY" register implied by ti,j721e-acspcie-proxy-ctrl compatible.

  https://lore.kernel.org/linux-devicetree/begojbvvrpyjfr3pye7mqwiw73ucw5ynepdfujssr4jx4vs33a@pwahnph3qesl/

v4: no change

v3:
 - update "acspcie0_proxy_ctrl" compatible to "ti,j721e-acspcie-proxy-ctrl"
   since this property is specific to j721e variant.

v2:
 - use generic style comments
 - use "syscon" as generic node name for "acspcie0_proxy_ctrl" node
 - Keep the compatible "ti,j784s4-acspcie-proxy-ctrl" since the
   ACSPCIE buffer and its functionality is the same across all K3 SoCs.
   (Siddharth Vadapalli)

   "The compatible "ti,j784s4-acspcie-pcie-ctrl" should be reused for
   J721E and all other K3 SoCs.
   For example, see:
   https://lore.kernel.org/r/20240402105708.4114146-1-s-vadapalli@ti.com/
   which introduced "ti,am62p-cpsw-mac-efuse" compatible.

   The same compatible is reused across all K3 SoCs:
   https://lore.kernel.org/r/20240628151518.40100-1-afd@ti.com/ "
---
 arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts |  5 +++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 10 ++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
index fb899c99753e..741ad2ba6fdb 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
@@ -859,6 +859,11 @@ &pcie1_rc {
 	num-lanes = <2>;
 	max-link-speed = <3>;
 	reset-gpios = <&main_gpio0 22 GPIO_ACTIVE_HIGH>;
+	/*
+	 * There is no on-board or external reference clock generators,
+	 * use refclk from the ACSPCIE module's PAD IO Buffers.
+	 */
+	ti,syscon-acspcie-proxy-ctrl = <&acspcie0_proxy_ctrl 0x3>;
 };
 
 &ufs_wrapper {
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index af3d730154ac..bc016c551710 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -5,6 +5,7 @@
  * Copyright (C) 2016-2024 Texas Instruments Incorporated - https://www.ti.com/
  */
 #include <dt-bindings/phy/phy.h>
+#include <dt-bindings/phy/phy-cadence.h>
 #include <dt-bindings/phy/phy-ti.h>
 #include <dt-bindings/mux/mux.h>
 
@@ -82,6 +83,11 @@ ehrpwm_tbclk: clock-controller@4140 {
 			reg = <0x4140 0x18>;
 			#clock-cells = <1>;
 		};
+
+		acspcie0_proxy_ctrl: syscon@1a090 {
+			compatible = "ti,j721e-acspcie-proxy-ctrl", "syscon";
+			reg = <0x1a090 0x4>;
+		};
 	};
 
 	main_ehrpwm0: pwm@3000000 {
@@ -979,8 +985,8 @@ pcie1_rc: pcie@2910000 {
 		max-link-speed = <3>;
 		num-lanes = <2>;
 		power-domains = <&k3_pds 240 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 240 1>;
-		clock-names = "fck";
+		clocks = <&k3_clks 240 1>, <&serdes1 CDNS_SIERRA_DERIVED_REFCLK>;
+		clock-names = "fck", "pcie_refclk";
 		#address-cells = <3>;
 		#size-cells = <2>;
 		bus-range = <0x0 0xff>;
-- 
2.47.1


