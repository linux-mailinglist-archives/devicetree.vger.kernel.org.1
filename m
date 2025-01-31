Return-Path: <devicetree+bounces-142024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC67EA23C5B
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 11:41:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 268A47A4137
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 10:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC8D1B415D;
	Fri, 31 Jan 2025 10:40:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-1909.mail.infomaniak.ch (smtp-1909.mail.infomaniak.ch [185.125.25.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C054B1B87F8
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 10:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738320038; cv=none; b=m6mMgKyVVaNYOWWH8gKNU/QTIUcX99H0083zUJ4tcz2sMACLtIIDcd01KztFLGHkO2Bk+i5vXf40e7cFUQMOp//f7hIVwYK3mAi9vLDgM7x+IdKQvLsWVI5532hSRgdFDpZ8sX5/e8889cQXKMPeR3OaPO+wTc7qSzQ5ORSOOH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738320038; c=relaxed/simple;
	bh=npV68T6cc2d/6g84pozIwO3MvV2qLbC0blMgXILQh9o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DLEZ3MN2dwH4c7xBepb33FQtavfG+OseMzOODNAwrsajDgLKPqHJ0dvc1jrdDmv4r39YajSDKZCu2MkkErMEzPr1km0LSg6CRfc7AIjXi/unMkea5RTsPCbD0jqiMOTFhpZBaN76DTz89xghhX4wQfL+RG5icR7vKKEo46Ixd/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10:40ca:feff:fe05:0])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YksqJ4k7lzV2Y;
	Fri, 31 Jan 2025 11:40:28 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YksqH5kWTz4qH;
	Fri, 31 Jan 2025 11:40:27 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH v4 0/4] arm64: dts: rockchip: minimal support for Pre-ICT
 tester adapter for RK3588 Jaguar + add overlay tests
Date: Fri, 31 Jan 2025 11:40:14 +0100
Message-Id: <20250131-pre-ict-jaguar-v4-0-c971e2852e8d@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAI6onGcC/3XMywrCMBCF4VeRrI3MpHdXvoe4yGXSxkUrSQ2W0
 nc3LQiF4vLM8P0zC+QdBXY9zcxTdMENfRr5+cR0J/uWuDNpMwEiRwElf/l00iN/yvYtPVcNWGm
 JamVqllB6W/fZgvdH2p0L4+CnrR9xvf5NReTIK1uWoEyuKtA33ZH308UQW1NR/HgBiEcuOHAsK
 pNhA5DbA892XNQHniVeKRIWGpM1IPd8WZYvjYXcMSoBAAA=
X-Change-ID: 20241206-pre-ict-jaguar-b90fafee8bd8
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Jonas Karlman <jonas@kwiboo.se>, Dragan Simic <dsimic@manjaro.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

This adds minimal support for the Pre-ICT tester adapter for RK3588
Jaguar.
GPIO3A3, GPIO3A4, GPIO3B2 and GPIO3D2 to GPIO3D5 are all routed to power
rails and can only be used as input and their bias are important to be
able to properly detect soldering issues.

Additionally, this adds build-time overlay application tests for all
Rockchip overlays to try to avoid future regressions.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v4:
- fix typos in WolfVision patch,
- added Rb on WolfVision patch,
- Link to v3: https://lore.kernel.org/r/20250128-pre-ict-jaguar-v3-0-7be2f09d390a@cherry.de

Changes in v3:
- removed Fixes tag and intent to send to stable as this patch almost
  doubles the size of the main DTB. Let's not potentially break users of
  stable releases,
- added Wolfvision PF5 overlay tests, thanks Michael,
- added comment on how to add new overlays (via tests), and the side
  effects,
- grouped the overlay application test target with the definition of its
  dependencies (DTB + DTBO(s)),
- added trailers,
- Link to v2: https://lore.kernel.org/r/20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de

Changes in v2:
- add overlay application tests for Edgeble NCM6A WiFi and Rock 5B PCIe
  Endpoint+SNRS
- add overlay application test for RK3588 Jaguar + Pre-ICT tester
  adapter,
- Link to v1: https://lore.kernel.org/r/20241206-pre-ict-jaguar-v1-1-7f660bd4b70c@cherry.de

---
Quentin Schulz (4):
      arm64: dts: rockchip: add overlay test for WolfVision PF5
      arm64: dts: rockchip: add overlay test for Edgeble NCM6A
      arm64: dts: rockchip: add overlay tests for Rock 5B PCIe overlays
      arm64: dts: rockchip: minimal support for Pre-ICT tester adapter for RK3588 Jaguar

 arch/arm64/boot/dts/rockchip/Makefile              |  36 ++++-
 .../dts/rockchip/rk3588-jaguar-pre-ict-tester.dtso | 171 +++++++++++++++++++++
 2 files changed, 202 insertions(+), 5 deletions(-)
---
base-commit: 69e858e0b8b2ea07759e995aa383e8780d9d140c
change-id: 20241206-pre-ict-jaguar-b90fafee8bd8

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


