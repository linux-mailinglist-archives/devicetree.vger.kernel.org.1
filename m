Return-Path: <devicetree+bounces-2650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CBC7ABEB6
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 10:01:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C838D28497D
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 08:01:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 471A06132;
	Sat, 23 Sep 2023 08:01:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379C5375
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 08:01:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 417E1C433C7;
	Sat, 23 Sep 2023 08:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695456092;
	bh=aQTqfUoklRvlIZivFdZ0RDTbrwwguhjM51XFd8Rs0BI=;
	h=From:To:Cc:Subject:Date:From;
	b=YTaICS8z2lUR/w/MEmEVa21G/eA59iPqJFs5890r8aZNxgJa8VaajAINpAhgRc0iy
	 vywvNJ7lU6OdptUbpoa97h4AcRWjuiJ70lE9IpnIsxs7cOQnbgYyfj7NdLDxcVH9En
	 wJyLUqGuKNHF6FXIHCiR9Gu4b48WnboOF5S/NpiW4j2oq9W5aDwT1j+9CykLixBXah
	 XA+voE8Ogp7fRF3n0MxmUyD+InanUBlYu6S+0tjzfS83rMYoUGUGEzsbe+/tYo65k/
	 bNMdNgSUlOq+AUrdyPpkTwgWjowrIoPmSgOUyzoHiR0fKq7UYoni7uOnXDODukv6Hj
	 Joi5cEVbH6alw==
From: Roger Quadros <rogerq@kernel.org>
To: nm@ti.com,
	afd@ti.com,
	robh+dt@kernel.org
Cc: vigneshr@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	srk@ti.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH v2 0/2] arm64: dts: ti: Add overlay for AM642-EVM NAND expansion card
Date: Sat, 23 Sep 2023 11:00:44 +0300
Message-Id: <20230923080046.5373-1-rogerq@kernel.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This series adds device tree overlay for NAND expansion card for AM642-EVM.

cheers,
-roger

Changelog:
---------
v2:
- Drop patch "arm64: dts: ti: Enable support for overlays for relevant boards"
- Don't leave k3-am642-evm-nand.dtbo as an orphan. Make k3-am642-evm-nand.dtb
  with the overlay applied on the base board.
- Add patch "arm64: dts: ti: k3-am64: Add GPIO expander on I2C0"

Roger Quadros (2):
  arm64: dts: ti: am642-evm: Add overlay for NAND expansion card
  arm64: dts: ti: k3-am64: Add GPIO expander on I2C0

 arch/arm64/boot/dts/ti/Makefile               |   3 +-
 arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso | 140 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts       |   9 ++
 3 files changed, 151 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso


base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
-- 
2.34.1


