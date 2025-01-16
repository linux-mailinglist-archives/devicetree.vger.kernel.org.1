Return-Path: <devicetree+bounces-139064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D97A13D00
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:57:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BF951882388
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41FCF22ACC6;
	Thu, 16 Jan 2025 14:57:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190c.mail.infomaniak.ch (smtp-190c.mail.infomaniak.ch [185.125.25.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BAA1DE2D7
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737039457; cv=none; b=mVsiCgZMsX/IxyxI32tEyS6Lh6MOzhdbfDV4AHPDvSIRkL+t6x66cKx+ZVo/mdo3n++QDG3YQuSlH+03m24Kc/UmFiH9cMXmDv37vPiFqu+rVsgtu/6RnwrqojBoWVQRdWtgnB3Azqle4hkVsmXJ1MjCzspJ6DRpYp0iVKcSBzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737039457; c=relaxed/simple;
	bh=WojC/HfeSAGGX8JYo0Ms0HAFx5OVVt24+Aoilac0NhE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Usm8+C5xB586FxutEG77N+90tOh1j1puegtFG0awKsnI1zfhs029+Th+0w+JkZYEzOMB9KQd/DiK6zo4dDl7BNJD2A0U12cRN4O0PANf/GmWe9pad5gm3CHHw7Cvtu1XSTSdipVcnbO+Ih5LppyiPo9LLHkPBV+3aBLVx5eDZqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YYm1j07dDz91y;
	Thu, 16 Jan 2025 15:47:53 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4YYm1h1Vhdzbd9;
	Thu, 16 Jan 2025 15:47:52 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: minimal support for Pre-ICT
 tester adapter for RK3588 Jaguar + add overlay tests
Date: Thu, 16 Jan 2025 15:47:09 +0100
Message-Id: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO0biWcC/3WMOw6DMBAFr4K2zka2hYCkyj0QhT9r7BQQrYkVh
 Hz3OPQpZ57eHJCIIyW4Nwcw5ZjiulRQlwZs0MtMGF1lUEK1UokOX1yV3fCp57dmNDfhtScajBu
 gnurs4+cMjlPlENO28n72s/zZv6ksUWLvu04Y15pe2IcNxLxfHcFUSvkC+Q2A5qwAAAA=
X-Change-ID: 20241206-pre-ict-jaguar-b90fafee8bd8
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

This adds minimal support for the Pre-ICT tester adapter for RK3588
Jaguar.
GPIO3A3, GPIO3A4, GPIO3B2 and GPIO3D2 to GPIO3D5 are all routed to power
rails and can only be used as input and their bias are important to be
able to properly detect soldering issues.

Additionally, this adds build-time overlay application tests for (some)
Rockchip overlays to try to avoid future regressions.

Notably, the Device Trees from Wolfvision PF5 aren't migrated (but
should) as I do not own the device and couldn't figure out from the
introducing commit logs what the possible valid combinations are.
+Cc Michael Riesch for awareness

I'm wondering if we shouldn't backport patches 1 and 2 to stable? In
which case, it would make sense to try to have the Wolfvision PF5
overlay tests merged before the addition of the Pre-ICT tester adapter
support for RK3588 Jaguar as that one won't be backported to stable and
backporting the Wolfvision overlay test would incur an unnecessary
(though not difficult) git conflict to resolve.

I also do not know what kind of tests we should have when overlay
combinations are possible (let's say there are A, B and C overlays that
can all be applied, should we have base + A, base + B, base + C,
base + A + B, base + A + C, base + B + C and base + A + B + C tests?
maybe even base + B + A, base + C + B, base A + C + B, base + B + A + C,
base + B + C + A, base + C + B + A and base + C + A + B tests?).

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v2:
- add overlay application tests for Edgeble NCM6A WiFi and Rock 5B PCIe
  Endpoint+SNRS
- add overlay application test for RK3588 Jaguar + Pre-ICT tester
  adapter,
- Link to v1: https://lore.kernel.org/r/20241206-pre-ict-jaguar-v1-1-7f660bd4b70c@cherry.de

---
Quentin Schulz (3):
      arm64: dts: rockchip: add overlay test for Edgeble NCM6A
      arm64: dts: rockchip: add overlay tests for Rock 5B PCIe overlays
      arm64: dts: rockchip: minimal support for Pre-ICT tester adapter for RK3588 Jaguar

 arch/arm64/boot/dts/rockchip/Makefile              |  14 +-
 .../dts/rockchip/rk3588-jaguar-pre-ict-tester.dtso | 171 +++++++++++++++++++++
 2 files changed, 182 insertions(+), 3 deletions(-)
---
base-commit: 619f0b6fad524f08d493a98d55bac9ab8895e3a6
change-id: 20241206-pre-ict-jaguar-b90fafee8bd8

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


