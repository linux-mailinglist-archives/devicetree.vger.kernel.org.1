Return-Path: <devicetree+bounces-234793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CADC30DF3
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:04:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 62C9C4E5BFB
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 263872ECD0F;
	Tue,  4 Nov 2025 12:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IZDSV1N5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F772EB87E
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762257838; cv=none; b=CSUUtUBpXWUwmlq+oI765LcGJq1CulmKWsdvmX7WX+36a27MimS7GtKjVdHycneA8FCG+H2rkqrm1qQDbNB8gYQoqRRB/hrCTVWm0ZCWg+DctRy5ibZVMU63ou3RNcq4pGk+UiNrwTGEJJQkLxpLRAvzlG1EAfDNOPErca5rDwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762257838; c=relaxed/simple;
	bh=kB8D/I7PqSfZofEzHfYUyubVQDFHVKLPPByw33zDpVw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TAKuod+PSZTZqTufpRc045waO6MknoMEON8L/iWETRH1UmYmfzQkQIQEOqoEWZQkKn9FAsXgFT6tmZxrESZxBn02rSTWa+bqqX+TBxg82FR0kyjrFk8kkZ2deoZEItqzZ5U3+hL4GYZytYqTo+rph2Fl78w48tIlI2VYE/VphRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IZDSV1N5; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-640aaa89697so4096299a12.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762257834; x=1762862634; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qh/FaSl/m4qbaZem8OmSgJ3Jnx8x/VamxQ11Z+7Z+Ns=;
        b=IZDSV1N5aQi3W/RGokgtbSPuhDubUs7HIKZwyI8gkzjC37SNEMiBth0Kqs3w6jFaAf
         LWGmYYSm15bEn/GDrcYJMtyoBbQGj1KfPrY3aiw5YU1wWJXDmbU82td+CQpURpj1m8AB
         33VbsSoc2OMJVyHTVFul/5rB8/J1OAtu0nqtSk8Vxhe0400p1Apq8diuEnKAbH7W6Jc3
         BtZsm4jK7/6Sh5dY11vKcr0RRj94SMy2o83pGdLIQSLWiTC2hYlyiE3QI1SwrSf+qFlf
         BziIehtT4rkrxqGpHffsuPevTIKmRtl3hR9pTFu3zvUFBAgJaOOQ5hShQrOtC0vDwGzz
         7MwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762257834; x=1762862634;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qh/FaSl/m4qbaZem8OmSgJ3Jnx8x/VamxQ11Z+7Z+Ns=;
        b=ePYIuEtNYKzgSafeJ9uSX8POze9/ElChnU/RUmutA66q2WONOJPSdYd0ROhvcFi7l8
         odrQ/uuc5pgl6xLvA4Y0iak8Jd3L+srWf/aFFOiRPPfcuY87BGdK5NFQQTBAwTY5msXZ
         hlkpHDGmyThVQgne7q+ol06a7Ms3pSmxOs+1VPvB0xVkRXfZ62dLhfTByUK1o7sZTBPY
         CXvogir4MxnqW25xSfWvsUvPDligYz06JywR3XHOHR2VX15uUb1J3MruDdtyFudwMRs/
         8wOjo4e6tziGe69zP/PxixAFzVNpAPivR6GKR6d6wj4hhjjtj29PFUiAAGbvzXAH2ijM
         ZJbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVNAUU6Q0ubiPn1zyrashcOGLjwOKghUKMLZW4tS5VKLguzwm4emymFauJO1uOftwZB4m+KT75rdw1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy97/trH2/WxVl3RKqenpcbll6MPGXp6qahUudwORMkPYHC0l2P
	Hofd0X+TtOHwz7bJHMfzKpLz/D39EU8F1S4jQMWb3RGYE2s89u/4duMY
X-Gm-Gg: ASbGncs9AG20QlPitzEjS50fD2Uu5q5VJ2dCKTzCVLeFtXLrY+Fv3vfotn9LZJ9x2o6
	cYfoZUWFNx6S1+H+KgwtF+iy4brI3BVrINoRw1xOQSOW+H8Olz93/QapQFV/+27L0dtw/Cf8HmA
	pV4Fr0di0o/8Ry0wf+XaLEnHVNfZhP3Y9ESZp7prU1z2e6Cs1G8TOXk0j20zZzlDVZVLsMsgvPv
	08/pmnfD/LvEvE/Q+cQ2BNNNKD4xs6Y1zbtTdP9jg5fKorSb7i/g8JvOj2AGuE/IqXG7MR05Pml
	wRZ5RbSM+n/U/RvJDFuyCXRg96z0Uviv/sw44HqVn3lMiBatlx3QMnj8z7eWnEz1aPJtoZdbhmY
	IBZyk+yew5NkPSw/iokZOMt0ZfE70LQM5J4GRjETBaaylXlqFnzdWnd7GF6D5OqfWa0Z6xBVwvG
	u12hWH+Fkh6bo5BXbL3QWvtrTIWg==
X-Google-Smtp-Source: AGHT+IGLk4LxQpLQapehWO+/gGriK9GLCN/WjqIegAT6m6BmY/Rle/Qz0hXlvkpjCOOsut/JbPkSdw==
X-Received: by 2002:a17:906:9fce:b0:b42:9840:eac1 with SMTP id a640c23a62f3a-b70706302f6mr1560163066b.49.1762257833816;
        Tue, 04 Nov 2025 04:03:53 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fa038e0sm200894166b.54.2025.11.04.04.03.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:03:53 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v4 0/8] Add support for i.MX8ULP's SIM LPAV
Date: Tue,  4 Nov 2025 04:02:53 -0800
Message-ID: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

The LPAV System Integration Module (SIM) is an IP found inside i.MX8ULP's
LPAV subsystem, which offers clock gating, reset line
assertion/de-assertion, and various other misc. options.

This series adds support for the IP by introducing a new clock HW provider
driver and by modifying i.MX8MP's AUDIOMIX block control reset driver to
allow it to be used for i.MX8ULP's SIM LPAV as well.

This series is a spin-off from [1].

[1]: https://lore.kernel.org/lkml/20240922174225.75948-1-laurentiumihalcea111@gmail.com/

---
Changes in v4:

* shorten commit message for patch 5
* drop base from "struct imx8mp_audiomix_reset" and use local variable
* imx8mp_audiomix_reset_get_regmap() now takes "struct imx8mp_audiomix_reset *"
  as its argument instead of a "struct device *"
* use base pointer as the data argument for devm_add_action_or_reset()
* shorten commit message for patch 6
* drop regmap field from "struct clk_imx8ulp_sim_lpav_data", use local
  variable and let devres manage it
* drop base field from "struct clk_imx8ulp_sim_lpav_data", use local
  variable and let devres manage it.
* CONFIG_CLK_IMX8ULP now selects CONFIG_AUXILIARY_BUS, which is needed
  for devm_auxiliary_device_create().
* drop static definition of "struct regmap_config" and change to using
  local one in the clock driver.
* link to v3: https://lore.kernel.org/lkml/20251029135229.890-1-laurentiumihalcea111@gmail.com/

Changes in v3:

* rename "lpav_bus", "hifi_core", and "hifi_plat" to "bus", "core", "plat"
* don't assign the "name" field of "struct clk_parent_data". Previously, we
  were assigning the local parent name to this field, which wouldn't have
  worked anyways if, for whatever reason, the fallback mechanism would kick in.
* replace the whole auxiliary reset driver creation chunk by
  a single devm_auxiliary_device_create() call.
* replace the "shift" field from "struct imx8mp_reset_map" with the usage of
  ffs()
* shorten commit description for patch 6
* cast "id->driver_data" to "void *" instead of the previous
  "const struct imx8mp_reset_info *", which makes the line shorter.
* open question resulting from Peng Fan's comment on V2: how to access
  interconnect QoS registers? do we need to model the sim_lpav as an
  interconnect provider as well or is it fine to have another interconnect
  provider that references the sim_lpav node and accesses its registers
  via regmap (dev_get_regmap(), specifically, NOT syscon).
* link to v2: https://lore.kernel.org/lkml/20251017112025.11997-1-laurentiumihalcea111@gmail.com/

Changes in v2:

* drop redundant description for "#clock-cells"/"#reset-cells" properties
  from binding
* make "mux-controller" and "#reset-cells" properties mandatory
* add "mux-controller" child to binding example node
* drop the compatiblity with syscon - this was never actually needed and
  it was done to allow using "mmio-mux", which requires a syscon parent
* modify the auxiliary reset driver to use regmap - this will allow the
  mux controller, clock control and reset control APIs to use the same
  spinlock.
* rename "imx8ulp-reset-sim-lpav.h" to "fsl,imx8ulp-sim-lpav.h"
* drop the "IMX8ULP_CLK_SIM_LPAV_END" macro, which doesn't belong to the
  binding headers
* fix the values of "IMX8MP_AUDIOMIX_EARC_RESET_MASK" and
  "IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK", which were previously incorrect
* drop redundant macros from auxiliary reset driver - replace their
  occurrences with their values
* squash the binding-related macro additions into the binding patch
* add mux-controller child node to the sim_lpav node
* make the "gates" array static
* link to v1: https://lore.kernel.org/lkml/20250804155407.285353-1-laurentiumihalcea111@gmail.com/
---

Laurentiu Mihalcea (8):
  reset: imx8mp-audiomix: Fix bad mask values
  dt-bindings: clock: document 8ULP's SIM LPAV
  clk: imx: add driver for imx8ulp's sim lpav
  reset: imx8mp-audiomix: Drop unneeded macros
  reset: imx8mp-audiomix: Switch to using regmap API
  reset: imx8mp-audiomix: Extend the driver usage
  reset: imx8mp-audiomix: Support i.MX8ULP SIM LPAV
  arm64: dts: imx8ulp: add sim lpav node

 .../bindings/clock/fsl,imx8ulp-sim-lpav.yaml  |  72 ++++++++
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi    |  17 ++
 drivers/clk/imx/Kconfig                       |   1 +
 drivers/clk/imx/Makefile                      |   1 +
 drivers/clk/imx/clk-imx8ulp-sim-lpav.c        | 156 ++++++++++++++++
 drivers/reset/reset-imx8mp-audiomix.c         | 166 +++++++++++++-----
 include/dt-bindings/clock/imx8ulp-clock.h     |   5 +
 .../dt-bindings/reset/fsl,imx8ulp-sim-lpav.h  |  16 ++
 8 files changed, 390 insertions(+), 44 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/fsl,imx8ulp-sim-lpav.yaml
 create mode 100644 drivers/clk/imx/clk-imx8ulp-sim-lpav.c
 create mode 100644 include/dt-bindings/reset/fsl,imx8ulp-sim-lpav.h

-- 
2.43.0


