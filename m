Return-Path: <devicetree+bounces-116154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D97969B1F3A
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 17:38:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DB461F210BB
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 16:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D91027466;
	Sun, 27 Oct 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="f4ardfP3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944C1161
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 16:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730047095; cv=none; b=KAWEO5dJzgy8ROB1GOx0bHgRgjZsU2NUUBQ8o+/yNJeqMgSM6rWiI993yEdFXp601qpOlDQjDpOfTWNE0JqzQUjdSe5os5ZNdbJVeAVW07pR8RIA/tTAr2pjlSmCDH69we38BNHBfYy0HPOL07rN/DgWRCkxhUkOQhmAHpYkW6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730047095; c=relaxed/simple;
	bh=1+lho3OJqfXBcRJa6OsnQPtc6OQNI6CwPGAYPwnS7w0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BSRKO+tSPLwe7tursaIw+cP7NC9I9bj20uhk7ex2m8OZkTXKIulLFyE2BFHYj3iLBIrVM7Fxybi6AAEtm/MKmgFJV+d2BZgMGi4/8CiviofJibLoDGcEEnoiE4nUlFM3pX3a+SZdGW2wa9EPn3fe5hxOfjVnWpuq9P8GJRMJ1ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=f4ardfP3; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 88AE141208
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 16:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1730047091;
	bh=L6fX0ga/wJJ+KuonzpY47wlRqLMP80SVChx+E93Tonc=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=f4ardfP3y2achHxaXM5MzZlWNHTHrsX4LXYARnXctG+ziirSuCWUpD2o6fOK+2u/B
	 r7pr5rZMFn8xT/tNYJcT6brQ9ddPblq0XnQNlYX1huPmqGzQlYigyAMxXEKx9VKxqO
	 qjqvC5Yf40U6obaaj/Ze+xj+FjKYvq4raxZ64iL6RhmnTnTdn1WcHbV3ZAqnFZwGvS
	 IZA8YKF8D1SiU31WgeJPjIxWQesABdAI3YuAqoHfrfRlGySK5R5D/Mhi5liLL9KmoT
	 QP2Pwo9Mb+zVJH10qrijPrgcAwYmSN1C7KKdSbopGaviSe8GpXUtYuVMSA0jw5Xhqx
	 hRgUl4F+j10Nw==
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-288b904d3d3so3071457fac.0
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 09:38:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730047090; x=1730651890;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L6fX0ga/wJJ+KuonzpY47wlRqLMP80SVChx+E93Tonc=;
        b=CIpKAYt+nZFjzTDwBauNnz15O6Sm0wgmRbnZ86cMWYCpC2Lu7WjSi6nItk329K8vuZ
         IrZdhT4Pd9+pwxfGagajV2Ys7MRWMhNslAdgtxs7GxWXJufPNw+yAza0iW/GFumHeCI4
         wdonxcVwzHntfHs1M0JcVPjSU7x8VEI4CCRtbb8oP82l7xCjBw1VElD5PbSECB0goyaY
         XN4HsMvUd6jWOkDZYVyjU+3br6yzqOr2xJgcpjprh92JC1YoVz8XikD8Hl3DWMUIqczR
         kYdlJzW+pmzxV/NqQN9AbkNhfrditFNIrPkGflGzFYv5b8Rm14kjphDyMyvq+Eo1IDZD
         M4yA==
X-Forwarded-Encrypted: i=1; AJvYcCWdBRKhlwCcTii/5gB7rIt+X8RpgFd5J7ytcP9V26jW80dAejP8ntv3gAtkFnGEQZk4DYO6kFtYSDKu@vger.kernel.org
X-Gm-Message-State: AOJu0Yygtfyg/n2XiUQtoFcW8NYDLooiYpmwVFxum8HI7WsFVp8/Rbkr
	Rx/zQxTeLY6oF1sNKzaFdw19wHYxXQ2qr0yRpWrO1ULLqT3/2df46OfKAl+2rZdKcdJQrGRZ8fj
	oOToiXGfjyVZvbhccN0EqBanZpgqZuYFF221VIEbi8dTvSKgoC3VaTwdgihMrik8FGbf3QANZaR
	37z1H5DCQahnighWOS3jBwsaCGnihjFu/Dkqpw/tXrEto5XsOQbg==
X-Received: by 2002:a05:6871:207:b0:277:dc01:75d6 with SMTP id 586e51a60fabf-29051db63f1mr3277938fac.38.1730047089909;
        Sun, 27 Oct 2024 09:38:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFk2PnZTePh4hB8asBsbIbJjk9A8StPDXdojH/EWhG9gZdGzL1o2gl0MrExOQ+Mk6kwusrvyZUu5zJLp8ah8xg=
X-Received: by 2002:a05:6871:207:b0:277:dc01:75d6 with SMTP id
 586e51a60fabf-29051db63f1mr3277891fac.38.1730047088150; Sun, 27 Oct 2024
 09:38:08 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 27 Oct 2024 09:38:07 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241027144448.1813611-3-guodong@riscstar.com>
References: <20241027144448.1813611-1-guodong@riscstar.com> <20241027144448.1813611-3-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 27 Oct 2024 09:38:07 -0700
Message-ID: <CAJM55Z8wzAKEHJjrG5i18hCRRi5rh8y7Fx+SQ4qsTy1g0oWbQg@mail.gmail.com>
Subject: Re: [PATCH v6 2/5] riscv: dts: starfive: jh7110-common: move usb0
 config to board dts
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
> The JH7110 USB0 can operate as a dual-role USB device.  Different
> boards can have different configuration.
>
> For all current boards this device operates in peripheral mode, but
> on a new board this operates in host mode.  This property will no
> longer be common, so define the "dr_mode" property in the board files
> rather than in the common DTSI file.
>
> Signed-off-by: Alex Elder <elder@riscstar.com>
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
> v6: New patch
>
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi              | 5 -----
>  arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts           | 5 +++++
>  arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts        | 5 +++++
>  .../boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi      | 5 +++++
>  4 files changed, 15 insertions(+), 5 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 9e77f79ec162..87ea81e9fed4 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -637,11 +637,6 @@ &uart0 {
>  	status = "okay";
>  };
>
> -&usb0 {
> -	dr_mode = "peripheral";
> -	status = "okay";
> -};
> -
>  &U74_1 {
>  	cpu-supply = <&vdd_cpu>;
>  };
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> index 66ad3eb2fd66..0d248b671d4b 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> @@ -52,3 +52,8 @@ &pwmdac {
>  &spi0 {
>  	status = "okay";
>  };
> +
> +&usb0 {
> +	dr_mode = "peripheral";
> +	status = "okay";
> +};
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
> index dbc8612b8464..d5180c67ac55 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
> @@ -80,3 +80,8 @@ &pwmdac {
>  &spi0 {
>  	status = "okay";
>  };
> +
> +&usb0 {
> +	dr_mode = "peripheral";
> +	status = "okay";
> +};
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index ef93a394bb2f..5f14afb2c24d 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -60,3 +60,8 @@ &pwmdac {
>  &spi0 {
>  	status = "okay";
>  };
> +
> +&usb0 {
> +	dr_mode = "peripheral";
> +	status = "okay";
> +};
> --
> 2.34.1
>

