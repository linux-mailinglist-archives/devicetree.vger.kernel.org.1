Return-Path: <devicetree+bounces-116155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 470889B1F3D
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 17:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B3ED1C209DB
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 16:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43DAC51C4A;
	Sun, 27 Oct 2024 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="n76DkLlk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0245F1E535
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 16:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730047373; cv=none; b=QTjkFxc5lFnaMLQWPEjvSsZI6mvxd6Mf5baByfL+9obTwvhoJRirC1d+smm6eOa63uSDP1gnk6UDskrOANfdCa0EwC7nxloLboKg+h1fqh5vDVU7A3fmlC5kYI1/ByoTh7IvIp0xjZLAc0BMPBxUR/Cj6gGhD0yFZSgmpUPRte4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730047373; c=relaxed/simple;
	bh=NkTK17fBd+Qv71Sdygfc9B7ZmqHB8GiudkyNIZKE4MQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XUPVbnmIf6+Hr20mfWMK+3d7aU46pltirSLIkIuZ1DTx0Q7Si8zuwHLiZgkAz+gqFAyJcJFHtrjmGKwlS033awe1PM+ICrL5LDHYkxxUMxO0dMX4oiUpc/H6X9HoOQ1eykc/qiZQLQA7RkqMvCrpg6QEjA5HMQ6YdhtH/Jni9PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=n76DkLlk; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8E3113F2AD
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 16:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1730047369;
	bh=rx+Iv26SQSVeec4MS8C230GVRkuF+slURlh6a1FZiJk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=n76DkLlkGkJo7fC2Oyqp+aGxq33LiRC6yaZX95vuG4M7RFDYRh73LplHjNkh1wMRT
	 0aA7+I34pKCTekYcEfNH7pb65jvsxwwPTLzhM9+CbocHYqKRP+AC4afdoT9tI9Qfou
	 /CSk3UaCnfKpmdaiDUHqueMXCXOVyyAZL1Fr6PejL+nC3oeS2pQHPVo2MHvYov2TEG
	 RbnNqKosBNQantbjgmQte7CyXrqWHi0ZkuFziPVCRXRxJ279JlgCRXzhDCZjBeicTy
	 Fa3PkCWfEYOKldV6zUDSEwkLTXJDokmjU+uC/7teb3+1LYt3mWQq3r4gDitBfhP5Yl
	 pEsqBl6yYEZbA==
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5eb6f5474bfso3718212eaf.0
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 09:42:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730047368; x=1730652168;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rx+Iv26SQSVeec4MS8C230GVRkuF+slURlh6a1FZiJk=;
        b=CJ1mx5T+TXe1bTqelYXelZC4b/UXIKLb5J53rLFYR5kWzT5XkXSFAdy5FJhcvGxAzb
         vd/g/iYzwXoaV3J/9W2hudH1laIPqRqlGSofqfXBT4EGwy+hQJQJF3fja4dudT+H6X+F
         tZD7q50L+fEdkEFX2xh5BZEK1o0qYHEEtNP0GDjJ2LVr9Omy0P4OvNH5KzcEyvLJjrXg
         CWMVJshYevUgYN0YKAft8FREtIiRa951FghRTWZDK1k99aFZYjtattVwnCu2ABYL4EOZ
         lTgRuig56+hTCpjfz+OdmtaKmrQjKz3JhJx3kMuy1Ecq2EEEdHavOnj8sSUgSjhM8Vwj
         xSLA==
X-Forwarded-Encrypted: i=1; AJvYcCVSZ7s9hv3QGAbxr8CuM7JUiX1iUux9Y126fN+fnGB+ou02ARYdUpHOUNJYION5KH4to18BJ4O9/lsA@vger.kernel.org
X-Gm-Message-State: AOJu0YwobHszAR5xJFwdYuIHmEfjyU8iWIo0rCDPxnbAC21CrQ/imIM4
	48r/oN+vjXfgP0agpWKBhZ1O3H23wHU483EGh/BvehFa1/e3TsDranNBwWiwgikzusDdLOvHv4K
	jkQV3V8x7/ICt6bCN5kmQLEP+ffDfvh3LoP0sh5gIdDSxb+VbAHmMLY6Glb8NqKef6WldqCTbyN
	+XbXrqNnjPENXean5CO/7DVMO3eMNlq/P7kRR6ANJehlIJF72vIQ==
X-Received: by 2002:a05:6870:5594:b0:288:a38c:fe7d with SMTP id 586e51a60fabf-28cebca3e9cmr6011956fac.23.1730047368453;
        Sun, 27 Oct 2024 09:42:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8LODRPd0idGnzbKdllZFk/ttfTmPCD9buQd7jAmTx/s6fTmJFsFUDMR1akME6dNXxir/YbJmHArbZwwf8dHU=
X-Received: by 2002:a05:6870:5594:b0:288:a38c:fe7d with SMTP id
 586e51a60fabf-28cebca3e9cmr6011940fac.23.1730047368186; Sun, 27 Oct 2024
 09:42:48 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 27 Oct 2024 09:42:47 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241027144448.1813611-6-guodong@riscstar.com>
References: <20241027144448.1813611-1-guodong@riscstar.com> <20241027144448.1813611-6-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 27 Oct 2024 09:42:47 -0700
Message-ID: <CAJM55Z8fgPLEn=XqfV-5mVBeqpbr-S+4N=vjivofXJY36AajuA@mail.gmail.com>
Subject: Re: [PATCH v6 5/5] riscv: dts: starfive: add DeepComputing FML13V01
 board device tree
To: Guodong Xu <guodong@riscstar.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, rafal@milecki.pl, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Heiko Stuebner <heiko.stuebner@cherry.de>, Michael Zhu <michael.zhu@starfivetech.com>, 
	Drew Fustini <drew@beagleboard.org>, Alexandru Stan <ams@frame.work>, Daniel Schaefer <dhs@frame.work>, 
	Sandie Cao <sandie.cao@deepcomputing.io>, Yuning Liang <yuning.liang@deepcomputing.io>, 
	Huiming Qiu <huiming.qiu@deepcomputing.io>, Alex Elder <elder@riscstar.com>, linux@frame.work, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Guodong Xu wrote:
> From: Sandie Cao <sandie.cao@deepcomputing.io>
>
> The FML13V01 board from DeepComputing incorporates a StarFive JH7110 SoC.
> It is a mainboard designed for the Framework Laptop 13 Chassis, which has
> (Framework) SKU FRANHQ0001.
>
> The FML13V01 board features:
> - StarFive JH7110 SoC
> - LPDDR4 8GB
> - eMMC 32GB or 128GB
> - QSPI Flash
> - MicroSD Slot
> - PCIe-based Wi-Fi
> - 4 USB-C Ports
>  - Port 1: PD 3.0 (60W Max), USB 3.2 Gen 1, DP 1.4 (4K@30Hz/2.5K@60Hz)
>  - Port 2: PD 3.0 (60W Max), USB 3.2 Gen 1
>  - Port 3 & 4: USB 3.2 Gen 1
>
> Create the DTS file for the DeepComputing FML13V01 board. Based on
> 'jh7110-common.dtsi', usb0 is enabled and is set to operate as a "host".
>
> Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
> [elder@riscstar.com: revised the description, updated some nodes]
> Signed-off-by: Alex Elder <elder@riscstar.com>
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

Thanks! Will you be adding more stuff later like fx. the I2S sound chip?

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
> v6: Dropped all node status disabled code
>     Enabled usb0 and set its operation mode to "host"
> v5: No change
> v4: Changed model string to "DeepComputing FML13V01"
>     Changed dts filename and Makefile accordingly to reflect the change
>     Updated device nodes status, and verified functional
>     Revised the commit message
> v3: Updated the commit message
> v2: Changed the model and copmatible strings
>     Updated the commit message with board features
>
>  arch/riscv/boot/dts/starfive/Makefile           |  1 +
>  .../starfive/jh7110-deepcomputing-fml13v01.dts  | 17 +++++++++++++++++
>  2 files changed, 18 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
>
> diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/starfive/Makefile
> index 7a163a7d6ba3..b3bb12f78e7d 100644
> --- a/arch/riscv/boot/dts/starfive/Makefile
> +++ b/arch/riscv/boot/dts/starfive/Makefile
> @@ -8,6 +8,7 @@ DTC_FLAGS_jh7110-starfive-visionfive-2-v1.3b := -@
>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-beaglev-starlight.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-starfive-visionfive-v1.dtb
>
> +dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-deepcomputing-fml13v01.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-milkv-mars.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-pine64-star64.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-starfive-visionfive-2-v1.2a.dtb
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> new file mode 100644
> index 000000000000..30b0715196b6
> --- /dev/null
> +++ b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> @@ -0,0 +1,17 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2024 DeepComputing (HK) Limited
> + */
> +
> +/dts-v1/;
> +#include "jh7110-common.dtsi"
> +
> +/ {
> +	model = "DeepComputing FML13V01";
> +	compatible = "deepcomputing,fml13v01", "starfive,jh7110";
> +};
> +
> +&usb0 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> --
> 2.34.1
>

