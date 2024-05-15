Return-Path: <devicetree+bounces-67022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EAC8C650E
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 12:45:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DF73281373
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 10:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D6D85A7AB;
	Wed, 15 May 2024 10:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jykfc7/1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482025EE67
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 10:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715769897; cv=none; b=usvcHPZH0M+8sPddOlridKMhOMk0kWQnPu3UmXLiQbavJYIcnzzd2MFlTm5+6BhZdugoQVxejMx4341tsHLCEEJ4uBFrRxnf1mPf6E0T8Rhp2UG6cEga3bu1PEAvx0c9EXfZusa+2JMvs453OApMNMXcQ9pN4y0oxpXjIxjvktM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715769897; c=relaxed/simple;
	bh=SaM6rBkEWsdmGxMdLo5qtXW2ylDMeVaUbAOoA0bZes4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZOQSjPbrqWeClUWTQEg7puCiM4jnd64e48mmTYR0OlpYta8uT2JTn4nUia4FRSvef6Wm1YcBs4d6aFDRnYE+yPQuQbgqVXE43a+bASKxa3FOkJKNQg5EdAtjrcLmIV+r3tYRacKoPaUtq5Pw9P9Ro1vnlpbZLj2FghwrWara4WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jykfc7/1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55C95C116B1;
	Wed, 15 May 2024 10:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715769896;
	bh=SaM6rBkEWsdmGxMdLo5qtXW2ylDMeVaUbAOoA0bZes4=;
	h=From:To:Cc:Subject:Date:From;
	b=jykfc7/1NJrVt9GVjJIiVgYWF/fWSv+yCSFLQI9iTKQOhhrgmSRaLYuKHUePI0TPx
	 NjkPUDf5KC4/N7cjWkMCPA7RMJi36cJtdt9hGhugKjWutQHMrw2oncj3GomI1nVXGZ
	 8tnl8ZrDZSo+EExs4aV0TAqDG4RYX/ShNDwuXHeNkK9QXS7aPwjt2/gZKLkzAMjcvC
	 PLf4WZWrb3ElOO6JP8UN+8Ot3m7C7V4dp/Mv5hJqiV48JUiIE5QWEOH7ITU98yKws1
	 nZ8JAsF1GWnBlRhULwzCBdCwOUKzTBUWY2SMT338GyEYPWU8pk/sAtWW8Fbf8DA9o+
	 W8Xg01ejw81mQ==
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
Subject: [PATCH v2 0/4] Introduce PCIe PHY driver for EN7581 SoC
Date: Wed, 15 May 2024 12:44:44 +0200
Message-ID: <cover.1715769325.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for Airoha PCIe PHY controller available in the EN7581 SoC.

Changes since v1:
- add patch 4/4 to enable PCIe PHY driver
- rename documentation binding in airoha,en7581-pcie-phy.yaml
- fix kernel doc

Lorenzo Bianconi (4):
  dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
  arm64: dts: airoha: Add EN7581 pcie-phy node
  phy: airoha: Add PCIe PHY driver for EN7581 SoC.
  arm64: defconfig: Enable Airoha pcie phy driver

 .../bindings/phy/airoha,en7581-pcie-phy.yaml  |   55 +
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/airoha/en7581.dtsi        |    9 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/Kconfig                           |   10 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/phy-airoha-pcie-regs.h            |  476 +++++++
 drivers/phy/phy-airoha-pcie.c                 | 1226 +++++++++++++++++
 8 files changed, 1786 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
 create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/phy-airoha-pcie.c

-- 
2.45.0


