Return-Path: <devicetree+bounces-251311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA700CF13ED
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 20:15:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED2F0300E143
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 19:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63057314A63;
	Sun,  4 Jan 2026 19:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="2UgbNcUt"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF732E62C8;
	Sun,  4 Jan 2026 19:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767554113; cv=none; b=uKtW8UV5/2clqbjHMtK0LAenA73W8PzqKsA3tYK+/V/tU4chl4mL4ZfSonbTWPQhrBRiMYXNqwKbEJDrYDHlqm7UZznZ4knybc9kH/JjWUdVdMmug9tDtIARwomjaPyoiX2yPgkSeJK6S0Gk4IyGcmGkBaFpTnl9f/bfnFuDR8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767554113; c=relaxed/simple;
	bh=Ku9ej+6KxThLUXufGtRshx/9PlSlNlku+EFMKkd34hE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QtV0uOupKfHNNvW8g7gr4sb1uI3CiXFIU8j6GAf2g/KUW0waN2cqEFrWBDGdXcT9E4jFYwTjgDggVMKt2r2kBmx5CMiCroakMA5IRWvK1YIBmQm/NeSklD+lcv5dW/JjzPPgtoGNLdBxJLKR8mYABsUcxh2k70he3VYVcV3Y8Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=2UgbNcUt; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=Df3Z6RKlukZJKt5/tUtKTYu9n9DGWqJ7aW4/X5F1X/Q=; b=2UgbNcUtaOV3ZgkWhQudl2hpQL
	81ZGCkf8pW9ZdPmy5rbFnbWlsp0wuoa4BebETcdh1wgiOusFgyWxUtzjOW/jPspSPDsV4eAGykeMJ
	F2aE32RHnig6hiOL+vlz66UVFFk4uAokMJEq4ML5yJP0i51dO3xhTFTnNlstcVRe6SQI5N2gVGqDO
	Di66ZEbeVQ9gL23RFCzFmBvyGlgZ2AzHwyu/yz4dmGQFTx6Mcr4v6nBH8oCSur1TCsNSGF77pZIWO
	DPiYrqjV/4Vbl1rJwod9epdOImkzYTsFnBKimJTcDg+KOPIY+Q2u+l0d1noBA69GL9r9z2aa2ecQy
	996HMpqA==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcTZ9-0012Mf-Vb; Sun, 04 Jan 2026 20:15:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: rockchip: Move SoC include to individual QNAP TSx33 boards
Date: Sun,  4 Jan 2026 20:14:44 +0100
Message-ID: <20260104191448.2693309-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104191448.2693309-1-heiko@sntech.de>
References: <20260104191448.2693309-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The TS133 while mostly similar, is based around the RK3566 variant, so
needs a different SoC include.

By moving the SoC include to the board devicetrees, we can still keep
the shared common setup, while supporting the different base SoCs.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts  | 1 +
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts  | 1 +
 arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi | 1 -
 3 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts
index f16d1c628793..9a7d58e7ccc0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233.dts
@@ -6,6 +6,7 @@
 
 /dts-v1/;
 
+#include "rk3568.dtsi"
 #include "rk3568-qnap-tsx33.dtsi"
 
 / {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index d1e3b7e7a280..02d0974d79be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -6,6 +6,7 @@
 
 /dts-v1/;
 
+#include "rk3568.dtsi"
 #include "rk3568-qnap-tsx33.dtsi"
 
 / {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi
index f009275c72c8..c372ca40fd50 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-tsx33.dtsi
@@ -1,7 +1,6 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/gpio/gpio.h>
-#include "rk3568.dtsi"
 
 / {
 	aliases {
-- 
2.47.2


