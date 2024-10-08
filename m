Return-Path: <devicetree+bounces-108985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F38F199474A
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 13:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A78BE1F234F4
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682291DDC06;
	Tue,  8 Oct 2024 11:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="d51xGEii"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6651D4175
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 11:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728387272; cv=none; b=XcS4HhKrBOjuaQR6rTaU18P21WXUhtX+fLfROZtw6Tyok+3ZlLoGcl/fFqUqk2m/4GnPErw3c5adcxF6XtWa1MMyXkhwWGvH2Hb5rSGn7zIcGDus+Xgd1ezW10uVLQBK4Z/0jCLZED53in52T45KzsNE3psJwgTs9qUROoVZrvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728387272; c=relaxed/simple;
	bh=wstrmXZPnSRywIg12QvRqavJaqofiwOLcd2XZmwLHT0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WHu19TFLKJwYi2mtHVqhdf9hO6WiaS3Z5ARub6MXzsLyg7AjH07rmqsdQS/DfTy0yLsrvVatUlPH2+4ptF0j7SH0r9SOYOownkEYj2b5gkzqkMESFj57EC93q/NFBAyFwCL+INR/RBqKBqg/c2wLsz/6CdD1sqvXeHOzQauNDZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=d51xGEii; arc=none smtp.client-ip=91.218.175.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728387268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kNxjNd6yrVtYzBsqUHl4cB5Rc4c+PEgl84/4jE5hQ1o=;
	b=d51xGEiiShgKMKwdlw+LhAZoNulcDjKyuK6LJMYI/xJvPYmnbpQRMzFHh2PvpuYhdX69MM
	LnsHWaFdVMgp17WzooASMZ+rBqzWnRcG0wmDnWOzKz1r7DFOeMvibOztovfiWdueS2g/yi
	9URd2+OkF91KjDK4ZnrXPEqVFqQQtEWPYLtXeyuKRdo1SxTUEcGuxV+cBI3BJRsbXwY85O
	quWZdrsd+mo+jNSqVQr8UfaG7RoXssjI6KvnoRiE2OvMS61lnHDZvbkd1DZBNrvv1lcWZj
	LNOB6huoVfvVirxyoCfx0ToaRpH6J1a1ybK6KLWZbu7oVJnfAUeRkdx/WPYivA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Fix wakeup prop names on PineNote BT node
Date: Tue,  8 Oct 2024 13:15:38 +0200
Message-ID: <20241008113344.23957-4-didi.debian@cknow.org>
In-Reply-To: <20241008113344.23957-1-didi.debian@cknow.org>
References: <20241008113344.23957-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The "brcm,bluetooth.yaml" binding has 'device-wakeup-gpios' and
'host-wakeup-gpios' property names, not '*-wake-gpios'.
Fix the incorrect property names.

Note that the "realtek,bluetooth.yaml" binding does use the
'*-wake-gpios' property names.

Fixes: d449121e5e8a ("arm64: dts: rockchip: Add Pine64 PineNote board")
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
changes in v2:
- Dropped change already covered by Heiko's patch; updated commit
  message accordingly
- Added Fixes tag

 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index de4c082dce07..7381bb751852 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -684,8 +684,8 @@ bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk817 1>;
 		clock-names = "lpo";
-		device-wake-gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
-		host-wake-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
 		reset-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
 		pinctrl-0 = <&bt_enable_h>, <&bt_host_wake_l>, <&bt_wake_h>;
 		pinctrl-names = "default";
-- 
2.45.2


