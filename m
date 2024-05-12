Return-Path: <devicetree+bounces-66527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A4D8C370D
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 17:28:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBDF51F214A5
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 15:28:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAC03BB32;
	Sun, 12 May 2024 15:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIlijAlU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6EA7381DA
	for <devicetree@vger.kernel.org>; Sun, 12 May 2024 15:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715527692; cv=none; b=L4P/Tpp7GgacMK3VYAnzuCTN14JVbyhystUnkMxwrWFPUVHqR3psdOha271horFuITZopetQ+n4Zb7RBV7YicebJS8Up+EulNH72lqjiXGaefsY4yHXFtEKydKlaovbkueVmZe0TKTX3aHWEBQvpq3VWnQlvEb01hUokcbVSxwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715527692; c=relaxed/simple;
	bh=eGt7xrSBMhn4Epr9ZFy/Lt+CLjsvFOjbiZ7MLPJSmvU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BepqytDHZOyliC7NgfDcoTrHOu80rxpNB1Lzckqk9GHKoau74/Y+HqHnIfcw9KUbozwrKZXNMswENnYHSFyAHjHHnsiOPGAGXQnNSwi8PXOQ38QlCm+fHHGT1y95iVkF0kV3EwddixO2DnG7v0I8dImRagw9XW5wisp6ETq5XkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIlijAlU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A1DC116B1;
	Sun, 12 May 2024 15:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715527692;
	bh=eGt7xrSBMhn4Epr9ZFy/Lt+CLjsvFOjbiZ7MLPJSmvU=;
	h=From:To:Cc:Subject:Date:From;
	b=JIlijAlU+aKc0EtSy7kZ7MSG7w11BrYPcz7pjgNMTUrqlV8hUbZmv/tevBV5NusyK
	 edG/fCVEYYyW10SNITcuPtyyQ4zpm+cO6C3Ul/VH56/X6f04XzF3IA+KZ73WJwSs3u
	 hKRJ3s+6lKiJclZFuYQsdBXRLAQpp9yvcGa/wYjO7t9L6E8sJuurpSTx6bJwxrgI4v
	 os8ITWJ873CRxA6WnDTY22vxCrFFLU1zk7Q6PJqi/iciOxyVOAU4ew35Y1hxy0xCEh
	 grRDQNu9uqD6B5WNcu4uL4nD/2hF6k5wSEDKgDc01myLorcpBpImVct/5fhUI3Iggt
	 RhdYLHe0k/svg==
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
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 0/3] Introduce PCIe PHY driver for EN7581 SoC
Date: Sun, 12 May 2024 17:27:37 +0200
Message-ID: <cover.1715527166.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for Airoha PCIe PHY controller available in the EN7581 SoC.

Lorenzo Bianconi (3):
  dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
  arm64: dts: airoha: Add EN7581 pcie-phy node
  phy: airoha: Add PCIe PHY driver for EN7581 SoC.

 .../bindings/phy/airoha,pcie-phy.yaml         |   55 +
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/airoha/en7581.dtsi        |    9 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/Kconfig                           |   10 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/phy-airoha-pcie-regs.h            |  476 +++++++
 drivers/phy/phy-airoha-pcie.c                 | 1227 +++++++++++++++++
 8 files changed, 1787 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
 create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/phy-airoha-pcie.c

-- 
2.45.0


