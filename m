Return-Path: <devicetree+bounces-97964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 768C7964461
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 14:27:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9BA01C2202D
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 12:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FA82194151;
	Thu, 29 Aug 2024 12:27:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from muminek.juszkiewicz.com.pl (muminek.juszkiewicz.com.pl [213.251.184.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1E4192B8E
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 12:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.251.184.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724934442; cv=none; b=ojhBPzSr+jHAZB9gNl5VmKE1ba6CAlG9DqfPQxfiA84Pzyk8r0SEODGgs9RtzUFoEte7qxH4bmksrLx8utFTbvAAZRh9ZMlIdIKbGfFuGHmMHPg+feB7RRzZ3nd3RzvIMjVOaBI5EZGcVyFvcQ2ZeBLjSaIUKAhtTWwhgrUsknY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724934442; c=relaxed/simple;
	bh=SmVQsvEvm/dEMuEx9YdJ92kLkdja1Lah8KIAyMfUNqM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=tpqrE27LIXoHw0PJiv3i7ZMz2ak/XXgDJhoHPhZrAjHfnQE1vExKMEkYBtEqgtFXtW/eoRqLKJGOiOVA0U1KNuzpPCxoIIQrjWT3aBuJDiIO/0g9/HeSzPjwyBJN3O1ZR0LJDcUysTAjQ9LsqEygOLpuXBV/uefn97l6SvTifU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org; spf=fail smtp.mailfrom=linaro.org; arc=none smtp.client-ip=213.251.184.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=linaro.org
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 44A27260979;
	Thu, 29 Aug 2024 14:27:12 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id lECWLwP-5Ldd; Thu, 29 Aug 2024 14:27:10 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 6B4FA260243;
	Thu, 29 Aug 2024 14:27:09 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH v6 0/9] FriendlyELEC NanoPC-T6 improvements
Date: Thu, 29 Aug 2024 14:26:51 +0200
Message-Id: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAtp0GYC/43OTW7CMBAF4Ksgr+tobAc7dMU9qi78MwG3wU7tk
 BZQ7l4Di6ZCili+p9H35kIyJo+ZvK4uJOHos4+hBPmyInavww6pdyUTDryGhgNty3lw3Qk7tDT
 oEHtLB0m7IVMAq6RqrDBOkQL0CVv/c8Pf3u854dexbAx/5d7nIabT7YGRXduntkZGGXWacSWsQ
 Ghw+3HM50+P396eKxsPVd+Rqz/yuckWTU6BIjDRGMMAar7tfNApVjHt7pZ43hLFEmhbvdlIYxA
 erHpu8UWrLlaz4RqNRQtWPljruSUXrXWxjBYCndOqZeqfNU3TL+a/rccSAgAA
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, Diederik de Haas <didi.debian@cknow.org>, 
 Dragan Simic <dsimic@manjaro.org>, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1

This series updates FriendlyELEC NanoPC-T6 situation. There is non-LTS
(2301) version of a board and LTS (2310) version.

This series creates common DTSI for both boards and then separate
NanoPC-T6 and NanoPC-T6 LTS DTS files. This way T6 gets MiniPCIe section
and T6-LTS gets USB20 section.

Then set of changes for both versions are done:

- enable USB-C port (one orientation only)
- enable Mali GPU
- enable IR receiver (tested using ir-keytable)
- enable SPI flash (present on LTS, optional on non-LTS)
- enable Mask Rom button as input device

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

---
Changes in v6:
- split 2nd patch into parts:
  - create common DTSI
  - move non-LTS (2301) parts to rk3588-nanopc-t6.dts
  - add LTS (2310) in rk3588-nanopc-t6-lts.dts
- Link to v5: https://lore.kernel.org/r/20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org

Changes in v5:
- added Reviewed-by to 'add spi flash' patch
- dropped adding SPI M1 pinctl
- changed ir-receiver to have pinctrl like Jonas Karlman suggested
- Link to v4: https://lore.kernel.org/r/20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org

Changes in v4:
- added Acked-by to dt-bindings patch
- create common dtsi for both board versions
- nanopc-t6.dts has minipcie items
- nanopc-t6-lts.dts has usb 2.0 host enablement
- Link to v3: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org

Changes in v3:
- create separate NanoPC-T6 LTS devicetree as suggested
- Link to v2: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org

Changes in v2:
- merged changes into NanoPC-T6 dts file
- add SPI flash pinctl for SPI M1
- enable SPI on NanoPC-T6 LTS
- enable USB-C port (one orientation only)
- enable Mali GPI
- enable IR receiver (not tested)
- Link to v1: https://lore.kernel.org/r/20240820-friendlyelec-nanopc-t6-lts-v1-1-da1273c3e08e@juszkiewicz.com.pl

---
Marcin Juszkiewicz (9):
      dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
      arm64: dts: rockchip: prepare NanoPC-T6 for LTS board
      arm64: dts: rockchip: move NanoPC-T6 parts to DTS
      arm64: dts: rockchip: add NanoPC-T6 LTS
      arm64: dts: rockchip: add SPI flash on NanoPC-T6
      arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      arm64: dts: rockchip: enable GPU on NanoPC-T6
      arm64: dts: rockchip: enable USB-C on NanoPC-T6
      arm64: dts: rockchip: add Mask Rom key on NanoPC-T6

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 908 +--------------------
 ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} | 143 +++-
 5 files changed, 189 insertions(+), 930 deletions(-)
---
base-commit: d5d547aa7b51467b15d9caa86b116f8c2507c72a
change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7

Best regards,
-- 
Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>


