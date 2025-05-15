Return-Path: <devicetree+bounces-177745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E15F1AB8E04
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 19:42:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D3695004FB
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:42:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE6D255E44;
	Thu, 15 May 2025 17:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="vL2cIm0q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD718F6E
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747330954; cv=none; b=OqZO9jbrwNoDKvlQrJO/N39EhpXcdXDJtBLEHA9m29r4Hg2VTxSLTJWbC1YKNhT5nrLSV8ODJqF7MvvwLvimVoVB66+XdU244i8YBo3NgVeDym1ASMnq14MDLA3wuGR+uvpf+90mlW71yfx9YufyWYmBj0Iy9v8zUK6zuFN/+0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747330954; c=relaxed/simple;
	bh=6Efq2j6TisofbNrnauKeVT0+gmyAcoW/Ixe4Er3oz20=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QJHbz3VaPf+VwIiCsDeurf/cPfRbTwHaay8ly9kr/Svu8nCfFdjfSKmuQjnx8BKGrnnTV/rcD9dU7JCFr1jiFwue0NALlbR3I+EElBDIKyI4etv+84Qay3T8flozcmiEesz2GjffXmFp6MCLcV6B1Oyj8haj20+C07cKNduglRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=vL2cIm0q; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 78502497A7
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1747330950;
	bh=So1CFTxNLLyhmef/KyhBYu0LuKyl9nOCmDgIo++41wk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=vL2cIm0q5H2SHZn2hxJ71bFfGAoXibms+Z1luCokxVfS78/XrgbI4ynN4FNoBEzrn
	 s/yqTrgq3FWDqvB0O/e6kdkaPBOvzoBIqiSlLKyzGun/ajiC3OG9X3o/oxHlfOHsZH
	 y/gyRyTUssP5f2tTrZ5obOx6GMtIMoL68PsfNq2lVUexqdp4FKwujBMOMy+uAlYZaa
	 jqhlb83CXhrZmsTi5epcqHmn1PD3gAnJlbaYXEROyNRjTORiJ++CsIQZJ1FJENFy7o
	 ogWLxyuOV/tuKpJgO3coMEg472S/VgbnG9Jc316iLwv3GoFbWPKZwAkMVoZfPvLEwU
	 SmpMe8RzLyEBQ==
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-6021d118849so565307eaf.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 10:42:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747330948; x=1747935748;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=So1CFTxNLLyhmef/KyhBYu0LuKyl9nOCmDgIo++41wk=;
        b=NjdxoueEQiy66yxpxPJJOjmgfLxAAOJpH9n0rXTGYnlLFz2dWW/toBVqeejc2LAMsp
         1Hc9KMADFo4XmMK8aSuqJUEO3PyKerN2uZkPK1DmUAIpP6GJnew3PMZdGHKa2TdV/pNq
         41MY4CRlaBqnJMOORc3QmWdE26o1m4XmdrNHF6DE6JGp1Loqw+Snnsj5vSR54QIcCpcl
         3BSrXCIqivBS+jfu7DRIs8/ax7qaD0dlnTMdExpdjAVrWr3ZKvzcWYNlt1PWTEvyvpko
         2Mr//zubakzabkBL9qNcbD5r9O80MvPLZKxEAf7ASYMmXW7nUkM95lw1/qrCwQOy3+9T
         9BLg==
X-Forwarded-Encrypted: i=1; AJvYcCXpLDJ/c8FE7B6IsQxoiQRqkc7gdAyQg8q3h8RGy9m1+Kw7oH001vDpvldLqVMPekgWnQI1suQ808mw@vger.kernel.org
X-Gm-Message-State: AOJu0YxUF+x1CpSp3u0Bi6qI9qVL6jeMwQrBhxif1qEkE3wgy2+Zs58R
	5z69PqMeeHbbDF6IugpDQd4gHjhpI4VssQeomi774kHQytcq1AO4HoW2asQYUoyXvIQlnm17D2h
	6TxgAZBCmJx+dbrD++/olNan/d165kB/mG/xfmmK7lsLc9LLS7P8CAJ9DrnwCou2bC0F3OXjqOt
	qAXAvod2Pape2J42sZOVzg11vvET6/75t07yQ9I6ix/Uq0hi638jxqWfxw20rsBhI2kS4=
X-Gm-Gg: ASbGncueuVbNargQN22ogOc42O6+nVo5Cqc7ohYLQO9f8riqTAZZrYC75eqXklujU8c
	5SoFCsNpWqptyVmvbx88FjrDm9QbIaB6WJbWtAuIMWZwzcMUmCsYIl9ny9wKWUTBdgeRTww==
X-Received: by 2002:a05:6871:4001:b0:2cc:3d66:b6ea with SMTP id 586e51a60fabf-2e3c1fb2766mr261852fac.34.1747330948661;
        Thu, 15 May 2025 10:42:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/OAz819UIHR7o2qpAdFNcz3GjooPhXbSZIsnIvoJM8E3oMutbyhPZIRnkN9DpFMjxtLmZ0O/4DGUc5r1eDrE=
X-Received: by 2002:a05:6871:4001:b0:2cc:3d66:b6ea with SMTP id
 586e51a60fabf-2e3c1fb2766mr261840fac.34.1747330948238; Thu, 15 May 2025
 10:42:28 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:42:26 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:42:26 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250424060605.638678-1-uwu@icenowy.me>
References: <20250424060605.638678-1-uwu@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 15 May 2025 10:42:26 -0700
X-Gm-Features: AX0GCFsKao7zo32U6hevQ8RxcB-ZJSuK65r6ZvSZhpxa-_wyIbzD26PrLzWWrI4
Message-ID: <CAJM55Z_OZ6PSn3YQrrc2bz-PqKvfm76b3+dOjmuJrqGr+HZnQg@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: starfive: jh7110-common: use macros for MMC0 pins
To: Icenowy Zheng <uwu@icenowy.me>, Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Icenowy Zheng wrote:
> The pin names of MMC0 pinmux is defined in the pinctrl dt binding header
> associated with starfive,jh7110-pinctrl .
>
> Include the header file and use these names instead of raw numbers for
> defining MMC0 pinmux.
>
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>

This looks good to me:
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Looking at this doesn't the contents of
arch/riscv/boot/dts/starfive/jh7110-pinfunc.h also belong in
include/dt-bindings/pinctrl/starfive,jh7110-pinctrl.h
or am I missing something?

/Emil
> ---
> This is only a prettying commit. The resulting DTB files have the same
> content with or without this patch (verified by doing sha256sum on
> arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dtb).
>
>  .../boot/dts/starfive/jh7110-common.dtsi      | 21 ++++++++++---------
>  1 file changed, 11 insertions(+), 10 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index c2f70f5e2918f..a2c72b385a905 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -8,6 +8,7 @@
>  #include "jh7110.dtsi"
>  #include "jh7110-pinfunc.h"
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/starfive,jh7110-pinctrl.h>
>
>  / {
>  	aliases {
> @@ -428,16 +429,16 @@ GPOEN_ENABLE,
>  		};
>
>  		mmc-pins {
> -			pinmux = <PINMUX(64, 0)>,
> -				 <PINMUX(65, 0)>,
> -				 <PINMUX(66, 0)>,
> -				 <PINMUX(67, 0)>,
> -				 <PINMUX(68, 0)>,
> -				 <PINMUX(69, 0)>,
> -				 <PINMUX(70, 0)>,
> -				 <PINMUX(71, 0)>,
> -				 <PINMUX(72, 0)>,
> -				 <PINMUX(73, 0)>;
> +			pinmux = <PINMUX(PAD_SD0_CLK, 0)>,
> +				 <PINMUX(PAD_SD0_CMD, 0)>,
> +				 <PINMUX(PAD_SD0_DATA0, 0)>,
> +				 <PINMUX(PAD_SD0_DATA1, 0)>,
> +				 <PINMUX(PAD_SD0_DATA2, 0)>,
> +				 <PINMUX(PAD_SD0_DATA3, 0)>,
> +				 <PINMUX(PAD_SD0_DATA4, 0)>,
> +				 <PINMUX(PAD_SD0_DATA5, 0)>,
> +				 <PINMUX(PAD_SD0_DATA6, 0)>,
> +				 <PINMUX(PAD_SD0_DATA7, 0)>;
>  			bias-pull-up;
>  			drive-strength = <12>;
>  			input-enable;
> --
> 2.49.0
>

