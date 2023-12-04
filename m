Return-Path: <devicetree+bounces-21329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6191E803370
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:54:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15F141F21083
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 12:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BB3C2420E;
	Mon,  4 Dec 2023 12:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f+vv5CGK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96AD0C0;
	Mon,  4 Dec 2023 04:54:36 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1faf46f96ebso1892396fac.1;
        Mon, 04 Dec 2023 04:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701694475; x=1702299275; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x/xu9nwzbmHnEYotXUPce3P+9ytlR88YxCwCFXrncBQ=;
        b=f+vv5CGKnacNhoMKUFEqbh69TZUcH9zQoh68CqSr84lFod0/HL5WRyfYHBs/fxsgTY
         yVXfLAylYAMEcr/+4TzViipoB6iugGys2idFgWB35YfWm15CjrvfOA2bVrODaCW88WBY
         MSM+Zt/MxckxQFHgQh7O++jDui9rb0ZtA0+LbEehuffvJ2u+GK4GCwsS5R6ZPZ5bzsId
         ENlv2VrTmCmBEWhQ1Z6JYqksTMRB/vYQkntivwavZXCcNPwZG4Y219bN/Y7nk0zWrJlj
         PGtOoGOzTRcQEfY39Pl8JAuHzADfq12dZJCRT/rkqfInFiepl61tKgFT1xIk4+/HbUUN
         pvoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701694475; x=1702299275;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x/xu9nwzbmHnEYotXUPce3P+9ytlR88YxCwCFXrncBQ=;
        b=nGybAqHTmtJxtxoAAamwmKUCeubDGO37ymmJzUud0AqStRoqjMlEgJNPRtNky3hi5M
         DulCnDWk5kyZ/iD+1JVV7vf04nLA7jjRIZ7DXAEEuy7rLnH2HIhiI73bw/4OCSJpY3uY
         OlZadgJs+euvAn26+8tUq55dJMUb3J0j7ws63jRYDBau+6WeVq4HfBrbeDlurpOkbv3R
         jVSh01N41Kz+WMGXVtstIpnXqZiDSYUK8YPAr20LCgGAnNfRukqkapLW7EXkd7X8xOdf
         IYLmP4S1VVcphBa1QEKkhVeSZY4Dfxxakk3V11RZRzJGB+DRUDesNNalUrdKfL4QIw6b
         Q8NA==
X-Gm-Message-State: AOJu0Yzc4HmkCV5sJI4JAKA39wbqsVDVe6EhcVmWBEWm7MtkgjzVB0EF
	/rY9to4RMmW4v1Dk9VY+9cM=
X-Google-Smtp-Source: AGHT+IFZHG4AC4TOrdwhcJaZ3XL0RRIPK/tNTU1fuESVfRAIIm33CjmYgFNjdPKxK8OINpa69r4WEQ==
X-Received: by 2002:a05:6871:58f:b0:1fa:f52a:ad2b with SMTP id u15-20020a056871058f00b001faf52aad2bmr6168296oan.8.1701694474816;
        Mon, 04 Dec 2023 04:54:34 -0800 (PST)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id pa18-20020a0568701d1200b001faff1908d3sm2068107oab.53.2023.12.04.04.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 04:54:34 -0800 (PST)
From: Chen Wang <unicornxw@gmail.com>
To: aou@eecs.berkeley.edu,
	chao.wei@sophgo.com,
	conor@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	richardcochran@gmail.com,
	robh+dt@kernel.org,
	sboyd@kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	haijiao.liu@sophgo.com,
	xiaoguang.xing@sophgo.com,
	guoren@kernel.org,
	jszhang@kernel.org,
	inochiama@outlook.com,
	samuel.holland@sifive.com
Cc: Chen Wang <unicorn_wang@outlook.com>
Subject: [PATCH v3 0/4] riscv: sophgo: add clock support for sg2042
Date: Mon,  4 Dec 2023 20:54:24 +0800
Message-Id: <cover.1701691923.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen Wang <unicorn_wang@outlook.com>

This series adds clock controller support for sophgo sg2042.

Thanks,
Chen

---

Changes in v3:
  The patch series is based on v6.7-rc1. You can simply review or test the
  patches at the link [3].
  - DTS: don't use syscon but define sg2042 specific system control node. More
    background info can read [4].
  - Updating minor issues in dt-bindings as per input from reviews.

Changes in v2:
  The patch series is based on v6.7-rc1. You can simply review or test the
  patches at the link [2].
  - Squashed the patch adding clock definitions with the patch adding the
    binding for the clock controller.
  - Updating dt-binding for syscon, remove oneOf for property compatible;
    define clock controller as child of syscon.
  - DTS changes: merge sg2042-clock.dtsi into sg2042.dtsi; move clock-frequency
    property of osc to board devicethree due to the oscillator is outside the
    SoC.
  - Fixed some bugs in driver code during testing, including removing warnings
    for rv32_defconfig.
  - Updated MAINTAINERS info.

Changes in v1:
  The patch series is based on v6.7-rc1. You can simply review or test the
  patches at the link [1].

Link: https://github.com/unicornx/linux-riscv/commits/upstream-sg2042-clock-v1 [1]
Link: https://github.com/unicornx/linux-riscv/commits/upstream-sg2042-clock-v2 [2]
Link: https://github.com/unicornx/linux-riscv/commits/upstream-sg2042-clock-v3 [3]
Link: https://lore.kernel.org/linux-riscv/MA0P287MB03329AE180378E1A2E034374FE82A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM/ [4]

---

Chen Wang (4):
  dt-bindings: soc: sophgo: Add Sophgo system control module
  dt-bindings: clock: sophgo: Add SG2042 bindings
  clk: sophgo: Add SG2042 clock generator driver
  riscv: dts: add clock generator for Sophgo SG2042 SoC

 .../clock/sophgo/sophgo,sg2042-clkgen.yaml    |   50 +
 .../soc/sophgo/sophgo,sg2042-sysctrl.yaml     |   35 +
 MAINTAINERS                                   |    7 +
 .../boot/dts/sophgo/sg2042-milkv-pioneer.dts  |    4 +
 arch/riscv/boot/dts/sophgo/sg2042.dtsi        |   79 +
 drivers/clk/Kconfig                           |    1 +
 drivers/clk/Makefile                          |    1 +
 drivers/clk/sophgo/Kconfig                    |    8 +
 drivers/clk/sophgo/Makefile                   |    2 +
 drivers/clk/sophgo/clk-sophgo-sg2042.c        | 1371 +++++++++++++++++
 drivers/clk/sophgo/clk-sophgo-sg2042.h        |  226 +++
 .../dt-bindings/clock/sophgo,sg2042-clkgen.h  |  169 ++
 12 files changed, 1953 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/sophgo/sophgo,sg2042-clkgen.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/sophgo/sophgo,sg2042-sysctrl.yaml
 create mode 100644 drivers/clk/sophgo/Kconfig
 create mode 100644 drivers/clk/sophgo/Makefile
 create mode 100644 drivers/clk/sophgo/clk-sophgo-sg2042.c
 create mode 100644 drivers/clk/sophgo/clk-sophgo-sg2042.h
 create mode 100644 include/dt-bindings/clock/sophgo,sg2042-clkgen.h


base-commit: b85ea95d086471afb4ad062012a4d73cd328fa86
-- 
2.25.1


