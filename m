Return-Path: <devicetree+bounces-48557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF9D872837
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 21:02:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE1E91C282D6
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 20:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C793F128807;
	Tue,  5 Mar 2024 20:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="kmeBwvaR"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-245.mail.qq.com (out203-205-221-245.mail.qq.com [203.205.221.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0315579953
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 20:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709668919; cv=none; b=Yz4B2INIF/lYKyjommop1cGTvLrKGVBzVWrJSXBqfLgK43lQyLlMhuYUnMgmbLwOq9vymvWaMNehLuMuUiyKpQLKVCnr4LauQ88yIcunZehmjfH33UbpdEaXYZKgmE1vo3CfI4iIfhEsq8VT7DHqv/dUe3CBgvLgE9RhzFLE5ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709668919; c=relaxed/simple;
	bh=X688VFmNT+KuDyfWdfl84/URmmxbj0JgCSsilEfxTB0=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=d96HLZetMr5O6k2ylLZ0XRz4h2/WVPdntOPiXtToeWgyUL2WooGKAHfuh0aGscSbcQl4/dcKhpOyLxMZvJjh4QLkHCNLLegP+FWH4FtpdAFGNtPA85sO4uIcRvU/2JdryCmdpO8LGOaQCCavb/JOpH1gdI+O1jotdYgj7iosdgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=kmeBwvaR; arc=none smtp.client-ip=203.205.221.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709668913; bh=cHmCFhzjQmxjiNqsDl0m9Uelp7ld1D0aXxbUUYXrZ/E=;
	h=From:To:Cc:Subject:Date;
	b=kmeBwvaR0Jwc4STMSNQmrRcvipVeLZOLXVdlUvOK4BxOWsAMkPUQZ4L1YrYUcpTE9
	 m+RKnmPVx36VZPAHvOf57ElP28PMEcrcYrdIAHVZ/bQp9GYNqBDRmUmEc2wy8yL/22
	 xfT1KPn72rwhKU9hJjye6fHxf118oDhi8Es8ZWVo=
Received: from cyy-pc.lan ([240e:379:2267:e200:bd8:e8f9:fb59:de48])
	by newxmesmtplogicsvrszb9-0.qq.com (NewEsmtp) with SMTP
	id 6B832F1; Wed, 06 Mar 2024 04:01:43 +0800
X-QQ-mid: xmsmtpt1709668903trqjfe3fw
Message-ID: <tencent_FC10B3C630BE27412FED2547245CBE18D807@qq.com>
X-QQ-XMAILINFO: M1rD3f8svNznRKnYlSRS18UmXXg8kIV313+naVSPlm4p7IzHGy8U6VsZfh9InS
	 QrWrAO9+vqdcDgS9mSFD/jb6Y+HMG7ue1/bDNK38rTB6If4sOC2YbZW0PyWDus7cELyGWv0FXJFv
	 RPHitH+dT0bdjETfloH/5qLpYLUyzXhk10Qwd/ZCdN2p927KyhosElZvKPljcKWwJZdjjz2tYrVT
	 ddxKyi+ljphBllx+wQp+1O0p/Lq4n8I5mUbC3xR2sO9p6fqkZNh/GM4ZCAfAQkABKhoKN5mZMhGT
	 J+7bB6qsKGv8Bgahj9f6pn2cW4r1A9HCqBuBWXOMlCBeD8W2IXB1Jbc+sxFO4yGctj8WeWrqh+tv
	 aSlsLUGLkG23fhZqSExr3/xHbGnWxQLuJBlY8+oz0rp2INEbyHomGDVZPOco5d6OcyNBUSl2hZNJ
	 oZOjLMgQpE1tJtrZJS+CkIh6LgVe7IpBKbEvt//9jYd+XoQORpKZtBDmVJL1vcJ3QXM6YRwH4IPl
	 gFWV4+ZLs6x8wwpFnqomfS30BL4drlaZ29n6A098GTnfvL4snIlEToqoBZ6RBG6W5/fIk9MU9lZf
	 WjlVovR2ZjIVUH53q1KefIoydcA3hez0DWJwOauTQHXqP6Q9IYYc9g1LhrF1mD4RjAhZcTs3Qtxh
	 Vgk085gDaJaKN0TWGn7JXQhauiIp+QRxipfjAJ8bsloHb6/YmwnDnrWVBHIAQTMndX2462aoY32q
	 DaxoU8i2nMaadeTjsp+vSMt8/7MsCIxsocQVlFrcHsTwIQiEaMBBs8NCDnwvU8pP2G/SZb1tOh1t
	 w325x4MNchroZAMA9aRsuY1pyj7Y2SrATWXs7EXE2S9avmhjtrVQ0ORQlPSJdd3X0pPKGsfE7+58
	 lhTm1PD6Cj1tp5vUE13oC9wX7APYPjuuA9K0FBwkE70zsC/Kx2GUBENaPCDI2Nj21jP4XoHD364O
	 U+SGdAfTrNFdETEzQsYg3in/etj+sq/6mePUdca6jAOMVE8JpW70rAklR43BB7w/kNRFANsWhEa3
	 sldsQdmZCoOf4wSA2JocNTWwJtXtZC0gbmd993xH25QGjuEN4glS8ZcUQ8s7bxkgR4WnOYHE4bZG
	 F74L/u
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Guo Ren <guoren@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yangyu Chen <cyy@cyyself.name>
Subject: [PATCH v5 0/7] riscv: add initial support for Canaan Kendryte K230
Date: Wed,  6 Mar 2024 04:01:37 +0800
X-OQ-MSGID: <20240305200137.1092612-1-cyy@cyyself.name>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

K230 is an ideal chip for RISC-V Vector 1.0 evaluation now. Add initial
support for it to allow more people to participate in building drivers
to mainline for it.

This kernel has been tested upon factory SDK [1] with
k230_evb_only_linux_defconfig and patched mainline opensbi [2] to skip
locked pmp and successfully booted to busybox on initrd with this log [3].

[1] https://github.com/kendryte/k230_sdk
[2] https://github.com/cyyself/opensbi/tree/k230
[3] https://gist.github.com/cyyself/b9445f38cc3ba1094924bd41c9086176

Changes since v4:
- Reword commit message on dts that the B-ext version of c908 is 1.0 rather
  than 1.0-rc1

v4: https://lore.kernel.org/linux-riscv/tencent_587730262984A011834F42D0563BC6B10405@qq.com/

Changes since v3:
- Refactor Kconfig.soc which uses ARCH_CANAAN for regular Canaan SoCs and
  rename SOC_CANAAN to SOC_CANAAN_K210 for K210 in patch [5/7]
- Sort dt-binding stings on Cannan SoCs in alphanumerical order

v3: https://lore.kernel.org/linux-riscv/tencent_BB2364BBF1812F4E304F7BDDD11E57356605@qq.com/

Changes since v2:
- Add MIT License to dts file
- Sort dt-binding stings in alphanumerical order
- Sort filename in dts Makefile in alphanumerical order
- Rename canmv-k230.dts to k230-canmv.dts

v2: https://lore.kernel.org/linux-riscv/tencent_64A9B4B31C2D70D5633042461AC9F80C0509@qq.com/

Changes since v1:
- Patch dt-bindings in clint and plic
- Use enum in K230 compatible dt bindings
- Fix dts to pass `make dtbs_check`
- Add more details in commit message

v1: https://lore.kernel.org/linux-riscv/tencent_E15F8FE0B6769E6338AE690C7F4844A31706@qq.com/

Yangyu Chen (7):
  dt-bindings: riscv: Add T-HEAD C908 compatible
  dt-bindings: add Canaan K230 boards compatible strings
  dt-bindings: timer: Add Canaan K230 CLINT
  dt-bindings: interrupt-controller: Add Canaan K230 PLIC
  riscv: Kconfig.socs: Split ARCH_CANAAN and SOC_CANAAN_K210
  riscv: dts: add initial canmv-k230 and k230-evb dts
  riscv: config: enable ARCH_CANAAN in defconfig

 .../sifive,plic-1.0.0.yaml                    |   1 +
 .../devicetree/bindings/riscv/canaan.yaml     |   8 +-
 .../devicetree/bindings/riscv/cpus.yaml       |   1 +
 .../bindings/timer/sifive,clint.yaml          |   1 +
 arch/riscv/Kconfig.socs                       |   8 +-
 arch/riscv/Makefile                           |   2 +-
 arch/riscv/boot/dts/canaan/Makefile           |   2 +
 arch/riscv/boot/dts/canaan/k230-canmv.dts     |  24 +++
 arch/riscv/boot/dts/canaan/k230-evb.dts       |  24 +++
 arch/riscv/boot/dts/canaan/k230.dtsi          | 140 ++++++++++++++++++
 arch/riscv/configs/defconfig                  |   1 +
 arch/riscv/configs/nommu_k210_defconfig       |   3 +-
 .../riscv/configs/nommu_k210_sdcard_defconfig |   3 +-
 drivers/clk/Kconfig                           |   4 +-
 drivers/pinctrl/Kconfig                       |   4 +-
 drivers/reset/Kconfig                         |   4 +-
 drivers/soc/Makefile                          |   2 +-
 drivers/soc/canaan/Kconfig                    |   4 +-
 18 files changed, 220 insertions(+), 16 deletions(-)
 create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv.dts
 create mode 100644 arch/riscv/boot/dts/canaan/k230-evb.dts
 create mode 100644 arch/riscv/boot/dts/canaan/k230.dtsi

-- 
2.43.0


