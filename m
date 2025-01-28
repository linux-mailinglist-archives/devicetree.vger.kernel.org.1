Return-Path: <devicetree+bounces-141430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8290A20AEB
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:04:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E93E83A7C2E
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 13:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 430E41A256B;
	Tue, 28 Jan 2025 13:04:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-8fad.mail.infomaniak.ch (smtp-8fad.mail.infomaniak.ch [83.166.143.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCED42A92
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.166.143.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738069483; cv=none; b=CrgwwAmPawOlGmNU1pI1WEKdxJTaCNNWa5DP40glERvY5CiYdhm+aZYrpg4jZFVwt5Xzqdwh7xE6WDCT0iAjy1gx/TjOwdXKRR32RRTC/gIhjoiY/JmOJcwods4zc194j+IYVXOGHzY5mxaQIfzmzgPDUtVHzFST7il/p9PYMp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738069483; c=relaxed/simple;
	bh=qQ3UbDRSE0B2zzA3Y5MA/q+SPK1cmCdLbAESiOetHKY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RmBQ7YnaI9OpLtMYpKj/yXanqvWuH8A+b/KymhIjwFt0lHmfst7DseyJlwBUC11RKW6I+RfpOvMu0GATfT1p9cEdmRj0xRiYnz00PI7RGmelHYEeI5u4Igzb3J3sczNDc5otFcY3gtM5i5+utXj3WPATB0+HWo7tXTpbqMrNf3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=83.166.143.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Yj58x45VtzYZg;
	Tue, 28 Jan 2025 14:04:33 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4Yj58w6chyzd4h;
	Tue, 28 Jan 2025 14:04:32 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 28 Jan 2025 14:04:13 +0100
Subject: [PATCH v3 1/4] arm64: dts: rockchip: add overlay test for
 Wolfvision PF5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250128-pre-ict-jaguar-v3-1-7be2f09d390a@cherry.de>
References: <20250128-pre-ict-jaguar-v3-0-7be2f09d390a@cherry.de>
In-Reply-To: <20250128-pre-ict-jaguar-v3-0-7be2f09d390a@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

The Wolfvision PF5 can have a PF5 Visualizer display and IO Expander
board connected to it. Therefore, let's generate an overlay test so the
application of the two overlays are validated against the base DTB.

Suggested-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/Makefile | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index def1222c1907eb16b23cff6d540174a4e897abc9..bba9b2f1c761040545bea561878e9b63f8c29488 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -128,8 +128,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3582-radxa-e52c.dtb
@@ -170,3 +168,18 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
+
+# Overlays
+## To build one or more overlays, overlay application tests must be added below.
+##
+## dtb-$(CONFIG_ARCH_ROCKCHIP) += <name of overlay application test>.dtb
+## <name of overlay application test>-dtbs := <base>.dtb <overlay-1>.dtbo [<overlay-2>.dtbo ...]
+##
+## This will generate each individual DTBO listed as a dependency of
+## <name of overlay application test>.dtb **AND** make <base>.dtb keep its
+## symbols (like when DTC_FLAGS has -@ passed).
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
+rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
+	rk3568-wolfvision-pf5-display-vz.dtbo \
+	rk3568-wolfvision-pf5-io-expander.dtbo

-- 
2.48.1


