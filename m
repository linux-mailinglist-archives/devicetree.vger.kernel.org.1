Return-Path: <devicetree+bounces-187078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD130ADE936
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:40:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2474817E061
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 10:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F6212877C6;
	Wed, 18 Jun 2025 10:40:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190b.mail.infomaniak.ch (smtp-190b.mail.infomaniak.ch [185.125.25.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C91287504
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750243214; cv=none; b=mR6Y9SzxY1hRPNdVsTVMNLI0GSMW9HMU3soXg+0DDiStdG+JtEy8vLZqVxs54snPt2izG5iO1gWi8tbcLZNUMU+zBRbSaYihQABtX7OVOa6ES1CMyd09Zhl2NuryuwSR28E/B6ViSu5ehU4zJ/0Lri0w3hzt+NOto6HU6dm/4Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750243214; c=relaxed/simple;
	bh=pv//QZi5ziwgRWN6jgCZtnpnX7U1oCAhOOLsoeaYocs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U4bEOY8iNc3A/Xrv4fXPwGO0E5FS1o0X273asBst7bFQxcG3EGvCFlnaFap6ShZZqccMbXCTZ1e989hko+9XeqPiZJTgGxz2edi+LNH6FJl34/nH5lqdP9f6SxbnO2MdXPjQvZfA//ZIFZQH8WhcfvoUStD0eUiubcfVMyFAxS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bMg6w1KkYzS5R;
	Wed, 18 Jun 2025 12:32:56 +0200 (CEST)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4bMg6v37RyzDJZ;
	Wed, 18 Jun 2025 12:32:55 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Wed, 18 Jun 2025 12:32:42 +0200
Subject: [PATCH v3 3/5] arm64: dts: rockchip: add header for RK8XX PMIC
 constants
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-rk8xx-rst-fun-v3-3-081f02d3d348@cherry.de>
References: <20250618-rk8xx-rst-fun-v3-0-081f02d3d348@cherry.de>
In-Reply-To: <20250618-rk8xx-rst-fun-v3-0-081f02d3d348@cherry.de>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 Daniel Semkowicz <dse@thaumatec.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@cherry.de>

To make it easier to read the device tree, let's add constants for the
rockchip,reset-mode property values that are currently only applicable
to RK806 PMIC.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk8xx.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk8xx.h b/arch/arm64/boot/dts/rockchip/rk8xx.h
new file mode 100644
index 0000000000000000000000000000000000000000..a6fbef71c06493c35b0f3697476167aaafa24f30
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk8xx.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR MIT) */
+/*
+ * Device Tree defines for Rockchip RK8xx PMICs
+ *
+ * Copyright 2025 Cherry Embedded Solutions GmbH
+ *
+ * Author: Quentin Schulz <quentin.schulz@cherry.de>
+ */
+
+#ifndef _DT_MFD_ROCKCHIP_RK8XX_H
+#define _DT_MFD_ROCKCHIP_RK8XX_H
+
+/* For use with rockchip,reset-mode property */
+#define RK806_RESTART		0
+#define RK806_RESET		1
+#define RK806_RESET_NOTIFY	2
+
+#endif

-- 
2.49.0


