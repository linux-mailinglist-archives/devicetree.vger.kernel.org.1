Return-Path: <devicetree+bounces-253523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C22CBD0E19E
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 07:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5200A3018328
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 06:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9E84223336;
	Sun, 11 Jan 2026 06:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="PZgqvYkX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417B323A99E
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 06:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768113692; cv=none; b=NjaYOKiBnQSB3dpzpEdTNrZxrQYSi2M06NZSaOeQhBJMZdVYI9cZ4myTsuN62Ouqeg3sodzRD7QhZ7X9iApEhRw4KmDiX/ZzV+sPkT43vW1W3yK+1wBOglJGZduHyZ0fwR5AUH+P52ktAEKz1sXmjtk6YwlpEpT0/YpIEN4biJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768113692; c=relaxed/simple;
	bh=+KO+tJTbypwCAXRGtXUM10wZGIF4dsIDTzPaW/QdLso=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AXQKBq43aYPqE4U0Ypt9piWZLCuAKFB19hveVjBh1H5rczQ+OQmKaqfUTvLvi2ScGbNLlscT6oQN5dShiFYA4381luh7JIk4hBPltnXrH0UJWJUFiRBC26+yf1cjrfFp1Ni/U992xhl6EUyYwO7TNn1UOJVPy5WTn2XqtLsLhEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=PZgqvYkX; arc=none smtp.client-ip=91.218.175.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1768113679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=56OMBFVuoHClJkZZhp3ixlpb+rovPKePY3VizP3ZGbQ=;
	b=PZgqvYkXinKCwk2kRUnekJ0UqA/TlWSZy6Zmjk6rkt124fjOObvxMyqxAwZFX+0c/GWc+F
	9TICcZctdlSFh+5ZwGQ2Fr86ruDEwetRPBKOvy7xx1MqK76IzUomFcDxsk4H0gd61iV/F/
	LGzexdUWei0yzekxfC06+P6tOzlAJZ0=
From: Ze Huang <huang.ze@linux.dev>
Subject: [PATCH v3 0/3] riscv: dts: spacemit: Add USB 3.0 support for K1
Date: Sun, 11 Jan 2026 14:41:01 +0800
Message-Id: <20260111-k1-usb3dts-v2-v3-0-f5ebd546e904@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP1FY2kC/3WOyw6CMBREf4XctTW3Rdviyv8wLvq41UYFbYFgC
 P9uxbXJbM4kczIzZEqRMhyqGRKNMceuLVBvKnBX016IRV8YBAqJHBW7cTZkW/s+s1EwIdBhMEq
 hMFA2z0QhTqvvdP5xotdQtP2vBGsyMdc9HrE/VLsgldNKmQZl4yT6YLmSCmsdrNlzjdZx4aWGr
 +sac9+l93p1FKvsz6sSZCT3jcWgA3FzvMd2mLaeRjgvy/IBi8H6b/YAAAA=
X-Change-ID: 20260107-k1-usb3dts-v2-220c0fa7702a
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Ze Huang <huang.ze@linux.dev>, Aurelien Jarno <aurelien@aurel32.net>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768113671; l=1479;
 i=huang.ze@linux.dev; s=20250705; h=from:subject:message-id;
 bh=+KO+tJTbypwCAXRGtXUM10wZGIF4dsIDTzPaW/QdLso=;
 b=uasPhocpKwUD8x6PNrkPiB+R8GULdBE/ICIXH1cQFjlK1p0FLNvvl0JKTNrF318otD4enECsa
 KXlxQlROv9aASdgsmgvWzXG6f2qH9/kZ9q8f3NPftr5vtd5fCTi7mwN
X-Developer-Key: i=huang.ze@linux.dev; a=ed25519;
 pk=Kzc4PMu5PTo8eZZQ5xmTNL9jeXcQ9Wml0cs+vlQpBkg=
X-Migadu-Flow: FLOW_OUT

This patch series enables the DWC3 USB 3.0 host controller on the
Spacemit K1 SoC and enables it for the Banana Pi F3 board.

For testing, the following kernel configurations should be enabled:

CONFIG_PHY_SPACEMIT_K1_USB2=y
CONFIG_PHY_SPACEMIT_K1_PCIE=y
CONFIG_USB_DWC3=y
CONFIG_USB_ONBOARD_DEV=y

This series is based on the spacemit k1/for-next branch.

Link: https://github.com/spacemit-com/linux

Signed-off-by: Ze Huang <huang.ze@linux.dev>
---
Changes in v3:
- rename vbus and hub regulator to match schematics
- reorder node reference to keep alphabet order
- drop regulator-always-on in usb hub regulator node
- drop unmanaged vbus-supply in usb host node
- Link to v2: https://lore.kernel.org/r/20260107-k1-usb3dts-v2-v2-0-e659b0f8fe1a@linux.dev

Changes in v2:
- rebased on spacemit k1/for-next
- Link to v1: https://lore.kernel.org/all/20251101-k1-usb3dts-v1-0-dd2660e5740b@linux.dev/

---
Ze Huang (3):
      riscv: dts: spacemit: Add USB2 PHY node for K1
      riscv: dts: spacemit: Add DWC3 USB 3.0 controller node for K1
      riscv: dts: spacemit: Enable USB3.0 on BananaPi-F3

 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 46 +++++++++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi            | 32 +++++++++++++++++
 2 files changed, 78 insertions(+)
---
base-commit: 4f67c877a9069c60dfb1767038fba5180bc12d68
change-id: 20260107-k1-usb3dts-v2-220c0fa7702a

Best regards,
-- 
Ze Huang <huang.ze@linux.dev>


