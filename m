Return-Path: <devicetree+bounces-108950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 894079945D7
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DC7C1F23C5D
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 762541C3034;
	Tue,  8 Oct 2024 10:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="PON5GUzg"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta1.migadu.com (out-184.mta1.migadu.com [95.215.58.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365E92CA8
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 10:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728384924; cv=none; b=XO55YX5A+vd2om0iAuNOVBrz9wZbM55jymgdIeIlOh1J3lk95NuhibnKnNspCiMveag7CgbIBBZC2jfHs3ptawrUrrDIuZiEKEJ6SfVC0xKcLbtiKK6dsHRLbj+r//hX+L5Sdu4kgSVh7XXOWV+zktWUcQW6Fma7l9fVYI7lpKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728384924; c=relaxed/simple;
	bh=IqsXL+0JaGlAI/uuonW5vlQlawJ3boipDLoZTfWoY3M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oqfplE4eSAHB3mHfuJ/VkMFU4YzrS02V+150qE2yzGbyUPzRj/6KRNz4OlfKob8wnogzHHPIOHkQhkOYFX4mLXglaPzsYAf//dl9hx/lAc7uYXUWf//fZEjlbB7wUiaNFLlKxqCaSusy6YQI+XADj4HEJsvprgGLJajpFblNbYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=PON5GUzg; arc=none smtp.client-ip=95.215.58.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728384920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+wda6s2SX3Nfa5Js6GhD0skPHd5Xmoghi2oJllqU5Jo=;
	b=PON5GUzg7wRNjnLUExw7RDKnToadHLqPfgbjT7fV9yvNH7iwLRArF7QkrGZVwikDvObWuZ
	3Ldf41RUg7D7JJKdremPLW7H/r8ZQ+EPaShr6PDfZuM7+Fxvxvf70M3TtUeGTtlCGb6zFo
	sj5QzLgGliPL9b4KdLkvCG/szD4ZV+EAykqjf67CpSv7Vakcroxiu28fpPuNiUlxiAG4bb
	3lNdcO7QzmPPEWwGSkRjPoGD/sAM1utq3P2NSAVX4/NgPC6pT/yaE/44ic9YCRrD4aLSff
	WdBujM4dd6x8UC8CgKuBHroXDQpZvcSbXMgIEaG8JJ+JsTi2oUv3allYFV7uQQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 1/5] arm64: dts: rockchip: px30: Drop rockchip prefix from s-p-c PMIC property
Date: Tue,  8 Oct 2024 12:48:01 +0200
Message-ID: <20241008105450.20648-2-didi.debian@cknow.org>
In-Reply-To: <20241008105450.20648-1-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Property 'rockchip,system-power-controller' was deprecated in commit
961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")

in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
replacement is (just) 'system-power-controller'.

Update the px30 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
changes in v2:
- rephrased commit message a bit

 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/px30-evb.dts                | 2 +-
 arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
index 5eecbefa8a33..dd715d22d4d2 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
@@ -50,7 +50,7 @@ rk809: pmic@20 {
 		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 0a90a88fc664..c9d7b32da997 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -189,7 +189,7 @@ rk809: pmic@20 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
diff --git a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
index f18d7eb9a9c7..d22ea65b364c 100644
--- a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
@@ -70,7 +70,7 @@ rk809: pmic@20 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index bb1aea82e666..eb0bb78cff7d 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -127,7 +127,7 @@ rk809: pmic@20 {
 		pinctrl-names = "default";
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
-- 
2.45.2


