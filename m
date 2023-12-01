Return-Path: <devicetree+bounces-20726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D38800A93
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 13:14:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06583B21056
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 12:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C12B2374F;
	Fri,  1 Dec 2023 12:14:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98D2D13E;
	Fri,  1 Dec 2023 04:14:30 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id D014C24DC6F;
	Fri,  1 Dec 2023 20:14:27 +0800 (CST)
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 1 Dec
 2023 20:14:27 +0800
Received: from jsia-virtual-machine.localdomain (60.54.3.230) by
 EXMBX066.cuchost.com (172.16.6.66) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 1 Dec 2023 20:14:15 +0800
From: Sia Jee Heng <jeeheng.sia@starfivetech.com>
To: <kernel@esmil.dk>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <krzk@kernel.org>,
	<conor+dt@kernel.org>, <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
	<aou@eecs.berkeley.edu>, <daniel.lezcano@linaro.org>, <tglx@linutronix.de>,
	<conor@kernel.org>, <anup@brainfault.org>, <gregkh@linuxfoundation.org>,
	<jirislaby@kernel.org>, <michal.simek@amd.com>,
	<michael.zhu@starfivetech.com>, <drew@beagleboard.org>
CC: <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <jeeheng.sia@starfivetech.com>,
	<leyfoon.tan@starfivetech.com>
Subject: [PATCH v3 0/6] Initial device tree support for StarFive JH8100 SoC
Date: Fri, 1 Dec 2023 20:14:04 +0800
Message-ID: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX066.cuchost.com
 (172.16.6.66)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

StarFive JH8100 SoC consists of 4 RISC-V performance Cores (Dubhe-90) and
2 RISC-V energy efficient cores (Dubhe-80). It also features various
interfaces such as DDR4, Gbit-Ether, CAN, USB 3.2, SD/MMC, etc., making i=
t
ideal for high-performance computing scenarios.

This patch series introduces initial SoC DTSI support for the StarFive
JH8100 SoC. The relevant dt-binding documentation has been updated
accordingly. Below is the list of IP blocks added in the initial SoC DTSI=
,
which can be used for booting via initramfs on FPGA:

- StarFive Dubhe-80 CPU
- StarFive Dubhe-90 CPU
- PLIC
- CLINT
- UART

The primary goal is to include foundational patches so that additional
drivers can be built on top of this framework.

Changes since v2:
- Resolved CI build error (dtb_warn_rv64.sh) in patch 6.
- Introduced a new line in patch 6 to distinguish between platforms.
- Reordered the CPU sequence in patch 1.
- Corrected a line deletion in patch 2.
- Removed the description and rearranged the sequence of items in patch 5=
.
- Added 'Acked-by' from Conor for patches 1, 2, 3 and 4.

Changes since v1:
- Dropped patch 5.
- Moved timebase-frequency from .dts to .dtsi.
- Moved soc node from .dts to .dtsi.
- Revised the title for the dt-binding document by removing Xilinx
  wording.
- Added a full stop to the end of the commit messages.
- Removed extra blank lines.
- Used hyphen for a node name.
- Added more recipients to the mailing list.

Sia Jee Heng (6):
  dt-bindings: riscv: Add StarFive Dubhe compatibles
  dt-bindings: riscv: Add StarFive JH8100 SoC
  dt-bindings: timer: Add StarFive JH8100 clint
  dt-bindings: interrupt-controller: Add StarFive JH8100 plic
  dt-bindings: serial: cdns: Add new compatible string for StarFive
    JH8100 UART
  riscv: dts: starfive: Add initial StarFive JH8100 device tree

 .../sifive,plic-1.0.0.yaml                    |   1 +
 .../devicetree/bindings/riscv/cpus.yaml       |   2 +
 .../devicetree/bindings/riscv/starfive.yaml   |   4 +
 .../devicetree/bindings/serial/cdns,uart.yaml |   3 +
 .../bindings/timer/sifive,clint.yaml          |   1 +
 arch/riscv/boot/dts/starfive/Makefile         |   2 +
 arch/riscv/boot/dts/starfive/jh8100-evb.dts   |  28 ++
 arch/riscv/boot/dts/starfive/jh8100.dtsi      | 378 ++++++++++++++++++
 8 files changed, 419 insertions(+)
 create mode 100644 arch/riscv/boot/dts/starfive/jh8100-evb.dts
 create mode 100644 arch/riscv/boot/dts/starfive/jh8100.dtsi


base-commit: 994d5c58e50e91bb02c7be4a91d5186292a895c8
--=20
2.34.1


