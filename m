Return-Path: <devicetree+bounces-238697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1B9C5D67A
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2A9C135A8DD
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4714230B50A;
	Fri, 14 Nov 2025 13:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F4LlhnUj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686E3243951
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127495; cv=none; b=JivS3AaaGNiDyPtJ6xmz1MNS6Voh0bWYgS8Jqs+cDdQYYZOjlchFzkuS+YRgpfu3z1rlpwi1mt7bfD+cfc4BeR2GoEXmfyIF+XSCDf2PJ6oOWhjkFrA8DRJowD83JyyqiZw3tu2Qmg6EiTEw7sHV8/6hYFKYaT3NitZtTI8YVQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127495; c=relaxed/simple;
	bh=m50tmAKOVZaO3KVaIEd7VXOTi/ZVrWJh4kP+ruH1EnY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TwPL0sbI3QLBNIPO6xRP8ZinKJHejleZL0Y8X/L6n8qQJWHdWGDpjaMddfHqkLh+iQQ3ZZGV/q98THwKTfdGKvSQq6cozcPPV5jXYbxMJ08jajE8Y6IqmSHXJT/qEtWIu4LhV7bqIlSH16rfnjXcFYHRofLs+lW8IoAR00v9Mvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F4LlhnUj; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b714b1290aeso297988566b.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763127492; x=1763732292; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OboskOPEErKPwAQpls5bNzuQhdJX2qsytJypo11hl/k=;
        b=F4LlhnUjwt4Tc2r/bad5cNH8xSj2dnp+UUc0mfonQ4YmRX3T+VmozJirwizH10rLL6
         CDr2IP5IYUatms0F7GH5kRBHzV1HgvqtZR0kGUf5A/63fYhAjuyCa3PUDaDmi2zhMSVA
         aQrkTvKOw7RXKV7MUDf4iAVUVjIf6CZ6NKq/6JToIxbw0JZwsS5o8BbLJuV7svnpGvTF
         z9XWM026AM5h68jxgX2Qn3VWJ0OQJ2tzGGfhHTk6tAMvTNwK0Dq+5XaxUUFeavM1cJkR
         hcGLWcIJ5F1cQ4+mQ5MeYQTtvVzWGOQraafbBJ0RtTOoj9SsW1PRSQrQHnc74UW6s6tG
         UPIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127492; x=1763732292;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OboskOPEErKPwAQpls5bNzuQhdJX2qsytJypo11hl/k=;
        b=PKIVFZzVTmL5S23PPO0vfo6F9MMwNj3Djes4/Ie5JR8vmCOI7ULMBFtfMHSTek5Xf9
         xw0VAqM627bHBP+7uNcc3nJrLXZL2CAzAafO4rKlu5zBbsAxfz8juYh6M8aAtbAdHTW/
         wUJpkra/aVcMzwbTacEQs1w9m1+wRFyft943uOPDyYMFIjKPfafCNGPrAyV2lnqFFYxy
         u22Z+YZnXrGUTSYWWktdZ/xiYltfr/a6wdeBDZ6LZJI0NASV5jfENQubDywn370bHZVd
         /54V1CU/RcF364VoJRO64JCUxXmex1YXLB8x6nACuwVeRzevv6MKBm5nAt4KP0TjnfZ3
         a1+w==
X-Gm-Message-State: AOJu0Yysydp2lE0V5MvXilP1OL9ixo8haVSKzMyeJfFJQFL1SIOPddBd
	djBooVyMLCIRk5XPbexNcfpEGzbHiYNjWPAX+Aelu+o7hcNRkzise1pY
X-Gm-Gg: ASbGnctJY8H2Zf/jvLANlHXoVH+f2SovJc/p4k8zt1X8HtA8AfnwKx42q4WNIElf3PH
	hEDUbNHEVfG/RXHi9j+bTLbCU19HJpe/nfRPLsH+l/GvbnsVV9nHbUufucxOOMWbajGfdlZeg0l
	I9yoBGt5a9cOMQ+25LM3b5ZIY6kNgBNDPVKu0Xc2htt0/AyQktwFx0XS1SbNnkwTDW08Zn25DcD
	q22WL345U3IOhPpvErt3CiClE3OYbnRYWWRbctRTm9JD3LiUh7fCg0njBD4/blzNY2YIDPA0nYA
	z+1KQElCwQnkP3yZ7j6hmLjGlNQIwUMrGHWPmSJUVeRlevHDUZkcQtCqEbWeUMERSf280buq3Kv
	JNYscAuJUOIIP/laCSXit86F9dXjg6jPy+dHCSjbVS+wAaIAmfc+kFOh9mJxz0MkI/wBOx3O3rp
	SuVbMy/NxDcNf77A2y6ylobBPev0qwqjPhzqcGmn0zMRH9hAEK
X-Google-Smtp-Source: AGHT+IHlE5emn9yan7ANjC9v1EbG+iM1kGDrBeJiQfoNgY5bOTMIJhsyHpkBfuIpxhI2l/GF362j1w==
X-Received: by 2002:a17:907:d78b:b0:b73:2b08:ac70 with SMTP id a640c23a62f3a-b736793db12mr270335166b.49.1763127491149;
        Fri, 14 Nov 2025 05:38:11 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb2cfsm385330666b.71.2025.11.14.05.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:10 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v5 0/6] Add support for i.MX8ULP's SIM LPAV
Date: Fri, 14 Nov 2025 05:37:32 -0800
Message-ID: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
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
Changes in v5:

* drop patches that were already picked up by Philipp/Abel.
* include the "bits.h" header.
* replace mask with bit index.
* link to v4: https://lore.kernel.org/lkml/20251104120301.913-1-laurentiumihalcea111@gmail.com/

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

Laurentiu Mihalcea (6):
  reset: imx8mp-audiomix: Drop unneeded macros
  reset: imx8mp-audiomix: Replace mask with bit index
  reset: imx8mp-audiomix: Switch to using regmap API
  reset: imx8mp-audiomix: Extend the driver usage
  reset: imx8mp-audiomix: Support i.MX8ULP SIM LPAV
  arm64: dts: imx8ulp: add sim lpav node

 arch/arm64/boot/dts/freescale/imx8ulp.dtsi |  17 +++
 drivers/reset/reset-imx8mp-audiomix.c      | 170 +++++++++++++++------
 2 files changed, 141 insertions(+), 46 deletions(-)

-- 
2.43.0


