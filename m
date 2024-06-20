Return-Path: <devicetree+bounces-77983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 954B5910952
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 17:09:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 171DC1F22E0F
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 15:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03D31AF686;
	Thu, 20 Jun 2024 15:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="GqqaXCVa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24571AD486
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 15:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718896104; cv=none; b=M54mhaKxukmCkkZYWkY7K4T4IoUzq+bXlAQ6WWjeS6Tu8ozOro9PdVgzeDtJRKgmtXSo9iKrwXNLUK9Hpvz02GGWQYc6yN/3C0+XWS4WDNDWEy4mAhxw7ZOh+riKQPK8X/sl1p5cYVVumPc49Y4rANGKXXNwomCyS4o4CdcuBPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718896104; c=relaxed/simple;
	bh=3GCO67NxDPt/aRdmgDv+rRG/eFuwvr1m3sNphXchNBQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kzSu7Cmvg/i/naPVaSnZ/kQbh383ITj7aXVh2az/9OENkOIZL2kG08UHh39dtyGV/F23mfZz82jbAOGiWYP0q/SX12ikvM/BFGOJCJSd4FQoVKEskqBy8bZgvlUiaTlWXd5vwDz9/J+A4ppzCShblcGwykDUvieU9gqb6G805Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=GqqaXCVa; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52b7ffd9f6eso1146444e87.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 08:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1718896101; x=1719500901; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fqbQ4/LSvNlTgwrSsCzQO6vX4yTeMNAEcNKnVo99eKc=;
        b=GqqaXCVaA/At21hDYMwjUk2HnOUCVzZLz7k2glJuyPhLS5RGOXi/ZShxyWQTNnlvXj
         SPjrH1BYLKqS1CpQxTzSOI27nhAtG4PFep44gJNmpJzNDhFV1UFmE6eRB3IWYZs++JUQ
         dmw9NgBnBJ1g9SsKntumlf5GBmecF6p9qFzMuOP4zPAhvVnbvOhvaaDtviFsFnGP++lh
         VocMFD5Dmnt0K3uh0enK51rz5pEgT3eCKi8KjF/OFxo4vLnCyYWJ9JjGOFrQURjJN68s
         AG/hgblJFcvXpUdK9J2f2fq2rAzIF/dK4Le5BaFP9F81jMwLH9/LwBnzIOiZVV+Tn6lq
         hvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718896101; x=1719500901;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fqbQ4/LSvNlTgwrSsCzQO6vX4yTeMNAEcNKnVo99eKc=;
        b=LAQzVmxezKZ50oxzHA5U2chxt3V8bhSoxg5BNVJVn9TuPlCzJOOwEwuL3YYyFctQdw
         yUPb5fcFMxsRQmVRlRdSlpdDZTcn8kiGV61mggnDZRrZHDujS+rGaPKDcU3mSn2KXUBa
         BXRjZSL/yJBx5GxkExvZdzy1zIWcI63czvYiJ9crNeZ3qfLdfndtn+yHajdd7IERhm43
         oQ9YtjCcAJLqQkU1QYC9mUVNpB+NBF5qLTGgijWY193dQjYsnMA0VGl7eGicc/8tn64O
         6H7+kqjw4ct6GamHDKjJYSm3gRaI8xD6YRMUGzFa6rDzew2FYA/7EadjzApvNnpKFvn/
         nshg==
X-Forwarded-Encrypted: i=1; AJvYcCWLUTgh1vmio0zy+gWAm3HqAg/EZBG3D32Mj5Ja92/qLglMiio/TAA2vhJDA8XZKxCpXoRXMiMbA+y4bZEvxXog/g2q2YetyFJ+Hg==
X-Gm-Message-State: AOJu0YyIMhf5QA0j+XeMI+5M50kOY01T9oaMIhXi+PCYCHQ6ZM9GwLAs
	h4gzqr0zb+yyuFa8Od5pydAU+iQ00WU/bONkH/oh0ykNQyQAqhmOgLk+2I0WrKVKB9JdnPwuIfK
	bu8arY7vlgONmccxhQimxKyPUdH4JQWm1g89Smg==
X-Google-Smtp-Source: AGHT+IHk5geEKnYo5/gFE32I0p9kd/apddmgSDY5fMi4jrRdd+DMk3xtL+dIfzBKUvGjuEK0uQvbBTZ0nLC+IZ8WU2I=
X-Received: by 2002:a19:5e49:0:b0:52c:a574:28f2 with SMTP id
 2adb3069b0e04-52ccaa5d013mr3420657e87.26.1718896100763; Thu, 20 Jun 2024
 08:08:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-2-apatel@ventanamicro.com> <CAJM55Z9hGKo4784N3s3DhWw=nMRKZKcmvZ58x7uVBghExhoc9A@mail.gmail.com>
 <CAK9=C2WP2+gKScUFuoE9782gjSfnDtcLAw01eCwram3LMAStBg@mail.gmail.com>
 <CAJM55Z8ti-ePT0t714h1Za9X3Ns3=Fw0pCu3NZ=7eT76JU_p5g@mail.gmail.com>
 <CAAhSdy1pesbdTfWnFURMJRcy2ujjX+cXtt-cfLDj2CQf2Ua_gw@mail.gmail.com> <CAJM55Z_=94+aMv=ywhih44eF0pR2WXiyx3FcrwRaX6tZto4gpQ@mail.gmail.com>
In-Reply-To: <CAJM55Z_=94+aMv=ywhih44eF0pR2WXiyx3FcrwRaX6tZto4gpQ@mail.gmail.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 20 Jun 2024 20:38:09 +0530
Message-ID: <CAK9=C2XWjtWtV1WbQrX4Cg8KyzjVevMjG18YTgQJbZxi61BFjg@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
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

On Thu, Jun 20, 2024 at 6:40=E2=80=AFPM Emil Renner Berthing
<emil.renner.berthing@canonical.com> wrote:
>
> Anup Patel wrote:
> > On Wed, Jun 19, 2024 at 11:16=E2=80=AFPM Emil Renner Berthing
> > <emil.renner.berthing@canonical.com> wrote:
> > >
> > > Anup Patel wrote:
> > > > On Tue, Jun 18, 2024 at 7:00=E2=80=AFPM Emil Renner Berthing
> > > > <emil.renner.berthing@canonical.com> wrote:
> > > > >
> > > > > Anup Patel wrote:
> > > > > > The PLIC driver does not require very early initialization so c=
onvert
> > > > > > it into a platform driver.
> > > > > >
> > > > > > After conversion, the PLIC driver is probed after CPUs are brou=
ght-up
> > > > > > so setup cpuhp state after context handler of all online CPUs a=
re
> > > > > > initialized otherwise PLIC driver crashes for platforms with mu=
ltiple
> > > > > > PLIC instances.
> > > > > >
> > > > > > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > > > >
> > > > > Hi Anup,
> > > > >
> > > > > Sorry for the late reply to the mailing list, but ever since 6.9 =
where this was
> > > > > applied my Allwinner D1 based boards no longer boot. This is the =
log of my
> > > > > LicheeRV Dock booting plain 6.10-rc4, locking up and then rebooti=
ng due to the
> > > > > the watchdog timing out:
> > > > >
> > > > > https://pastebin.com/raw/nsbzgEKW
> > > > >
> > > > > On 6.10-rc4 I can bring the same board to boot by reverting this =
patch and all
> > > > > patches building on it. Eg.:
> > > > >
> > > > >   git revert e306a894bd51 a7fb69ffd7ce abb720579490 \
> > > > >              956521064780 a15587277a24 6c725f33d67b \
> > > > >              b68d0ff529a9 25d862e183d4 8ec99b033147
> > > >
> > > > Does your board boot with only SBI timer driver enabled ?
> > >
> > > I'm not 100% sure this is what you mean, but with this change I can d=
isable
> > > CONFIG_SUN4I_TIMER:
> > >
> > > diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> > > index f51bb24bc84c..0143545348eb 100644
> > > --- a/arch/riscv/Kconfig.socs
> > > +++ b/arch/riscv/Kconfig.socs
> > > @@ -39,7 +39,6 @@ config ARCH_SUNXI
> > >         bool "Allwinner sun20i SoCs"
> > >         depends on MMU && !XIP_KERNEL
> > >         select ERRATA_THEAD
> > > -       select SUN4I_TIMER
> > >         help
> > >           This enables support for Allwinner sun20i platform hardware=
,
> > >           including boards based on the D1 and D1s SoCs.
> > >
> > >
> > > But unfortunately the board still doesn't boot:
> > > https://pastebin.com/raw/AwRxcfeu
> >
> > I think we should enable debug prints in DD core and see
> > which device is not getting probed due to lack of a provider.
> >
> > Just add "#define DEBUG" at the top in drivers/base/core.c
> > and boot again with "loglevel=3D8" kernel parameter (along with
> > the above change).
>
> With the above changes this is what I get:
> https://pastebin.com/raw/JfRrEahT

You should see prints like below which show producer consumer
relation:

[    0.214589] /soc/rtc@101000 Linked as a fwnode consumer to /soc/plic@c00=
0000
[    0.214966] /soc/serial@10000000 Linked as a fwnode consumer to
/soc/plic@c000000
[    0.215443] /soc/virtio_mmio@10008000 Linked as a fwnode consumer
to /soc/plic@c000000
[    0.216041] /soc/virtio_mmio@10007000 Linked as a fwnode consumer
to /soc/plic@c000000
[    0.216482] /soc/virtio_mmio@10006000 Linked as a fwnode consumer
to /soc/plic@c000000
[    0.216868] /soc/virtio_mmio@10005000 Linked as a fwnode consumer
to /soc/plic@c000000
[    0.217477] /soc/virtio_mmio@10004000 Linked as a fwnode consumer
to /soc/plic@c000000
[    0.217949] /soc/virtio_mmio@10003000 Linked as a fwnode consumer
to /soc/plic@c000000
[    0.218595] /soc/virtio_mmio@10002000 Linked as a fwnode consumer
to /soc/plic@c000000
[    0.219280] /soc/virtio_mmio@10001000 Linked as a fwnode consumer
to /soc/plic@c000000
[    0.219908] /soc/plic@c000000 Linked as a fwnode consumer to
/cpus/cpu@0/interrupt-controller
[    0.220800] /soc/plic@c000000 Linked as a fwnode consumer to
/cpus/cpu@1/interrupt-controller
[    0.221323] /soc/plic@c000000 Linked as a fwnode consumer to
/cpus/cpu@2/interrupt-controller
[    0.221838] /soc/plic@c000000 Linked as a fwnode consumer to
/cpus/cpu@3/interrupt-controller
[    0.222347] /soc/clint@2000000 Linked as a fwnode consumer to
/cpus/cpu@0/interrupt-controller
[    0.222769] /soc/clint@2000000 Linked as a fwnode consumer to
/cpus/cpu@1/interrupt-controller
[    0.223864] /soc/clint@2000000 Linked as a fwnode consumer to
/cpus/cpu@2/interrupt-controller
[    0.224370] /soc/clint@2000000 Linked as a fwnode consumer to
/cpus/cpu@3/interrupt-controller
[    0.225217] /soc/pci@30000000 Linked as a fwnode consumer to
/soc/plic@c000000

To get further prints, I suggest enabling SBI_HVC console and use
"console=3Dhvc0" as kernel parameter.

Regards,
Anup

