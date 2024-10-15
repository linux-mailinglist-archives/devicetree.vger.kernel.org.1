Return-Path: <devicetree+bounces-111562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5749D99F4CD
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 20:06:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC1A11F26C58
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 18:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A8091F76D9;
	Tue, 15 Oct 2024 18:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Mp7Qfhrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF2928691
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 18:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729015563; cv=none; b=EGuj6asybW4oI3QFFu4iEPLp2g5Sw1CWDh1dh8YJO20pT2CjNzs0ZpFp4kQVZzWXN3nBObIwb8puXi2cjjAfaFHp8EF1X8rDLB2Z0VGmWE2jxlMjoI0TdrehV4Em+4wNJGnkuuj4ZOwOTffSfMTC/tuIO3yAZXM6nw1ro6EjIOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729015563; c=relaxed/simple;
	bh=Nw8AYXxLQYRASA0EqVaeq4osc1EcBSEe7S6yFgCszeo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ku/WirmySOk6VOIVVweWTozpn5NjWzZeV/7O4UWrrnFikiOeWdLDtyE7C9az7TG/x3pFGv1Jc8FjG9GFKE5t9yCFHpYteooz5zwYUctaJpcfJCb8Cc5ycHkCLPOlVakPRk2X6R1YqiEA9xTJnEB+PozxTO0umM0xEMeQgpa8X+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Mp7Qfhrm; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539f4d8ef84so3174249e87.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 11:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729015559; x=1729620359; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qgVZjc/qQxBTME0XwgT07broj1qCt0+6Ia7kOJS88zs=;
        b=Mp7QfhrmTbbSrbNotLJjsnTe9qKc10hoNa6d0XrEfF+Rp7Yz5fWrymJzCWxSSkaGKo
         8vNdlIpsQtfLYEtrIstSEAMKRSqkFEhGn2Nx0e0rC5py7J0L9LZ1ahOt30VsKx6PsVVw
         n1VPB0TTdP/0c5pTq0JK5pmoal0V/O/qSwr6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729015559; x=1729620359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qgVZjc/qQxBTME0XwgT07broj1qCt0+6Ia7kOJS88zs=;
        b=SHkOY+ZS1lFflO1Nk+RPABRkXX2FYIUybx35d+Ufh9jmWcAOwpa6E+MwKnsLQjL5sX
         bvdF3nx2S018eDfpP99SFeyGFo7n6b2vPWT64pz78ZygaPnnlBwFbDzyXpPJyoEsk6p7
         yA1DxCBRfndHDphDVWtWwYzB1RaxXDSUUj0m9BgVEzuX4yMM/zYfa7I/Bc6waTNsfz6W
         CgKS7Y/xFpiS2Cou+ft8+8P9c8bE+0Zer31MibqNimHVk6LOkihLDyQ5eCyAr72p0bF3
         CDBSTvukOkh9FQVuG0cY1IBdG9tCUvqkgt54WaE10sH5tlwJGYTChm2x1WlSKhQUskFm
         oCtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsY0S4RftyMmpkK4O0bJEIxIAdfBQmWG/y28jrImErrjxQ9KoGKcmHehB0UOeb6DF6h3IOo5AUzp6Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb9k9Hx1DC2qUqfKB32dfj4Wv14BevFcBPboz91+cGjKAZvCrY
	Jfvg9G2S87Rp0Quklm2Bw8FVzDDum3faKn93byqTRtx96U5pRTpZHgQ9AsIi8czgr1mYhmD919B
	Yoeg8
X-Google-Smtp-Source: AGHT+IGdFESMbTItx++U35d4QXxs7pMjJlgZKGoAppYnXN3bRskOv8WEvKRVGfINgc9JFc2LoIomwg==
X-Received: by 2002:a05:6512:402a:b0:539:f619:b458 with SMTP id 2adb3069b0e04-539f619b4cbmr4379420e87.22.1729015559473;
        Tue, 15 Oct 2024 11:05:59 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a00013cffsm223177e87.278.2024.10.15.11.05.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2024 11:05:59 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso52642351fa.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 11:05:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVaudam82HpKpQm4F3qmXnF7PVDU0ESqcpUSPx4ud8m+BS9jODM4PR1QTeKCLw8hirMlbRE2mRyukLh@vger.kernel.org
X-Received: by 2002:a05:6512:3046:b0:539:d9e2:9d15 with SMTP id
 2adb3069b0e04-539da4e12eamr7412619e87.29.1729015159647; Tue, 15 Oct 2024
 10:59:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-8-wenst@chromium.org>
In-Reply-To: <20241008073430.3992087-8-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 15 Oct 2024 10:59:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V-00zCEGhp=Buqg2OFikX2TYDK81gXuD7S_+btqKp9JQ@mail.gmail.com>
Message-ID: <CAD=FV=V-00zCEGhp=Buqg2OFikX2TYDK81gXuD7S_+btqKp9JQ@mail.gmail.com>
Subject: Re: [PATCH v8 7/8] platform/chrome: Introduce device tree hardware prober
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 8, 2024 at 12:35=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> Some devices are designed and manufactured with some components having
> multiple drop-in replacement options. These components are often
> connected to the mainboard via ribbon cables, having the same signals
> and pin assignments across all options. These may include the display
> panel and touchscreen on laptops and tablets, and the trackpad on
> laptops. Sometimes which component option is used in a particular device
> can be detected by some firmware provided identifier, other times that
> information is not available, and the kernel has to try to probe each
> device.
>
> This change attempts to make the "probe each device" case cleaner. The
> current approach is to have all options added and enabled in the device
> tree. The kernel would then bind each device and run each driver's probe
> function. This works, but has been broken before due to the introduction
> of asynchronous probing, causing multiple instances requesting "shared"
> resources, such as pinmuxes, GPIO pins, interrupt lines, at the same
> time, with only one instance succeeding. Work arounds for these include
> moving the pinmux to the parent I2C controller, using GPIO hogs or
> pinmux settings to keep the GPIO pins in some fixed configuration, and
> requesting the interrupt line very late. Such configurations can be seen
> on the MT8183 Krane Chromebook tablets, and the Qualcomm sc8280xp-based
> Lenovo Thinkpad 13S.
>
> Instead of this delicate dance between drivers and device tree quirks,
> this change introduces a simple I2C component prober. For any given
> class of devices on the same I2C bus, it will go through all of them,
> doing a simple I2C read transfer and see which one of them responds.
> It will then enable the device that responds.
>
> This requires some minor modifications in the existing device tree.
> The status for all the device nodes for the component options must be
> set to "fail-needs-probe". This makes it clear that some mechanism is
> needed to enable one of them, and also prevents the prober and device
> drivers running at the same time.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Tzung-Bi Shih <tzungbi@kernel.org>
> ---
> Maintainer expects this to be merged through I2C tree.
>
> Changes since v7:
> - Corrected Makefile item order
> - Replaced "failed-needs-probe" with "fail-needs-probe" in commit message
> - Added include of "linux/of.h" for of_machine_is_compatible()
> - Switched to simple probe helpers for trackpads on Hana
>
> Changes since v6:
> - Adapted to new I2C OF prober interface
> - Collected Acked-by
>
> Changes since v5:
> - Adapt to new i2c_of_probe_component() parameters
>
> Changes since v4:
> - Fix Kconfig dependency
> - Update copyright year
> - Drop "linux/of.h" header
> - Include "linux/errno.h"
> - Move |int ret| declaration to top of block
> - Return -ENODEV on no match instead of 0
> - Unregister platform driver and device unconditionally after previous
>   change
>
> Changes since v3:
> - Include linux/init.h
> - Rewrite for loop in driver probe function as suggested by Andy
> - Make prober driver buildable as module
> - Ignore prober errors other than probe deferral
>
> Changes since v2:
> - Addressed Rob's comments
>   - Move remaining driver code to drivers/platform/chrome/
>   - Depend on rather than select CONFIG_I2C
>   - Copy machine check to driver init function
> - Addressed Andy's comments
>   - Explicitly mention "device tree" or OF in driver name, description
>     and Kconfig symbol
>   - Drop filename from inside the file
>   - Switch to passing "struct device *" to shorten lines
>   - Move "ret =3D 0" to just before for_each_child_of_node(i2c_node, node=
)
>   - Make loop variable size_t (instead of unsigned int as Andy asked)
>   - Use PLATFORM_DEVID_NONE instead of raw -1
>   - Use standard goto error path pattern in hw_prober_driver_init()
>
> - Changes since v1:
>   - New patch
> ---
>  drivers/platform/chrome/Kconfig               |  11 ++
>  drivers/platform/chrome/Makefile              |   1 +
>  .../platform/chrome/chromeos_of_hw_prober.c   | 140 ++++++++++++++++++
>  3 files changed, 152 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

