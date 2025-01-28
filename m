Return-Path: <devicetree+bounces-141433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E573FA20AF1
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50AB2161A70
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 13:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4F71A8406;
	Tue, 28 Jan 2025 13:04:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-8fa9.mail.infomaniak.ch (smtp-8fa9.mail.infomaniak.ch [83.166.143.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A34FD1A08A0
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.166.143.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738069485; cv=none; b=VgY8aSyppfGNn3FqQGPOFCxGBG9sZZqYdYqokGQRxWuzmlHbtXvJSO4D8Bung/z1/j6PjNUDChwpjZWOAlyGp+6hrKN4lC6SonNjbmZLdNV1mRxsfBt5vy/akFgbKRprsc6RRPknQrJX3zzdqiCZN6j+102cMkUHy0DK+wCs/o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738069485; c=relaxed/simple;
	bh=hVd0S0t9DaC+M0K5YNlslqMOZYcAYI4GoNmfIY7i/Ew=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N8npUQq0cT+/vxCido5LKN+eBWm09oruA9BtTPrPtHXYinBwZAHFL/ak5K193+WwXUGDw+lNW5PIeEmc1OVmSf6aNUxHpB1aJpss5ESSc39Qi34AmXf+Ta1PUy6ydJY27BJgYJZ/Lme/79EAs2LXPJ5znoU5rhpeUvgEstJXGeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=83.166.143.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Yj58y74jyzRZL;
	Tue, 28 Jan 2025 14:04:34 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4Yj58y1nxZzcLQ;
	Tue, 28 Jan 2025 14:04:34 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 28 Jan 2025 14:04:15 +0100
Subject: [PATCH v3 3/4] arm64: dts: rockchip: add overlay tests for Rock 5B
 PCIe overlays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250128-pre-ict-jaguar-v3-3-7be2f09d390a@cherry.de>
References: <20250128-pre-ict-jaguar-v3-0-7be2f09d390a@cherry.de>
In-Reply-To: <20250128-pre-ict-jaguar-v3-0-7be2f09d390a@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

According to commit 40658534756f ("arm64: dts: rockchip: Add rock5b
overlays for PCIe endpoint mode"), Rock 5B can operate in PCIe endpoint
mode. For that to work, the rk3588-rock-5b-pcie-ep.dtbo overlay needs to
be applied on Rock 5B base Device Tree. If that Rock 5B is connected to
another Rock 5B, the latter needs to apply the
rk3588-rock-5b-pcie-srns.dtbo overlay.

In order to make sure the overlays are still valid in the future, let's
add a validation test by applying the overlays on top of the main base
at build time.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/Makefile | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 267966ea69b194887d59e38a4220239a90a91306..ebcd16ce976ebe56a98d9685228980cd1f2f180a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -150,8 +150,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-toybrick-x0.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
@@ -186,3 +184,11 @@ rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
 rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb \
 	rk3588-edgeble-neu6a-wifi.dtbo
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtb
+rk3588-rock-5b-pcie-ep-dtbs := rk3588-rock-5b.dtb \
+	rk3588-rock-5b-pcie-ep.dtbo
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtb
+rk3588-rock-5b-pcie-srns-dtbs := rk3588-rock-5b.dtb \
+	rk3588-rock-5b-pcie-srns.dtbo

-- 
2.48.1


