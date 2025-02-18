Return-Path: <devicetree+bounces-147891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE23A39B7F
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:55:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0AA7188F3CC
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DFEB2417DC;
	Tue, 18 Feb 2025 11:55:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc0c.mail.infomaniak.ch (smtp-bc0c.mail.infomaniak.ch [45.157.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C55F240605
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739879716; cv=none; b=A+dhf0+sbUHhMXJa5eBEKRNNW8rPkneUAJn4AA18K3jpKDbtnf3NJyq66yp3qkTsqr8YMrS1KNxKLsHWMNZakhGcp0uNFRxtJI6y81qLSAnFWgy+yJDmxrIaZrocJP//PRYf056/5Nj0xibb8x7Dy8BB4lefi0umvwKtwzstZgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739879716; c=relaxed/simple;
	bh=mBv40pRR7MKUXb++oJNPTPMLu1stYDN7CMpH6HHhSA0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=n0fyy8H3qSqbDkj5NU+I3wnR1/jZSuqSFzPkkHbHuMcCw2g9is3GzK5+xgmnUBdGdO8uJZ1agAW/+dSmmPyU1ExrXu7SGvEv1DdzNKcrUDywXHAWZa/8+/lE70JqWsqnqgo2j16dgjUxNBrIBUQj0x7z42V+4bttUFTgouVnK1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=45.157.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YxyVd2gHPz4FR;
	Tue, 18 Feb 2025 12:49:29 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YxyVc59ZGzkyq;
	Tue, 18 Feb 2025 12:49:28 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/9] arm64: dts: rockchip: align and reorganize Theobroma
 DTS(I)
Date: Tue, 18 Feb 2025 12:49:11 +0100
Message-Id: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALdztGcC/x3MQQqAIBBA0avErBvQIZO6SrSQmmwoLLQiiO6et
 HyL/x9IHIUTtMUDkS9JsoUMXRYwzC54RhmzgRQZRVrjkUZ0q/iAs5NlO9FSRbqyytamgZztkSe
 5/2XXv+8HVPcwi2IAAAA=
X-Change-ID: 20250211-tsd-align-haikou-724214707659
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

We have three SoMs that can use Haikou as their carrierboard so it'd be
nice to have consistency across SoMs on what's enabled by default. To
that end, Tiger Haikou now has UART5 enabled and Puma Haikou now has the
EEPROM found on Haikou specified.

Additionally, some devices were configured or enabled in the wrong
places (either SoM DTSI when they needed to be configured in
carrierboard DTS or vice-versa). This moves things around to better
match actual HW definition and make it easier to reuse the SoM DTSI
without having to undo carrierboard-specific changes. While at it,
disable devices/buses exposed on connectors which do not have overlays.
They need to be enabled in the appropriate overlays whenever they will
be added.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Quentin Schulz (9):
      arm64: dts: rockchip: enable UART5 on RK3588 Tiger Haikou
      arm64: dts: rockchip: move DDC bus from Haikou carrierboard to RK3399 Puma DTSI
      arm64: dts: rockchip: move I2C6 from Haikou carrierboard to Puma DTSI
      arm64: dts: rockchip: disable I2C6 on Puma DTSI
      arm64: dts: rockchip: enable I2S0 in Haikou carrierboard, not Puma DTSI
      arm64: dts: rockchip: add EEPROM found on RK3399 Puma Haikou
      arm64: dts: rockchip: enable Ethernet in Haikou carrierboard, not Puma DTSI
      arm64: dts: rockchip: enable I2C3 in Haikou carrierboard, not Ringneck DTSI
      arm64: dts: rockchip: disable I2C2 bus by default on RK3588 Tiger

 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts |  2 ++
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi       |  4 ----
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts   | 18 +++++++++++++++---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi         | 10 ++++++++--
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts  |  2 ++
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi        |  1 -
 6 files changed, 27 insertions(+), 10 deletions(-)
---
base-commit: 2408a807bfc3f738850ef5ad5e3fd59d66168996
change-id: 20250211-tsd-align-haikou-724214707659

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


