Return-Path: <devicetree+bounces-152806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A845A4A2F2
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 20:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71940175060
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 19:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF950230BD5;
	Fri, 28 Feb 2025 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="KPKGk+31"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49E01F4CA8;
	Fri, 28 Feb 2025 19:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740772053; cv=none; b=qmjzskMIyK17DtDaxZ1rvNAYL8ik/G4PgSU71VLuhHHjrgqtiU78Ky1/U1xvgeQhj4//kWWC1WQ7iIZPV3zQBiWqct3wON1C20Pmo70gBB+8wS4Zt9+0oPckyZ4E8thYz1EvwkVHeE5iWutXurlf2ZHhGTFPCPFbN5OJXTYqpP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740772053; c=relaxed/simple;
	bh=L0vW+9BMQ6QnwnUmlEJKpaiyKdFPAJ2WF5bcFyFpTiQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=p+UsuYtsXIr40zlddarzEtnDOMMOiXzYS0mkqaytkmuwjWvhRgm+aRzrL2wuulsLCp96UNrSfkgTWeW+nE/EnkKaVJgf1BuUnWRRqHEvUBc/KByGBGrziRNY14ZAmorgKDC4Jsx0WfTwDM/OuQNshGIBioxb5dAfRGRxYs/ODl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=KPKGk+31; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 7DE0825CD8;
	Fri, 28 Feb 2025 20:47:30 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cMtjQdeiNtx0; Fri, 28 Feb 2025 20:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1740772045; bh=L0vW+9BMQ6QnwnUmlEJKpaiyKdFPAJ2WF5bcFyFpTiQ=;
	h=From:Subject:Date:To:Cc;
	b=KPKGk+31v4GHB/NlFULZ/ylU3PaJK/OhdL3PJupbOEPuILXc7Ke21zd/QEWjUhU3g
	 qWrm0ZGo2xoFGSQt1CtYoI/O8zx9MZ28YIRECLsjUHpsZNoA/aMZcW9/lwCZXXAhd3
	 BKdffwPEUWPxIbEhvpm2KVPNi7mjAclGSy7VzFEPkw4UCCLQRjHbCFMNwrnnnfyzRQ
	 GIMluSXCoyU/HbXWcd511QU8SNvYzoh152WQV2rh5u9cq6IzClwy2xKU/5CAGljCtS
	 1JZazyGvJPQbvO+t8vXdk6z29J7Sl7JPFFfux5PadREFP7POpYdZChIqchIqN14ru5
	 /m+rUnCyDsp0g==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Subject: [PATCH v4 0/7] Add support for the Exynos7870 SoC, along with
 three devices
Date: Sat, 01 Mar 2025 01:16:48 +0530
Message-Id: <20250301-exynos7870-v4-0-2925537f9b2a@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKgSwmcC/2XMSwqDMBSF4a1Ixk25eZhoR91H6UDNjWZiSiJBE
 ffeKBSUDs+B719JxOAwkkexkoDJRefHPOStIN3QjD1SZ/ImHHgJHBjFeRl91JUGCrIuK42y1ca
 SDD4BrZuP2Oud9+Di5MNytBPb319GnDOJUaC8VcZKrRph4WlcDN5Pdx96socSP2N5wTzjUgkmm
 CrRQvePxQmz+oJFxigqaVvFoGvMFW/b9gVsWMXBIAEAAA==
X-Change-ID: 20250201-exynos7870-049587e4b7df
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740772038; l=4538;
 i=kauschluss@disroot.org; s=20250202; h=from:subject:message-id;
 bh=L0vW+9BMQ6QnwnUmlEJKpaiyKdFPAJ2WF5bcFyFpTiQ=;
 b=Deb8VQAtnpEegn73ajSh7eE2p6iErSSsjs5WjgymYnBBtShQIiJTacZ9LdHDdCXv0iPGV7xVL
 4nTW9bq/gMwBSiE0eMTX/v8EohHo29JjHDNanO5fJsVn2O/avYkmhoe
X-Developer-Key: i=kauschluss@disroot.org; a=ed25519;
 pk=h2xeR+V2I1+GrfDPAhZa3M+NWA0Cnbdkkq1bH3ct1hE=

Samsung Exynos 7870 (codename: Joshua) is an ARM-v8 system-on-chip that was
announced in 2016. The chipset was found in several popular mid-range to
low-end Samsung phones, released within 2016 to 2019.

This patch series aims to add support for Exynos 7870, starting with the
most basic yet essential components such as CPU, GPU, clock controllers,
PMIC, pin controllers, etc.

Moreover, the series also adds support for three Exynos 7870 devices via
devicetree. The devices are:
 * Samsung Galaxy J7 Prime	- released 2016, codename on7xelte
 * Samsung Galaxy J6		- released 2018, codename j6lte
 * Samsung Galaxy A2 Core	- released 2019, codename a2corelte

Additional features implemented in this series include:
 * I2C	- touchscreen, IIO sensors, etc.
 * UART	- bluetooth and serial debugging
 * MMC	- eMMC, Wi-Fi SDIO, SDCard
 * USB	- micro-USB 2.0 interface

Build dependencies are in these sub-series:
 * bootmode	  	- https://lore.kernel.org/all/20250204-exynos7870-bootmode-v1-1-0f17b3033c2d@disroot.org/
 * pmu-clocks		- https://lore.kernel.org/all/20250301-exynos7870-pmu-clocks-v4-0-0f3e73b10db7@disroot.org/

Other related sub-series:
 * gpu			R https://lore.kernel.org/all/20250204-exynos7870-gpu-v1-1-0db4c163a030@disroot.org/
 * i2c	      		A https://lore.kernel.org/all/20250204-exynos7870-i2c-v1-0-63d67871ab7e@disroot.org/
 * mmc			- https://lore.kernel.org/all/20250219-exynos7870-mmc-v2-0-b4255a3e39ed@disroot.org/
 * pinctrl	  	- https://lore.kernel.org/all/20250301-exynos7870-pinctrl-v3-0-ba1da9d3cd2f@disroot.org/
 * pmic-regulators	- https://lore.kernel.org/all/20250301-exynos7870-pmic-regulators-v3-0-808d0b47a564@disroot.org/
 * uart			R https://lore.kernel.org/all/20250219-exynos7870-uart-v2-1-c8c67f3a936c@disroot.org/
 * usb			- https://lore.kernel.org/all/20250301-exynos7870-usb-v3-0-f01697165d19@disroot.org/
 * usbphy		- https://lore.kernel.org/all/20250219-exynos7870-usbphy-v2-0-b8ba4e7a72e9@disroot.org/
(Legend: [R]eviewed, [A]pplied)

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
---
Changes in v4:
- Drop merged [PATCH v3 1/7].
- Explicitly mention sub-series having build dependencies.
- Include the following patch from the pmu-clocks series:
  - dt-bindings: soc: samsung: exynos-pmu: add exynos7870-pmu compatible
- Adjust clock header file name to match changes in pmu-clocks.
- Change regulator node names to match changes in pmic-regulators.
- Remove non-removable flag for the SDCard's mmc node.
- Link to v3: https://lore.kernel.org/r/20250219-exynos7870-v3-0-e384fb610cad@disroot.org

Changes in v3:
- Added patches from https://lore.kernel.org/all/20250204-exynos7870-chipid-v1-0-0bf2db08e621@disroot.org/
- Fix devicetree formatting according to the devicetree style guide.
- Take over ownership of patches by the co-author, upon their request.
- Link to v2: https://lore.kernel.org/r/20250204-exynos7870-v2-0-56313165ef0c@disroot.org

Changes in v2:
- Redo a few commit descriptions.
- Split patchsets into multiple sub-series, subsystem-wise.
- Link to v1: https://lore.kernel.org/r/20250203-exynos7870-v1-0-2b6df476a3f0@disroot.org

---
Kaustabh Chakraborty (7):
      dt-bindings: soc: samsung: exynos-pmu: add exynos7870-pmu compatible
      dt-bindings: arm: samsung: add compatibles for exynos7870 devices
      soc: samsung: exynos-chipid: add support for exynos7870
      arm64: dts: exynos: add initial devicetree support for exynos7870
      arm64: dts: exynos: add initial support for Samsung Galaxy J7 Prime
      arm64: dts: exynos: add initial support for Samsung Galaxy A2 Core
      arm64: dts: exynos: add initial support for Samsung Galaxy J6

 .../bindings/arm/samsung/samsung-boards.yaml       |    8 +
 .../bindings/soc/samsung/exynos-pmu.yaml           |    1 +
 arch/arm64/boot/dts/exynos/Makefile                |    3 +
 .../arm64/boot/dts/exynos/exynos7870-a2corelte.dts |  628 ++++++++++++
 arch/arm64/boot/dts/exynos/exynos7870-j6lte.dts    |  616 ++++++++++++
 arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts |  664 +++++++++++++
 arch/arm64/boot/dts/exynos/exynos7870-pinctrl.dtsi | 1022 ++++++++++++++++++++
 arch/arm64/boot/dts/exynos/exynos7870.dtsi         |  714 ++++++++++++++
 drivers/soc/samsung/exynos-chipid.c                |    1 +
 9 files changed, 3657 insertions(+)
---
base-commit: be5c7bbb3a64baf884481a1ba0c2f8fb2f93f7c3
change-id: 20250201-exynos7870-049587e4b7df

Best regards,
-- 
Kaustabh Chakraborty <kauschluss@disroot.org>


