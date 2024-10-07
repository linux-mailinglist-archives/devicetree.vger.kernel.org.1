Return-Path: <devicetree+bounces-108425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C2B99299E
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 12:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A41831C22A15
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 10:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384271D27AF;
	Mon,  7 Oct 2024 10:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="KLjeb3Qi"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794C41D2710
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 10:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728298702; cv=none; b=Cn5E/lD1c7Fkx1U7yDG9jVuXZhnStpMjcSTNaYhKXWzUjKOs/eWGtSmstJgblpTuDLFhJGw58BK+HHjdvZN+G8DJUqYI118C63F/yxSSJOxayy0pKEPQquhIpfq8ZYHjscthC1DVCnHDKn+GYMx7w0kUJ0BMy2GEAntGIaYp79Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728298702; c=relaxed/simple;
	bh=rawHa5nP5D9DBqLSAxHGh62r4R2QtUxvvKi87ZKoS7M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=koAFrmGpioEf0sbhb7GSsLckwOmTQoZBGnYTmBlyn7F22OhaIthtqTBoCqsQYbtzG2gK+BWq97mauD+/i9cmUs/df+CbXd2NtU/+17bMNO4NxyWcn/un4iA32fcNOUwlWA4NdxjdnPwmA+yFQhwBGwY+QV0fDHme048/zks6Bpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=KLjeb3Qi; arc=none smtp.client-ip=91.218.175.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728298698;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nzgYCShWVm6Bg/J60KuvMrpyaL6hrwRCYk36UbECNno=;
	b=KLjeb3QirReSJXpE5nDxvLP7Y/ilEQr//H412OQdW2xul1EzN3NPtCkZP09IyQ+04X5kQt
	xkN56S/GmVRgnRVAzrlp8dxXD1dCJObHtjIAEgOQC64NMp3tO1J40rfKoqX55RwlJcX86A
	rJGdKmz2J6RB/uwe4GZykLbTRnplxpKajyVtnGkqpFMd4zGLtUN0GK27V9bpGWBRCPEUty
	vqth5ImiYkNr3bCXFSxh9su/HejxD01Epxk/IXTwfj0iq//eDwa8OdG+50G2PQp3Y076dF
	RjVd5MZo1KUBtokjh+Ne+pAIFUGE3DtcNjtIlvADZe2yeVnYp8vLSh8LYSJaLw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: Fix wakeup prop names on brcm BT nodes
Date: Mon,  7 Oct 2024 12:28:18 +0200
Message-ID: <20241007105657.6203-5-didi.debian@cknow.org>
In-Reply-To: <20241007105657.6203-2-didi.debian@cknow.org>
References: <20241007105657.6203-2-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The "brcm,bluetooth.yaml" binding has 'device-wakeup-gpios' and
'host-wakeup-gpios' property names.
Fix the ones where '*-wake-gpios' was used.

Note that the "realtek,bluetooth.yaml" binding does use the
'*-wake-gpios' property names.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts  | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 0c18406e4c59..16fd98698db3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -450,8 +450,8 @@ bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&pmucru CLK_RTC_32K>;
 		clock-names = "ext_clock";
-		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
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


