Return-Path: <devicetree+bounces-223078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C29BB0B94
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:35:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A57823AEF33
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:35:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8E51D5CC6;
	Wed,  1 Oct 2025 14:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EH+ZNFH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC81425784A
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329317; cv=none; b=EjuFe5GOJXEBfotp35XsXGPQ/ceqEqgDPLQEjJmf7m3OFvH7sQQ0mOqW6iBSIMWOC+sL/tIVGjwYyX1c+KzfvyW+l0Qw++zpxAA+ciQje09kvS5ygBnz8lq8vsrFBUISJ4ksrkFLK7/9YTX+az1oUQy8yM/bhJPk4uGMeAEC7/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329317; c=relaxed/simple;
	bh=Ho6sQr+t8WVdgRQqoCiFPU4adZn9lrXFkwd2+H3u0zw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UpZhLJDsqdC8mW1z5CcqcSgS77wzkDRGGgPYDtdRiimcYSMg5BGsxFtCjFpLsS6z9J+7eU3MyKvAbZ9wLxZdl+1aruv0lLcr/6vdKfZcsui/VlrBZdzVgXNsZrWTY4qQ7DQO0FDltoF/qo2Badsm7cMH5PMvHAzdKcIqSL6OPHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EH+ZNFH7; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b403bb7843eso659404866b.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759329314; x=1759934114; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0EkYS8l4tZkm6W9/Nj27McxA93BOVMFO62Xo7My4YRY=;
        b=EH+ZNFH7d8r0/t9lAi/0MmOMMHiZE0fxAO5IhwHVKB4s6DqNKdSfOhrR3NY9R2/f1p
         haL5a7tcwzCfl0cGh3zIrNOP+EH9GbISFsqwiFjZ3Hfo5UXDoTPD/ln7gmsIAGM7bS/n
         BkSOopAkHkrpR5ixXrG9T5aFjPxNdMuefVLk3TSitlNtny96JzITr5h18EPpKJaEMkoc
         AUqp2WxKABjNEFGLvlh3tvWA6dka295k1Y4k/cpsqvN3m9E9PgoLg+ot2gF6UhS2BjVQ
         +uJipU5BTFtz/a4F4AbqNPiVfgdMmH+CaXn90Cv8pq6mk/218hXaBcQn6DG3r3oeeUsf
         j8/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759329314; x=1759934114;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0EkYS8l4tZkm6W9/Nj27McxA93BOVMFO62Xo7My4YRY=;
        b=VyJrKQBHpItVcYyPJOzLJCUh3sO6pSYC4eVcdG8YGGT2Y0VeMo0K0mo2WpkYPssZN+
         2ZNJ/RuOESJUzNz/vI2xBlvRZ0bOG/azLhJAyD9oINviCxp7px0fhYER1dOk7uYVUjCn
         E9pZH9ohOJnMgMgxVyNpuHkGQKwfBfesrEldRsr5ioKFU7CTlSZDzjPmZUtsJx+dHIYf
         S/gkUnXVcsgakZqmI820dfuom0xCz+vnAmkbh6BgrCkkRld7LUpWSTBdfDh4uHxJxZJN
         MuzB5Vf7rYHnmPDfcqginFIZalhRt8WdKIIn4TdXNAPcVb95aVRfVwHbLrIUhRxThE5v
         f/zg==
X-Forwarded-Encrypted: i=1; AJvYcCUCBzILP//GQkqeTYbLEVP5enQLwTqtngwhBHzmNkN2QzN05TC2owgh9E1ojGrWAwHKQ05qTddJ6q0B@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7PI1prKSsUH9GcIgSV2hCXMuAMB45ObZMETtfs8Ui3Roei5JE
	1pkqV/fnpoFyQCeSWd0BplXCR/CF+f5vWho85fQ/zdMpqwGsu9oQGD1rodfKtN7oVJo=
X-Gm-Gg: ASbGncumpzFH0LD3oeJOBNGSDuVw7v9AZH6D7R/KFyMVampj65LkSlOmChPwGTvjT8V
	bE7jP3crTEGgLh5VOnMKA4aMTcXXvkrx2a3NgNj2qmlDqJ87nTSj8R+mpgDjl1jOYx3kDeOJn+S
	HwgjOEA2mKDHvCJPtZWb7nSNJwiRFAXDGyFcUIij9iebBhMq7N2GKJK/LLEDSfAluTIFIrFe1q2
	YWDiLnMmGpe0pWnoDgyqW0ZHd5T8X7VZX8Bg6z2688b6kUE16AqRENiYue4+ZH3gg3GDcXO2G9b
	i5FN3+zhovyJx6R7YxaHJSgyKEIpnMmAqctLx9Dq6gU8pXVu5rNiVis7VQQA5T+5NVd27I7Jooc
	ZGx2iPx1FrkjtxL7Aj1hFY7RRn9WhQ9RfMs+zYFLbzr2v
X-Google-Smtp-Source: AGHT+IGPh0b6Cxm9sqYuxgclNTvK/JU3pH3+2c3TM2Y+STgHfKskfPDypTfSJTByubYN08YN8dsoMw==
X-Received: by 2002:a17:906:6a13:b0:b45:8370:ef10 with SMTP id a640c23a62f3a-b46e516a451mr409478866b.22.1759329313733;
        Wed, 01 Oct 2025 07:35:13 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-634ce748d4dsm8879008a12.29.2025.10.01.07.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:35:13 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Subject: [PATCH v3 0/6] arm64: dts: ti: k3-am62: Add wakeup-sources for low
 power modes
Date: Wed, 01 Oct 2025 16:34:12 +0200
Message-Id: <20251001-topic-am62-dt-partialio-v6-15-v3-0-7095fe263ece@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOQ73WgC/4WPy26DMBBFfwV53an8ABJY9T+qLgZ7aKwGTGzjJ
 or497qmUqtusrwz0rnn3lkgbymwvrozT8kG6+Yc1FPF9AnndwJrcmaSy4bXooHoFqsBp1aCibC
 gjxbP1kFqIX+VPBgjxlEcDLLMWDyN9lr4r2979nRZc03cj2zAQKDdNNnYVzNdI5SqTnbsr0Nf5
 XMtOO9+DCaNM3ziB60LBLd6TUVBwlEL03adEoM59klw9t17siE6fyszkyjF+yIpHixKAji0moz
 iiKMxw8uAt7MdPD1n6wJP8hd4zAYPgDIDZaMaqdoaOep/wG3bvgAh1gyOlgEAAA==
X-Change-ID: 20250415-topic-am62-dt-partialio-v6-15-327dd1ff17da
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5279; i=msp@baylibre.com;
 h=from:subject:message-id; bh=Ho6sQr+t8WVdgRQqoCiFPU4adZn9lrXFkwd2+H3u0zw=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoy71m8OTrv80LStu2riQ1X3S6nrP2+1PXE94Uzft2wf3
 0LF5T/9OkpZGMS4GGTFFFk6E0PT/svvPJa8aNlmmDmsTCBDGLg4BWAik/4yMlxikvPb3ecQrrxC
 ceXWi/5hppkyvx68XPVSsbZG+9ijLZ8ZGSaoxC07GO7tY7P68e5GCY9Ie8HEqyfrhacfWnhRQGn
 jNAYA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Hi,

This series adds devicetree changes needed for Partial-IO support on TI
am62, am62a, and am62p SoCs. It defines system states for various low
power modes and configures the wakeup-sources for devices in the CANUART
group. Depending on the SoC and board details, some low power modes may
not be available, so the wakeup-sources are described in the board
files. The series also adds the necessary pinctrl settings required for
proper wakeup functionality.

Partial-IO Overview
------------------
Partial-IO is a low power system state in which nearly everything is
turned off except the pins of the CANUART group (mcu_mcan0, mcu_mcan1,
wkup_uart0 and mcu_uart0). These devices can trigger a wakeup of the
system on pin activity. Note that this does not resume the system as the
DDR is off as well. So this state can be considered a power-off state
with wakeup capabilities.

A documentation can also be found in section 6.2.4 in the TRM:
  https://www.ti.com/lit/pdf/spruiv7

Implementation Details
----------------------
The complete Partial-IO feature requires three coordinated series, each
handling a different aspect of the implementation:

1. m_can driver series: Implements device-specific wakeup functionality
   for m_can devices, allowing them to be set as wakeup sources.
    https://gitlab.baylibre.com/msp8/linux/-/tree/topic/mcan-wakeup-source/v6.17?ref_type=heads
    https://lore.kernel.org/r/20250812-topic-mcan-wakeup-source-v6-12-v8-0-6972a810d63b@baylibre.com

2. This series (devicetree): Defines system states and wakeup sources in
   the devicetree for am62, am62a and am62p.

3. TI-SCI firmware series: Implements the firmware interface to enter
   Partial-IO mode when appropriate wakeup sources are enabled.
    https://gitlab.baylibre.com/msp8/linux/-/tree/topic/tisci-partialio/v6.17?ref_type=heads

Devicetree Bindings
-------------------
This series depends on the dt-schema pull request that adds bindings for
system-idle-states and updates the binding for wakeup-source:
  https://github.com/devicetree-org/dt-schema/pull/150

This is merged now in upstream dt-schema. These new bindings allow us to
define the system states and reference them from device wakeup-source
properties.

Testing
-------
A test branch is available here that includes all patches required to
test Partial-IO:

https://gitlab.baylibre.com/msp8/linux/-/tree/integration/am62-partialio/v6.17?ref_type=heads

After enabling Wake-on-LAN the system can be powered off and will enter
the Partial-IO state in which it can be woken up by activity on the
specific pins:
    ethtool -s can0 wol p
    ethtool -s can1 wol p
    poweroff

I tested these patches on am62-lp-sk.

Best,
Markus

Previous versions
-----------------
 - Link to v2: https://lore.kernel.org/r/20250812-topic-am62-dt-partialio-v6-15-v2-0-25352364a0ac@baylibre.com
 - Link to v1: https://lore.kernel.org/r/20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com
 - As part of the series "firmware: ti_sci: Partial-IO support"
   https://lore.kernel.org/r/20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com

Changes in v3:
 - Drop patch to add WKUP_EN and rebase to linux-next to base on the
   patch that accepted which adds PIN_WKUP_EN instead
   https://lore.kernel.org/all/20250909044108.2541534-1-a-kaur@ti.com/
 - Fix small typos in the commit messages
 - Use AM62AX_MCU_IOPAD for am62a and AM62PX_MCU_IOPAD for am62p

Changes in v2:
 - Combine k3-am62a7-sk.dts devicetree nodes with existing ones
 - Combine k3-am62p5-sk.dts devicetree nodes with existing ones
 - Update the idle-state-name properties to the new names from the
   dt-schema
 - Rebase to 6.17-rc1

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
Markus Schneider-Pargmann (TI.com) (6):
      arm64: dts: ti: k3-am62: Define possible system states
      arm64: dts: ti: k3-am62a: Define possible system states
      arm64: dts: ti: k3-am62p: Define possible system states
      arm64: dts: ti: k3-am62-lp-sk: Set wakeup-source system-states
      arm64: dts: ti: k3-am62a7-sk: Set wakeup-source system-states
      arm64: dts: ti: k3-am62p5-sk: Set wakeup-source system-states

 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 60 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62.dtsi      | 22 ++++++++++
 arch/arm64/boot/dts/ti/k3-am62a.dtsi     | 27 ++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts  | 71 ++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62p.dtsi     | 27 ++++++++++++
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts  | 71 ++++++++++++++++++++++++++++++++
 6 files changed, 278 insertions(+)
---
base-commit: 24c4d4041c2ec11c47baf6ea54f9379cf88809fc
change-id: 20250415-topic-am62-dt-partialio-v6-15-327dd1ff17da
prerequisite-change-id: 20241009-topic-mcan-wakeup-source-v6-12-8c1d69931bd8:v10
prerequisite-patch-id: 40ff771d13dccae91c04ab120aa1b5e406b66e47
prerequisite-patch-id: 830b339ea452edd750b04f719da91e721be630cb
prerequisite-patch-id: 2c9142d2bc47e64c49b7b8a7ca20a62a0be14870
prerequisite-patch-id: aa64f7e9fcc3fcbb3cb871a05a07f398f3aa8231

Best regards,
-- 
Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>


