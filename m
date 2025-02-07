Return-Path: <devicetree+bounces-143978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39383A2C6CE
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:21:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A79E13AD707
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD80E1EB1AD;
	Fri,  7 Feb 2025 15:20:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-42ab.mail.infomaniak.ch (smtp-42ab.mail.infomaniak.ch [84.16.66.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ECB1EB19D
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 15:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.66.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738941622; cv=none; b=W8jPxysBpdhnK828Q2HrkrEdISatltSxFXMdJeeTca0Bdl++SN9xPxJul2V4IlqCJZR/PhgCa8Kfcw5j94UebAzvnTebNnHPD6f9Xy8FXyrb9iQuGlgXYaUwmiH1Iw+CEflSEB+vEymX/tdMUHsGjFF6LynZPZvIXRlzK92SD4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738941622; c=relaxed/simple;
	bh=fEgmNsQo58ibB/pWGzRzT/MRO/pcErt442yfUkpsK7U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=grK41mE7hGkwL8IuHW36CpKuk56QSkmPw6OIQyHr3JnL+/BHyAQ0tF6q2N+4oOv26ygTvzDME7C/2J/dQz73J8vG5mNKjnbRLz5mX9JGn4wwxhVw/fFeuNsf+7tKRR6urkmoArM5aFTfSLTFI92XlDBWl/9ECMbLGoqZ+OfWdKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=84.16.66.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10:40ca:feff:fe05:0])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YqHhr1w0vzQKs;
	Fri,  7 Feb 2025 16:20:12 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YqHhp4yhMzpRh;
	Fri,  7 Feb 2025 16:20:10 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 07 Feb 2025 16:19:58 +0100
Subject: [PATCH v5 1/4] arm64: dts: rockchip: add overlay test for
 WolfVision PF5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-pre-ict-jaguar-v5-1-a70819ea0692@cherry.de>
References: <20250207-pre-ict-jaguar-v5-0-a70819ea0692@cherry.de>
In-Reply-To: <20250207-pre-ict-jaguar-v5-0-a70819ea0692@cherry.de>
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
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/Makefile | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index def1222c1907eb16b23cff6d540174a4e897abc9..534e70a649eeada7f9b6f12596b83f5c47b184b4 100644
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
+# entry, and at least one overlay application test - ideally reflecting how it
+# will be used in real life -:
+#
+#  dtb-$(CONFIG_ARCH_ROCKCHIP) += <name of overlay application test>.dtb
+#  <name of overlay application test>-dtbs := <base>.dtb <overlay-1>.dtbo [<overlay-2>.dtbo ...]
+#
+# This will make the <base>.dtb have symbols (like when DTC_FLAGS has -@ passed)
+# and generate a new DTB (<name of overlay application test>.dtb) which is the
+# result of the application of <overlay-1>.dtbo and other listed overlays on top
+# of <base>.dtb.
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
+rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
+	rk3568-wolfvision-pf5-display-vz.dtbo \
+	rk3568-wolfvision-pf5-io-expander.dtbo

-- 
2.48.1


