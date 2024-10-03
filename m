Return-Path: <devicetree+bounces-107473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 600D398EC76
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 11:50:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0CE47B230D5
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E4381474B2;
	Thu,  3 Oct 2024 09:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="cXWf49Lh"
X-Original-To: devicetree@vger.kernel.org
Received: from out-175.mta0.migadu.com (out-175.mta0.migadu.com [91.218.175.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBE913B58A
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 09:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727949016; cv=none; b=a++7I5qntmhKsD46tRZ3E34w6XwIksFm7umUzYfgyEVHF4l0LfMLDhoF9EnXAG0z0FA39rzKxGn/FmRiTVgMdp9hbvTZgYv4tJeWo3LtJIcC4Al33juYrbProzfSth2q2gKCNVCMadj3Bk2T3aJqZuE3fq+DZ+UCFfwMGpvRX9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727949016; c=relaxed/simple;
	bh=8xH1fw4VDAy1Xp3UAjs3oZljX03js7E8dpkDqmzHeEw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=baHRG7r0ZHMYUI2pr1ULcz4UKB3PPWaSAbYVmmLh8P751TavlURmKfOwZjB8gVcxEo+EMy8rcF94GvhzXAzP+c9a0qy0JH+YgTgEOmF24GhEiSmQ6j8n1eA9Mq4gB+fu+l6EcpYW/NzuKlKuVOCbYN3tX9Mkik8jYVw//mKg0UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=cXWf49Lh; arc=none smtp.client-ip=91.218.175.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727949012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kexDEKDhzZz6T5AsP1sUyO6vHwuL2hyGO0eSRqIb0Sk=;
	b=cXWf49LhICJ8EK/zlmkgbZ55R2PVe9bBcMQp2SRtBV3r8zBkzSRPPLlOHo2/if+lESoIPO
	smC+f9RaDiUBcXj0sC6DAVq3zAep8qZQ4nHqxP2xBakEKDDPnh0Nt/pnvJAv5C+Rrt+sXg
	iJbFd+DX20EV7WH7a01SjEUvwG/DJmUdp14nM8Tco8jMYvtZgsTba1dAlY1QgxnUwEZ/kR
	3Ibzf8mMGrAqLQgRmgOVqPSstvtr2vmdvF5oPn42SuH5B48JEL3qEA4DUKNE+7ZJOaszzk
	Uvj45CChPK1k2wz4/JBx+mDpQPnglf8YXAM3NtLEjfmk4zdgpnGd4qz6RGIlpQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 3/5] arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:27 +0200
Message-ID: <20241003094927.62042-4-didi.debian@cknow.org>
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
Update the rk3368 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
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


