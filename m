Return-Path: <devicetree+bounces-53618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 383AB88CDA8
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69DEC1C2EA4F
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 19:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328AE13D271;
	Tue, 26 Mar 2024 19:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="fHjlrDX0"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A53D13CC74
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 19:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483101; cv=none; b=cbq32OkC5vDI/WMH56McxCNntpLhw6WhWT2maCJfCDQwtKCcr2/aXNMvqaQbwJ5RR9kyKAF40hLSiuICOykT2IuZXuOB3ep2O9nVYDB07mudlBzcAPxviHOJ1UgsICCkKX/Gd5FLTy+7EI4c7GOQknTi6/Rl1CBqbg9MeQ99NFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483101; c=relaxed/simple;
	bh=C14mH9fBuI/EpgXwOjPrDIoWrftlZthDQ78Yr0RdEwI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XNINCI58e+YryqyI6RsIIKtM0ZobMKqey9VWSIpkGyPriQJFaVRlOSq49Q+T4X525kLqaxhYFHC7zzUS1E2w+YKnpKEzuK+sf4WiHg+/KuEgY0GALA2/PpGNJz5JIxdYa/g2kPxDBe22gWiFeCq490/oP3dDee8G0QwBXmBUlFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=fHjlrDX0; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4F86663B;
	Tue, 26 Mar 2024 20:57:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1711483065;
	bh=C14mH9fBuI/EpgXwOjPrDIoWrftlZthDQ78Yr0RdEwI=;
	h=From:To:Cc:Subject:Date:From;
	b=fHjlrDX0oOgI3bMqS/V6/D3MP6cq0K2N96F9i6LgVa5yz3XaMcxCXKV4nkTYD0PDO
	 YD2V46XvwZjVnOYFoefDD67m9wjfJaY6/aIsjw4vgp/tnPg/A9zMBTBRDgyb3Xo/mz
	 yB1l3hEq1McWcnf32rCLvhS8fmFv5BJ3qoI7mI3U=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Naushir Patuck <naush@raspberrypi.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Ray Jui <rjui@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH v2 0/3] dt-bindings: arm: bcm: raspberrypi,bcm2835-firmware: Drive-by fixes
Date: Tue, 26 Mar 2024 21:58:04 +0200
Message-ID: <20240326195807.15163-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This small series includes a few drive-by fixes for DT validation
errors.

The first patch has been posted previously in v1 ([1], and now addresses
a small review comment. I think it's good to go.

The next two patches address the same issue as "[PATCH 1/2] dt-bindings:
arm: bcm: raspberrypi,bcm2835-firmware: Add missing properties" ([2]),
but this time with a (hopefully) correct approach. Patch 2/3 starts by
fixing the raspberrypi-bcm2835-firmware driver, removing the need for DT
properties that are specified in bcm2835-rpi.dtsi but not documented in
the corresponding bindings. Patch 3/3 can then drop those properties,
getting rid of the warnings.

[1] https://lore.kernel.org/linux-arm-kernel/20240326004902.17054-3-laurent.pinchart@ideasonboard.com/
[2] https://lore.kernel.org/linux-arm-kernel/20240326004902.17054-2-laurent.pinchart@ideasonboard.com/

Laurent Pinchart (3):
  dt-bindings: arm: bcm: raspberrypi,bcm2835-firmware: Add gpio child
    node
  firmware: raspberrypi: Use correct device for DMA mappings
  ARM: dts: bcm283x: Drop unneeded properties in the bcm2835-firmware
    node

 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 30 +++++++++++++++++++
 .../gpio/raspberrypi,firmware-gpio.txt        | 30 -------------------
 arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi   |  4 ---
 drivers/firmware/raspberrypi.c                |  7 +++--
 4 files changed, 34 insertions(+), 37 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/raspberrypi,firmware-gpio.txt

-- 
Regards,

Laurent Pinchart


