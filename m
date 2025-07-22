Return-Path: <devicetree+bounces-198573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEBFB0D6D0
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 12:06:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC6B1544C27
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 10:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E8F5273813;
	Tue, 22 Jul 2025 10:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ECXq4U9E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B5C28C5AC
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 10:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753178421; cv=none; b=fzsTLuuHb4ZvIxLgCJ04GLhWlgcyDQOrlmo2OZMZyzl15vrPhhbFeGLCdV7xJn/5DzfRvEN7s7VBGjocK0okXTmdqKjrcTI27gZvQthlIxQsZoHB7pKsTyYJ00pgOk0tNQgNtkx/cXKaawIhOPxjntH8ZBgkVlzIt/29595m+Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753178421; c=relaxed/simple;
	bh=GO4fTpcA70KLXWXTwF/R+wWOcX84CBX2JoHlDUkOOFc=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZdBwmwHAh3I2nHMlqGQ+CLfOe6KpWS27e6szvqLJlBQnBsZr+pFIH7E2zZbPckfMn/mUQOPQVkh2i0itvqoVU19LnpLh/20B8Ov0bPjbLFByeNlYSlub2mbvzU4SwYuSprsMfqbVvSOiIOe2OFZbIhSvRBWwU2vLw9JNlElA4hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ECXq4U9E; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-60702d77c60so10300069a12.3
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 03:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1753178417; x=1753783217; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VGtZBGKyhIZ2qBmToRF5pPNhe8YR+CyLhhQQdpkOTOg=;
        b=ECXq4U9EqjiYoD92XY8txulV2656zxNWZBZNvecwO2Ox476zJvJdrxEI4XpspKPhBM
         AjdpcYsxVQPOHgew4FB2dQ/fQVIeHjcMzbg9InaSoHJ1xz6BbUWo/j9xzPt9S51xLGU7
         oZOFKieouTS/T6zidl9+3i0Pa3nllJUCtEG5Bup8hcEVp7NilOUP1n2ci/TE2OiVtkwg
         DnO5B0Vp2gYYmT4IXSbXTi+9QBnXlkSlW2nGnodXwKYluxPx4nOZs8qpK8NhgH2JtigL
         vqXnI9IRDPVtep3z9TlGIMj8WT1UyjWlyaQNK4GsHfznyTjNi/5IvMPc/3qSNPxIRzkC
         ZeBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753178417; x=1753783217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VGtZBGKyhIZ2qBmToRF5pPNhe8YR+CyLhhQQdpkOTOg=;
        b=i43eGoICkxUPTnj3lHGhfjODoSRCWceEv52SY5no4TF///dHr5Rup2i/iUInLC8OAh
         rm+MUYbkX5q/31oRNaMfpaneSzCH7x1CY26hAzgND6dIuAssZoXbd3bIxjA7iOD2n41C
         eNNrxnkjRGEH43fPl+y1G4cLzXAnh9pJkU+Qn2bhZL4L8azrsplkUnptsgIKhF7V3XGp
         NIXWT8KUiiGUXydjWK9Bv12xUY0fvJtEzbwOQqWzBZ+mNxoiscupD4q4lBGEr/nqig4Y
         oc5EwLDdnoTMCetBU7VEgktUFXW0aTd6vyeJ+NGQNCPof24Kb53FHxNbv1qQHq/GYZMQ
         F4DA==
X-Forwarded-Encrypted: i=1; AJvYcCXllbfHIfRxe2oSMVGowLpaC0SjWFtdemHDHJg13J6drwdm5Q4LyOxxlwL8t7QkcSRo7kPUnnYv5tZg@vger.kernel.org
X-Gm-Message-State: AOJu0YyrL1da4BtE3t+HW8TKB8KEewrsNfMhbRpeY8pKXzFHSsfecNOV
	TAZ6kZiYdMkRdlJbal9Sqjp0ECxibOmi9bedtjVwb0/b6VL5qfPtsy31HrK6MCKwjhc=
X-Gm-Gg: ASbGncsv9pVUEH2pEmMpxGjwihQejWqcpCxKCeF9NWTolmskRG4+JosjfNA814wIf22
	AfqA2XP1N6LiZe1C1oxk6VpbpPLB57v3+bdjWsGEmK7RXGLFPCNTfIraImzT9PfiKrgKaTa6YLU
	KaSIll9OfXkVrRrajBspqeYeTPdHlOzk7zBLiVviqPy0UJxMqbLYNxNtSQ+j0J4LXkeBgwt1P6N
	vlaisiN+KJKmB8Uqo29QWRSwym4YvASn5UV5b55QxQ4TCiXT+OAquU/GpYd2mxsc6TnbBnmiggq
	Dn1RqWu5p/z5bzk5lABaHRpNpmR9iU5g42DAgzqLSMRW+9+ShK/Or03kEx1yxHCZkMwBy5vNAD5
	cwvHAIDcMkMllppVlQCBuHbDHeWU7bG34kVwqCFJki3XucvWv+0xd722uxh25o2I5VERbNxBUEy
	md+tQ=
X-Google-Smtp-Source: AGHT+IEYByDblsbsdG7luqkRNEVSZPdXvQIlF7+Af1ARSZWqI4XkQYoHGoB5zzWSTWUWze1gc9PnFA==
X-Received: by 2002:a05:6402:520c:b0:608:a7a0:48 with SMTP id 4fb4d7f45d1cf-6128262b18dmr22272866a12.28.1753178417281;
        Tue, 22 Jul 2025 03:00:17 -0700 (PDT)
Received: from localhost (host-79-47-155-191.retail.telecomitalia.it. [79.47.155.191])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c90a8937sm6723101a12.64.2025.07.22.03.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 03:00:16 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 22 Jul 2025 12:02:01 +0200
To: Andrea della Porta <andrea.porta@suse.com>
Cc: linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, florian.fainelli@broadcom.com,
	wahrenst@gmx.net, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com
Subject: Re: [PATCH 0/7] Add pin control driver for BCM2712 SoC
Message-ID: <aH9hmVA2cEJipYiU@apocalypse>
References: <cover.1752584387.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1752584387.git.andrea.porta@suse.com>

On 20:31 Tue 15 Jul     , Andrea della Porta wrote:
> Hi,
> 
> The following patches add a pin control driver for the BCM2712 SoC and few
> pin/gpio Devicetree nodes for Raspberry Pi 5.
> 
> Device driver is follow up version on what Andrea posted in April [1].
> 
> It is based on sources from here [2]. I just made few cosmetic changes
> and addressed review comments from earlier submission. I don't have
> documentation for this controller.
> 
> Patch 4 wire up power button on RPi5.
> 
> Patch 5 adds WiFi Devicetree node for RPi5.
> 
> Patch 6 adds Bluetooth Devicetree node for RPi5.
> 
> All this have been tested as kernel was directly booted RPi5 via
> kernel= config.txt option and cmdline.txt file with following content
> (Note I am using Tumbleweed RPi raw images)
> 
> # cat /boot/efi/cmdline.txt
> root=/dev/mmcblk0p3 rootwait rw systemd.show_status=1 console=tty ignore_loglevel earlycon console=ttyAMA10,115200
> 
> With all these patches Bluetooth and Wifi are working fine (tm) with
> firmware files provided by openSUSE Tumbleweed.
> 
> All comments and suggestions are welcome!
> 
> Happy hacking!
> Ivan and Andrea
> 
> [1] https://lore.kernel.org/lkml/f6601f73-cb22-4ba3-88c5-241be8421fc3@broadcom.com/
> [2] https://github.com/raspberrypi/linux/blob/rpi-6.6.y/drivers/pinctrl/bcm/pinctrl-bcm2712.c
> [3] https://lore.kernel.org/lkml/20240605120712.3523290-1-florian.fainelli@broadcom.com/#t
> [4] https://lore.kernel.org/all/bfc60a7e-54d2-48a6-a288-4fe76d66507a@gmx.net/
> 
> 
> CHANGES in V2: (all patchset is based upon linux-next/master)

Sorry, I've just realized this patchset has been sent with no V2 in the subject.
Anyway, I'm preparing a new revision (which will be V3) after amending it after
Rob's automated script warning.

I'll also split the patchset into two, oen with binding / driver for SoC pin
controller and another with thie remaining DTS related patches.

Many thanks,
Andrea


> 
> --- PINCTRL DRIVER ---
> 
> - dropped bcm2712_c0_aon_sgpio_pin_funcs[] and bcm2712_d0_aon_sgpio_pin_funcs[]
>   struct array definitions since they are not used anywhere.
> 
> - dropped 'arg' variable in brcmstb_pinconf_set() as it's not used.
> 
> - updated copyright info at the top.
> 
> - several changes in the declared macros. Renaming the macro name and the
>   macro parameters to better reflect the semantic.
> 
> - reworked MUX_BIT() macro to be more streamlined and easy to
>   understand.
> 
> - added PAD_BIT() macro to avoid code duplication.
> 
> - renamed 'lock' variable to 'fsel_lock'.
> 
> - added some comments about non-existent pins on D0 silicon revision pin
>   declarations.
> 
> - brcmstb_pinctrl_fsel_set(), brcmstb_pull_config_set()  and
>   brcmstb_pinconf_set() (and functions that call them) can now return -EINVAL
>   as error.
> 
> - added myself as MODULE_AUTHOR.
> 
> - dropped the 'brcm,bcm2712-[aon-]pinctrl' fallback compatible. Only c0 or d0
>   compatibles are permitted now.
> 
> 
> --- DTS ---
> 
> - moved 'clock-frequency' property from (uarta) board dts node to SoC dtsi node.
> 
> - added 'brcm,sdhci-brcmstb' compatible and 'clock-names' property to mmc node
>   to avoid dt_binding_check errors.
> 
> - added 'brcm,bcm7445-gpio' compatible to gpio node to avoid dt_binding_check
>   errors.
> 
> - renamed all pinctrl pin nodes as per yaml schema (*-state and *-pins).
> 
> - changed 'brcm,bcm2712-*pinctrl' to 'brcm,bcm2712c0-*pinctrl' since the
>   former was more of a fallback and does not reflect a real silicon revision.
> 
> - moved status="okay" to the last entry in 'uarta' node.
> 
> - removed 'local-*-address' property from everywhere.
> 
> - dropped 'skip-init' property in 'uarta' node since it does not apply to
>   linux kernel.
> 
> - renamed 'pwr-button' node to 'gpio-keys' and 'pwr_key' node to
>   'power_button'.
> 
> - dropped an userspace related 'brcm,gpio-direct' property from gpio node.
> 
> 
> 
> --- DT BINDINGS ---
> 
> - binding schema file renamed to 'brcm,bcm2712c0-pinctrl.yaml' to reflect the
>   compatible name.
> 
> - dropped the 'brcm,bcm2712-[aon-]pinctrl' fallback compatible. Only c0 or d0
>   compatibles are permitted now.
> 
> - added example section.
> 
> - moved allOf: block at the beginning of the schema.
> 
> - dropped some unnecessary new lines.
> 
> - replaced current layout to describe the pin subnodes with patternProperties
>   (nodes now end with -state and -pins).
> 
> - expanded the schema description to give some context about STB family of pin
>   controller and added some details about C0 and D0 silicon variants. This is
>   also reflected in the commit message.
> 
> 
> --- MISC ---
> 
> - enabled CONFIG_PINCTRL_BRCMSTB in arm64 defconfig.
> 
> 
> Andrea della Porta (1):
>   arm64: defconfig: Enable BCM2712 on-chip pin controller driver
> 
> Ivan T. Ivanov (6):
>   dt-bindings: pinctrl: Add support for Broadcom STB pin controller
>   pinctrl: bcm: Add STB family pin controller driver
>   arm64: dts: broadcom: bcm2712: Add pin controller nodes
>   arm64: dts: broadcom: bcm2712: Add one more GPIO node
>   arm64: dts: broadcom: bcm2712: Add second SDHCI controller node
>   arm64: dts: broadcom: bcm2712: Add UARTA controller node
> 
>  .../pinctrl/brcm,bcm2712c0-pinctrl.yaml       |  123 ++
>  .../dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  |  134 ++
>  arch/arm64/boot/dts/broadcom/bcm2712.dtsi     |   48 +
>  arch/arm64/configs/defconfig                  |    1 +
>  drivers/pinctrl/bcm/Kconfig                   |   13 +
>  drivers/pinctrl/bcm/Makefile                  |    1 +
>  drivers/pinctrl/bcm/pinctrl-brcmstb.c         | 1195 +++++++++++++++++
>  7 files changed, 1515 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml
>  create mode 100644 drivers/pinctrl/bcm/pinctrl-brcmstb.c
> 
> -- 
> 2.35.3
> 

