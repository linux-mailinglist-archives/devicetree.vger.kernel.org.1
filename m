Return-Path: <devicetree+bounces-20973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77009801D88
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 16:46:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 117B51F210E4
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 15:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C809219466;
	Sat,  2 Dec 2023 15:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkH1vk7x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30791173B
	for <devicetree@vger.kernel.org>; Sat,  2 Dec 2023 15:46:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D7A5C433C8;
	Sat,  2 Dec 2023 15:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701531981;
	bh=1EqA9rvqYVRln0P1uLXrqlcy9RJ9TXHPL4bOBzuuWnI=;
	h=From:To:Cc:Subject:Date:From;
	b=lkH1vk7xmSD9/+2gTsQUPCBnMNa+96XkPFIFGUts5ED3+qCbcIyalDundPG5UbapV
	 jRS7/DujAccErlR6gcF+GDlD5uxELE30r4byHdmWtWdGqC0UzmOnWKB9nMfEux5AAb
	 7Pt62tcvmjvhdUiLRWzSW13QTQqkgCKgxBOSGe3o98OiOVmeVWo5Kahqpj2GPoibEM
	 mnMQ/uCvgn4AtF64DRLyzvoSo79Ahm+NEbRMKTFeBz6QqLnQ1Y9qvVrl+MCp9s9OWY
	 6RHCilnCQKbGrYAd0LuLHxhw8itRrC4mCh2eUmS0+ruggIEyZ/dAoSl4SZnnr+UBzm
	 HXPz806s9oMRg==
From: Jisheng Zhang <jszhang@kernel.org>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/3] riscv: dts: starfive: add Milkv Mars board device tree 
Date: Sat,  2 Dec 2023 23:33:50 +0800
Message-Id: <20231202153353.635-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Milkv Mars is a development board based on the Starfive JH7110 SoC.
The board features:

- JH7110 SoC
- 1/2/4/8 GiB LPDDR4 DRAM
- AXP15060 PMIC
- 40 pin GPIO header
- 3x USB 3.0 host port
- 1x USB 2.0 host port
- 1x M.2 E-Key
- 1x eMMC slot
- 1x MicroSD slot
- 1x QSPI Flash
- 1x 1Gbps Ethernet port
- 1x HDMI port
- 1x 2-lane DSI and 1x 4-lane DSI
- 1x 2-lane CSI

patch1 adds 'cpus' label
patch2 adds "milkv,mars" board dt-binding
patch3 adds the devicetree file describing the currently supported
features:
Namely PMIC, UART, I2C, GPIO, SD card, QSPI Flash, eMMC and Ethernet.

Since v1:
 - add two new patches which add "cpus" label and board dt-binding
 - adopt Krzysztof's suggestions, thanks

Hi Conor,

I see you have sent a patch which moves the timebase-frequency property
to soc dtsi, but this series doesn't rebase on that. I can update it
once your patch is merged.

Thanks

Jisheng Zhang (3):
  riscv: dts: starfive: add 'cpus' label to jh7110 and jh7100 soc dtsi
  dt-bindings: riscv: starfive: add Milkv Mars board
  riscv: dts: starfive: add Milkv Mars board device tree

 .../devicetree/bindings/riscv/starfive.yaml   |   1 +
 arch/riscv/boot/dts/starfive/Makefile         |   1 +
 arch/riscv/boot/dts/starfive/jh7100.dtsi      |   2 +-
 .../boot/dts/starfive/jh7110-milkv-mars.dts   | 637 ++++++++++++++++++
 arch/riscv/boot/dts/starfive/jh7110.dtsi      |   2 +-
 5 files changed, 641 insertions(+), 2 deletions(-)
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts

-- 
2.42.0


