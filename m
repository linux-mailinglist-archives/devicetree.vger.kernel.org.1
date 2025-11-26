Return-Path: <devicetree+bounces-242386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 515E1C89CEE
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:43:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 91B6A34FD43
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0530332692E;
	Wed, 26 Nov 2025 12:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FNwI+wCe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E0FEED8
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764160981; cv=none; b=hLr2QEdNN5wMh/6dUTp5IVeE110MNr8uXFd+I5SuWUTHasw3BQ+0W4DFtfeg/K/R9Ug5WWNlRf3ZqBZufyZPNk7iKZg3hqZI0/aUeLcIb9RiXTqXMq+BywOAHoZJsPJovxGNn/G+m9ng6i8qWGy0DLbNO/HeKLv6ml2SEVAs/RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764160981; c=relaxed/simple;
	bh=QMVHQHi0Zrm4GrHMGPBW2tQL6A/vxzVLomF+KFQ+vyI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OVbwnOxqKHzs7ozA9LCQDKviuOfRK8utPkApsXkvLWhAlLNBbrzS3UJuGMXdOA6rqgO2LE8e/aYRk/qR382Cqe06I21s/iOO2NDvbGFDj6LgGZTwTlNTiLzPpnmGvRB5WJn8YNchJ+1tQzABFFpJVA2WSjzTEcvY8vnP8DIJxh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FNwI+wCe; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-640ca678745so11302146a12.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 04:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764160978; x=1764765778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wyKInZW9vOOeMqe71nBxJ7HXJ/bNznUlqhwyoDm1B3s=;
        b=FNwI+wCeoMDIe3qiJy5pas6Z4WPheP43FuM0Uam28eSUA355g7g/EYnOJijKJdRkuT
         9Jb1DnCWrGgjU7PJQJqaQdKWo6pTeWZlagiSfAwSm9THTJ9HJoaN+0Hj+l9EG4ksDCrh
         H10EMI7rlkI/jz2ZTjh8w0NDDlj4t5ZgtexwUnNueMWTtSFoLOldndEgtMgIAoac2Zjc
         buOMVgibrHFnIc6IoT/PRlQm8nS7+Ygg3IOtfC7o63FL+IuuoDhc2y4ALwbbo4mymvod
         AEixE+Cd2n+n9HhpnXFbPwWIJHR53gOYtyZeJUHnXiyXiM+3nQ7x3zK9K6BqoEegf9ed
         qT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764160978; x=1764765778;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyKInZW9vOOeMqe71nBxJ7HXJ/bNznUlqhwyoDm1B3s=;
        b=T7vTNo4ATYUUoMRil+HeOznx82klXBcwTiZWy/50c5Pwt9Xo0XLik8y80Y2Wc1kUkm
         4TeYBjJDNjeT3CQwLrsH+ppRsYkLnpx/cn4ZJBRE47SSgHs9nsvOkgG06i0FyobL2LVk
         9lnOKDC5pXlLLqi6GvlZ/quu6RrFa72jysA4m6EDUXIWW478bGPB2Tflc5Bb/aEZbemg
         i6zzRMSeCuZhwO2lt4Ez3wsv5rlnjKxb1ycp4GnVqTyVNtBBVv4h7Hk94HAxeSIrKfnm
         VqXj7vix1x4ygp+cwHEDOqDzid08iJUHKgum2I0+11PrvN00qSlnD98oqAx4aovrfEXk
         qJpw==
X-Gm-Message-State: AOJu0YzDDVFNFPihRkORQ3YBOi5hoW8aYzx8rLa7MMDCrYbVgq7yNFnE
	9RHhgLXIpQf5AK+i4rpXINdntyMhySINNGH7uakPt1h4ebvMBz2F3Dur
X-Gm-Gg: ASbGnctIVhKBln52LJJx6e80owgTrH1zWDCcb0atKu6MkQd+1Z2KQ9VKI4WUJgZ4QYL
	bZ2J+x+cy6FHO8ZagCBdFX7TESqJpieFYM7i0H1WIgno68Br7CxGk+UJYUSmiJBYxYgTVmQf3WT
	+fH+Bz4Nc1ENWoKMbuiW4C9e1Z0TlzcoOHjMAoluHBzrjxnjJqoNLvO8slELKamKDd0+H0Kydw3
	GrQbnLHVJ6PRL6Eq+O/L1DJ7xvZ1jCOfFaQ6uXcpQ/Z/4fSirWgtCayl9pNOlVEtnLb36mtyQ33
	cL/KPsgS0ThnZ3HzhmHmTL95xx/oSKAKNPCM9060TsBTFfUxySmHOX8fIv+3Gp1JHr3UEdew4db
	x/0y/f+y6+s3yrYut5yukdeJwaqQEGAiY6+8tuLdHdAYsf2OFYQNVgolPo8VSdM7AegTbaMkj43
	euRLm9On19dvUWOp6iHULfDumVDN2GHzNQOHmL
X-Google-Smtp-Source: AGHT+IElqG7jPteIbIhzrUyHVFQTvghK+ylGI6dlqjj76G/QOs8gr0LlFJkvAARUAUVCGYrcNiuMVQ==
X-Received: by 2002:a05:6402:2787:b0:641:2a61:7da2 with SMTP id 4fb4d7f45d1cf-64555be1db0mr17215942a12.17.1764160978101;
        Wed, 26 Nov 2025 04:42:58 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64536459d92sm17654824a12.31.2025.11.26.04.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 04:42:57 -0800 (PST)
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
Subject: [PATCH v6 0/5] Add support for i.MX8ULP's SIM LPAV
Date: Wed, 26 Nov 2025 04:42:13 -0800
Message-ID: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
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
Changes in v6:

* store a "const struct imx8mp_reset_map" pointer instead of
  a "const struct imx8mp_reset_info" pointer in
  "struct imx8mp_audiomix_reset"
* switch back to the mask-based approach
* link to v5: https://lore.kernel.org/lkml/20251114133738.1762-1-laurentiumihalcea111@gmail.com/

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

Laurentiu Mihalcea (5):
  reset: imx8mp-audiomix: Drop unneeded macros
  reset: imx8mp-audiomix: Switch to using regmap API
  reset: imx8mp-audiomix: Extend the driver usage
  reset: imx8mp-audiomix: Support i.MX8ULP SIM LPAV
  arm64: dts: imx8ulp: add sim lpav node

 arch/arm64/boot/dts/freescale/imx8ulp.dtsi |  17 +++
 drivers/reset/reset-imx8mp-audiomix.c      | 169 +++++++++++++++------
 2 files changed, 142 insertions(+), 44 deletions(-)

-- 
2.43.0


