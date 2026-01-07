Return-Path: <devicetree+bounces-252143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AF963CFBA8F
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:10:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 91642303F497
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5370321FF33;
	Wed,  7 Jan 2026 02:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeQJfl1z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8D7207A32;
	Wed,  7 Jan 2026 02:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751807; cv=none; b=oe2dJP1Fop/H4/XxQfr0ewi9wUpXUPH8QGYzv3pB5A5jifuvuzmbJ/isJquxOmAiEdhI3yCfoGwXmEyzFvDoCcrKxu/wOauXeiQVWV5cQCpqcGKe1aL73Mt6SIp6YCUxB6FHKXa7pgi9BqN3AH/pyMvXgodZZWoMFTnp1YfTRk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751807; c=relaxed/simple;
	bh=WERmRKo5gKNIwlgqfGfG9M+0JRo4MDAa1A9k3uXlqrw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nVNmzKqyqdAPIN+6HHny2lnFCE0ULDyVcko5/BmmOxrMWqkWXc3On8SABrClbyku160iyV8KOZr0+NQxBLztl92dTszpTL/ajl669lTDZIIcErfXGm7nnxKRJ1m1OTEiKKqtxKZSN92BzjOg/BtGxIUp7TWRXeq+3QSHpFnjqGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeQJfl1z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7942CC116C6;
	Wed,  7 Jan 2026 02:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751806;
	bh=WERmRKo5gKNIwlgqfGfG9M+0JRo4MDAa1A9k3uXlqrw=;
	h=From:Subject:Date:To:Cc:From;
	b=ZeQJfl1z35nc+23NKjAkxJqSDzEBZYxH5IBlr9aO0ypaxHoB5fRIII0PwjvBFre1Z
	 ZCmdI9NlUqh3T0xH6+ZbUY3Vz5vGwEBYvX8e9BXLev15tXIDnIUE7pWnWlgiSurB3q
	 F0gIjd67Rgf4C6QjL2UwX1Rc0EtRDxGt61otZkAECW2fKlCAcAxlJgz0gIiyms/IyJ
	 A01yfwGxIJWgmi3xnTJuyV4mQDHh+xThK/REKI/cMefQHgO8rS2INhdx453Z9ozr+J
	 LQ4MWy2wh5u+buTqe7FAyvH57motJlWPgWxfgu+PPWgobG8mZXNY/QLVW1gof07svz
	 CZaBfxsCgu1Ng==
From: "Rob Herring (Arm)" <robh@kernel.org>
Subject: [PATCH 00/13] dts: broadcom: Fix remaining DT warnings
Date: Tue, 06 Jan 2026 20:09:39 -0600
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGPAXWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQwMz3ZQSIEoq1k0qyk9MSc7P1U3LrEgFck0tUwzNE82NE43TlICaC4p
 SwRJAvdGxtbUAAnaXQ2gAAAA=
X-Change-ID: 20260106-dt-dtbs-broadcom-fixes-b59d17a73a3f
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

This series fixes most of the remaining DT warnings for Broadcom 
platforms. There's a few left after this which requires some reworking 
of the MTD partition schemas which I will send out later.

Not tested on any platforms.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
Rob Herring (Arm) (13):
      ARM: dts: broadcom: bcm2711: Fix 'simple-bus' node names
      ARM: dts: broadcom: bcm2835-rpi: Move non simple-bus nodes to root level
      arm64: dts: broadcom: bcm2712: Move non simple-bus nodes to root level
      arm64: dts: broadcom: Remove unused and undocumented nodes
      arm64: dts: broadcom: stingray: Rework clock nodes
      arm64: dts: broadcom: stingray: Fix 'simple-bus' node names
      arm64: dts: broadcom: stingray: Move raid nodes out of bus
      arm64: dts: broadcom: Use preferred node names
      arm64: dts: broadcom: ns2-svk: Use non-deprecated at25 properties
      arm64: dts: broadcom: northstar2: Rework clock nodes
      arm64: dts: broadcom: northstar2: Drop unused and undocumented "brcm,pcie-ob-oarr-size" properties
      arm64: dts: broadcom: northstar2: Drop QSPI "clock-names"
      arm64: dts: broadcom: northstar2: Drop "arm,cci-400-pmu" fallback compatible

 arch/arm/boot/dts/broadcom/bcm2711.dtsi            |   4 +-
 arch/arm/boot/dts/broadcom/bcm2835-common.dtsi     |   7 +-
 arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi        |  16 +-
 .../boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  |  49 +++---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi          |   8 +-
 .../boot/dts/broadcom/northstar2/ns2-clock.dtsi    | 105 ------------
 .../arm64/boot/dts/broadcom/northstar2/ns2-svk.dts |  26 +--
 .../arm64/boot/dts/broadcom/northstar2/ns2-xmc.dts |   2 +-
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi   |  87 ++++++++--
 .../boot/dts/broadcom/stingray/bcm958742-base.dtsi |   2 +-
 .../boot/dts/broadcom/stingray/stingray-clock.dtsi | 182 ---------------------
 .../boot/dts/broadcom/stingray/stingray-fs4.dtsi   | 114 ++++++-------
 .../boot/dts/broadcom/stingray/stingray-pcie.dtsi  |   2 +-
 .../dts/broadcom/stingray/stingray-pinctrl.dtsi    |   2 +-
 .../boot/dts/broadcom/stingray/stingray-usb.dtsi   |  21 +--
 .../arm64/boot/dts/broadcom/stingray/stingray.dtsi | 148 +++++++++++++++--
 16 files changed, 315 insertions(+), 460 deletions(-)
---
base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
change-id: 20260106-dt-dtbs-broadcom-fixes-b59d17a73a3f

Best regards,
--  
Rob Herring (Arm) <robh@kernel.org>


