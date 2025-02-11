Return-Path: <devicetree+bounces-145300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E2831A30DB5
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5958D7A431F
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 14:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC0C8253331;
	Tue, 11 Feb 2025 14:03:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190b.mail.infomaniak.ch (smtp-190b.mail.infomaniak.ch [185.125.25.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9DC250C19
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739282606; cv=none; b=iDTHgV28xr9T5d5YWW/TeLvCFVlOJbjrBXPkSvSdpinAsUsNaGvUwWHzePacGcoLu00/rTe6Q7PDuMrDrAliReM3yQt5faHWGEhyRXnJzRdbDR+wbq1LyiZtNrzEG//Z6AEzJacMZtjYgjPDZeq7nlLwDBoAfOqIgFSC6KrA4es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739282606; c=relaxed/simple;
	bh=BlYp5T7rHQ9tm+2AZREmSqkNH7doQoIqX4UDI5fOvV8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cqYBzEoA1mRgXe/uVIjNV/qmH2JUCtBm21uFK1nROR51Aiy+N3TMl8TxSRk6HVkBe2QA9ZdqpNp2KPcrv3vybSzO+OdWe0QYv+52zmqUqI+kPzaJDelhdYuWhW7L/lUex44B4MhdITLnZ/um4DEQ0M6waZQ+70trWB0O986/UYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10:40ca:feff:fe05:1])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YsjpF3Gf0z9W7;
	Tue, 11 Feb 2025 15:03:17 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4YsjpD1NkhzTvn;
	Tue, 11 Feb 2025 15:03:16 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 11 Feb 2025 15:02:51 +0100
Subject: [PATCH v6 2/4] arm64: dts: rockchip: add overlay test for Edgeble
 NCM6A/NCM6B
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250211-pre-ict-jaguar-v6-2-4484b0f88cfc@cherry.de>
References: <20250211-pre-ict-jaguar-v6-0-4484b0f88cfc@cherry.de>
In-Reply-To: <20250211-pre-ict-jaguar-v6-0-4484b0f88cfc@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Jonas Karlman <jonas@kwiboo.se>, Dragan Simic <dsimic@manjaro.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

The Edgeble NCM6A/NCM6B can have WiFi modules connected and this is
handled via an overlay (commit 951d6aaa37fe ("arm64: dts: rockchip: Add
Edgeble NCM6A WiFi6 Overlay")).

Despite the name of the overlay, it applies to both NCM6A and NCM6B[1].

In order to make sure the overlay is still valid in the future, let's
add a validation test by applying the overlay on top of the main bases
at build time.

[1] https://lore.kernel.org/linux-rockchip/CA+VMnFyom=2BmJ_nt-At6hTQP0v+Auaw-DkCVbT9mjndMmLKtQ@mail.gmail.com/

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/Makefile | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 55fe706612d3ec07c2d9df9e4cd1e4cc54cc1c44..1406d9df57f8ce589217730f836b4e222b1e0d26 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -192,3 +192,11 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
 rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
 	rk3568-wolfvision-pf5-display-vz.dtbo \
 	rk3568-wolfvision-pf5-io-expander.dtbo
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
+rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb \
+	rk3588-edgeble-neu6a-wifi.dtbo
+
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-wifi.dtb
+rk3588-edgeble-neu6b-wifi-dtbs := rk3588-edgeble-neu6b-io.dtb \
+	rk3588-edgeble-neu6a-wifi.dtbo

-- 
2.48.1


