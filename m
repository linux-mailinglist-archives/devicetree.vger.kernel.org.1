Return-Path: <devicetree+bounces-22250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5708B806EED
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:50:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC6CA1F2147D
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045C13455E;
	Wed,  6 Dec 2023 11:50:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ABAA1BD;
	Wed,  6 Dec 2023 03:50:15 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id AAD0924E2F7;
	Wed,  6 Dec 2023 19:50:12 +0800 (CST)
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 6 Dec
 2023 19:50:12 +0800
Received: from jsia-virtual-machine.localdomain (175.136.135.142) by
 EXMBX066.cuchost.com (172.16.6.66) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Wed, 6 Dec 2023 19:50:05 +0800
From: Sia Jee Heng <jeeheng.sia@starfivetech.com>
To: <kernel@esmil.dk>, <conor@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <paul.walmsley@sifive.com>,
	<palmer@dabbelt.com>, <aou@eecs.berkeley.edu>, <mturquette@baylibre.com>,
	<sboyd@kernel.org>, <p.zabel@pengutronix.de>,
	<emil.renner.berthing@canonical.com>, <hal.feng@starfivetech.com>,
	<xingyu.wu@starfivetech.com>
CC: <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-clk@vger.kernel.org>,
	<jeeheng.sia@starfivetech.com>, <leyfoon.tan@starfivetech.com>
Subject: [PATCH v1 00/16] Basic clock and reset support for StarFive JH8100 RISC-V SoC
Date: Wed, 6 Dec 2023 19:49:44 +0800
Message-ID: <20231206115000.295825-1-jeeheng.sia@starfivetech.com>
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

This patch series enabled basic clock & reset support for StarFive
JH8100 SoC.

This patch series depends on the Initial device tree support for
StarFive JH8100 SoC patch series which can be found at below link:
https://lore.kernel.org/lkml/20231201121410.95298-1-jeeheng.sia@starfivet=
ech.com/

StarFive JH8100 shares a similar clock and reset design with JH7110.
To facilitate the reuse of the file and its functionalities, files
containing the 'jh71x0' naming convention are renamed to use the
'common' wording. Internal functions that contain the 'jh71x0'
naming convention are renamed to use 'starfive.' This is accomplished
through patches 1, 2, 3, and 4.


Patch 5 adds documentation to describe System (SYSCRG) Clock & Reset
binding.
Patch 6 adds SYSCRG clock driver.

patch 7 adds documentation to describe System-North-West (SYSCRG-NW)
Clock & Reset binding.
Patch 8 adds SYSCRG-NW clock driver.

patch 9 adds documentation to describe System-North-East (SYSCRG-NE)
Clock & Reset binding.
Patch 10 adds SYSCRG-NE clock driver.

patch 11 adds documentation to describe System-South-West (SYSCRG-SW)
Clock & Reset binding.
Patch 12 adds SYSCRG-SW clock driver.

patch 13 adds documentation to describe Always-On (AON)
Clock & Reset binding.
Patch 14 adds AON clock driver.

Patch 15 adds support for the auxiliary reset driver.

Patch 16 adds clocks and reset nodes to the JH8100 device tree.

Sia Jee Heng (16):
  reset: starfive: Rename file name "jh71x0" to "common"
  reset: starfive: Convert the word "jh71x0" to "starfive"
  clk: starfive: Rename file name "jh71x0" to "common"
  clk: starfive: Convert the word "jh71x0" to "starfive"
  dt-bindings: clock: Add StarFive JH8100 System clock and reset
    generator
  clk: starfive: Add JH8100 System clock generator driver
  dt-bindings: clock: Add StarFive JH8100 System-North-West clock and
    reset generator
  clk: starfive: Add JH8100 System-North-West clock generator driver
  dt-bindings: clock: Add StarFive JH8100 System-North-East clock and
    reset generator
  clk: starfive: Add JH8100 System-North-East clock generator driver
  dt-bindings: clock: Add StarFive JH8100 System-South-West clock and
    reset generator
  clk: starfive: Add JH8100 System-South-West clock generator driver
  dt-bindings: clock: Add StarFive JH8100 Always-On clock and reset
    generator
  clk: starfive: Add JH8100 Always-On clock generator driver
  reset: starfive: Add StarFive JH8100 reset driver
  riscv: dts: starfive: jh8100: Add clocks and resets nodes

 .../clock/starfive,jh8100-aoncrg.yaml         |  77 +++
 .../clock/starfive,jh8100-syscrg-ne.yaml      | 158 +++++
 .../clock/starfive,jh8100-syscrg-nw.yaml      | 119 ++++
 .../clock/starfive,jh8100-syscrg-sw.yaml      |  66 ++
 .../clock/starfive,jh8100-syscrg.yaml         |  66 ++
 MAINTAINERS                                   |  15 +
 arch/riscv/boot/dts/starfive/jh8100-clk.dtsi  | 180 ++++++
 arch/riscv/boot/dts/starfive/jh8100.dtsi      | 115 ++++
 drivers/clk/starfive/Kconfig                  |  49 +-
 drivers/clk/starfive/Makefile                 |   3 +-
 drivers/clk/starfive/clk-starfive-common.c    | 327 ++++++++++
 drivers/clk/starfive/clk-starfive-common.h    | 130 ++++
 .../clk/starfive/clk-starfive-jh7100-audio.c  | 127 ++--
 drivers/clk/starfive/clk-starfive-jh7100.c    | 503 ++++++++--------
 .../clk/starfive/clk-starfive-jh7110-aon.c    |  62 +-
 .../clk/starfive/clk-starfive-jh7110-isp.c    |  72 +--
 .../clk/starfive/clk-starfive-jh7110-stg.c    |  94 +--
 .../clk/starfive/clk-starfive-jh7110-sys.c    | 523 ++++++++--------
 .../clk/starfive/clk-starfive-jh7110-vout.c   |  74 +--
 drivers/clk/starfive/clk-starfive-jh7110.h    |   4 +-
 drivers/clk/starfive/clk-starfive-jh71x0.c    | 327 ----------
 drivers/clk/starfive/clk-starfive-jh71x0.h    | 123 ----
 drivers/clk/starfive/jh8100/Makefile          |   7 +
 drivers/clk/starfive/jh8100/clk-aon.c         | 275 +++++++++
 .../clk/starfive/jh8100/clk-starfive-jh8100.h |  11 +
 drivers/clk/starfive/jh8100/clk-sys-ne.c      | 566 ++++++++++++++++++
 drivers/clk/starfive/jh8100/clk-sys-nw.c      | 268 +++++++++
 drivers/clk/starfive/jh8100/clk-sys-sw.c      | 136 +++++
 drivers/clk/starfive/jh8100/clk-sys.c         | 455 ++++++++++++++
 drivers/reset/starfive/Kconfig                |  14 +-
 drivers/reset/starfive/Makefile               |   4 +-
 ...rfive-jh71x0.c =3D> reset-starfive-common.c} |  68 +--
 .../reset/starfive/reset-starfive-common.h    |  14 +
 .../reset/starfive/reset-starfive-jh7100.c    |   4 +-
 .../reset/starfive/reset-starfive-jh7110.c    |   8 +-
 .../reset/starfive/reset-starfive-jh71x0.h    |  14 -
 .../reset/starfive/reset-starfive-jh8100.c    | 102 ++++
 .../dt-bindings/clock/starfive,jh8100-crg.h   | 430 +++++++++++++
 .../dt-bindings/reset/starfive,jh8100-crg.h   | 127 ++++
 ...rfive-jh71x0.h =3D> reset-starfive-common.h} |  10 +-
 40 files changed, 4485 insertions(+), 1242 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/starfive,jh81=
00-aoncrg.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/starfive,jh81=
00-syscrg-ne.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/starfive,jh81=
00-syscrg-nw.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/starfive,jh81=
00-syscrg-sw.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/starfive,jh81=
00-syscrg.yaml
 create mode 100644 arch/riscv/boot/dts/starfive/jh8100-clk.dtsi
 create mode 100644 drivers/clk/starfive/clk-starfive-common.c
 create mode 100644 drivers/clk/starfive/clk-starfive-common.h
 delete mode 100644 drivers/clk/starfive/clk-starfive-jh71x0.c
 delete mode 100644 drivers/clk/starfive/clk-starfive-jh71x0.h
 create mode 100644 drivers/clk/starfive/jh8100/Makefile
 create mode 100644 drivers/clk/starfive/jh8100/clk-aon.c
 create mode 100644 drivers/clk/starfive/jh8100/clk-starfive-jh8100.h
 create mode 100644 drivers/clk/starfive/jh8100/clk-sys-ne.c
 create mode 100644 drivers/clk/starfive/jh8100/clk-sys-nw.c
 create mode 100644 drivers/clk/starfive/jh8100/clk-sys-sw.c
 create mode 100644 drivers/clk/starfive/jh8100/clk-sys.c
 rename drivers/reset/starfive/{reset-starfive-jh71x0.c =3D> reset-starfi=
ve-common.c} (55%)
 create mode 100644 drivers/reset/starfive/reset-starfive-common.h
 delete mode 100644 drivers/reset/starfive/reset-starfive-jh71x0.h
 create mode 100644 drivers/reset/starfive/reset-starfive-jh8100.c
 create mode 100644 include/dt-bindings/clock/starfive,jh8100-crg.h
 create mode 100644 include/dt-bindings/reset/starfive,jh8100-crg.h
 rename include/soc/starfive/{reset-starfive-jh71x0.h =3D> reset-starfive=
-common.h} (50%)

--=20
2.34.1


