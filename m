Return-Path: <devicetree+bounces-148850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B8DA3D9C5
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 13:21:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD2BF17C78D
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F13311F5425;
	Thu, 20 Feb 2025 12:20:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-8fa8.mail.infomaniak.ch (smtp-8fa8.mail.infomaniak.ch [83.166.143.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A2B1F1523
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=83.166.143.168
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740054045; cv=none; b=cYPVI7CyEt+RbK7+CtIWNofu7sVNaXdHyNog4bBvNkwUR73WGtFt6RHBBoYOOfHDjLyToGL4EZ74BvUXxP7oQkxmeyaF/9yHKh51ttjDO87DtzYtYNn2t2+EcE+D6Pq/Vi3cW4foGktgiTDDESHA39Z1xKngKa+DnchIGuS1LKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740054045; c=relaxed/simple;
	bh=Ye21G1Ies9BNnh+Omm1baUJbD+H3Z24pSTrecx5w4Gg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dqkdOn2t3Ay127EE95XPoZSgXWvBLH6nPxWqzCLxxo1z1F5TWSK9c1HFZ8Bmm389rujLnPdlvPUBpxaqjvKB9gRu9SU38+mLqFhfVuRnHDZwKDanfQYtIKfKbPjtb5NwrZ9NXRltHvztn1w/AW/czdK3MS6p8jH9yP0EmmnUKX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=83.166.143.168
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YzC5b310fzrqS;
	Thu, 20 Feb 2025 13:20:35 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YzC5Z2rLlzHNm;
	Thu, 20 Feb 2025 13:20:34 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/5] arm64: dts: rockchip: pinmux fixes and support for 2
 adapters for Theobroma boards
Date: Thu, 20 Feb 2025 13:20:09 +0100
Message-Id: <20250220-ringneck-dtbos-v1-0-25c97f2385e6@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPkdt2cC/0XMSwqDMBSF4a1Ixr2Qh4let1Ic5HG1oahtYkUQ9
 16rgw7/A+fbWKYUKbOm2FiiJeY4jUeIW8H8w449QQxHM8ml5kLWkOLYj+SfEGY3ZcCam7JWqLQ
 mdpxeibq4nuC9vTrR+3O48zX+2aY4USkQXt5iZVZIlGmGkOJCCTxai7o2WErTLOKnO5sJ/DQMc
 W4KQ8Qd2qAQNZHurJTIlfYGuVCuCoEHZVTpWLvvX3Q8Y7DoAAAA
X-Change-ID: 20250128-ringneck-dtbos-98064839355e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

This is based on top of
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v6.15-armsoc/dts64
6ee0b9ad3995 ("arm64: dts: rockchip: Add rng node to RK3588") as it
depends on the (merged) series from
https://lore.kernel.org/all/20250211-pre-ict-jaguar-v6-0-4484b0f88cfc@cherry.de/

Patches for Haikou Video Demo adapter for PX30 Ringneck and RK3399 Puma
(patches 4 and 5) also depend on the following patch series:
https://lore.kernel.org/linux-devicetree/20250220-pca976x-reset-driver-v1-0-6abbf043050e@cherry.de/

This fixes incorrect pinmux on UART0 and UART5 for PX30 Ringneck on
Haikou.

This adds support for the HAIKOU-LVDS-9904379 adapter for PX30 Ringneck
fitted on a Haikou carrierboard.

Additionally, this adds support for Haikou Video Demo adapter on PX30
Ringneck and RK3399 Puma fitted on a Haikou carrierboard. Notably
missing from the overlay is the OV5675 camera module which expects
19.2MHz which we cannot exactly feed right now. Modifications to the
OV5675 drivers will be made so it's more flexible and then support for
the camera module will be added. This adapter has a 720x1280 DSI display
with a GT911 touchscreen, a GPIO-controllable LED and an I2C GPIO
expander. Support for this adapter on RK3588 Tiger is being added in a
separate patch series[1].

Note that the DSI panel currently is glitchy on both PX30 Ringneck and
RK3399 Puma but this is being tackled in another series[2]. Since this
will not be fixed through DT properties for the panel, adding the DT
nodes for the DSI panel even if not perfect right now seems acceptable
to me.

[1] https://lore.kernel.org/linux-rockchip/20241127143719.660658-1-heiko@sntech.de/
[2] https://lore.kernel.org/r/20240626084722.832763-1-heiko@sntech.de

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Quentin Schulz (5):
      arm64: dts: rockchip: fix pinmux of UART0 for PX30 Ringneck on Haikou
      arm64: dts: rockchip: fix pinmux of UART5 for PX30 Ringneck on Haikou
      arm64: dts: rockchip: add support for HAIKOU-LVDS-9904379 adapter for PX30 Ringneck
      arm64: dts: rockchip: add overlay for PX30 Ringneck Haikou Video Demo adapter
      arm64: dts: rockchip: add overlay for RK3399 Puma Haikou Video Demo adapter

 arch/arm64/boot/dts/rockchip/Makefile              |  15 ++
 .../px30-ringneck-haikou-lvds-9904379.dtso         | 130 ++++++++++++++
 .../rockchip/px30-ringneck-haikou-video-demo.dtso  | 190 +++++++++++++++++++++
 .../boot/dts/rockchip/px30-ringneck-haikou.dts     |  10 +-
 .../rockchip/rk3399-puma-haikou-video-demo.dtso    | 166 ++++++++++++++++++
 5 files changed, 510 insertions(+), 1 deletion(-)
---
base-commit: 6ee0b9ad3995ee5fa229035c69013b7dd0d3634b
change-id: 20250128-ringneck-dtbos-98064839355e
prerequisite-change-id: 20250219-pca976x-reset-driver-c9aa95869426:v1
prerequisite-patch-id: 24af74693654b4a456aca0a1399ec8509e141c01
prerequisite-patch-id: df17910ec117317f2f456f679a77ed60e9168fa3

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


