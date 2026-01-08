Return-Path: <devicetree+bounces-253034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEDED0683A
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 00:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 123B0303A1BB
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 23:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1EEF32ED42;
	Thu,  8 Jan 2026 23:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Va2gQPL+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF34C2BE7D1;
	Thu,  8 Jan 2026 23:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767913571; cv=none; b=RNAGAXcoarX+5w92NnJxveTwTxiyRrVJrP6LvZL90D9e6u/So91a88CLzt+4oIkOgNibcCpLLtVjIPDh/gpDz9evKWN4x4HAuTtrjc14nuab52cTuslshKT+Q1TwPq5l2ZDUMjvXVZFpXkJjyL/KpO32yE2K18gsFgsnVgu53UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767913571; c=relaxed/simple;
	bh=gOqkINbWRtUhwGq/lyJT42kBcohrQjAxPz/HofF8t8Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HfnAroH+aE6ynbM4VTg/6TDsbkP6p0V+ourm5vAB+CADaWLZ5f0OyfR94LTQtLQuyYQ8VmWBnFg9DxmvP1EJ5SDaRqScJ1ZW39i1DFJeAqM4FjRtKQVcPTl7c6syiC7YuQWKr67vrW7c54tBX4FmmKIOo0nIqKDlgRW9kMCcQvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Va2gQPL+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E43DC19421;
	Thu,  8 Jan 2026 23:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767913571;
	bh=gOqkINbWRtUhwGq/lyJT42kBcohrQjAxPz/HofF8t8Q=;
	h=From:To:Cc:Subject:Date:From;
	b=Va2gQPL+6tzykR9zDwrdUBQanJa7jnqhlVb4D2HYQc9IQTgR3mzcA4EIU3hBn4wNN
	 OY85ZAa8vpQvqfXTucvgARQ34oVwTc7VGxgW1Rfp+PlI+qs4h8Suln4ce8j6KLRCCU
	 DZmlpaOFV007MmA03xsVbYJaZkVgPBcCw4aEWZhr+H6vbrXHWd2+TUtZkqC+UmiBM3
	 6sL+g8Ar0US9fCOY0bt1/89CMYpkhyhLyaRkzv5oD0DPD6ANjvQgeF6QWVI7WOFWvX
	 f4hfs4QRCXz4aAmRq/DeboKX/E9sPsbPJty5/etfyUiCJ+GyDrjRlq58eE1AmdeRT7
	 qpIU67YZFYC8g==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Drop unsupported properties
Date: Thu,  8 Jan 2026 17:06:07 -0600
Message-ID: <20260108230607.1348879-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"pinctrl-names" is not valid without a pinctrl-N property.

"max-freq" is not a defined property name. Maybe it was supposed to be
"spi-max-frequency", but changing to that would be a change in behavior.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts   | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 78a7775c3b22..b2de018a7d36 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -425,7 +425,6 @@ &pcie_phy {
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
 	num-lanes = <2>;
-	pinctrl-names = "default";
 	status = "okay";
 
 	vpcie12v-supply = <&vcc12v_dcin>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index eaaca08a7601..810ab6ff4e67 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -969,7 +969,6 @@ &sdhci {
 };
 
 &spi1 {
-	max-freq = <10000000>;
 	status = "okay";
 
 	spiflash: flash@0 {
-- 
2.51.0


