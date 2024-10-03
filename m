Return-Path: <devicetree+bounces-107472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D819098EC74
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 11:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 155381C21605
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20875145A03;
	Thu,  3 Oct 2024 09:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="zNE+PCNv"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2274713B58A
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 09:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727949012; cv=none; b=LkI2yWgn4hieQ5bBjkoLqF8nZ7XPBN1vF7UNsS40PvM1tNZZeXxEDuZX/UfXvDgvLKOFqtBfmSPGgMfHok+6KQ+SzbFkb0UO1Zrk8XbT/ZAOQRECcAwz/p7zwDLbrBxZA/I5w8GyeNUW4KwXPtKE9sX0VvSmKP8ZWLH7pbaPijE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727949012; c=relaxed/simple;
	bh=qf/FMQUGhrvEPWp5DmEjJpY2KG+XQzibyPqsjOddBxs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XTGeZU0r27xCZ9p24CfyNtOO9XMCJTdSaciJ6JDZkX16uJhqKSfVCcjr2tYkYj/MvVZ6jQBVIdCHLcRglV4eFLTbiDz+wU+WuVvyGhglqYEGa4sTdBON4+agymVB/NwHJ4MfPZ4H8a5swTIXSbT3rldZRKsFxeZfsEN2l05BImQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=zNE+PCNv; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727949007;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SBJngG+t1StT+2RJ1rjKFpeZH1Aw4sVH2OKQO+jyrG4=;
	b=zNE+PCNviXvXFcUTtN7fXEX1vlJ1oc+8KO50lJq6mCUEa6x/lerNuKwD1hS4du1xpjosnf
	jrk8nPXUT0+yvzXLY6/LTTFnzgv+axzuQL2HGJgs7uVAJ7wRQgvc4qRACKLaXs9X+uQQSG
	hkteHq4CiWnCelQLVX2l9YYmFZGDcD5gABof1i4pOkHU7iQVjvwLNvN6m5PTLNaNpFV1NG
	0x/57GxQnx31R+vQ5CnAlhJtH9CiR6uEGXtW56LkdPPT6MCikLhJHxuZT4ef1y0+ybXwFg
	ArR22ho6Yr3yC4+TQ9io2ZkJmzqCevIhZi7K6kmjsDIrneBG8Lrcw6zlo+Z4QA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 2/5] arm64: dts: rockchip: rk3328: Drop rockchip prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:26 +0200
Message-ID: <20241003094927.62042-3-didi.debian@cknow.org>
In-Reply-To: <20241003094927.62042-1-didi.debian@cknow.org>
References: <20241003094927.62042-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")
made "rockchip,system-power-controller" deprecated in favor of (just)
"system-power-controller".
Update the rk3328 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 824183e515da..9406a887652d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -159,7 +159,7 @@ pmic@18 {
 		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <0>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 1eef5504445f..12a4e421ec95 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -121,7 +121,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index a4399da7d8b1..a10847509bfe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -181,7 +181,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-0 = <&pmic_int_l>;
 		pinctrl-names = "default";
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vdd_5v>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
index f20662929c77..99499a0bab19 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
@@ -152,7 +152,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-0 = <&pmic_int_l>;
 		pinctrl-names = "default";
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 414897a57e75..88bb95075b6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -191,7 +191,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 3e08e2fd0a78..905ef4b94095 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -249,7 +249,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 90fef766f3ae..7d179aae8d24 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -181,7 +181,7 @@ rk805: pmic@18 {
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
-- 
2.45.2


