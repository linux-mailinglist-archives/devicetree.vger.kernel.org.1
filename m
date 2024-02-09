Return-Path: <devicetree+bounces-40112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B116884F4C5
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:40:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E33EA1C210FF
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 11:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A1C2E63C;
	Fri,  9 Feb 2024 11:40:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E9828DC1
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 11:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707478827; cv=none; b=pKUBesyVKW+daxBU5mntvw+EIJ0MZh4QCpVXoqBGMeg2oUmemTFROMmtiui5rviOzsDzkLszy/j7Eid5KmG0URz0AGRScfmi8Mrt2RyIAwnDt2P9KGOlyFvWCAp56NgEjyBfDQWHGZJBCEj2VcYKJc7hpuS5Tm6T4e1IRyGqk7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707478827; c=relaxed/simple;
	bh=a5vog6okmrNHf+l38lVb3dyIgclrxEqCUBc9Y80dbsA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SKtW3NthnkXsm+nBa2cAOm8Y7G7RjTufLse+VTUqzLEUsuQSQUvEC3CsOaEkSoV0LlmQWfE81zyAs0rK0fNqR62L7nc8FMGJCwYsIhSgjt2XS+4m3UnuFuHEb5sz3bpo1GsYibVusSAER2fUlt9Ht5mLZruSMqS4ZC6Q0ZTtjfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA118DA7;
	Fri,  9 Feb 2024 03:41:06 -0800 (PST)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.100.28])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 809C43F762;
	Fri,  9 Feb 2024 03:40:23 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] arm64: dts: allwinner: Add Remix Mini PC support
Date: Fri,  9 Feb 2024 11:40:15 +0000
Message-Id: <20240209114018.3580370-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

a small update, addressing the review comments and adding tags. See
below for a changelog.

==========================================
These are the DT support patches for the Jide Remix Mini PC, a now
somewhat dated Mini-PC, once shipped with some kind of desktop Android OS.
It sports an Allwinner H64 SoC, which is basically the same as the
venerable A64.
To make it stick out of the crowd, the SoC has "secure boot" enabled,
which just means it needs a different (signed) boot code package, already
supported by mainline U-Boot. Fortunately there is no public key burned
into the SoC, so any key can be used: the U-Boot build system will just
make one up.
Apart from Ethernet (blocked by the AC200 PHY) everything should work,
including WiFi and Bluetooth.

Please have a look!

Changelog v1 .. v2:
- Update copyright year
- Remove not-working MMC DDR speed mode
- Add HS-400 speed mode property (used by the BSP kernel)
- Remove superfluous pinctrl-names property

Andre Przywara (3):
  dt-bindings: vendor-prefixes: add Jide
  dt-bindings: arm: sunxi: document Remix Mini PC name
  arm64: dts: allwinner: Add Jide Remix Mini PC support

 .../devicetree/bindings/arm/sunxi.yaml        |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../allwinner/sun50i-h64-remix-mini-pc.dts    | 356 ++++++++++++++++++
 4 files changed, 365 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h64-remix-mini-pc.dts

-- 
2.25.1


