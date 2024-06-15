Return-Path: <devicetree+bounces-76080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6930E9099F9
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 23:16:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E2B0281B15
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 21:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 201F515AC4;
	Sat, 15 Jun 2024 21:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwRLwqNr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA28637
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 21:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718486170; cv=none; b=dCmjAZWGHZKKftWhFM2gdS+/AUkrbhWtJzU51yOWfBH/nDpv7MoAkvetRq1gS1sfGnQq3+yTPWeVtRzJ+52nFehyIugo+r+Eml2Z0VTcyHCmM+YK/hxUAJlQIpGqt1bBQe22koHcoFR6WSMZKVZuIkStCF8Igs5U5hec1/gEFqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718486170; c=relaxed/simple;
	bh=Jc3vAk1elq+Lgi/TU/hAh3y8Cbgzaz7t4Elvh1xGdXU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sLv2PMpG4XN9kiSjNCVPxyQmKULbLzgEZB1uyR1N/qLSCeBsBgCcrnqk8p+hTNPvfMv9Dom+sX7yQhpngKffauby9mn6gO7NzOSQsWloOV9fzAEfmPrwYHAg4kC0tU5puNVHQjE4G5qauTBq8TJLYaihDi6cZxPjcrBeZDqQTOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwRLwqNr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4C40C116B1;
	Sat, 15 Jun 2024 21:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718486169;
	bh=Jc3vAk1elq+Lgi/TU/hAh3y8Cbgzaz7t4Elvh1xGdXU=;
	h=From:To:Cc:Subject:Date:From;
	b=nwRLwqNrd4VOTEBgSDYiKIsN7I73CT8siurgyaPLGXTPohvgMP7uS5UdGqepq0W1x
	 BoWEaL8pmS+afbBo51sjcikaSInHkzwF4HBTENtkyQ+q5eICF/Ovdo3oXUjJgkzKj9
	 L/RtizFWpVX76JxWB3O81w9Sk+fsDr+1WZTMvpNiwUIMTxmcCZgUZ0fyGbcd9iQRp7
	 WSTu7dpVt+HYNmSWpHCRH+oVl/DUPNUGtHIY9w0sHS++e7SYMCZEPRDByUl1baSIJX
	 R3UWEOG2krFeOq8U6wJ4GT2uYTi7WZJipIRQuBUhi5p3EGcFGyzA5eUtyKPQCvOBtk
	 qQyzOQiaUjGtw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: [PATCH v4 0/3] Introduce PCIe PHY driver for EN7581 SoC
Date: Sat, 15 Jun 2024 23:15:40 +0200
Message-ID: <cover.1718485860.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for Airoha PCIe PHY controller available in the EN7581 SoC.

Changes since v3:
- fix compilation errors on x86
- remove patch 2/4
Changes since v2:
- introduce registers description in dts binding
- compile PCIe PHY controller driver as module by default
- improve code readability
Changes since v1:
- add patch 4/4 to enable PCIe PHY driver
- rename documentation binding in airoha,en7581-pcie-phy.yaml
- fix kernel doc

Lorenzo Bianconi (3):
  dt-bindings: phy: airoha: Add PCIe PHY controller
  phy: airoha: Add PCIe PHY driver for EN7581 SoC.
  arm64: defconfig: Enable Airoha pcie phy driver

 .../bindings/phy/airoha,en7581-pcie-phy.yaml  |   58 +
 MAINTAINERS                                   |    8 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/Kconfig                           |   10 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/phy-airoha-pcie-regs.h            |  477 +++++++
 drivers/phy/phy-airoha-pcie.c                 | 1248 +++++++++++++++++
 7 files changed, 1803 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
 create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/phy-airoha-pcie.c

-- 
2.45.1


