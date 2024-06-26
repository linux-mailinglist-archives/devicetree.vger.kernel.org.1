Return-Path: <devicetree+bounces-79962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E52917786
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 06:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64C802849C8
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 04:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 254F3149DF1;
	Wed, 26 Jun 2024 04:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="Nu7rQosA"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369D613C3F6
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719376940; cv=none; b=NjxOUdYnOvhvnRDobMTA+YG80/vvdj9G0Y1AZLVxdeWzeXazjfyDrJBeeKB530OZZeuSpWOgj+LyH2SODPGA45rIC4RgmKzi+2FW478dYq8qI9FUTPhGfhKBNCwl4PBCjsLyw4RLtmZMVNN9mMSANT0nCd2d0WU2O5aKnYAFij8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719376940; c=relaxed/simple;
	bh=gOnnGFrCNHyAwTXnFy/ijI8fleOSIwfAMcn6FK04PNE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aV6h+TCp5OZOXl/3f4n/lAGLcUlkuv/rj6WqYqpjwMM+Uknd/tRJw+s1fj60m+A78UUPr8LTECB9Q9zzP1HmEYSodH+uFiZxZxTlMZaV1DDMlIK13rQrRACvQOHrl10ziDKx0squngUUE4qVYov17Nfy6/wIUiJBpPFRFYRIMy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=Nu7rQosA; arc=none smtp.client-ip=185.136.64.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 202406260442097cbdcc248422d1333e
        for <devicetree@vger.kernel.org>;
        Wed, 26 Jun 2024 06:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=2JW562zd7UF7vvqn05zomFnN4EhjrMfcocTZCV1+5wk=;
 b=Nu7rQosAw6U4N4xpkinSbPFSVSUx0x5LUJrk7WvUSAlu59tOD8ijXgUzL032MWjxITqF5Q
 Q3y6JacX2MkyKLBnfjF0pAfll1kHfVw4vR5QhyA5/DGbMMjs0l0S7UiSvFJAE87jFRt3AUHs
 OdpIRsIjbg+I03JADo0/jNGZ5bJUs=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v2 1/4] arm64: dts: ti: k3-j72xx-mcu-wakeup: add dedicated wakeup controller compatible
Date: Wed, 26 Jun 2024 06:42:05 +0200
Message-ID: <f589fcea70004cae1c822871023ade86723bb1e3.1719376928.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1719376928.git.jan.kiszka@siemens.com>
References: <cover.1719376928.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Each syscon node must come with a dedicated/specific compatible, which
is also reported by dtbs_check:

  k3-j7200-common-proc-board.dtb: scm-conf@40f00000: compatible: ['syscon', 'simple-mfd'] is too short

Add one for the TI K3 AM654 MCU wakeup system controller used in J72xx
SoCs.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi  | 2 +-
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi  | 2 +-
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index fccaabfb1348..3a78a3c1676d 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -165,7 +165,7 @@ mcu_timer9: timer@40490000 {
 	};
 
 	mcu_conf: syscon@40f00000 {
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,am654-system-controller", "syscon", "simple-mfd";
 		reg = <0x00 0x40f00000 0x00 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index 9349ae07c046..d68e33d71eb3 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -35,7 +35,7 @@ k3_reset: reset-controller {
 	};
 
 	mcu_conf: syscon@40f00000 {
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,am654-system-controller", "syscon", "simple-mfd";
 		reg = <0x0 0x40f00000 0x0 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
index 5ccb04c7c462..1edb71f4a1bb 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
@@ -140,7 +140,7 @@ wkup_gpio_intr: interrupt-controller@42200000 {
 	};
 
 	mcu_conf: syscon@40f00000 {
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,am654-system-controller", "syscon", "simple-mfd";
 		reg = <0x0 0x40f00000 0x0 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.43.0


