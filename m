Return-Path: <devicetree+bounces-95509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E111C9599DD
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 13:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93D972833F6
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 11:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966E01C6F79;
	Wed, 21 Aug 2024 10:32:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from muminek.juszkiewicz.com.pl (muminek.juszkiewicz.com.pl [213.251.184.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC9319ABB3
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 10:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.251.184.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724236342; cv=none; b=ipOnCa7K774Kq8c528H/A8YtqJTFcHCpzemmOSNZawf3whyNPNUlBdSxpt9OSZkdr8hBaJ1mQjVsthw12oZKzjXh8ev4KlZpvyFVWfScMDEl55lt+D+WGKvEbDJZhS9yLqM4UPVHfzWVAqDw2PrRAgexIjryo7t9FgR4I/Zz64U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724236342; c=relaxed/simple;
	bh=EKQwdno6gp1JOek7dqANp9rTGnXC4xrPakHSMf70FQ4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bA3Z3PJPWkDmYKGe8U2BltuMeqYWGp0TZ1MeAfrgWa6JboDnDoanY5EvmeA90lHHEsDylm8uQ030ZcW8QicXTRJyhNCaewr18xy8eQ8142RiEDq3eZo35UuOmt5KpgeAAvY+3CO5ntGAZfQkBxbD3rcTsDjqV73TGU4ZJMfbipY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org; spf=fail smtp.mailfrom=linaro.org; arc=none smtp.client-ip=213.251.184.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=linaro.org
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 473C62619C2;
	Wed, 21 Aug 2024 12:26:30 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id 096dQYK6RGNs; Wed, 21 Aug 2024 12:26:28 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 9C73426018E;
	Wed, 21 Aug 2024 12:26:27 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH v3 0/7] FriendlyELEC NanoPC-T6 improvements
Date: Wed, 21 Aug 2024 12:26:10 +0200
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMLAxWYC/42OwQ6CMBBEf8X07JJtS4R48j8MByirrtYWW0TR8
 O9WPejJeHyTyZu5i0iBKYrl7C4CDRzZuwR6PhNmV7stAbeJhUKVY6kQNqnuWjuSJQOudr4z0C/
 A9hEQTbEoSqObthBJ0AXa8PUlX1dvDnQ6p43+E+449j6MrwODfKZ/bQ0SJLS1VIU2mrCk1f4cb
 wemC5tbZvwx66x4+gf17ZQ/nQoQCKUum0Yi5mpl2dXBZz5sRTVN0wOJ8EWiLgEAAA==
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0

This series updates FriendlyELEC NanoPC-T6 situation. There is non-LTS
(2301) version of a board and LTS (2310) version.

This series creates separate DTS for NanoPC-T6 LTS (on top of non-LTS
one) and enables USB 2.0 ports on it.

Then set of changes for both versions are done:

- enable USB-C port (one orientation only)
- enable Mali GPU
- enable IR receiver (not tested)
- enable SPI flash (present on LTS, optional on non-LTS)

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

---
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
      arm64: dts: rockchip: define pinctl for SPI M1
      arm64: dts: rockchip: add SPI flash on NanoPC-T6
      arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      arm64: dts: rockchip: enable GPU on NanoPC-T6
      arm64: dts: rockchip: enable USB-C on NanoPC-T6

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3588-base-pinctrl.dtsi     |  17 ++++
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 105 ++++++++++++++++++++-
 5 files changed, 187 insertions(+), 3 deletions(-)
---
base-commit: 6e4436539ae182dc86d57d13849862bcafaa4709
change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7

Best regards,
-- 
Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>


