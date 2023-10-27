Return-Path: <devicetree+bounces-12472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE4C7D9A0F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:36:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6178E281DE7
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A5F200A8;
	Fri, 27 Oct 2023 13:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="Ow/dupZE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DD51F5E6
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:35:55 +0000 (UTC)
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 27 Oct 2023 06:35:44 PDT
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 052DF172D
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:35:44 -0700 (PDT)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 202310271334398328f87f746303f9e0
        for <devicetree@vger.kernel.org>;
        Fri, 27 Oct 2023 15:34:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=WAgTrsyOkM2Z/pbjkiAN/Jv1epYEBMIOyHeuSB3TCUc=;
 b=Ow/dupZE1G89ABU0bsQ9WaCabxF+vTs9AQBpMUwkWV9l74a5J9WhfL0+MviHgXYmh7xhT0
 TSK8+RORCwqe4v93d36qNEg8HbxD2eT3Z/x9ygEwsjRJdSNb95BsfPumKDF9XMSXAoJYV0gT
 hXguAzwTMTCej6O9Hf49m2weFT8EA=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
Subject: [PATCH 2/7] arm64: dts: ti: iot2050: Drop unused ecap0 PWM
Date: Fri, 27 Oct 2023 15:34:33 +0200
Message-Id: <230ab0a39038a3a5e233c3e257e5589c4d715ac1.1698413678.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1698413678.git.jan.kiszka@siemens.com>
References: <cover.1698413678.git.jan.kiszka@siemens.com>
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

In fact, this was never used by the final device, only dates back to
first prototypes.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index b849648d51f9..fc39ae0f9587 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -355,12 +355,6 @@ AM65X_IOPAD(0x0008, PIN_INPUT,  0)  /* (B21) I2C1_SCL */
 			AM65X_IOPAD(0x000c, PIN_INPUT,  0)  /* (E21) I2C1_SDA */
 		>;
 	};
-
-	ecap0_pins_default: ecap0-default-pins {
-		pinctrl-single,pins = <
-			AM65X_IOPAD(0x0010, PIN_INPUT,  0)  /* (D21) ECAP0_IN_APWM_OUT */
-		>;
-	};
 };
 
 &wkup_uart0 {
@@ -557,12 +551,6 @@ &mcu_cpsw {
 	status = "disabled";
 };
 
-&ecap0 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&ecap0_pins_default>;
-};
-
 &sdhci1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_mmc1_pins_default>;
-- 
2.35.3


