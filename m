Return-Path: <devicetree+bounces-67617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0F08C909D
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 13:32:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 738772828B4
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 11:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 947A724B34;
	Sat, 18 May 2024 11:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5qMrziY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70918EDE
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 11:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716031945; cv=none; b=sxltjpplAbiQ/eldrIciVzR7qT8OmQe+stW15vzFuIr1mOvlCsJvTFeiCraXw9hqRSem4C40OhaNSbA5lQR0WhFMPJprtsjPMRRAwWb9IYnEzqOVc/bbCirLrVxA3r3P3rnjLeDouxAh+zY+oju5dYInsu/JmsTZtEyeGSDLbc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716031945; c=relaxed/simple;
	bh=cq6oYTfrjIb+Xk/7RzKkDlliIQz7C/Ni8hMuGFl2CfY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iOlOuIscS8CfyG1+ruNQvY0hyr95f2bP54a3vOR1XOyIq+RgRVNsmSx0Wfu2hpogBWM+T45BNcMknyoerpmxSHuy2t+qBtExLK3019Tu8dy7OUDIoxqHPCQ2Ub4IE0CCbGwrpwETfL9/g7fd7AURIJ8else8HmLcPMtMnUQoAR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5qMrziY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74B5EC113CC;
	Sat, 18 May 2024 11:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716031945;
	bh=cq6oYTfrjIb+Xk/7RzKkDlliIQz7C/Ni8hMuGFl2CfY=;
	h=From:To:Cc:Subject:Date:From;
	b=D5qMrziYWaDuXwa6o+HXPJSG+KZtkX7wVH/41DWqXghthubNsWFFKlZqoRufC7z67
	 SKxNq44Ch6IKBkujr0XE73LX7Wg+1GXjO+F+YZFIxuSUo2W5G1GAX3pZzOfC0Cc1FW
	 yhmivzAvdzZp2CXc4MUxMJrVGYOyp7PFvdSNH4IIGY/629EZ/z4rGf81/E6owYDtD3
	 yH7w/SurWO3A3uv6WyMT57+fAukO+JHkmLqA4LNNfV/rv22hwv71q0n6nMCpKMDD6w
	 MU/uqzWjvAkYOw5wA2qTDhJvPa/eZcpC1Gko96t9VkaDz4E8iiWeljfzSQcCXKi2FW
	 PnugGuTlXAdeA==
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
Subject: [PATCH v3 0/4] Introduce PCIe PHY driver for EN7581 SoC
Date: Sat, 18 May 2024 13:31:40 +0200
Message-ID: <cover.1716031610.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for Airoha PCIe PHY controller available in the EN7581 SoC.

Changes since v2:
- introduce registers description in dts binding
- compile PCIe PHY controller driver as module by default
- improve code readability
Changes since v1:
- add patch 4/4 to enable PCIe PHY driver
- rename documentation binding in airoha,en7581-pcie-phy.yaml
- fix kernel doc

Lorenzo Bianconi (4):
  dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
  arm64: dts: airoha: Add EN7581 pcie-phy node
  phy: airoha: Add PCIe PHY driver for EN7581 SoC.
  arm64: defconfig: Enable Airoha pcie phy driver

 .../bindings/phy/airoha,en7581-pcie-phy.yaml  |   58 +
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/airoha/en7581.dtsi        |    9 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/Kconfig                           |   10 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/phy-airoha-pcie-regs.h            |  477 +++++++
 drivers/phy/phy-airoha-pcie.c                 | 1247 +++++++++++++++++
 8 files changed, 1811 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
 create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/phy-airoha-pcie.c

-- 
2.45.1


