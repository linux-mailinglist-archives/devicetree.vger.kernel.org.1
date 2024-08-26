Return-Path: <devicetree+bounces-96575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FE395EB55
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 10:05:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A53F3B243BE
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 08:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C0313AA26;
	Mon, 26 Aug 2024 08:03:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from muminek.juszkiewicz.com.pl (muminek.juszkiewicz.com.pl [213.251.184.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDCF7407A
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 08:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.251.184.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724659403; cv=none; b=kjD7wh/mopEOcsNSQrQKmUXqzDnRQYrDmFWOiwXFvkCS6EP840lA9vbknFqWbB/RfReFO270Ox/ILSb6o39YI6oHLjKWobP1Ecl5pdnHl4mUvOyHb+ndsIsGjRYpSWNCKQi3ZH0tiuqKZVcu5hKkb/8nGY0VMmmpy9mb7I1WZ+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724659403; c=relaxed/simple;
	bh=QAxTWEuf9NR5FVob2x23GC9PBWFUVewQHG1wy3Co3A0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=S1DMVLaHWWEkN1S+jGcYwI3tDxKknbeNOt1HtPXJ7PWfsTn5uLVi4TaPnkY8ZatYad+ksCC5HVM3pLye6oK84wEkmH/EOV4RET3ZYeUp0tGzZphaW/o5rd7kbeFlwK/Z7unp9hWDgKqVgrPBX/Yn5KPN52OIsf2UNqUkbbasydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org; spf=fail smtp.mailfrom=linaro.org; arc=none smtp.client-ip=213.251.184.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=linaro.org
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id A7E29260ACD;
	Mon, 26 Aug 2024 10:03:13 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id FMfb5G2_nGUE; Mon, 26 Aug 2024 10:03:11 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id AFEB62602C9;
	Mon, 26 Aug 2024 10:03:10 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH v5 0/7] FriendlyELEC NanoPC-T6 improvements
Date: Mon, 26 Aug 2024 10:02:44 +0200
Message-Id: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKQ2zGYC/43OQW7CMBAF0Ksgr+tobKeJ0xX3qLqwJxNwa+zUD
 mkB5e41sChVJcTyf43enxPLlBxl9rI6sUSzyy6GEp6fVgy3JmyIu75kJkHWoCXwoZyH3h/IE/J
 gQhyRTw33U+YA2DatRmX7lhVgTDS47wv++nbNiT73ZWP6LbcuTzEdLg/M4tw+tDULLnhvhGwVK
 gJN6/d9Pn44+nJ4rDDuqtGzsz/LW1PcNSUHTiCUtlYA1HLtXTApVjFtrpZ63FLFUoSD6brGWoJ
 /Vn1rybtWXSzdSUMWCQGbP9ayLD88eWBqxgEAAA==
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0

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
Marcin Juszkiewicz (7):
      dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
      arm64: dts: rockchip: add NanoPC-T6 LTS
      arm64: dts: rockchip: add SPI flash on NanoPC-T6
      arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      arm64: dts: rockchip: enable GPU on NanoPC-T6
      arm64: dts: rockchip: enable USB-C on NanoPC-T6
      arm64: dts: rockchip: add Mask Rom key on NanoPC-T6

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 910 +--------------------
 ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} | 142 +++-
 5 files changed, 191 insertions(+), 929 deletions(-)
---
base-commit: 5be63fc19fcaa4c236b307420483578a56986a37
change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7

Best regards,
-- 
Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>


