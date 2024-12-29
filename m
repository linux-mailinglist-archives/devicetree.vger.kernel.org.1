Return-Path: <devicetree+bounces-134568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD06C9FDF5A
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54BCB16194D
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27B8B17B50A;
	Sun, 29 Dec 2024 14:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hz1sl4qS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F2E1607B7
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483834; cv=none; b=CHKM4gdip/4RUKLJSY3GrnC2vjK/lv52fU1kSsAXyNRYnoQr+0pQeTRZzeGxxj5ENExjiCs21FpqoYg0x78GSQU0OMXKPYGrfCeFg79DapF62j0JnRb4xARCX9ow1LKgJ3SSO4Rl2dzXpd4rmb0n0I1PuGUUp0HplKibABn1xkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483834; c=relaxed/simple;
	bh=18hYRPMSK70eF4pL6rczXgkVi9mkxd0dsTX68W3EHSY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qwQAiOvCiHE+fwzIIL3kAf2K/+jyEQ0qmzlHpJtWxjueuzBQd6vVrzNgKGEfAAgvXbc/uCDlMr0/W0CQr5JTzKH2UoQpR4RYpH/EthsFR9WqjEbSg27k+HYrkVxrVLNkkxzGFOcsY4XGuDUho/Op8KPBpGrRgDm+OgVhF8GGosY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=hz1sl4qS; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aaeecbb7309so709660466b.0
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483831; x=1736088631; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F6+f7jMoIATRyOE70ikq3cyEvYNf4urCVh8EzVTjWJY=;
        b=hz1sl4qSMf2eB4aGSe+ScIgWWeDOO9a9sGlScJnzlAwcTuvSWvW+Bohcv3frAob2PY
         7LQNwkYXnhFP4MqLxBwT1QAsjun30XWN53PugjpqO9xwRu1mYvbwLZrscTuxpG0Xj+t3
         QsZQz1kubHjvnwhTQow974aGiH6x/G3MGgx1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483831; x=1736088631;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F6+f7jMoIATRyOE70ikq3cyEvYNf4urCVh8EzVTjWJY=;
        b=hYYy5+t8PuaRA/8zJlAuPsuUSMIVIjZYFd1LW/EF+T2DjjdnycCzw1APlBSzDlwYis
         dEU0MC+8DqBoWAdzV/bXfWXua6DvP5/BnrsiI5TCd/zaDrOrI6oTRvteg4OzvgPykfDE
         VMtUMggkNJ+VSUcBszJ33Gv5401FGM2lWP2pGPxglBI9SN6LE+Md3bZJ72nLGdSgL/RP
         68pVhYfWmk4nNHLLBIgsYKCSi4BUSbqg8baIU+UzmJdzSQERzWxlWumyE9V972V2kgs4
         A/pse8MgzR3wrBDiKDdFyLQ/diRONR7eqCny4hXCUsVQeZALruzSBVuiGeNRMeN1hXq1
         r3/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVINuDiNqxnLw3Jn74dAgvaVqosedRip2oRjCZYi/MZ2nJ/oM4k7UjWCYX+ysFtxHzj4646jomHovVX@vger.kernel.org
X-Gm-Message-State: AOJu0YziFex7aPT1cWIUZ5wKPIWUFE80ogBm2NJjFPRRlhpcilsRxs5h
	dBmSyHl+xbOkJTFwtd73qlDyVrJi8o8O16L4psJ4X4h0owwqHp/wFmvyUbYnQ9Y=
X-Gm-Gg: ASbGncuXUnVPUmmUtZ1JtMdQx3bysTF9mJEJQrIBczpPwQ/SHND1edNzccQZM73I9QF
	W6dV5+PyT3XJJ2jyiZchfspIrvsUrfXQSd4YK1qk8F5SeyUfjdC7yFKMGefdgsd/qH0gRODAJra
	krrV9k5+Sc8O0nVkUgwD2OuL8UfKEc162TuSTRvXPweB4GONX1lTSK1+jUgEKjKQ5YKpdEiUU7O
	YBl1gVvto8M3WwTbehVhXywKJrbY35HBb673LaSeM6LE+qEugeCbmVOatsOrAP1rSKOv4agxMLe
	YkUIpD8M/ejxNI/CDOWZ9Q==
X-Google-Smtp-Source: AGHT+IGIDvR00Hc3XgVkeolGibSGC8tUB/z1f3sR2v4jZbZHlTnHgn1RaBqUHQyGAHVMOy56/9+qCw==
X-Received: by 2002:a17:907:1c14:b0:aa6:a228:afaf with SMTP id a640c23a62f3a-aac3378d0b4mr2559257666b.52.1735483831243;
        Sun, 29 Dec 2024 06:50:31 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:30 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v8 00/18] Support spread spectrum clocking for i.MX8N PLLs
Date: Sun, 29 Dec 2024 15:49:24 +0100
Message-ID: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for spread spectrum clocking for i.MX8MN
PLLs (audio, video and DRAM). It has been tested for the video PLL on
a board using i.MX8MN.

The patches added in version 4, such as the dt-bindings and the driver
for anatop, were inspired by the extensive email exchange from version 3:
https://lore.kernel.org/imx/20241106090549.3684963-1-dario.binacchi@amarulasolutions.com/

The series added spectrum spread support for the imx8mn platform only,
but in case it was merged, confirming that the directives and suggestions
made by the maintainers were correctly understood and implemented, I will
extend this support to the imx8mm and imx8mp platforms as well.

Changes in v8:
- Drop the patches added in version 7:
  - 10/23 dt-bindings: clock: imx8m-clock: add phandle to the anatop
  - 11/23 arm64: dts: imx8mm: add phandle to anatop within CCM
  - 12/23 arm64: dts: imx8mn: add phandle to anatop within CCM
  - 13/23 arm64: dts: imx8mp: add phandle to anatop within CCM
  - 14/23 arm64: dts: imx8mq: add phandle to anatop within CCM

Changes in v7:
- Add and manage fsl,anatop property as phandle to the anatop node with
  the new patches:
  - 10/23 dt-bindings: clock: imx8m-clock: add phandle to the anatop
  - 11/23 arm64: dts: imx8mm: add phandle to anatop within CCM
  - 12/23 arm64: dts: imx8mn: add phandle to anatop within CCM
  - 13/23 arm64: dts: imx8mp: add phandle to anatop within CCM
  - 14/23 arm64: dts: imx8mq: add phandle to anatop within CCM

Changes in v6:
- Merge patches:
  10/20 dt-bindings: clock: imx8mm: add binding definitions for anatop
  11/20 dt-bindings: clock: imx8mn: add binding definitions for anatop
  12/20 dt-bindings: clock: imx8mp: add binding definitions for anatop
  to
  05/20 dt-bindings: clock: imx8m-anatop: define clocks/clock-names
  now renamed
  05/18 dt-bindings: clock: imx8m-anatop: add oscillators and PLLs
- Split the patch
  15/20 dt-bindings-clock-imx8m-clock-support-spread-spectru.patch
  into
  12/18 dt-bindings: clock: imx8m-clock: add PLLs
  16/18 dt-bindings: clock: imx8m-clock: support spread spectrum clocking

Changes in v5:
- Fix compilation errors.
- Separate driver code from dt-bindings

Changes in v4:
- Add dt-bindings for anatop
- Add anatop driver
- Drop fsl,ssc-clocks from spread spectrum dt-bindings

Changes in v3:
- Patches 1/8 has been added in version 3. The dt-bindings have
  been moved from fsl,imx8m-anatop.yaml to imx8m-clock.yaml. The
  anatop device (fsl,imx8m-anatop.yaml) is indeed more or less a
  syscon, so it represents a memory area accessible by ccm
  (imx8m-clock.yaml) to setup the PLLs.
- Patches {3,5}/8 have been added in version 3.
- Patches {4,6,8}/8 use ccm device node instead of the anatop one.

Changes in v2:
- Add "allOf:" and place it after "required:" block, like in the
  example schema.
- Move the properties definition to the top-level.
- Drop unit types as requested by the "make dt_binding_check" command.

Dario Binacchi (18):
  dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
  clk: imx8mm: rename video_pll1 to video_pll
  dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
  clk: imx8mp: rename video_pll1 to video_pll
  dt-bindings: clock: imx8m-anatop: add oscillators and PLLs
  arm64: dts: imx8mm: add anatop clocks
  arm64: dts: imx8mn: add anatop clocks
  arm64: dts: imx8mp: add anatop clocks
  arm64: dts: imx8mq: add anatop clocks
  clk: imx: add hw API imx_anatop_get_clk_hw
  clk: imx: add support for i.MX8MN anatop clock driver
  dt-bindings: clock: imx8m-clock: add PLLs
  arm64: dts: imx8mm: add PLLs to clock controller module (CCM)
  arm64: dts: imx8mn: add PLLs to clock controller module (CCM)
  arm64: dts: imx8mp: add PLLs to clock controller module (CCM)
  dt-bindings: clock: imx8m-clock: support spread spectrum clocking
  clk: imx: pll14xx: support spread spectrum clock generation
  clk: imx8mn: support spread spectrum clock generation

 .../bindings/clock/fsl,imx8m-anatop.yaml      |  53 +++-
 .../bindings/clock/imx8m-clock.yaml           |  74 ++++-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +
 drivers/clk/imx/Makefile                      |   2 +-
 drivers/clk/imx/clk-imx8mm.c                  | 102 +++----
 drivers/clk/imx/clk-imx8mn-anatop.c           | 283 ++++++++++++++++++
 drivers/clk/imx/clk-imx8mn.c                  | 196 ++++++------
 drivers/clk/imx/clk-imx8mp.c                  | 118 ++++----
 drivers/clk/imx/clk-pll14xx.c                 | 134 +++++++++
 drivers/clk/imx/clk.c                         |  15 +
 drivers/clk/imx/clk.h                         |  18 ++
 include/dt-bindings/clock/imx8mm-clock.h      |  76 ++++-
 include/dt-bindings/clock/imx8mn-clock.h      |  64 ++++
 include/dt-bindings/clock/imx8mp-clock.h      |  80 ++++-
 17 files changed, 1015 insertions(+), 235 deletions(-)
 create mode 100644 drivers/clk/imx/clk-imx8mn-anatop.c

-- 
2.43.0


