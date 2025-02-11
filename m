Return-Path: <devicetree+bounces-145311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9646A30E21
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 113AD3A36B9
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 14:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F42A24E4C3;
	Tue, 11 Feb 2025 14:22:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc0b.mail.infomaniak.ch (smtp-bc0b.mail.infomaniak.ch [45.157.188.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD9C2505C3
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739283776; cv=none; b=FkNmebpBXVKAFPsJshG3bEaQFN5dM0s5+XrmH3nbkaZBqTaSiHvWwsUwyCvJm1cAbPV32FDhGpaArwM6fSMP0vIrXDmXYrFknSFHLkkIugzZdLV64LlLhTNC/1GQS10Q5MzTswXPjAxW/ojDbW0xx4Gs1ZmDp8hgnqiIaWLWcCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739283776; c=relaxed/simple;
	bh=cj93YJcehxCrIk/VMANrSZnFRFIooTlrM0Ptrbg8l6Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tg0p6bx+fAam5/MTcblTkI1t/imPy1qdxYpS+A+HrMgaWPxZtsnIdQrgO3vafsPsJfF6oqR1HXOQXZMsTO/rWRqBzSH5Bt8k7DU4PTo/Idek0F9RPe7i3M+2d63E8f1TD5YzTzBAjZxuxBNsBgQFFkUWa0XGUarWPJl+iUKCK2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=45.157.188.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10:40ca:feff:fe05:1])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YsjpD0Z3VzD0X;
	Tue, 11 Feb 2025 15:03:16 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4YsjpB6m75zSln;
	Tue, 11 Feb 2025 15:03:14 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 11 Feb 2025 15:02:50 +0100
Subject: [PATCH v6 1/4] arm64: dts: rockchip: add overlay test for
 WolfVision PF5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250211-pre-ict-jaguar-v6-1-4484b0f88cfc@cherry.de>
References: <20250211-pre-ict-jaguar-v6-0-4484b0f88cfc@cherry.de>
In-Reply-To: <20250211-pre-ict-jaguar-v6-0-4484b0f88cfc@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Jonas Karlman <jonas@kwiboo.se>, Dragan Simic <dsimic@manjaro.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

The WolfVision PF5 can have a PF5 Visualizer display and PF5 IO Expander
board connected to it. Therefore, let's generate an overlay test so the
application of the two overlays are validated against the base DTB.

Suggested-by: Michael Riesch <michael.riesch@wolfvision.net>
Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/Makefile | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index def1222c1907eb16b23cff6d540174a4e897abc9..55fe706612d3ec07c2d9df9e4cd1e4cc54cc1c44 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -170,3 +170,25 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
+
+# Overlay application tests
+#
+# A .dtbo must have its own
+#
+#  dtb-$(CONFIG_ARCH_ROCKCHIP) += <overlay>.dtbo
+#
+# entry, and at least one overlay application test reflecting a possible
+# hardware combination in real life:
+#
+#  dtb-$(CONFIG_ARCH_ROCKCHIP) += <overlay-application-test>.dtb
+#  <overlay-application-test>-dtbs := <base>.dtb <overlay-1>.dtbo [<overlay-2>.dtbo ...]
+#
+# This will make the <base>.dtb have symbols (like when DTC_FLAGS has -@ passed)
+# and generate a new DTB (<overlay-application-test>.dtb) which is the
+# result of the application of <overlay-1>.dtbo and other listed overlays on top
+# of <base>.dtb.
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
+rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
+	rk3568-wolfvision-pf5-display-vz.dtbo \
+	rk3568-wolfvision-pf5-io-expander.dtbo

-- 
2.48.1


