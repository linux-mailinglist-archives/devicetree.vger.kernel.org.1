Return-Path: <devicetree+bounces-170169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D266A9A1A0
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:22:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8740B462270
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 139431E3DF4;
	Thu, 24 Apr 2025 06:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="NZejulRF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F931DD9AB
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475723; cv=none; b=m3oPQk3SxqVIqzfPthjoVoqXOidOMqvU88lJ45ssCDHnixGAe29I92DTadjHAytEyMX7JwMPU0oxrfXzBklPvkTEJpZv69J0LwpY+rQO91PiWVOXLNuEjgk/y38EE17tWbtP8wqme7+slMQO5RMixQjr9mDQHVVxx1S9L44y9wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475723; c=relaxed/simple;
	bh=LtMCrptJRi9h9DeLKz99vu9IHBG3W2ht+0QjDEqkmQ8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Gr1DshhMjmyqtiZeiiWySKNp6N/WNy4rzBCNykBCN1YUptCQjfXk55Ep6HsCwn9fybew8EQnMrbXrcw7nMSTIP7HvIiDSgb8PvKhXGlrc4uy+rT0o+VwZEWl/pEdxZwNd7NEGUTHmsNXIjF3YvFmFMnOBIW+UfVhgMuXYlDiYag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=NZejulRF; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43cfdc2c8c9so2447865e9.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475718; x=1746080518; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XxxaGvQDvfu7Q9PX5MDYrjcRysLPu8BDWxxMsfcOWXo=;
        b=NZejulRFCZawSgQZk86LRTm5QPA/15OkTF/hKG6+mo2J+m5UrESb3wAhZFJi6ZHPXf
         flSrDSeBkLD+ZLcn22gGACql16FhrbUXGYl3MUTfArV+DNs52Eji6hyjQczHF4ZwNAKt
         m0aWFEILiErWCd6neyfexyj19kWrV0kcdmswM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475718; x=1746080518;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XxxaGvQDvfu7Q9PX5MDYrjcRysLPu8BDWxxMsfcOWXo=;
        b=NIb+9UxcrdsubYYpuzt1Cvzsi7fl3WJrqtF1wZVPwAuK6pQfeMG6JY7K2/0PO5Em1X
         Gz57kh28Ovi+WHiLDqLRzT3v3Dzx1wMB2qk5Dq0EBVHMRgHSyEaWE4UemzLv4bpYQU7x
         Rl8EeTN6Bsevuh+K30zv9JUjc1qPFZWMGR/kxMLwAvjwmNdB7zHH+4JP8Xi/4Od0sKVI
         B3qmQauVs0G+Zs9yOwCeqzQy2ZKgG+le3puErbGFb1vcBqMRKebcd+j5oBLenpWyiMuG
         TT7aHHQQ4aVtaiaP0XK3cuNNw7CKWEeqETBjYe5ffDr9gL+DpKKygwnRzzZSGBWHKurZ
         nKyw==
X-Forwarded-Encrypted: i=1; AJvYcCUt/j43skIuUi9TAhDewOW9MOhFv5oTuhSek2o2ankrNErNG971z0KpSGVXPodt49ZYPiHuR7xZWbBD@vger.kernel.org
X-Gm-Message-State: AOJu0YzO+Cz5qlz/Y5FQ0x9YYXhRs/ZTpj7Wc++y2Ojy22i+VApOnyEm
	lNQ9sN9T2+B3lTIusS882IORyCgX8F9q9j2sgO6fYWUuiU33fj9SpsfjNFklJd4=
X-Gm-Gg: ASbGnctrOySd4CNSalL5BpIUXLTSCfS2F5WR3DIrw6RI9R7H7NA+8DFY1+vs6PspJQ/
	Rt9rZqvrFQFMdmUnDEhq5r8werzWf5SAGnxREJa1YWDBuYKTomz3DPCcveHyY9aW3YzrR9SqyK6
	umyAhwA6Buxcu+TzNuv33EY4PMngL9IpZjHpXP50mh6NSf0I/fkMKx3VHiyJYSoZVxUTLkXFd/m
	j7rybrca+WI3LL/RNrcIcox5R6pXa/6YgMKJdt3byQgm7+R4TkPWoxNPy3iMgXdjJ9z1nE3Mhur
	//F1hkEISzVL9h3oUAqoE1tSkJXd0LYxSeoScto/XLT/iG+pUcfLAN4Qh786vr7Vk0M/ejWcIjT
	BC7wn
X-Google-Smtp-Source: AGHT+IGvTU8Y1hgfT3yKjsK08TdE3oRPW2oO5ovqbEbqxVzSJcoPTwAc+vZW0Km/jHkJQMRVgAbuoA==
X-Received: by 2002:a05:600c:cc8:b0:43b:c5a3:2e1a with SMTP id 5b1f17b1804b1-4409bd05289mr11180925e9.2.1745475718040;
        Wed, 23 Apr 2025 23:21:58 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:21:57 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v12 00/19] Support spread spectrum clocking for i.MX8M PLLs
Date: Thu, 24 Apr 2025 08:21:30 +0200
Message-ID: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This version keeps the version v9 patches that can be merged and
removes the patches that will need to be modified in case Peng's
PR https://github.com/devicetree-org/dt-schema/pull/154 is accepted.
The idea is to speed up the merging of the patches in the series
that have already been reviewed and are not dependent on the
introduction of the assigned-clocks-sscs property, and postpone
the patches for spread spectrum to a future series once it becomes
clear what needs to be done.

Specifically, the patches:

01/18 dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
02/18 clk: imx8mm: rename video_pll1 to video_pll
03/18 dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
04/18 clk: imx8mp: rename video_pll1 to video_pll

are a replica for i.MX8MM and i.MX8MP of the patch for i.MX8MM
bedcf9d1dcf88 ("clk: imx: rename video_pll1 to video_pll"), which was
merged some time ago. The patches are split into four because, during
the review, Krzysztof asked me to separate the driver modifications
from the dt-bindings changes.

All the other patches in the series, from 5 to 18, are necessary for
the implementation of the anatop driver for i.MX8M{M,N,P}. The review of
this series has taken a long time, partly due to misunderstandings
arising from incorrect design choices.

As Peng stated in [1]:
"In current design, CCM is taken as producer of CLK_IMX8M_VIDEO_PLL, not consumer."

These patches fix this issue by ensuring that the PLLs are now produced by
Anatop and consumed by CCM, aligning with the hardware logic.

Finally, a clarification: I decided to keep the same title for the series
despite having removed all the patches for spread spectrum support in order
to maintain a clear connection with the previous versions.

[1] https://patchwork.kernel.org/project/linux-clk/patch/20241106090549.3684963-2-dario.binacchi@amarulasolutions.com/

Changes in v12:
- Add the patch
  15/19: arm64: dts: imx8mp-aristainetos3a-som-v1: don't replicate clk properties
  to fix new warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/freescale/'

Changes in v11:
- Fix conflict while rebasing on master for patches:
  13/18 clk: imx: add support for i.MX8MP anatop clock driver
  14/18 clk: imx8mp: rename ccm_base to base
  15/18 dt-bindings: clock: imx8m-clock: add PLLs
- Add 'Reviewed-by' tag of Peng Fan for patches:
  11/18 clk: imx: add support for i.MX8MM anatop clock driver
  13/18 clk: imx: add support for i.MX8MP anatop clock driver
  14/18 clk: imx8mp: rename ccm_base to base

Changes in v10:
- Drop the v9 patches:
  16/23 dt-bindings: clock: imx8m-clock: support spread spectrum clocking
  17/23 clk: imx: pll14xx: support spread spectrum clock generation
  17/23 clk: imx8mn: support spread spectrum clock generation
  21/23 clk: imx8mp: support spread spectrum clock generation
  23/23 clk: imx8mm: support spread spectrum clock generation

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

Dario Binacchi (19):
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
  clk: imx: add support for i.MX8MM anatop clock driver
  clk: imx: add support for i.MX8MN anatop clock driver
  clk: imx: add support for i.MX8MP anatop clock driver
  clk: imx8mp: rename ccm_base to base
  arm64: dts: imx8mp-aristainetos3a-som-v1: don't replicate clk
    properties
  dt-bindings: clock: imx8m-clock: add PLLs
  arm64: dts: imx8mm: add PLLs to clock controller module (CCM)
  arm64: dts: imx8mn: add PLLs to clock controller module (CCM)
  arm64: dts: imx8mp: add PLLs to clock controller module (CCM)

 .../bindings/clock/fsl,imx8m-anatop.yaml      |  53 +-
 .../bindings/clock/imx8m-clock.yaml           |  27 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  11 +-
 .../imx8mp-aristainetos3a-som-v1.dtsi         |   4 -
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +
 drivers/clk/imx/Makefile                      |   6 +-
 drivers/clk/imx/clk-imx8mm-anatop.c           | 287 ++++++++
 drivers/clk/imx/clk-imx8mm.c                  | 262 ++++---
 drivers/clk/imx/clk-imx8mn-anatop.c           | 283 ++++++++
 drivers/clk/imx/clk-imx8mn.c                  | 183 +++--
 drivers/clk/imx/clk-imx8mp-anatop.c           | 306 ++++++++
 drivers/clk/imx/clk-imx8mp.c                  | 672 +++++++++---------
 drivers/clk/imx/clk.c                         |  15 +
 drivers/clk/imx/clk.h                         |   2 +
 include/dt-bindings/clock/imx8mm-clock.h      |  76 +-
 include/dt-bindings/clock/imx8mn-clock.h      |  64 ++
 include/dt-bindings/clock/imx8mp-clock.h      |  80 ++-
 19 files changed, 1740 insertions(+), 615 deletions(-)
 create mode 100644 drivers/clk/imx/clk-imx8mm-anatop.c
 create mode 100644 drivers/clk/imx/clk-imx8mn-anatop.c
 create mode 100644 drivers/clk/imx/clk-imx8mp-anatop.c

-- 
2.43.0


