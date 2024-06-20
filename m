Return-Path: <devicetree+bounces-77710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AE690FBC7
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 05:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB529B20A27
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 03:50:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08E8F1CD2B;
	Thu, 20 Jun 2024 03:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="Op1gH3Ib"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C99639
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718855409; cv=none; b=F3RQ+kj9bedEAOyjDdikLCWEMluWEZa2lhUcBjCU9QPuGZ+bGxOTaIikJuDIJIFA0nNKF4qOOMvQy89HD5UgijK51ua6C4Nk7swhcZpj3+UQVNG3Ui54sKzD032WU0hjTv5WBj3p2UI+8DjjO59EY/8kRDcpKL94GIwtrXIIDuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718855409; c=relaxed/simple;
	bh=4pIaraKFetquRvi+mIlKYaMEGmlqA2bMssNDSHn5oFE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bIN0Y0O/yEwWzJim4jhF433lCEIDGUByIrhR9ghhlhuXV1KNV3SuyS8Or4NyiwHU9TW2K4afPMFlWahbU9PKY3hvq/JA9lkOe0FDaqtG9PCVpWG5s0ZqIwEep4dX3tsuGX8T86WmvgLeW3DbHMl0vxbWtSbW1VGZWjRkE7b1qOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=Op1gH3Ib; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3761f8d689fso1709035ab.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 20:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1718855407; x=1719460207; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4hZE/Tf0Mi1j/+dmuzm/OBES5k0vYl42V/5iV4/vGMw=;
        b=Op1gH3Ibh2LOUEjXZaeRdt8IV+oPqBaDRMXf4QTMMV6LP+pdNp6vOhyvKrXE+fZ+Fm
         h9EvaCYQwAeJFT7KnAYE7FZlDul6dYc8BMtalKmHUSCo1WoKOFTB5oxD6NgNpzJC2qwJ
         vWirGxNiWyPijcytcHNIvGzVOQH1kSPb2XB+HGL6fjE1BMEJp5dc2Ll/BJIq0xtsS3qS
         qBbFPxp+WNwBCJuuFjUlI6Qm+S+XFD5d1fqZHwkE8gM7KcZGKdRMSOwK7zoVeDB6yQRr
         KRWfk0QFHaPan/Y9Z9LIYaDGd9ycB3rhIdgA4tyfZ3uvRgd0qeVvgW0iF12T7GyUbdkO
         wjCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718855407; x=1719460207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4hZE/Tf0Mi1j/+dmuzm/OBES5k0vYl42V/5iV4/vGMw=;
        b=MZ/h+GcOYVljM8pGp/70PrpcD61u5ys257HaQL7tWggGiw51T37/bSTKYWXyuxXOzp
         s0Vy1cc5pHvSNO2EU0SjEyrXKkEKSnhqHE7WiMlzGOIQTr3xldutKdTeG5N70DuycnUj
         MkR5hMdbKshgtilPwCPTuxa2pmm14dyECiWp3ATUC4zMFWokSXXVkJYtcOyhD+udvrdb
         JNaqXqriuHhPWqxoFR6gCy7wG6dez5JBOk8obSixzDU5dQoMieMgxK/ZU1T5b4DNDnWR
         rE1ShVJEq0RcF/0fk8NkPzYeJTK8tHV9y52FjW4XwaFpUf5nzW34usUOqaT0nwxT0pV/
         znrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWix+0PBq6lbt71DKtsc9hg9/8dh/g0aAp7/ySc8DN6uzo8JmqCox/6v30SBzjAj3abeVfsj54g9j06C31Iptu85AMpk4qpQLE5lg==
X-Gm-Message-State: AOJu0YzQq1a57gqtAH+uvQbwwMqIYG/dtowZDcakoxkloNcdet1qVXgK
	GmGNsoPmNz8JWBfSoZUFY9kF/Ukc5rrEide4cSGymQqc6QkexBRjbk4oXfllwrdOMXqAC91eTc6
	dCp1RdqBuxAhgSztAqYj/9n6dMYkT7HrY37KRBw==
X-Google-Smtp-Source: AGHT+IGhhLlYZ82l6gl3X+EsNLlepkGD/eRveXzBhTVRmQD8rg+O0oCrJyGSf1cCkIdlCknUK5+bVyVkBaulCaQoMcM=
X-Received: by 2002:a05:6e02:1545:b0:376:148f:d6c6 with SMTP id
 e9e14a558f8ab-3761d70d4b9mr43611515ab.24.1718855407480; Wed, 19 Jun 2024
 20:50:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-2-apatel@ventanamicro.com> <CAJM55Z9hGKo4784N3s3DhWw=nMRKZKcmvZ58x7uVBghExhoc9A@mail.gmail.com>
 <CAK9=C2WP2+gKScUFuoE9782gjSfnDtcLAw01eCwram3LMAStBg@mail.gmail.com> <CAJM55Z8ti-ePT0t714h1Za9X3Ns3=Fw0pCu3NZ=7eT76JU_p5g@mail.gmail.com>
In-Reply-To: <CAJM55Z8ti-ePT0t714h1Za9X3Ns3=Fw0pCu3NZ=7eT76JU_p5g@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 20 Jun 2024 09:19:56 +0530
Message-ID: <CAAhSdy1pesbdTfWnFURMJRcy2ujjX+cXtt-cfLDj2CQf2Ua_gw@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2024 at 11:16=E2=80=AFPM Emil Renner Berthing
<emil.renner.berthing@canonical.com> wrote:
>
> Anup Patel wrote:
> > On Tue, Jun 18, 2024 at 7:00=E2=80=AFPM Emil Renner Berthing
> > <emil.renner.berthing@canonical.com> wrote:
> > >
> > > Anup Patel wrote:
> > > > The PLIC driver does not require very early initialization so conve=
rt
> > > > it into a platform driver.
> > > >
> > > > After conversion, the PLIC driver is probed after CPUs are brought-=
up
> > > > so setup cpuhp state after context handler of all online CPUs are
> > > > initialized otherwise PLIC driver crashes for platforms with multip=
le
> > > > PLIC instances.
> > > >
> > > > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > >
> > > Hi Anup,
> > >
> > > Sorry for the late reply to the mailing list, but ever since 6.9 wher=
e this was
> > > applied my Allwinner D1 based boards no longer boot. This is the log =
of my
> > > LicheeRV Dock booting plain 6.10-rc4, locking up and then rebooting d=
ue to the
> > > the watchdog timing out:
> > >
> > > https://pastebin.com/raw/nsbzgEKW
> > >
> > > On 6.10-rc4 I can bring the same board to boot by reverting this patc=
h and all
> > > patches building on it. Eg.:
> > >
> > >   git revert e306a894bd51 a7fb69ffd7ce abb720579490 \
> > >              956521064780 a15587277a24 6c725f33d67b \
> > >              b68d0ff529a9 25d862e183d4 8ec99b033147
> >
> > Does your board boot with only SBI timer driver enabled ?
>
> I'm not 100% sure this is what you mean, but with this change I can disab=
le
> CONFIG_SUN4I_TIMER:
>
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index f51bb24bc84c..0143545348eb 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -39,7 +39,6 @@ config ARCH_SUNXI
>         bool "Allwinner sun20i SoCs"
>         depends on MMU && !XIP_KERNEL
>         select ERRATA_THEAD
> -       select SUN4I_TIMER
>         help
>           This enables support for Allwinner sun20i platform hardware,
>           including boards based on the D1 and D1s SoCs.
>
>
> But unfortunately the board still doesn't boot:
> https://pastebin.com/raw/AwRxcfeu

I think we should enable debug prints in DD core and see
which device is not getting probed due to lack of a provider.

Just add "#define DEBUG" at the top in drivers/base/core.c
and boot again with "loglevel=3D8" kernel parameter (along with
the above change).

Regards,
Anup

