Return-Path: <devicetree+bounces-196603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 459F6B06608
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 20:31:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87E081885A3C
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 18:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBCB32BE65D;
	Tue, 15 Jul 2025 18:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="EHSkE1kV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F98211A35
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 18:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752604207; cv=none; b=YOzqwL5WOFVknSr64cN6JG/V62QnR6xpr8u/Yjwuq/RlvmupEMUh3vVZ86QgpTbEGTMjRZcM5CUMJ6fGuw6HZuIh0V7OeO8jtp48CI4MxG+1YLywBKRn1kDzRPY9ToTyfVxCW52tdsj1nF1ki7kC5zW3y6nQCYGwvfAz5QV7zC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752604207; c=relaxed/simple;
	bh=OG4SrjBpGcgo80E7iHJAxFbVbBSCrUzfqs/vGbjG08M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Vji57ZCbBQsck/58luZA5tlYkloyYG/yOHBCQ/ajCd3SMB58mOUtPd/wXE9bj3X2n52T6kuWXLVdoAp4WM0ASeiLreom5QkzH3FeTfTYl2MHnSsa7UKi46ZcrsR2nY8AS2Xf5uDZgSx0a7xEyWjNWLVzdEKrwB/NZmNnOLk6f3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=EHSkE1kV; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-ae0dffaa8b2so1146626466b.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1752604204; x=1753209004; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uvjjouxvZp03dNr4GPQAUqRZmBS74KdM8wrzyT4z5C0=;
        b=EHSkE1kV4wYDzENnn6RM9Ers8k2OzkMSxNoylFRKMumiUocZlJV8EtFDBbFOEbR+Xt
         nmcm+bDjvVEFtvZhmPCnSJKeExFIZEkPouN3U5QCxFkjdVD62CWhu7yHlNjN5n+ft50R
         FAU4WdZX34pUMKXT2Hc51y6uKP00G0j+JHfRrClu+90+d2nCyW1ihO2OitdY21qLlPdW
         phStzFmovVtgEIncjUVQ83illZgGmf6fSX90RBP9gXBAsnIIwNb0rStfyaR08lIC7iea
         /ksWhkSeEh0CStEwbIVhGEJHp2qVcdqHlFVisYBKT/imncXDCNTZfwWltBnSw2AaZ4AF
         xmQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752604204; x=1753209004;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvjjouxvZp03dNr4GPQAUqRZmBS74KdM8wrzyT4z5C0=;
        b=wY/yttpdr92ruqxcCM+muXRk9+6mxkk4/Op67Qt/KayknK8VVbMEy8+lzKk/nMFYFI
         xfyxRVQcq06GAAxHoDsmP+Li0mcNlxDfWKXNYJ4ymUdoXX2zkA5H2kjyMkWUIOz+PuVJ
         6zyQqMhk8bfPwDVOQS2j2rTYYyPAAbRpEb3hpXTbz7ykxCuJKX9C5IsU4x++tLA/P3NI
         q0T92FZH7NSrfcV5LNtjgNomdtCNwfxs3cM7Otw085hcO10h8PqgYmO64RbKalCDFU7C
         I7LlfQtAu3PFQvmlaJgD05+V3qIf0f0Xz/XOpGSOQpMJ5SK0glSiHkwSzbLKcusyM7/Q
         htiw==
X-Forwarded-Encrypted: i=1; AJvYcCUURIRuAGxemmZWz0sFHZgKrcBtJK5wp0xkG0sNpC07+PPyPyMGkboJ8OSjPoBxEHnorknjjVOX5mmT@vger.kernel.org
X-Gm-Message-State: AOJu0YyUEET8KWM3IgW9cmTmynCjaxk6jq2wN+lXgI7K2e77I4sRpXZZ
	rHcwsIAnTFzQqRcpuaoe6fffJlNp+vgYbRSXqpTnZZS2164afRdsRIJDE9jvOZKAb4g=
X-Gm-Gg: ASbGnctasN9gxUxA2isxlX+lAcctZNS1PDFJJvQAFPHfir1yHVYEJdfoCXT4YyVJVGP
	xIEnl9IKRo1f6xskRjGc3Zp+8NlBSbVREZZEZ2HiWBKSBgAYnJFqysCUsqREakyLG1jLWcoWMcB
	DC8x0RzizS0IEoJD06kcCLvQGEuOo8YbwfsEoZ2wvQYOl6T42Q1oGbnWZGr1GGF4x8y4qVlIk7p
	Q7XXQ4fPbEEUsMCBtub0YTcSFonqc7r6r0yl+sSSsIVuK6fWWoII3w0zFLEMspZkOLeIq9kn2h+
	9BbPUIbbJeu5MBvdxB+bMfLJhpRPkCFDuhqxMqhVslR6UDAkILKLVlpzoSZZNjdCnUwZbMxoIh8
	RdGRuUAiP2l9Ur8xKelL3QVOeb/VvkzNKjkgQ4BYK4l6APdQzi5PjRDbtTCMO6tuSvZyw
X-Google-Smtp-Source: AGHT+IGFJbWKXB+kQL0O549amLz17SFCU/R3WUlLT6+iJaf7qSYAHhdJnbOpegB9FUbKE3rnsTsc4w==
X-Received: by 2002:a17:907:7f86:b0:ae6:f163:5d75 with SMTP id a640c23a62f3a-ae9c995443fmr57569466b.11.1752604203618;
        Tue, 15 Jul 2025 11:30:03 -0700 (PDT)
Received: from localhost (host-79-47-155-191.retail.telecomitalia.it. [79.47.155.191])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82df56esm1041676366b.156.2025.07.15.11.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 11:30:03 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: conor+dt@kernel.org,
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
	Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH 0/7] Add pin control driver for BCM2712 SoC
Date: Tue, 15 Jul 2025 20:31:37 +0200
Message-ID: <cover.1752584387.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

The following patches add a pin control driver for the BCM2712 SoC and few
pin/gpio Devicetree nodes for Raspberry Pi 5.

Device driver is follow up version on what Andrea posted in April [1].

It is based on sources from here [2]. I just made few cosmetic changes
and addressed review comments from earlier submission. I don't have
documentation for this controller.

Patch 4 wire up power button on RPi5.

Patch 5 adds WiFi Devicetree node for RPi5.

Patch 6 adds Bluetooth Devicetree node for RPi5.

All this have been tested as kernel was directly booted RPi5 via
kernel= config.txt option and cmdline.txt file with following content
(Note I am using Tumbleweed RPi raw images)

# cat /boot/efi/cmdline.txt
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


CHANGES in V2: (all patchset is based upon linux-next/master)

--- PINCTRL DRIVER ---

- dropped bcm2712_c0_aon_sgpio_pin_funcs[] and bcm2712_d0_aon_sgpio_pin_funcs[]
  struct array definitions since they are not used anywhere.

- dropped 'arg' variable in brcmstb_pinconf_set() as it's not used.

- updated copyright info at the top.

- several changes in the declared macros. Renaming the macro name and the
  macro parameters to better reflect the semantic.

- reworked MUX_BIT() macro to be more streamlined and easy to
  understand.

- added PAD_BIT() macro to avoid code duplication.

- renamed 'lock' variable to 'fsel_lock'.

- added some comments about non-existent pins on D0 silicon revision pin
  declarations.

- brcmstb_pinctrl_fsel_set(), brcmstb_pull_config_set()  and
  brcmstb_pinconf_set() (and functions that call them) can now return -EINVAL
  as error.

- added myself as MODULE_AUTHOR.

- dropped the 'brcm,bcm2712-[aon-]pinctrl' fallback compatible. Only c0 or d0
  compatibles are permitted now.


--- DTS ---

- moved 'clock-frequency' property from (uarta) board dts node to SoC dtsi node.

- added 'brcm,sdhci-brcmstb' compatible and 'clock-names' property to mmc node
  to avoid dt_binding_check errors.

- added 'brcm,bcm7445-gpio' compatible to gpio node to avoid dt_binding_check
  errors.

- renamed all pinctrl pin nodes as per yaml schema (*-state and *-pins).

- changed 'brcm,bcm2712-*pinctrl' to 'brcm,bcm2712c0-*pinctrl' since the
  former was more of a fallback and does not reflect a real silicon revision.

- moved status="okay" to the last entry in 'uarta' node.

- removed 'local-*-address' property from everywhere.

- dropped 'skip-init' property in 'uarta' node since it does not apply to
  linux kernel.

- renamed 'pwr-button' node to 'gpio-keys' and 'pwr_key' node to
  'power_button'.

- dropped an userspace related 'brcm,gpio-direct' property from gpio node.



--- DT BINDINGS ---

- binding schema file renamed to 'brcm,bcm2712c0-pinctrl.yaml' to reflect the
  compatible name.

- dropped the 'brcm,bcm2712-[aon-]pinctrl' fallback compatible. Only c0 or d0
  compatibles are permitted now.

- added example section.

- moved allOf: block at the beginning of the schema.

- dropped some unnecessary new lines.

- replaced current layout to describe the pin subnodes with patternProperties
  (nodes now end with -state and -pins).

- expanded the schema description to give some context about STB family of pin
  controller and added some details about C0 and D0 silicon variants. This is
  also reflected in the commit message.


--- MISC ---

- enabled CONFIG_PINCTRL_BRCMSTB in arm64 defconfig.


Andrea della Porta (1):
  arm64: defconfig: Enable BCM2712 on-chip pin controller driver

Ivan T. Ivanov (6):
  dt-bindings: pinctrl: Add support for Broadcom STB pin controller
  pinctrl: bcm: Add STB family pin controller driver
  arm64: dts: broadcom: bcm2712: Add pin controller nodes
  arm64: dts: broadcom: bcm2712: Add one more GPIO node
  arm64: dts: broadcom: bcm2712: Add second SDHCI controller node
  arm64: dts: broadcom: bcm2712: Add UARTA controller node

 .../pinctrl/brcm,bcm2712c0-pinctrl.yaml       |  123 ++
 .../dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  |  134 ++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     |   48 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/pinctrl/bcm/Kconfig                   |   13 +
 drivers/pinctrl/bcm/Makefile                  |    1 +
 drivers/pinctrl/bcm/pinctrl-brcmstb.c         | 1195 +++++++++++++++++
 7 files changed, 1515 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml
 create mode 100644 drivers/pinctrl/bcm/pinctrl-brcmstb.c

-- 
2.35.3


