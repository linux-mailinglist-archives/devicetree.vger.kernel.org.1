Return-Path: <devicetree+bounces-221326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E06AB9E899
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:04:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 008324A3BF4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DC82E974D;
	Thu, 25 Sep 2025 10:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DXAWDq2k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156E028134F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758794643; cv=none; b=YVskicNsPvhHosCaf7zUmJm3POW2/EDa4W+4unxCqrsgZPJJCt3UX3kUYvpBQiVvnuGb75mN7G+/UsWTUMTppEWNjzoC+XzEAkTY2YliCkUG113990Y3YqI6xFV+7hu0mWfT3O5/BbGY4Mh60607ChZDHFgtMPRCtPuezvKzvdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758794643; c=relaxed/simple;
	bh=Jq21aUyDB1KeUOWA4nv5EaL/9wMTiP1FaOFnrfBbp6Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=XQyx539c/3C0Ihc/1Tj+Em81Ds1pmoQdxYRvy4n8vvndPPekaKx0Tsi3dNpDmF+7tbrC4ntI88LbHaWKHpXwYHiMNfXatatPjJF1qSViHFzdip1nzWlBwcGgWClnzCPIRfdrvCEk0tB5Go6/hBxG5PN5kCvMdyIyoEWgzQk5i5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DXAWDq2k; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3ee1221ceaaso496296f8f.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794639; x=1759399439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aeSijnMYMJyQmtrAgN0xRaDVnA5uArueH+8Nv8ZC19Y=;
        b=DXAWDq2kPlWLh8th57yDVyiayGTJz6d7ZH1suiN5gNNJU6datZg5PFkj2Ngn86higl
         +ySAB4LbJ/bTaj+GTHw+91MckUXzCuGnnZj8keTNm+csamnpMZOlrZr9Gtc619kaEsdf
         LO4trQuE5g/vnNj/KLmWj4Q+imBXvBmZhPgk/nvx5hb7OKgwAAkrlgOG5A9HYW3amIwW
         eboIVKnx6+JpCZb5rAHKa3ozZ0c8qts3gaPh5tJxM96Tlz/fbzQdHem+HJWIn8YwxYje
         JVkt8KCGRGQN00TWlUBfen5CZkIH7HIudOVRE0GGCSLkZvxtMz4x44dRC+X/oCiC2PhQ
         AYmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794639; x=1759399439;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aeSijnMYMJyQmtrAgN0xRaDVnA5uArueH+8Nv8ZC19Y=;
        b=kuclCKfVtv0obea3qoC4q2WzAFLQopZvxXMS2mvYs1g9iKYNNrCyPS4w0IL93rpuDj
         HRBXsvos/Wq7qXOK5FSQzyb7NIA2pmvTc8lpVk6gj4NNK5gYw9cnCVNaQKVNpnd6NQtb
         tA/bK788h1Q2CfmuNKOs4m8ccitkuWFETB/i8Ywt3crGvBu1NKvCvK04/LVB3QBAhPJh
         NhSIkhBnf48lVuhHJEYaPnuczA2bNJUB9O175V3eizuFXA4DrXHwepUqOu8y+4dyx3ej
         KSxnnSbJMlIg5JCnDqaFV8W3GoyB+vb2AQGEPcgYdHXib0pBUxFc5zxw4CpO3l04GErJ
         UOjg==
X-Forwarded-Encrypted: i=1; AJvYcCVLNK4CJEuMeFdiAtchW59JxCZp3Dq01XMjzNWFfjrBcFPzT5J3z90LyOxYIfirtpC7ph6gpa79Vmvn@vger.kernel.org
X-Gm-Message-State: AOJu0YwexPhsLQ+FB9p0PToy/Vh1225SABBTkOxRzUGgIbT8GaCLcf+L
	46XWCsYEYDMW3gvRryRlQOu7ltknAQW+f47G0Xbd1IdYJahK+jxKqr+yiSwMAfByxWo=
X-Gm-Gg: ASbGncvt2sQFetcLjcXEywnZz/P0rv+tg8tUABUHypDDi8sGHw5Gdy+l/Wvo6V7L7/G
	sFfo6ZZfWwJ1LhXrV4nh4qRLwOLH2MGkMRW+QkrX2w4r/tIt5SXSVpnTH8hzpreyPVe8jri3W0i
	bRD1nDOUGs5bwueDBq5CzUGgnCp08OgNxwpvatGnrVwQ5FCkj6poy9BPtX5j0D4aLfNRYgg+XGJ
	EVMM8QBvT8k8JuBRh6tQt+ojwoVDlXzCSvKX260/9jgFauCs9sdgKXDWpRoS/iln3ECrizrfgvh
	i1ZFH854Jn3gJzm+PTlrMzjl+rrGbi6lshivAZ0itboTAjSPuNvrQoCbqx9zzcQ/FMIqn7hOD94
	PLFKuI57S1dm/Y4VT0O7UQB6qfIoPOBsz6e9byCjnC6Kn6Orb+i//
X-Google-Smtp-Source: AGHT+IEQ22AsatcCHQ0rPjRAYNnebXQt7WfgjAQzQKbDC2xmnEmcRCJ+zS4tItiuIIh2CyfyLHNHVA==
X-Received: by 2002:a05:6000:230b:b0:3d1:6d7a:ab24 with SMTP id ffacd0b85a97d-40e4745e84fmr2580039f8f.17.1758794639180;
        Thu, 25 Sep 2025 03:03:59 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:03:58 -0700 (PDT)
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
Subject: [PATCH v7 0/7] Add initial USB support for the Renesas RZ/G3S SoC
Date: Thu, 25 Sep 2025 13:02:55 +0300
Message-ID: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
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

Changes in v7:
- used proper regmap update value for PWRRDY
- collected tags
- dropped Tb tags from dt-bindings

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
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |  66 ++++++++++
 7 files changed, 292 insertions(+), 12 deletions(-)

-- 
2.43.0


