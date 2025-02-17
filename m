Return-Path: <devicetree+bounces-147646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF80A38E18
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 22:34:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2197F3B467F
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 21:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F251B0F18;
	Mon, 17 Feb 2025 21:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="YLeO4iF3"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE061B0412
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 21:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739827968; cv=none; b=AfV4JGBS2G2OwBfYworhGi/4dy2RqfQUwuT0vPPurt1PglAYfx+tKu81MRJF2OLNFhZhsbQ6RkYeUb7XqvW5Mi3toaG9+GyAOY/dQtnQDa0gNKPWc95ru+EGHZKfA5plALSs1dfICoLCvM2RUJDQE2WIC1x9iM3TitVGIWwUo2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739827968; c=relaxed/simple;
	bh=WqeFbzv30O7RaX+m3emlybcx2+Iz8b9iq7nsHwVXm3c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mzkTzz+ls0M0OWIfHdbgAQY6QMCgNA+Hf6R/2M7a6rRVZ17yQG02nj1gpVUEDfBcd9xr0IQcV4QP5Zwj8P1sgPkZzamhw/vIzu32JFznEEwVirAq6iHcLFSN91rhAbZm7yviAdBpHQNWtKrJ/3eRUllfvxeLVmgo1Ie9CDOGZR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=YLeO4iF3; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=YLeO4iF3jLlJiCs8yTJaWttLqRAHhXkgkMLxU+TnRgqCp8KUjCs0TQ38YmD2h2Pl7w9OVOHJggMexqr0Pg2JAKuZ3aoa11IvfxIUiitUII4/uSytPZYwcgsMiZuXhTW39g8AcRwcMmDV7TU1xbKRX+oCd4RpJX9B7saVE0p4noXpYBJ50ly3MUAfRXnO0DHmUrDJvWuzTMeRdFfSfTR2MILbV69baiOPgK7gl5Jbuo/Y2T6i8s/tn/kClXbuWO29r5U7gdBgN6VNb9LkHBjtfssQ+6pz3QH4SQsRnfL1JB78gbpbRty8BKznHUYSGT7zWHcv7ce1vmUfe4O1k1c0nQ==; s=purelymail3; d=purelymail.com; v=1; bh=WqeFbzv30O7RaX+m3emlybcx2+Iz8b9iq7nsHwVXm3c=; h=Feedback-ID:Received:From:Subject:Date:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 42194286;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Mon, 17 Feb 2025 21:32:32 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Subject: [PATCH 0/5] Add watchdog and USB nodes for the Exynos990 SoC
Date: Mon, 17 Feb 2025 22:32:02 +0100
Message-Id: <20250217-exynos990-dt-changes-febuary-v1-0-99935218cbf4@mentallysanemainliners.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANOqs2cC/yXMQQ5AMBBA0avIrE3SNoS6iligU2ZT0kGIuLuG5
 Ut+/g1CkUmgyW6IdLDwEhJ0nsE492EiZJcMRplSGV0hnVdYxFqFbsM/EfQ07H280A+jrguqVWE
 dpMUayfP57dvueV7fewLUbgAAAA==
X-Change-ID: 20250217-exynos990-dt-changes-febuary-fbc184e8049d
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739827951; l=1901;
 i=igor.belwon@mentallysanemainliners.org; s=20241206;
 h=from:subject:message-id; bh=WqeFbzv30O7RaX+m3emlybcx2+Iz8b9iq7nsHwVXm3c=;
 b=TIqcWcN/3cdywHBBFciP9hhZz+iljvZrBnGi/wNrATN9PZu+WWmjTtxO0upwL2m/0g0RdqYq4
 VCAkZfdA19sApd5ckbAR8naTrWqa+qbj2ITZto9w1hvsHGXwDRZEsPU
X-Developer-Key: i=igor.belwon@mentallysanemainliners.org; a=ed25519;
 pk=qKAuSTWKTaGQM0vwBxV0p6hPKMN4vh0CwZ+bozrG5lY=

Hi all!

This series adds the nodes to enable the watchdog and USB support for
the Exynos990 SoC.

The watchdog consists of two clusters (cl0 and cl2). Unsure why Samsung has
skipped cl1 on this SoC. Both are enabled and working - tested on a
device from the -x1s family.

The USB controller of this SoC supports full-speed, high-speed and
super-speed operation modes. Due to my inability to get any of my
Exynos990 devices to enumerate as super-speed (even under the vendor
kernels) only the UTMI+ setup is done - as such, only the high-speed
mode is enabled. Dummy regulators are used in place of PMIC provided
ones until we implement PMIC.

This series depends on the following series:
- Watchdog commit: https://lore.kernel.org/all/20250217-exynos990-wdt-v2-0-3eb4fbc113f4@mentallysanemainliners.org
- USB commits:
	- https://lore.kernel.org/all/20250217-exynos990-bindings-usb3-v2-1-3b3f0809f4fb@mentallysanemainliners.org/
	- https://lore.kernel.org/all/20250214-exynos990-dwusb-v1-0-d68282c51ba8@mentallysanemainliners.org/

Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
Igor Belwon (5):
      arm64: dts: exynos990: Enable watchdog timer
      arm64: dts: exynos990: Add USB nodes
      arm64: dts: exynos990-x1s-common: Enable USB
      arm64: dts: exynos990-c1s: Enable USB
      arm64: dts: exynos990-r8s: Enable USB

 arch/arm64/boot/dts/exynos/exynos990-c1s.dts       | 16 +++++++
 arch/arm64/boot/dts/exynos/exynos990-r8s.dts       | 16 +++++++
 .../boot/dts/exynos/exynos990-x1s-common.dtsi      | 16 +++++++
 arch/arm64/boot/dts/exynos/exynos990.dtsi          | 55 ++++++++++++++++++++++
 4 files changed, 103 insertions(+)
---
base-commit: 783ef70f458b28640a63dda599ae8628c3c7aa2e
change-id: 20250217-exynos990-dt-changes-febuary-fbc184e8049d

Best regards,
-- 
Igor Belwon <igor.belwon@mentallysanemainliners.org>


