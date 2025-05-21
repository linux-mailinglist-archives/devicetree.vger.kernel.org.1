Return-Path: <devicetree+bounces-179291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B76ABF756
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 16:11:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A1D43BB3D2
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 14:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A94FF19D06B;
	Wed, 21 May 2025 14:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Ja8IR5C2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F01018BBB9
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747836598; cv=none; b=Xx9zMDOb/eBO6V1cp0hK4n8I24/UovgToXzNsQtk7gkqpUuw0x0jt2lf0iQUnyo5BRdsdpZeWIUrJULUeRSuYOU9xCraucDg63+n0Njvd0S3AFCVcGC4S/RVsC6NskRF4esYy2X/7aDBqEz/dzx/SLC3PQTPZbk6BPbKURGRxgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747836598; c=relaxed/simple;
	bh=84j4M/sWCgzqGrKP5yXreHZyEYcLp2q8N5Dzm2f8t4E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=l+CZ88TfVa82aj2pL+YPmhvq3ZV8SRpMoQbOmBafklgr97rwNBwsbln7rI7g43/uUBNDS2ajt6tmNPHn+D9GPUdUSEegkswWeO8uWvOfAi/IPjwQPmmSDY7rh7cDuesw26fgf71RQtlrV0vGJ+u+hUUGBu9gqAzKmTEizsqIYHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Ja8IR5C2; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-acae7e7587dso989195566b.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 07:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836594; x=1748441394; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TDOATfF1NXwi+01fMzNVCZKqUTUxtgjBwrVzcLpCswY=;
        b=Ja8IR5C2BkjACyctP45Izrx2n+VECt2NhLTPQJGSllKhEO0VYVnz4C++odk7npnEqE
         IpBoNaqWegVKqs2o/jrzeLxG9jWyeYHKPYwPTFJ2ofSv+LfFXFSkxyRFo6Rpi5Z9dKf/
         qP3be5jmRaR2IEFtL+ui3WSc0UilO841VHnhYw8qQ0TOapdJTtwqagERUvl3YR0krYwK
         yttl4G+i2UiQg7RBh+6DCkCSmbKoRQOleuQ1iADEGoJ/9ET6dQVGzpL3vfcaRdaPPlpN
         I08jvaP/qk6GMrdYVlpwPbz6pM9tVkNKJihsZAYVozMs7pIATIkh+lDxypZNZJgq9+v5
         QWsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836594; x=1748441394;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TDOATfF1NXwi+01fMzNVCZKqUTUxtgjBwrVzcLpCswY=;
        b=RqlrV7Xd4WNCiv8V9Gu/tIA7t/f41O2qudn6tg74k1wKh264XFFQIE4L8uQ2ivul4n
         57v1n+cpYr3P8VJv7tzE+ou+VYuZXP+i/N113xblZ5mnGOaXzlmjRYJuUgX5jUZyLCV9
         jy3TGVr9ZNs2VDezYEqwlhplJFnloKv6hCYVzQ8s7q0Lzm7nI9OHRXlncIYLQrAxsgN7
         kEggPuH0lc/WrTW4BC5cetp7bg3BbfLJX4aeiRXFT9eqYMoAgPMjxV011QUiu/Z1hR0q
         51gevSX1tkehQpUf6Kz1Os7Bs2lgKHhJcRG2nXuzj9Rm92jOUa12czq+374cl2z/BgUy
         RX5A==
X-Forwarded-Encrypted: i=1; AJvYcCXA5XggehEg5fARLWqIUm+zFj5hC7a4+e/2P+VLkIJU80UHFqa5XljhFVJvt6st9sBJ27/uRMy56nr5@vger.kernel.org
X-Gm-Message-State: AOJu0Yww9UkikoI+4McM4el8yOyGLi2zv9dKMoFrbdvK96Fnrt6lZbvb
	SGkPNvh4JuIpJLoU39gZrsUDCgBnam+BCOmEhNocBlfyEHfSC18WSwRW3j2WreIrPwE=
X-Gm-Gg: ASbGncvMvH/uiAntLj7BCizfJVHTQCjcn1APFbmSbqDYEoH5zFZLvSHsGvsw6d/16EE
	UlX7GdEFWarlWOB2g7ptiQvXENyLQYMBaKdzSA11SPWwrnCTYq5yQAjF/d92bd1bkOx0DJuD/OY
	J+ON25olQQrMgnvoe4KbD+ca3oS2RptoAwknVaPmGaXtDdgAACAG2KxAi/rCAFLhJwj1sKBKmrO
	km8KB4BDcn5Jtqqv+/+RPGXP3tCksceKBU4RCXS5l0lj/mMlxhFf8gEaTXOR9VpjmwlYVr2HDN7
	qEsEQ7sPltQgK9yNR+H8gcYQDRNA2DDHX6oHhXolP0hMywK1smM1WhFDMQsfU6se4bWvMM/8ka+
	txYFo
X-Google-Smtp-Source: AGHT+IEFpiVvcjUo1Wbs2Qw6AkINKGvCZvZ0iKNJK+c/rD/wNHysBFgTBCzq7iiqNR0Oj9YbgG19CA==
X-Received: by 2002:a17:907:d0a:b0:acb:4e0c:23ed with SMTP id a640c23a62f3a-ad52d49d4admr1927368166b.14.1747836594100;
        Wed, 21 May 2025 07:09:54 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:09:53 -0700 (PDT)
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
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 00/12] Add initial USB support for the Renesas RZ/G3S SoC
Date: Wed, 21 May 2025 17:09:31 +0300
Message-ID: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
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
- patches 01-03/12	- add signal support on SYSC driver support; this is
			  necessary for USB PHY as the USB PHY driver needs to
			  touch a register in the SYSC address space, in the
			  initialization phase
- patches 04-05/12	- updates the USB PHY documentation
- patches 06-07/12	- updates the USB PHY driver with a fix and the
			  support for PWRRDY SYSC signal
- patches 08-10/12	- updates the rzg2l-usbphy-ctrl driver and documentation
			  with support for the USB PWRRDY signal
- patches 11-12/12	- add device tree support

Merge strategy, if any:
- patches 01-03/12,11-12/12 can go through Renesas tree
- patches 04-07/12 can go through the PHY tree
- patches 08-10/12 can go through the reset tree

Thank you,
Claudiu Beznea

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

Claudiu Beznea (10):
  soc: renesas: rz-sysc: Add signal support
  soc: renesas: r9a08g045-sysc: Add USB PWRRDY signal
  dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
  dt-bindings: phy: renesas,usb2-phy: Add renesas,sysc-signals
  phy: renesas: rcar-gen3-usb2: Add support for USB PWRRDY signal
  reset: rzg2l-usbphy-ctrl: Add support for USB PWRRDY signal
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
  reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
  arm64: dts: renesas: r9a08g045: Add USB support
  arm64: dts: renesas: rzg3s-smarc: Enable USB support

John Madieu (1):
  soc: renesas: rz-sysc: Add syscon/regmap support

 .../bindings/phy/renesas,usb2-phy.yaml        |  23 ++
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  38 +++-
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 120 +++++++++++
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |  57 +++++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  51 ++++-
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       |  46 ++++
 drivers/soc/renesas/Kconfig                   |   1 +
 drivers/soc/renesas/r9a08g045-sysc.c          |  25 +++
 drivers/soc/renesas/r9a09g047-sys.c           |  13 ++
 drivers/soc/renesas/r9a09g057-sys.c           |  13 ++
 drivers/soc/renesas/rz-sysc.c                 | 200 +++++++++++++++++-
 drivers/soc/renesas/rz-sysc.h                 |  38 ++++
 include/linux/soc/renesas/rz-sysc.h           |  30 +++
 13 files changed, 646 insertions(+), 9 deletions(-)
 create mode 100644 include/linux/soc/renesas/rz-sysc.h

-- 
2.43.0


