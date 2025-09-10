Return-Path: <devicetree+bounces-215478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D78E6B518B5
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:03:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F13FC544DE6
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48D81321456;
	Wed, 10 Sep 2025 14:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kmpxgqBH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152AA1A9B24
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 14:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757513006; cv=none; b=kip39yWsuVVluMuOOGEcm4A/RSr3Vf4kXwAFiHVNchdXCFGJNFlGPWcxVPJkZ7PAQqSfgPfKO0xB9Tppvx23qMGj2zSFjIE+bTsmScUMSIJn3xYLM8WHH6i0B6dxdMKWl9Ji8vsxhO4SqAm2Jj/792vUs/Apv/b477J3qEj3fV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757513006; c=relaxed/simple;
	bh=bkOLg6sU0cbhQ8aHH0xBG1hHRPU5en5Zb65eLTbEGIg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hOnJ5OZNlnioHibxvlprq9JEw5RGNdee8C66KRh15MfI1V78gfzSdxy8l+YH44VMl7UAuR1BVOUYIhTfuRl9BEP1/l8IsCtXZAgjMlhUtYFVIcrJAvglSWpOwq8Jg/sToRb/18PfQHlToFEFqpZIAo2TpgLSs/6pO+HIAEomB14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kmpxgqBH; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-45df7ca2955so3831245e9.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 07:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513001; x=1758117801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DbTOWESRRpco/BxdQ0FliK6Tqds7LEkocBrRgGw5FVE=;
        b=kmpxgqBHR9br3wXyBWndOgINWdTFJBHv37iFlyKhLrYUl6f5grYf/1u8wzqjw3/QFe
         tyY6TKyvdbaDThmxojFKL5jo1T6zhho11wrAGNzTVPQOBoBqCOTQOIQd4gUZtmSRcaMp
         LKUcH5ZjHQGZ5TKszHHTTxJS2wsgRfZvltxwGoM5n6LO3KEBhY80VxksMB+PJRKKUW2Q
         77HjoNZMbJnDNjXOLrm/TjiZ+E2+lzb7PqCRoydzPryWnrqCQbxgvdKWiU1w4GykyAVH
         keSuWTBJRTtM1Ik/WW0hC4vMHOetnEMCQCL9OrXf0QPm3shUc0nswziTrrIZR/m3WX9F
         qd1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513001; x=1758117801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DbTOWESRRpco/BxdQ0FliK6Tqds7LEkocBrRgGw5FVE=;
        b=U6rLiI1NBIXM5m5JOYq0z0NqIfsYgZhVR9UH5GqWbHoDxGo06lclYDMGOCgf5i0PhA
         dYPxmfZWGcrWNxzFLPIBP7C3ZcW4gzD7b6Zt0KRQ1P6Ls5MQ7FTI5q29+w4R4jStto9v
         zBhA+vPLdC/YBgW+bLsDpBgom6e09TVADbbSSJCHCw/2iAf+UafHfMuehmdnNkHKuvjO
         Oz5+5RN1yRRxFP73CpdWRDO6ucKLNT/7NIPu0KqRKxhzjeEWVw8FYfdOAqTcO1AszvQ9
         aTQ2D/Q0S+Mqx9EwdroD1ZzVvsxzT4FwqLYMKk0qwK/1hPwQmNET5IOdG78P5KyTbwZD
         9i7A==
X-Forwarded-Encrypted: i=1; AJvYcCUTrqxYYb0bD+cDeo1onLgAZGDWhx8rwSXu8WxYNdTaRQHIRvLw5PqfnAMGwz2FwyPgbQXMOrUKegdp@vger.kernel.org
X-Gm-Message-State: AOJu0YxlqhePcC/VG5afRPOoH4FfH3a/+IIO6OOlpJY9DDXxb746M+WF
	ndYNfJPqzXWsDClYbpbLYWBG2GR4I7DsBuNKqy7KSOgiB7CPfjH3ybP7rJDbDhDeG44=
X-Gm-Gg: ASbGncvUJQi6pdDtHZNeaZfG0orj36g7BsGcZv8YveRVPaDjGeykNgRVdx9MfXae7n5
	ytP86mHMoSEn2mpNJRsPO07q6t98G0+qAQD9w2mYPi/L1VYEiOSVOux6kObWfKYCCXyt90QbeiC
	hBx7Seg95TjqYMJKuEX07h8EUqjEPQSQ/qFiaXO+XV+9PZtm3djRpbZCpcShHAD56WSUvsuRaSK
	fUxSfVIbN/GMheBXyhRjQJerLtgN2a8zNtVAzssdeLQoQT/HjkhubIY5W4uTvsJj3uEL5262QVw
	ZVDVl7Ci2c9y+VMeivLlWSQy7Pjo0d2dJ+gj2XB3T09PIjeM8I/VQ+479+TYnWsHCipQZv0tnTJ
	LYooggWlRNyKIrcHUXU4xh8oRuWA+m+YoJ+8mN3sfyEo268LAiX1eKX2YMSe9Duo=
X-Google-Smtp-Source: AGHT+IGuF+FDB3N+KxNhyRgVF0zOktAvW4ZTC8ERXxE25hSAPYgp2IT3Lu+ea9Abo6ayahalDLrvNA==
X-Received: by 2002:a05:600c:4e13:b0:45b:79fd:cb3d with SMTP id 5b1f17b1804b1-45de19f4ea7mr145195715e9.36.1757513001239;
        Wed, 10 Sep 2025 07:03:21 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:20 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v6 0/7] Add initial USB support for the Renesas RZ/G3S SoC
Date: Wed, 10 Sep 2025 17:02:58 +0300
Message-ID: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds initial USB support for the Renesas RZ/G3S SoC.

Series is split as follows:
- patches 1-2/7		- fixes on bindings and driver for USB PHY
- patches 3-5/7		- updates the rzg2l-usbphy-ctrl driver and documentation
			  with support for setting PWRRDY though SYSC
- patches 6-7/7		- add device tree support

Merge strategy, if any:
- patches 1-2/7 can go through the PHY tree
- patches 3-5/7 can go through the reset tree
- patches 6-7/7 can go through Renesas tree

Thank you,
Claudiu Beznea

Changes in v6:
- in patch 2/7 dropped the struct rcar_gen3_chan::rstc as it is not
  used anymore
- in patch 4/7 used syscon_regmap_lookup_by_phandle_args()
- collected tags

Changes in v5:
- dropped patch "soc: renesas: rz-sysc: Add syscon/regmap support" as it
  already modified and pubished also at [2] with the latest review comments
  addressed
- fixed the documentation

Changes in v4:
- replaced "renesas,sysc-signals" DT property with "renesas,sysc-pwrrdy"
- dropped the "renesas,sysc-signals" property from USB PHY (as proposed
  in v3) and let only the USB PHY CTRL driver to handle it as on RZ/G3S
  the USB PHY CTRL driver needs to be probed before any other USB driver
- dropped the signal abstraction from SYSC driver as there is no need
  for reference counting it now
- adjusted the "soc: renesas: rz-sysc: Add syscon/regmap support" to
  comply with the latest review comments

Changes in v3:
- as the basics of the SYSC driver was integrated, only the signal support
  was preserved in this series, in a separate patch; patch 01/12 was
  adjusted (by addressing the review comments received at [1]) as it is
  necessary to build the signal support on top of it
- after long discussions with the internal HW team it has been confirmed
  that the relation b/w individual USB specific HW blocks and signals
  is like:

                                   ┌──────────────────────────────┐
                                   │                              │◄── CPG_CLKON_USB.CLK0_ON
                                   │     USB CH0                  │
    ┌──────────────────────────┐   │┌───────────────────────────┐ │◄── CPG_CLKON_USB.CLK2_ON
    │                 ┌────────┐   ││host controller registers  │ │
    │                 │        │   ││function controller registers│
    │                 │ PHY0   │◄──┤└───────────────────────────┘ │
    │     USB PHY     │        │   └────────────▲─────────────────┘
    │                 └────────┘                │
    │                          │    CPG_BUS_PERI_COM_MSTOP.MSTOP{6, 5}_ON
    │┌──────────────┐ ┌────────┐
    ││USBPHY control│ │        │
    ││  registers   │ │ PHY1   │   ┌──────────────────────────────┐
    │└──────────────┘ │        │◄──┤     USB CH1                  │
    │                 └────────┘   │┌───────────────────────────┐ │◄── CPG_CLKON_USB.CLK1_ON
    └─▲───────▲─────────▲──────┘   ││ host controller registers │ │
      │       │         │          │└───────────────────────────┘ │
      │       │         │          └────────────▲─────────────────┘
      │       │         │                       │
      │       │         │           CPG_BUS_PERI_COM_MSTOP.MSTOP7_ON
      │PWRRDY │         │
      │       │   CPG_CLK_ON_USB.CLK3_ON
      │       │
      │  CPG_BUS_PERI_COM_MSTOP.MSTOP4_ON
      │
    ┌────┐
    │SYSC│
    └────┘

  where:
  - CPG_CLKON_USB.CLK.CLKX_ON is the register bit controlling the clock X
      of different USB blocks, X in {0, 1, 2, 3}
  - CPG_BUS_PERI_COM_MSTOP.MSTOPX_ON is the register bit controlling the
    MSTOP of different USB blocks, X in {4, 5, 6, 7}
  - USB PHY is the USB PHY block exposing 2 ports, port0 and port1, used
    by the USB CH0, USB CH1
  - SYSC is the system controller block controlling the PWRRDY signal
  - USB CHx are individual USB block with host and function capabilities
    (USB CH0 have both host and function capabilities, USB CH1 has only
    host capabilities)

  Due to this, the PWRRDY signal was also passed to the reset-rzg2l-usbphy-ctrl
  reset driver (as it controls the USBPHY control registers) and these
  are in the USB PHY block controlled by PWRRDY signal.

  The PWRRDY signal need to be de-asserted on probe before enabling the module
  clocks and the module MSTOP. To avoid any violation of this configuration
  sequence, the PWRRDY signal is now controlled by USB PHY driver and the
  reset-rzg2l-usbphy-ctrl driver.

  As the PHYs gets reset signals from the USB reset controller driver, the
  reset-rzg2l-usbphy-ctrl is probed before the USB PHY driver and thus,
  in theory, we can drop the signal support (reference counting of the
  USB PWRRDY) and configure the USB PWRRDY just in the reset-rzg2l-usbphy-ctrl.

  However, to have a proper description of the diagram described above in 
  device tree and ensure the configuration sequence b/w PRWRDY, CLK and MSTOP
  is preserved, the PWRRDY signal is controlled in this series in all the
  drivers that work with registers from the USB PHY block.

  Please provide your feedback on this solution.

Thank you,
Claudiu

[1] https://lore.kernel.org/all/20250330214945.185725-2-john.madieu.xa@bp.renesas.com/
[2] https://lore.kernel.org/all/20250818162859.9661-2-john.madieu.xa@bp.renesas.com/

Changes in v2:
- dropped v1 patches already applied
- added fixes patches (07/14 and 09/14)
- dropped the approach of handling the USB PWRRDY though a reset controller
  driver and introduced the signal concept for the SYSC driver; because
  of this, most of the work done in v1 was dropped
- per patch changes are listed in individual patches, if any

Christophe JAILLET (1):
  phy: renesas: rcar-gen3-usb2: Fix an error handling path in
    rcar_gen3_phy_usb2_probe()

Claudiu Beznea (6):
  dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
  reset: rzg2l-usbphy-ctrl: Add support for USB PWRRDY
  reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
  arm64: dts: renesas: r9a08g045: Add USB support
  arm64: dts: renesas: rzg3s-smarc: Enable USB support

 .../bindings/phy/renesas,usb2-phy.yaml        |   1 +
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  41 +++++-
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 118 ++++++++++++++++++
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |  57 +++++++++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  20 ++-
 drivers/reset/Kconfig                         |   1 +
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |  65 ++++++++++
 7 files changed, 291 insertions(+), 12 deletions(-)

-- 
2.43.0


