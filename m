Return-Path: <devicetree+bounces-258440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPEKFlU6cmlMfAAAu9opvQ
	(envelope-from <devicetree+bounces-258440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:55:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCFB6830B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:55:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 760AB7240EE
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E26DA34A3BC;
	Thu, 22 Jan 2026 14:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqWqPsQD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18D430C626;
	Thu, 22 Jan 2026 14:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769091847; cv=none; b=k+VvFcVYYSZfEvKmLCSZBokYWb1jXlsIK9zKQoUUNUMkzr8eXFl/ddRMXnsFdBzq9+kc5Pa5LZf8tcU7JQ04Z8O6/94xMZhZ/icQfTH+v5DDUyCI5sC+hn9EhH+mo81xzQnxlpgYAoe7BfODRwcEFvyyFY3yOVeweZu7p1anDNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769091847; c=relaxed/simple;
	bh=9ldknsSqFx/iQzwBf1LlwoaFp95z9BYgWXvBcs7uj6k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=gg1mBggnYfaIMw+YVxs8INbBJ3JderZtoXPWCx+tm7qjbpjn4XQGifxIB+uvVjdoQMtmRsSPcDHvseTYrn/acLlbVUN3O7KZ+EzCObdDUREQhv3w7K+tB9c6Xdlm/UYtfi4EpalQE3jyy74Rn/PJyxQS9aifHIJIk6SI+WT52yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqWqPsQD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA46DC116C6;
	Thu, 22 Jan 2026 14:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769091846;
	bh=9ldknsSqFx/iQzwBf1LlwoaFp95z9BYgWXvBcs7uj6k=;
	h=From:To:Cc:Subject:Date:From;
	b=gqWqPsQDVP2cdPbl5caNzMQRq9JVr/7CNirfOa++CtZgh6NphXMU6qrpI58rF02s/
	 1YHcA5mepIAwS0300uSmojrjEGm81rBmttC7Nl0uTbYb5swf/EsnUlxvMwOuQIBT8P
	 3XppQt4NxA5sk4OYuCn26LiGz2Ed6IZYbd7f0fLC2ADXLBMXo3lhC1DCEKLSUM7QUA
	 uAXJcH7/fF++4+iP2Ty+hR8bQPHSpUYeUmASOCgA5JIBnZfA8gZ2woWl9El3AfPPNJ
	 7fOJfMyRKy0cqtJLyDywMCBJjZ7JYTAX8Tp2QoKJA3aBcBSQLlCBuTyrAfM+MlUu2p
	 nf1bVqF512K/Q==
From: Yixun Lan <dlan@kernel.org>
To: soc@lists.linux.dev
Cc: Yixun Lan <dlan@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [GIT PULL] RISC-V SpacemiT Devicetrees for v6.20
Date: Thu, 22 Jan 2026 22:23:37 +0800
Message-ID: <20260122220523-GYD3596979@kernel.org>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-258440-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 2DCFB6830B
X-Rspamd-Action: no action

Hi Arnd,

   Please pull SpacemiT's DeviceTree changes for v6.20

Yixun Lan

The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:

  Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)

are available in the Git repository at:

  https://github.com/spacemit-com/linux tags/spacemit-dt-for-6.20-1

for you to fetch changes up to 5164e95565d3fd508ca8a95351323f5716dfb695:

  riscv: dts: spacemit: Disable ETH PHY sleep mode for OrangePi (2026-01-21 08:52:03 +0800)

----------------------------------------------------------------
RISC-V SpacemiT DT changes for 6.20

- Disable Ethernet PHY auto sleep mode
- Add pinctrl IO power support
- Add K3 Pico-ITX board
- Add support for K3 SoC
- Add DWC USB support
- Add reset for eMMC(sdhci)/I2C
- Add PCIe support
- Support PMIC for Jupiter board

----------------------------------------------------------------
Alex Elder (2):
      riscv: dts: spacemit: Add a PCIe regulator
      riscv: dts: spacemit: PCIe and PHY-related updates

Chukun Pan (1):
      riscv: dts: spacemit: Disable ETH PHY sleep mode for OrangePi

Encrow Thorne (1):
      riscv: dts: spacemit: add reset property

Guodong Xu (8):
      riscv: dts: spacemit: k1: Add "b" ISA extension
      dt-bindings: riscv: add SpacemiT X100 CPU compatible
      dt-bindings: timer: add SpacemiT K3 CLINT
      dt-bindings: interrupt-controller: add SpacemiT K3 APLIC
      dt-bindings: interrupt-controller: add SpacemiT K3 IMSIC
      dt-bindings: riscv: spacemit: add K3 and Pico-ITX board bindings
      riscv: dts: spacemit: add initial support for K3 SoC
      riscv: dts: spacemit: add K3 Pico-ITX board support

Javier Martinez Canillas (3):
      riscv: dts: spacemit: Enable i2c8 adapter for Milk-V Jupiter
      riscv: dts: spacemit: Define fixed regulators for Milk-V Jupiter
      riscv: dts: spacemit: Define the P1 PMIC regulators for Milk-V Jupiter

Troy Mitchell (1):
      riscv: dts: spacemit: pinctrl: update register and IO power

Yixun Lan (1):
      riscv: dts: spacemit: sdhci: add reset support

Ze Huang (3):
      riscv: dts: spacemit: Add USB2 PHY node for K1
      riscv: dts: spacemit: Add DWC3 USB 3.0 controller node for K1
      riscv: dts: spacemit: Enable USB3.0 on BananaPi-F3

 .../bindings/interrupt-controller/riscv,aplic.yaml |   1 +
 .../interrupt-controller/riscv,imsics.yaml         |   1 +
 Documentation/devicetree/bindings/riscv/cpus.yaml  |   1 +
 .../devicetree/bindings/riscv/spacemit.yaml        |   5 +
 .../devicetree/bindings/timer/sifive,clint.yaml    |   1 +
 arch/riscv/boot/dts/spacemit/Makefile              |   1 +
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts    |  90 ++++
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts  | 135 +++++
 arch/riscv/boot/dts/spacemit/k1-orangepi-r2s.dts   |   2 +
 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts   |   2 +
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi       |  33 ++
 arch/riscv/boot/dts/spacemit/k1.dtsi               | 254 ++++++++-
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts       |  29 ++
 arch/riscv/boot/dts/spacemit/k3.dtsi               | 578 +++++++++++++++++++++
 14 files changed, 1116 insertions(+), 17 deletions(-)
 create mode 100644 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
 create mode 100644 arch/riscv/boot/dts/spacemit/k3.dtsi

