Return-Path: <devicetree+bounces-108952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 990479945D9
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A3391B24A0F
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 873CA1C7B95;
	Tue,  8 Oct 2024 10:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="Enuvo5S1"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C45C1C2313
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 10:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728384933; cv=none; b=DaSb9MErexLzhx/BCUuPAPoiHIqVhbWGOv0lCm1qLAK8iJqa/7N5thYtryAo8KAZrKX1PbrDGufVO5fjf3LodrY1L51BTyunV+nF83ztpKDHlirTSx7vYmb/Cw8yAJeXCTj4SsjCtYlSc2BiSKhtVef1Qc9ZS1shdDXOTRbEn6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728384933; c=relaxed/simple;
	bh=lViO7h/fE/W2gANrKFh41m7MU2uVkBxDqpKHlaLUVG0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AAAp4lkugfTdcEKIHE5roSE/TeoMM7Ayg6EnFJvFUcNuI+j3P47z1ZnsDc9pw8gaEA8AlQ9FNs2RNAxcr4qKgxDAGooOBFNV3uSK4zxUoEjvBLHdzLockvxOP378Why0pm/EMtAh04AEUwEc/R/gMMN1yYi809L0MMZfYBoM8zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=Enuvo5S1; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728384929;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w8XGfwosAM/4CxjtlVxB8RkEIKc+MblXO6413OlZVHc=;
	b=Enuvo5S1GGGTfgQbtSFizcFDEo+KPY9W5OnpX3mVgOXtWXYVv4ZSRIgJZe0jTca1izAuLs
	HmVVcbwDRJ0B36d8pRoM1s9S2BwM4thiQfFWFE80svuPU4JqtL+asjm0QSgsIOicFzF9h5
	fulnrNTfz+kzzXxFVwgUqilJ+jPFsPDesR63FFhY3dQxEtBxOh5Ut4I3Op9tajYVI4jVie
	XNMumaUt6bF1f/CrCihBVre2w4LOezOnsc/lfjzarUaFNvTsZwubSFz604cVdSC4/jJKOL
	RaHv5FRJrCIIAc1mBpGZBKmUt0ce9Frz2z4eptUByqe7yROqba3E9L1kUYPScg==
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
Subject: [PATCH v2 3/5] arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
Date: Tue,  8 Oct 2024 12:48:03 +0200
Message-ID: <20241008105450.20648-4-didi.debian@cknow.org>
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

Update the rk3368 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
changes in v2:
- rephrased commit message a bit

 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index 029b8e22e709..03ebf66e9bfc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -113,7 +113,7 @@ rk808: pmic@1b {
 		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
 		vcc3-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 8ac8acf4082d..dbf9fef9bc36 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -179,7 +179,7 @@ rk808: pmic@1b {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&pmic_sleep>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
 		vcc3-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
index 29df84b81552..26de79388db8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
@@ -73,7 +73,7 @@ rk808: pmic@1b {
 		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
 		vcc3-supply = <&vcc_sys>;
-- 
2.45.2


