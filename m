Return-Path: <devicetree+bounces-248766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EDCCD5971
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46367303896B
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5AC3148AE;
	Mon, 22 Dec 2025 10:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qPzJNhDB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505AA313E1B
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398948; cv=none; b=bVVLAAHYlGf2FEpe1jXvgGtO3zVvzlB6nOqc30yd4c640uTU54eAHxcsjt5r58juotHoBTdf/k5fzm16zvWeJ124VTu8vwrmgLP188Yj1iO127nWMZkc5p31gyjwQpT9VyU7MhlTyljmw/SVbGpna6qamt318GpqF/UIL23w/Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398948; c=relaxed/simple;
	bh=pnrtE374durfYWYGWJuhCa4akX05g7TvuOetRABij0A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bq8tH0nPnolaIaSVJNrAiYa17nJk3k96Wiwplo8aT4TeI6UleL3oDeAkNFgbEOBk25sJl86DOm42tT7eDYFBmUjaxE1Lzyr14sNJ3S6VDUiHgXXSXMzTlE59ik4ozLhxybAmfO61H9sxSTXEy21XnLLlJpNfEnDCzbuos2YUncg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qPzJNhDB; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42e2ba54a6fso1648717f8f.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766398944; x=1767003744; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F7te/mdfDITkzd5bHNxgqCwsPTiQMmaX37BqCKR4E/w=;
        b=qPzJNhDBxYqRchq1818tfnj/dQU1uaA0W2CMv4xIh3DzLgLihUt3rrU54DLWzahT4U
         yw676GGaferKzy9h6rXEYZd8nh6Zsp6LoZ5tEkZAqgSfR76fSkuokm2dO6ja4Yn18iqF
         Jq1nz696rGYJgXA3RAHIVfHGut8B8PD8RpV0hsipQQZ7GL4QK8ks8As9zmu0/u88/hir
         BOcZelhAVXdmsQ0Sy0Y6VFmba/yMk9AoaDhmcVNQwGEcEkhFOuqQ+2mJdaw5l7b1XGPA
         CSgM7axqmPS054XXRteAxMjyXrqhqR5QOp2PAU3T2hiflNsutOx9eu6x747ghjD2KWCv
         LbYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398944; x=1767003744;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F7te/mdfDITkzd5bHNxgqCwsPTiQMmaX37BqCKR4E/w=;
        b=A6ncp0WiFow37p6Bhrv5VZlaZ73EI6Ej31TvS5IxAUsolGKDpqLEq3i0Y6FkwWz3iB
         m+JeB5W3Gb5BWKKyR5yC57oD228lxhHh4aJt378oy0Jpq7xuJSIf0X3fh7oJEf0DhcNa
         tcXctmwFP9oUYSIZ1LX9nT5PhbLBS59AqD6my6XyvVH4+BuxbpCfX3fKSoz1kak7r8Dd
         9X1+AolcTbY0oBwTlG4BJqxZFoBuvIpDys0r925LXaK4RJjZKUAMXZVC2sK1Pn8qbzx8
         JXtvPhL9sJ3L9Se++2871V5doUb7JBcCS5q21riAF4P+wAFD/xrLlDXuIsCvasui3hGg
         UKZw==
X-Forwarded-Encrypted: i=1; AJvYcCUbGT0HR/q+VPjDOb9vzL9+UBndJzsmWE6I+kMmBlBq4MoWgi4bYm7x1fAWcCMp4LpcLbuUIpVbEirk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8b+1+8GzotBiQiWK8tvnfG/uYJQmuALp8UxoOf3ny7DKW1ezn
	PwWmMTu6tXmcm+djuPfkP6eaQ6uHiveKfDrURLbX7eT5vMhmXppNUqITPrI/6dgzUJ0=
X-Gm-Gg: AY/fxX7NHSWlPWykC62Sc2xFAaqs+rGqHNE8v3NXvsFTJdDvHMjCqkKh93sDZIN+beL
	dv0CAMvIcLR4GLYCHgzT9maTtgwjr0Ws996pKV+KaO+vsJQqcUhbXsxu8oXRqpk184K92X1Oqjq
	WtvTkOsiVeXPToY5nLCgpQS8Ck8MdhfpYR/B9g3jUBcFlugQOnjiUXBhauoUA6hP0ZYWN/XO1Jc
	CoND+b0IABcAtxR8R6Le758zk+33XPaWh8bY0BP1gBGKR70Aidiq9t1H+yC0Qiw1AI9d6Wdesz4
	lio91ucFi4lp+XOU9bsNKTJvY7dE3/j8IY7v6c6+4ce656U79RBc+AdO0RgmC7ilExymqCccMK4
	itSYG/8YSM4i7QSGj3W2RWP/SQlDFWyElgUSZcg0SPsFt2qyA3h1ZJaMYnZqM9tCau0pp5twclU
	eDB9zdWDJlNY3ZC5VCmm0IWhehs0qa5CXzjHI+MO4=
X-Google-Smtp-Source: AGHT+IFYKW7hkHs+q1hwkrDYxKVTdEJ1enXg6f/ErtqKpyVndEVkh+q2ODFn6SiOENNuKCfUVmQiIw==
X-Received: by 2002:a05:6000:2dc7:b0:431:266:d13a with SMTP id ffacd0b85a97d-4324e50a238mr11551035f8f.48.1766398944429;
        Mon, 22 Dec 2025 02:22:24 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([150.228.9.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea82feasm21082813f8f.24.2025.12.22.02.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:22:23 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v7 0/4] Implement hardware automatic clock gating (HWACG)
 for gs101
Date: Mon, 22 Dec 2025 10:22:11 +0000
Message-Id: <20251222-automatic-clocks-v7-0-fec86fa89874@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANMbSWkC/23OwW6DMAwG4Fepcl4mxyEh9LT3mHoIwW6jdWQKD
 HWqePeFalKZ4Phb/j/7LgbKkQZxPNxFpikOMfUl1C8HES6+P5OMXckCAY0CcNJ/j+nTjzHIcE3
 hY5BYNb61wBYDiVL7ysTx9iDfTyVf4jCm/PO4MKll+ocpvcUmJUHW6IwiAtAAb9fY+5xeUz6LR
 ZtwJWCzI2AR2FHXaY+dw3Yj6KdQiB1BLwIrIM9kVXAboVoJCnaEqgiOK9tgwwbaeiOYtVDtCKY
 IxG1TVphDtxXsU0Dc+8EWQduAjLX1Spt/wjzPv+WOisn7AQAA
X-Change-ID: 20251008-automatic-clocks-249ab60f62ce
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=9101;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=pnrtE374durfYWYGWJuhCa4akX05g7TvuOetRABij0A=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpSRvYGroqAvPDBBybxubEfLKyunoje23Utldl8
 mxcQKkS0NyJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaUkb2AAKCRDO6LjWAjRy
 upmYD/9TWoBe3O615A2vunn8KNgQ9e9kV3ZgkhsDjNd3mhyoo1VVuWbMJ/h+G0ZaDVtZA6bEmjd
 WclkgDOC4Qt9CuNvyjFwFOWZ7C7ID7gDU7RaJRWLMTmnAPtoTlgCeSKkVhdlSAci0jBGosErY37
 H1b2oBmiux4kHRadomxvyWZSHVYNhCBwZnkGA9pjTmJelotdM7S44LZCZgd82J7JogfNJcbeHE8
 S7dY2DpdQWg6hhpzBsLCIlzYs+/TcA0qpfJjjkCf2UW/qOUnk+7AIiM3Y1T8x1edcr19+P3Il0C
 qgTv7c9aqYolipScejcThOmR0+gCZoCEeTcEorHzNAXjgx8mYUF7QadkQ3W1HWobmXeNO+mfFYt
 xvrStMGa+aBTnRQK9Edi24jQ1tS13R5h5dcsr++p/0iDXhq0+z6AEgQH5jOLKLE2hSsQAkxIFE1
 pgf3k9rgMbjrIn2/Xt+t3igMM9qTML0URMCKSX4CT5eVfpjg0zVkkbIemQ2DaeJuWfb64nKfVUD
 qYTsDotZBI+dgtogpeWVg9JcO8k0th48oSVpdPEcVpW4x0MTIekI3sicvp/txZ/rImvhLsOazOt
 R/pdvruQQJKcEa1T23AjHA0gDgMQz7d75Qi7gXfJxL2MEh7DQLryYIQwFYExDbK+znNrmdXRk0o
 6KrTUIAiKYlMAgw==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Hi folks,

This series addresses an issue with Samsung Exynos based upstream clock driver
whereby the upstream clock driver sets all the clock gates into "manual mode"
(which uses a bit that is documented as reserved in the gate registers).

Another issue with the current "manual clock gating" approach upstream is
there are many bus/interconnect clocks whose relationships to the IPs
are not well documented or defined in the specs. When adding a new CMU until
now we have tried to label these clocks appropriately with CLK_IS_CRITICAL and
CLK_IGNORE_UNUSED but doing so is both error prone and time consuming. If
your lucky disabling a critical bus clock causes an immediate hang. Other
clocks however aren't so obvious and show up through random instability
some period of time later.

Fortunately each CMU (at least on newer Exynos) provides a "hardware
automatic clock gating" HWACG feature that is used by the downstream
Samsung clock drivers. Hardware automatic clock gating uses a hardware
interface between the CMU and IP to control all clocks required by the
IP. This interface is called Q-channel, and is part of the Arm AMBA low
power interface specification [1].

The advantage of using this Qchannel hardware interface for
enabling/disabling the clocks is that it takes care of all clocks
(including bus/interconnect) ones for the IP automatically thereby reducing
the dynamic power.

Whilst each clock component (GATE, MUX, DIV, QCH etc) has a HWACG enable
bit there are also some "global enable override" bits for the entire CMU in
the CMU_CONTROLLER_OPTION register.

This series makes use of those "global enable" override bits to enable auto
clock mode for the entire CMU and every component within it. Through
experimentation we can see that setting the "manual mode" reserved gate bit
on a particular gate register overides the global enable bits. So the code
is updated accordingly not to do that.

Auto clock mode has been implemented as a "opt in" by setting a new
auto_clock_gate flag in the CMU static data. The intention is existing
platforms in manual mode should not be effected by any of these changes.

If auto_clock_mode flag is set and the option_offset field is specified
then the global enable override bits will be written for the
CMU (to avoid relying on any prior bootstage configuration). Again if auto
mode is enabled the code no longer sets MANUAL and clears HWACG bits on
each gate register.

To ensure compatibility with older DTs (that specified an incorrect CMU
size) the resource size is checked and the driver falls back to manual
clock gate mode in such cases. As the CLK_IGNORE_UNUSED and CLK_IS_CRITICAL
flags are required for manual clock gate mode, the patch removing these
flags has been dropped from v2. I tested with an old DT and we successfully
switch to manual clock gate mode and the system correctly boots.

To have dynamic root clock gating (drcg) of bus components and memclk
enabled, it is required to set the bus_component_drcg and memclk registers
in the correspondingly named sysreg controller. If auto clock mode is
enabled the clock driver will now attempt to get the sysreg syscon via the
samsung,sysreg property (as used by other Exynos drivers upstream) and set
the registers accordingly. The suspend/resume code paths are also updated
to handle saving/restoring registers using a regmap. Note cmu_top is an
exception and does not have a corresondingly named sysreg_top.

As all clock gates are currently exposed in the gs101 drivers and DT, we
continue to register all of these gates in auto clock mode, but with some new
samsung_auto_clk_gate_ops. As clk enable and clk disable are now handled by
Q-channel interface the .enable and .disable implementations are
no-ops. However by using some CMU qchannel debug registers we can report
the current clock status (enabled or disabled) of every clock gate in the
system. This has the nice effect of still being able to dump the entire
clock tree from /sys/kernel/debug/clk/clk_summary and see a live view of
every auto clock in the system.

With the infrastructure in place, all the CMUs registered in clk-gs101 are
now updated to enable auto clock mode. From dumping
/sys/kernel/debug/clk/clk_summary it is possible to see that after enabling
auto clock mode approximately 305 clocks are enabled, and 299 are now
disabled. This number goes up and down a bit by 3-5 clocks just on a idle
system sat at a console.

With auto clock mode enabled it is now also possible to boot without the
clk_ignore_unused kernel command line property for the first time!

For future CMUs in gs101 I propose we continue to expose all gates, but
register the CMU in "auto mode". For new device drivers or updates to
existing dt bindings related to clocks to support gs101 I suggest we only
use the "obviously correct" clock(s). By "obviously correct" I mean a clock
has the IP name in the clock register name, but not try to deduce other
obsucurely named bus/interconnect clocks which will now all be handled
automatically. Note it is still possible to test whether the "obviously
correct" clock is indeed correct by putting the individual gate in manual
mode and disabling the clock (e.g. by using devmem).

Note: As everything here will go via one of Krzysztof's trees I've sent it
as one series.

regards,

Peter

[1] https://documentation-service.arm.com/static/5f915e69f86e16515cdc3b3e?token=

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v7:
- Add Reviewed-by tags (Krzysztof)
- Link to v6: https://lore.kernel.org/r/20251220-automatic-clocks-v6-0-36c2f276a135@linaro.org

Changes in v6:
- Rebased onto next-20251219 (Krzysztof)
- NOTE: linux-next has a regression atm 
  24ec03cc5512 ("serial: core: Restore sysfs fwnode information") needs to be
  reverted for boot testing this series on Pixel 6.
- Link to v5: https://lore.kernel.org/r/20251114-automatic-clocks-v5-0-efb9202ffcd7@linaro.org

Changes in v5:
- Invert the test in dt-bindings: clock: google,gs101-clock (Andre)
- Link to v4: https://lore.kernel.org/r/20251110-automatic-clocks-v4-0-8f46929f50b7@linaro.org

Changes in v4:
- Update commit description with additional requested details (Krzysztof)
- Remove unnecessary header of_address.h (Peter)
- Link to v3: https://lore.kernel.org/r/20251102-automatic-clocks-v3-0-ff10eafe61c8@linaro.org

Changes in v3:
- Add missing 'np' func param to kerneldoc in samsung_cmu_register_clocks
(0-DAY CI )
- Link to v2: https://lore.kernel.org/r/20251029-automatic-clocks-v2-0-f8edd3a2d82b@linaro.org

Changes in v2:
- Rebased onto next-20251024
- Fallback to manual clock gate mode for old DTs with incorrect CMU reg
  size (added samsung_is_auto_capable(). Tested with old DT and it works as
  expected. It does require keeping all the CLK_IS_CRITICAL
  CLK_IGNORE_UNUSED flags in clk-gs101 so patch removing those is
  dropped. (Krzysztof)
- Rename OPT_UNKNOWN bit to OPT_EN_LAYER2_CTRL (Andre)
- Rename OPT_EN_MEM_PM_GATING to OPT_EN_MEM_PWR_GATING (Peter)
- Reverse Option bit definitions LSB -> MSB (Krzysztof)
- Update kerneldoc init_clk_regs comment (Andre)
- Fix space on various comments (Andre)
- Fix regmap typo on samsung_clk_save/restore calls (Andre)
- Include error code in pr_err message (Andre)
- Add macros for dcrg and memclk (Andre)
- Avoid confusing !IS_ERR_OR_NULL(ctx->sysreg) test (Krzysztof)
- Update kerneldoc to mention drcg_offset & memclk_offset are in sysreg
(Andre)
- Update bindings commit description as to why the sysreg is required
(Krzysztof)
- Link to v1: https://lore.kernel.org/r/20251013-automatic-clocks-v1-0-72851ee00300@linaro.org

---
Peter Griffin (4):
      dt-bindings: clock: google,gs101-clock: add samsung,sysreg property as required
      arm64: dts: exynos: gs101: add samsung,sysreg property to CMU nodes
      clk: samsung: Implement automatic clock gating mode for CMUs
      clk: samsung: gs101: Enable auto_clock_gate mode for each gs101 CMU

 .../bindings/clock/google,gs101-clock.yaml         |  19 +-
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |   6 +
 drivers/clk/samsung/clk-exynos-arm64.c             |  62 ++++++-
 drivers/clk/samsung/clk-exynos4.c                  |  12 +-
 drivers/clk/samsung/clk-exynos4412-isp.c           |   4 +-
 drivers/clk/samsung/clk-exynos5250.c               |   2 +-
 drivers/clk/samsung/clk-exynos5420.c               |   4 +-
 drivers/clk/samsung/clk-gs101.c                    |  55 ++++++
 drivers/clk/samsung/clk-s3c64xx.c                  |   4 +-
 drivers/clk/samsung/clk-s5pv210.c                  |   2 +-
 drivers/clk/samsung/clk.c                          | 200 +++++++++++++++++++--
 drivers/clk/samsung/clk.h                          |  55 +++++-
 12 files changed, 381 insertions(+), 44 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251008-automatic-clocks-249ab60f62ce

Best regards,
-- 
Peter Griffin <peter.griffin@linaro.org>


