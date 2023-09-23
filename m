Return-Path: <devicetree+bounces-2652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C31F07ABEB9
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 10:01:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7F1732852B0
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 08:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A96546132;
	Sat, 23 Sep 2023 08:01:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEE7375
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 08:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 817B3C433CC;
	Sat, 23 Sep 2023 08:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695456099;
	bh=+0bl9JdtpO6RZoE8citmM/PLqhG+QSEn497rexS26YE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cONVAf0RPSXuf0xSZUfskI+UYtgfC3rYPXKa8jYXWC/kUG3+NdAiYZN4x0KHEJ0G/
	 kzQMmlQZFlIqix/Gpuyv3NMIzhzCvHhMSHdEtHOFQaP5WzJc7X3ntaFR5+tctqxJmt
	 psGPyYbx5Ca8hpnJWL42BXAm/ceTI3HIwis/KxXJa3mfNyNKmHR37tsCXPdwCyZTgz
	 3B76PVZrtPrdO4Rx93VFY0gKKW/nV/2PBu9XTj9ltW40tjRDixrWxCTNdzTu8I6QCU
	 lyFa5GK9+eVCgc4eCxZrcyYpVv1pvBaqrbG7YOvxf2wiSDPZOjx28wizokUAZG27FJ
	 7i7RSucWZy5ug==
From: Roger Quadros <rogerq@kernel.org>
To: nm@ti.com,
	afd@ti.com,
	robh+dt@kernel.org
Cc: vigneshr@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	srk@ti.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH v2 2/2] arm64: dts: ti: k3-am64: Add GPIO expander on I2C0
Date: Sat, 23 Sep 2023 11:00:46 +0300
Message-Id: <20230923080046.5373-3-rogerq@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230923080046.5373-1-rogerq@kernel.org>
References: <20230923080046.5373-1-rogerq@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A TCA9554 GPIO expander is present on I2C0. Add it.

Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 arch/arm64/boot/dts/ti/k3-am642-evm.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index b4a1f73d4fb1..3dccc597f516 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -392,6 +392,15 @@ &main_i2c0 {
 	pinctrl-0 = <&main_i2c0_pins_default>;
 	clock-frequency = <400000>;
 
+	gpio@38 {
+		/* TCA9554 */
+		compatible = "nxp,pca9554";
+		reg = <0x38>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "HSE_DETECT";
+	};
+
 	eeprom@50 {
 		/* AT24CM01 */
 		compatible = "atmel,24c1024";
-- 
2.34.1


