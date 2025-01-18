Return-Path: <devicetree+bounces-139437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B722A15CC8
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A9C53A87EB
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:40:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D853E18BC20;
	Sat, 18 Jan 2025 12:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="lbBZUazG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F08188704
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204057; cv=none; b=rnKpq3bvrdTWWNU6LNabkzCrPbSUotyuRo55vD8rTUtP7uBKf2azxG4/npA6AsXHUCEvXZirffgYmcq4zzAcCV2icsJlnw22eo2alKS4xMPty3J97uZgHlwnhJevYHSkWaxNIrTGf/LC12xB/6SqgzthdnHPZrlzKzR6YilWtgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204057; c=relaxed/simple;
	bh=kQs6p/sguiTt33aX9Ord2e8m/sWMlm4NTrB0su2Kzpc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=P3l2td4IVwHgM2nYJKvzZfhlhtmBAMufDv8TPMYy5He6nNGyXNh7+yuP37ji+rTpSkZdmTfy4tMkq4aytBKGJ+Ty9qHtsshU+YGzdAkIdlkZ1MTnPzlZoCs/wf8sWkTol29tts50xztS3BJ7Fip7O5SNzdueZ8wNvZ1ddCSso4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=lbBZUazG; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aaecf50578eso605460466b.2
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204054; x=1737808854; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5onGhGKKEfsf2k5TF9MlXDxHozXopiDzBdinAngTivM=;
        b=lbBZUazGC+UO+hx2Qz0KF6V4vw/oiGanDONCKuZGt1ZlLbOfX8m9M7w6eXrsl4zaod
         80K0s4b/ECOhhZur3PYecXOJzSJj7d0RFEb7OZ0FX/i+gGeRKLPQagWAwLTg4D8bBSqL
         30+Cq8XF8zLPFOnY13Aa7PQ1Rey6VEBhwOT2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204054; x=1737808854;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5onGhGKKEfsf2k5TF9MlXDxHozXopiDzBdinAngTivM=;
        b=RnbADfN6YcG285mQzqU1XfSbecg7y3DG+GhHk2eaCFh/+xlzuzKW3jHt1gmyrtybLb
         S9wDMY4pIkI8h8Bcha9mZc37vlLiyz7sqoBZeSdYuR/1y8P2MHhC5OYY6GxILXRSEGcV
         dZqbWniera+5hbYNXEQPYAYDJphqbbSFXXZc6r/nh7RlyIrqJ8xoMphyrVBLvFnhk30m
         UWvFPrT2ewYydZAxDJ8sSGZuMo63sCQFK4jZK9nQAUk61g71ziUUD4FYaW17qDXhYFJb
         SCnJCWIgeo6MP0RQEzBibF2oKFfz5U3w3Kbv8R8YX0vKwh6Rv64hvPp1TR+SdlCmk9Kf
         p0QQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjZtYGP/41hmE1rKRpi2lWiD39Q4BrxJR+NNgehbgGKrkEdOfwI8G8k9473HaD0MXoubI0XSQmpYbX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2+RNBKQrLz58pyHLBGLTjf8zhe7Fvxy/Ilwf+cok4QhHBYKwP
	tqyuyWUxAGQZ+5yJNS55D14CcUbchUHYr1en0/fjX/jtlil9E4TzFD9gvnR44sI=
X-Gm-Gg: ASbGncsp1l24P6dkK3boTYyLwHcou9bTrPVj5tZ89JdNH2DnywB548nO+z5g3HNQj/p
	g/tVNiIZ9IyeE28E5628wNRm3wKt9Qg3HXVo06fZp0EFy4eDtu9ANPeUqlj8zzPw1KUBUBMtlT2
	zVJys7PCO4DpEnNuf4UHbiDtvmgatmg7SZNEKpklx0KUaJ2mTeTvmUApOERC+2BSCjo02CnV5sK
	V8jT1n38Sg56vnsnE/Cq8FjSZp2SaUFUh8xPg84LXX1ImvkISwMX7pXjcdLmxXA703PG7TZ+fXb
	rvFjKDen4aTw1PLTCCyoP4vx7g3CZBn3qweUVEwVaXACF9cu9I2qM7veIlGDIfnBIDjzCgIb0Ma
	09w5rdH2+kr0VymMORuhtobJHTFPtPkTbSuTB
X-Google-Smtp-Source: AGHT+IEjybvZ0WW6CYRPWu4SGI7kaRbjpSjgRz2MqsdM529mQnQ12ESTPBLo6wSjpHehJu8b/HKv+A==
X-Received: by 2002:a17:907:3f97:b0:aa6:82e8:e89b with SMTP id a640c23a62f3a-ab38b166589mr512324966b.28.1737204054044;
        Sat, 18 Jan 2025 04:40:54 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:40:53 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dan Carpenter <dan.carpenter@linaro.org>,
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
Subject: [PATCH v9 00/23] Support spread spectrum clocking for i.MX8M PLLs
Date: Sat, 18 Jan 2025 13:39:43 +0100
Message-ID: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for spread spectrum clocking for i.MX8M{M,N,P}
PLLs (audio, video and DRAM). It has been tested for the video PLL on
boards using i.MX8MN and i.MX8MP.

Changes in v9:
- Add 'Reviewed-by' tag of Peng Fan for imx8mn platform patches
- Fix building warning raised by the kernel test robot for patch
  v8, 11/18 clk: imx: add support for i.MX8MN anatop clock driver
- Add patches for imx8m{m,p} platforms:
  - 23/23 clk: imx8mm: support spread spectrum clock generation
  - 22/23 clk: imx: add support for i.MX8MM anatop clock driver
  - 21/23 clk: imx8mp: support spread spectrum clock generation
  - 20/23 clk: imx8mp: rename ccm_base to base
  - 19/23 clk: imx: add support for i.MX8MP anatop clock driver

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

Dario Binacchi (23):
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
  clk: imx: add support for i.MX8MP anatop clock driver
  clk: imx8mp: rename ccm_base to base
  clk: imx8mp: support spread spectrum clock generation
  clk: imx: add support for i.MX8MM anatop clock driver
  clk: imx8mm: support spread spectrum clock generation

 .../bindings/clock/fsl,imx8m-anatop.yaml      |  53 +-
 .../bindings/clock/imx8m-clock.yaml           |  74 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +
 drivers/clk/imx/Makefile                      |   6 +-
 drivers/clk/imx/clk-imx8mm-anatop.c           | 287 ++++++++
 drivers/clk/imx/clk-imx8mm.c                  | 275 ++++---
 drivers/clk/imx/clk-imx8mn-anatop.c           | 283 ++++++++
 drivers/clk/imx/clk-imx8mn.c                  | 196 +++--
 drivers/clk/imx/clk-imx8mp-anatop.c           | 305 ++++++++
 drivers/clk/imx/clk-imx8mp.c                  | 684 +++++++++---------
 drivers/clk/imx/clk-pll14xx.c                 | 134 ++++
 drivers/clk/imx/clk.c                         |  15 +
 drivers/clk/imx/clk.h                         |  18 +
 include/dt-bindings/clock/imx8mm-clock.h      |  76 +-
 include/dt-bindings/clock/imx8mn-clock.h      |  64 ++
 include/dt-bindings/clock/imx8mp-clock.h      |  80 +-
 19 files changed, 1975 insertions(+), 610 deletions(-)
 create mode 100644 drivers/clk/imx/clk-imx8mm-anatop.c
 create mode 100644 drivers/clk/imx/clk-imx8mn-anatop.c
 create mode 100644 drivers/clk/imx/clk-imx8mp-anatop.c

-- 
2.43.0


