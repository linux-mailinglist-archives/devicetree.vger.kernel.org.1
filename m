Return-Path: <devicetree+bounces-210000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D91CB39D9E
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:45:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B0DF17E8CF
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C0992E091C;
	Thu, 28 Aug 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ajosi878"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E92E20C001
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756385153; cv=none; b=ARhPNFMYG/HtA2lwnKUEHlzIPj9pKhzpfaFGGuT9Guk9sa7Y7dFonGfII4DKYQ9FFq2aOeJFTtFn7JzJ4jxGs3DJIAWxpDLtZP5w6qQiNh9yqTWYgp6LFttL/tH9BSHIQ1H4HQx+YMEtGv/S84WQZLKgWa+wF4Mfc0nXeSH0lq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756385153; c=relaxed/simple;
	bh=2GNSxNfcFF7LK0ox4GPGZqKZYRWo1k0QgVliQpVQrUQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YbavBXZ82K05IlWmJQYwzmWtfu7P49rbNARMpLttY4j17Ck/gzd5DBKRh3i62NX+jhDtx/cX9g0M3/8ZE/oscVjfW5nlPwjdu5tvI3hmidZqKUVVSMolDMtg5RGUTD8DUt0YI3oOYzB2s5eG7++E9mquRK8lqu4A4ruveWkjvF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ajosi878; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-afcb7a16441so123421766b.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756385150; x=1756989950; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zxMgUQNGs+/LED5NKHdUH6VeR0hnjbGDh/r6ylHR0gU=;
        b=ajosi878R78c+vDMmyz+X01ACPgJmBWnziU1JIvh3CwSli1a31UiYpNRp+xvgJgZfJ
         +yt5ZkPF8INV7FOkJHtcfKbRBxY4igeoK2z/7e/Q2ZEH8RjUy2Cd3FA96LM4MCUsFMFw
         ig19E3dOftvOjygA2uZ+XWmtiGTPXWRaU/ZbD4gUlEhyjjAoV37WFUMzvElaAqkKDwA7
         Ijp2Wq2sO88UNR+iLpq5P5r76zC+9F7S7GO3PScbVPIaIPcZClUlMYwnZjH1QNpoMY67
         YTN84HqnpAl9EEq1oec1i+bDVnF04+FcD0MUpziDkwNy5gZP52bD/Dx+YRK4jaBku9xh
         0b4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756385150; x=1756989950;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zxMgUQNGs+/LED5NKHdUH6VeR0hnjbGDh/r6ylHR0gU=;
        b=Qhg1TvpO/M4Xi2Du66qP5IKvsqF27do98K+I6Ir5dwsNxRXoxXj9PdDjpMGB0V4Yru
         3NVwjDlj/H6+WW9fFsrGN6KFuJO9cbOROyIXQOyF1UmMDif1PGm5cwoLyuma3rnPjuoJ
         lUsANTo0h5k34pso1BgW/REGgvFXhO+9VkL8Sn20pzR+BW56GQ0PbTx5sIJC6G7ey2yg
         3Uocq4eCnlczvLFzhdXSu4lppveNuijZJO0MWtKdIlvcv1/b8M6JSgiRp4gQ+Ez7FtDu
         wQmgPyQl4+f7yAfNhw4lxk5AkNsmvJamRURM9r6XDywwSkFRiajV89SO2rPi1RPv5hfZ
         alqw==
X-Forwarded-Encrypted: i=1; AJvYcCWX1x5B1MoBNnwQShTxZAW3wfESxp5RBS6x231swqUJi3Bir1fC6mMkdISdhM9rq28NfdRf2Et76OVa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5ZC4YYz1AnLZRgBNdaN0T9+cmhkNPSuuuVUb95DFxtz9xzaq1
	STOhLmUB18Opt3bHKUaZ7SA1bEWopvuh0o33dz/G96JyET3glFT5qpqvO5AhUdDmRvQ=
X-Gm-Gg: ASbGncv2u/pEpgrALu5l390Sv1wGG5XqvI+ZQekixR2zyw0Bfi0pHgf/nUw1lRDGkd7
	8xLUlWdhMAVLPwIHGmNuSr1eZhgtTAZSNGxh2CVxV9AGnHKYaRn7Ku+6e1VdFP4wptedKQ4whSl
	e5ju90HGaH6f47JyuTQaZR61dTo0D4X6aQ0RwuG09uxwzgKO/AphbR8F7LKS1A2tGN40O/iS65X
	o/+3h2r7RAFENQj6v5YYmkNov+jUNhS/JZfvI9RSlKdAW4GhM58k5TYEzMZJveuNif2gppFcWQ9
	f6ljHqFiB1sRBwfous+KZbd0Kg9bXCi6EcSwFR6GzyfG6wXEI6yXS9h/JN5XHxTq38/X0ivbXs2
	OPoY0/JLa1KUEfFR0lqvOhJgbG/zDhJzgJ5LkImprbIJSpAzEGrTvwFXdQMYUDA8negE5w0Awpc
	HkuadLx0cu0BI9dhekCnbRKH2Fj0Q=
X-Google-Smtp-Source: AGHT+IFNXCBJMNU1/4HwvWWNwfSpQcVmgREcwXGBCSgjS6mOZ411UNk3uqdbyTb5lvmvsiIGiXV3HA==
X-Received: by 2002:a17:907:94c1:b0:af9:38ed:5b49 with SMTP id a640c23a62f3a-afe28f75e24mr2013120566b.5.1756385148815;
        Thu, 28 Aug 2025 05:45:48 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe8f8129f0sm731229266b.41.2025.08.28.05.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:45:48 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v4 0/3] Add pin control driver for BCM2712 SoC
Date: Thu, 28 Aug 2025 14:47:37 +0200
Message-ID: <cover.1756372805.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

The following patches add a pin control driver for the BCM2712 SoC.

Device driver is follow up version on what Andrea posted in April [1].

It is based on sources from here [2]. Since its first inception, this
patchset has undergone heavy rework in order to split the driver in a
generic core API useful for several STB pin controller and a specific
implementation for BCM2712 SoC found on RaspberryPi 5.

A separate patchset will add peripheral nodes that rely on the SoC pin
controller to setup and config the pins.

All this have been tested as kernel was directly booted RPi5 via
kernel= config.txt option and cmdline.txt file with following content
(Note I am using Tumbleweed RPi raw images)

$ cat /boot/efi/cmdline.txt
root=/dev/mmcblk0p3 rootwait rw systemd.show_status=1 console=tty ignore_loglevel earlycon console=ttyAMA10,115200

With all these patches Bluetooth and Wifi are working fine (tm) with
firmware files provided by openSUSE Tumbleweed.

All comments and suggestions are welcome!

Happy hacking!
Ivan and Andrea

[1] https://lore.kernel.org/lkml/f6601f73-cb22-4ba3-88c5-241be8421fc3@broadcom.com/
[2] https://github.com/raspberrypi/linux/blob/rpi-6.6.y/drivers/pinctrl/bcm/pinctrl-bcm2712.c
[3] https://lore.kernel.org/lkml/20240605120712.3523290-1-florian.fainelli@broadcom.com/#t
[4] https://lore.kernel.org/all/bfc60a7e-54d2-48a6-a288-4fe76d66507a@gmx.net/


CHANGES in V4:

--- DT BINDINGS ---

- brcm,bcm2712c0-pinctrl.yaml: added blank lines between paragraphs in
  descriptions.

- brcm,bcm2712c0-pinctrl.yaml: descriptions are now layout in the same
  order everywhere.


--- DRIVER ---

- pinctrl-brcmstb.c: this is now the core driver that will manage the
  generic functions of any STB pin controller. The new pinctrl-brcmstb.h
  header contains the APIs that can be leveraged by specific implementations.
  I've applied quite a conservative approach in determining what is generic
  and what is not. It's easier to specialize some generic code when we
  need it that the other way around.

- pinctrl-brcmstb.h: new file! Header contains the APIs that can be leveraged
  by specific implementations.

- pinctrl-brcmstb-bcm2712.c: new file! The custom implementation for BCM2712
  SoC. It specifies the pinsi/functions for this chipset and calls the probe
  function from the core driver. Some values are now set from this file
  since they are considered chip-specific, e.g. func_mask, func_gpio and
  func_names.

- PIN macro renamed to BRCMSTB_PIN.

- enum brcmstb_funcs renamed to bcm2712_funcs.

- avoid wrapping some lines above 80 char containing GPIO declarations for
  the sake of readability.

- renamed the chipset specific structs from brcmst_* to bcm2712_*.

- AGPIO_* renamed to AON_GPIO_* and SGPIO_* to AON_SGPIO_*.

- FUNC macro renamed to BRCMSTB_FUNC.

- brcmstb_reg_rd() and brcmstb_reg_wr() have been inlined, substituted by
  their inner implementation based on readl/writel.

- spin_lock_* replaced by guards. Asa a result, the flags var definition
  is dropped.

- implemented .function_is_gpio() in pinmux_ops. As a result, this driver
  is marked as strict.

- used of_device_get_match_data() directly in place of retrieving it through
  of_match_node()->data;

- added a comment to better specify the differences between AGPIO and SGPIO.


--- KBUILD ---

- Kconfig.stb: new file! to be included by top level Kconfig to enable
  the Broadcom STB specific drivers (e.g. BCM2712 pin controller). Enabled
  only if PINCTRL_BRCMSTB is enabled from top level.

- Kconfig: amended to enable the generic support for Broadcom STB pin
  controller family. Includes Kconfig.stb.

- Makefile: added pinctrl-brcmstb-bcm2712.o



Andrea della Porta (1):
  arm64: defconfig: Enable BCM2712 on-chip pin controller driver

Ivan T. Ivanov (2):
  dt-bindings: pinctrl: Add support for Broadcom STB pin controller
  pinctrl: bcm: Add STB family pin controller driver

 .../pinctrl/brcm,bcm2712c0-pinctrl.yaml       | 137 ++++
 arch/arm64/configs/defconfig                  |   2 +
 drivers/pinctrl/bcm/Kconfig                   |  12 +
 drivers/pinctrl/bcm/Kconfig.stb               |  10 +
 drivers/pinctrl/bcm/Makefile                  |   2 +
 drivers/pinctrl/bcm/pinctrl-brcmstb-bcm2712.c | 747 ++++++++++++++++++
 drivers/pinctrl/bcm/pinctrl-brcmstb.c         | 442 +++++++++++
 drivers/pinctrl/bcm/pinctrl-brcmstb.h         |  93 +++
 8 files changed, 1445 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml
 create mode 100644 drivers/pinctrl/bcm/Kconfig.stb
 create mode 100644 drivers/pinctrl/bcm/pinctrl-brcmstb-bcm2712.c
 create mode 100644 drivers/pinctrl/bcm/pinctrl-brcmstb.c
 create mode 100644 drivers/pinctrl/bcm/pinctrl-brcmstb.h

-- 
2.35.3


