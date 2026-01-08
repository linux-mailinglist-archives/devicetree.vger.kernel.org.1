Return-Path: <devicetree+bounces-253036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 886CFD06834
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 00:06:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 08A9B300A994
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 23:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C112E8B61;
	Thu,  8 Jan 2026 23:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOshuotx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF144236A73;
	Thu,  8 Jan 2026 23:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767913589; cv=none; b=YZvVfb69ZooPech/eTXM+1fcWFqzuzbghJNIsj8lFpuZyFHuV/zJoeb9Szc1Fr0CnVxPBJGUvVzyMDsIZHffuO/cpz2AReRIe7NrLUgOeogSLnTsQFCuqPFn4vOYOCuLSVJxLz+Qz5JYwol/7fu7zv5nZhuIhn6YpJ2pI70Kr8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767913589; c=relaxed/simple;
	bh=ABBMH1UHHf+tRlKLCHLUwhxw0iM+Uf9Jba+4eLCHBk0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Xnv9KPkn64OJDilL2oSQor6yq3gc8OdHX4nxDMcDqh7H3p3Z5jT5q5rMHEzpRzm5sfXknOtM51sRHWdA88eavrT1m/1ZL4ba64DEnVarEMUEHflDOKwlE0AsXOfAD7YWqXxsFFSHFDu1QZmMQs4T8j+j0MUko53FWDVKbB4g9oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOshuotx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41775C116C6;
	Thu,  8 Jan 2026 23:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767913589;
	bh=ABBMH1UHHf+tRlKLCHLUwhxw0iM+Uf9Jba+4eLCHBk0=;
	h=From:To:Cc:Subject:Date:From;
	b=HOshuotxq+DVquM67uUimF5/XIr5Vu0XCZ5UA+1D2F+sCbh8Tkd3w/uONYBIF2FVx
	 oII7o7lQh4L7AGNP3QuEyfPGHgQl8j8tIiP2qtmI2O8SbOR5t7VWZkqJy9kyYTXcf3
	 UV9YxgwcSEaVsbdTvqSv0Wpou5hZf27mpdhotwF2DbbHguGywrJgrI1OdvokHGzjBQ
	 zlBpZNy1lEjlxHmE67FUb5ETvJL9iIqZHc1XElnXFpN4p3ecaXnnmZvxZ/uYjkBLDr
	 vMFm83JEA+17E3wwVp7upHW4y73Txv4dXUuFZDbB4fszBjnnZxDBIMFieE/hNTEGfr
	 Rzggp8PC9haSg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix gpio pinctrl node names
Date: Thu,  8 Jan 2026 17:06:23 -0600
Message-ID: <20260108230623.1349310-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The pinctrl node names "gpios" or with "-gpio" suffix collide with GPIO
property names creating false warnings. Add a "-pins?" suffix to avoid
the issue.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 587e89d7fc5e..8299e9d10c7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -483,7 +483,7 @@ &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&q7_thermal_pin &bios_disable_override_hog_pin>;
 
-	gpios {
+	gpio-pins {
 		bios_disable_override_hog_pin: bios-disable-override-hog-pin {
 			rockchip,pins =
 				<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_down>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index f95fd92d58ba..d9ff777b4913 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -537,11 +537,11 @@ pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		vsel1_gpio: vsel1-gpio {
+		vsel1_gpio: vsel1-gpio-pin {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_gpio: vsel2-gpio-pin {
 			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
-- 
2.51.0


