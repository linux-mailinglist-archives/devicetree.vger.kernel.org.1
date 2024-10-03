Return-Path: <devicetree+bounces-107470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC8398EC72
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 11:50:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A18251C2162F
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 954E513B58A;
	Thu,  3 Oct 2024 09:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="OQbotMwR"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A621126C00
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 09:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727949003; cv=none; b=HOA9ztW/Fqt/ULcZYV4vFE4wZ34UgDd+d78ClVlP019Ukz4W9CwDoTvH2sjuYA2GzX//cSbcjGoGgbmv2PwylIjqyh0XUzkenF95m67pFOCY/CwMLg6XivT3DlOy9GI7sr38Df0XLINOCtAmeRqdqZdZT9+1lmcX6KOZvz3Bvk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727949003; c=relaxed/simple;
	bh=8cirylqs9X/1jiwmQr4277G7dFywMyvY0SuXqZTEmMY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VwULHkaIEDmDKHwj5Poaevsg8VPK3oKM59OKL4AVbexMTmd9IFFQDkYN6GCrL6Qo1Oh0I2iBMbih4meOzP2xbO+uigsk4tIc1OqtyDIBAyE8Sbq/GL8LwAT1edrd70w3ymbs7RMssfc20YeUS2t2hocoYQfN37OaNLcsCeD93GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=OQbotMwR; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727948998;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CeDoAHF0CNfZlTf5K4lvfk+NClUys0mGh57L32ShtE8=;
	b=OQbotMwR8FXnKbAglWB9sitnCATUbNHue7XEoEMLRnTz+jBfr322LWpoanl5CXpbbrV0bJ
	ozC4zImESZf57sIFD2PKSqDvaY2dBg5eQNyGMvoZIB+ZF5I98beVaxSHec2dKNoAgXkp3d
	omRXrRVNcQu7XUQ6XUa7sAySa4SEGBUlPi+LN8SwvPM+yJOxrpDCKiSIFRQNW4Eo2MmbQl
	Liint6HVqZNGxCLQpYxdSzfVJarjPCR5xyFLjO4dqHYmnKEyDjHJqtkYJAzrr7mpgwrARC
	Eb7qSbo3tXiYZXDz6+PCTqPHAlU6yRFgO0FTEJ1Kgvu9epyRZslRnEGUOCQeJw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 0/5] Drop deprecated 'rockchip' prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:24 +0200
Message-ID: <20241003094927.62042-1-didi.debian@cknow.org>
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
"system-power-controller" for the rk805, rk808, rk809/rk817, rk818
PMICs.
Drop the 'rockchip,' prefix from the px30, rk33** and rk356x DT files
which still used the deprecated variant.

Diederik de Haas (5):
  arm64: dts: rockchip: px30: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3328: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3399: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk356x: Drop rockchip prefix from s-p-c PMIC property

 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/px30-evb.dts                | 2 +-
 arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts   | 2 +-
 52 files changed, 52 insertions(+), 52 deletions(-)

-- 
2.45.2


