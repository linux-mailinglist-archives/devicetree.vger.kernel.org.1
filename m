Return-Path: <devicetree+bounces-77899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FE3910584
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 15:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B625DB256CD
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 13:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A1AF1AD9EB;
	Thu, 20 Jun 2024 13:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="McegLU7P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860211AD400
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 13:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718889008; cv=none; b=OD2iTBMLkxnX2EP7FY7Jgx9I10rNCwcTltM+4vag3GSvLjg2F7fRXT/Dy2TRjgTVMYoK3Oxs1dQGmylCIOtgmGP+skurp0jjrIP4vwjUdXiFyLO0QuBYsW4dfnAYJwfZGEzCIo8t2ZStBbbrTdPZudvHHQle8L8e7ltWKdzME0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718889008; c=relaxed/simple;
	bh=gdjBTQWDEVOBtX8NqQJCIxboAlgw5kMxXI/nszQmTdI=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uqyBycVZ41PzbHme0htGL9BCMuatHXc9i430IVdTo9HF8LYXTswNs9dP+wBB0fXyYHFjxybtkvRw98CBHCcIewe/xDtYqw4qkiodERKYkYLRWfeT4p7WrX6S+M/PqHhdOKtyI6ZbPx/l1cl9gekyextorhqNhwTOpphBExBqwSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=McegLU7P; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CCEE94124D
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 13:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1718888997;
	bh=cBEqkA9XFFNYFCNoxH+x9nm8QNcAohLnExcrRCNI8yQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=McegLU7PunEqczNw5V3i5n0T4ej6Pu9abM1dARCptdRTAf/UyB5TLkhPWGu+kaeaN
	 a55yvMkSTI67PM0eCRzY2RfHD0xG2Tjs5vYnVFjylnnfg6gqeEvatHHrKzFgAr34/p
	 /bM6eGRqZwdXdDW/Ns08IjwmrogPvUTUCLtnRnsH1hiFFNUDJYUaYNRjahf9GEwKAp
	 qa+aOZSHhuTOXXtzFS7wwNxMLXCrCcjJ5ZuaLTrZJx9fqF7LauTIj0UdR52HLuyeid
	 uS7TuZJrxqaYuho805Dd2VcZzeFAZbdnQy67m1oqJnwDQh4uGWzu4LXg21CDGvDnAp
	 29wK3OnIxXoIQ==
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-705dc6af37dso1024205b3a.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 06:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718888995; x=1719493795;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cBEqkA9XFFNYFCNoxH+x9nm8QNcAohLnExcrRCNI8yQ=;
        b=tSkzbRKuFxZH73CygJV3GErwNojDdNKn+pbKef9IMGpw8W2in+D41uE1z3JNEKndnW
         /iOkRJ2ZePIBsqhMnu7SOaXTJvFssH4f8ph6AyqVX4o70oXB3cPB+y0+X1cXkaI+EXNz
         Qmrzukra6TMkBs05WKfjnSzWdDlVxb45AEadGWjpQha/0l1YtYjnsYbsKiviUIVqF0bl
         tBSuiRGCC+LCAE4dP/4gLuCyOqwELVnUdJk8dlajDfKkYsNAIPz+eFCHEOc5BzkiRebb
         sjG/hrYkgugBRjyLmWb4IJ5l0lR7Pw7PW2PSeEmpd0jg6gX2tdG6ntyk/UNjaxeoSSWs
         +PYw==
X-Forwarded-Encrypted: i=1; AJvYcCV0sFGA1aqYNJo5OVNu02RojYXCJhBVf2HJwSe73XSwh3GTtQE0pNOGSIGypqAT6zg/JBs0+5HqFZCJopjczRg44jfkjEKhctnW4g==
X-Gm-Message-State: AOJu0YwaVrn0Tvv1K2fHs8DRUnyEWI4Y4Z1NU09uesABnXPD9eVB9Pmy
	MfZiflxc/VC9vJ2Pb7EAODK/jGKvPxT3DTshuzNaLChXEiJHErpM/pfjbQuOibGNFpyHgK8ytyy
	Io9HdHpnVDc0FYtI/djwLSm8uZrqv0TRsIzIf/liRKE7I2PyCeMGjrzLj38PZdxn94Kl9WxsMN+
	hJ9PT7DOmbipLg82Ny3qqNpkvzcfiK+jBck6KmqxeL2M87TQb8VA==
X-Received: by 2002:ac8:588f:0:b0:43e:26c1:1244 with SMTP id d75a77b69052e-444a7ac0548mr57767841cf.50.1718888532599;
        Thu, 20 Jun 2024 06:02:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6eCTjNnfu3F3ib5NWq3b3KdavDTGolKno6eVMzl+GyjWyJmaYOBj8Y4jy7Y1eGgGWaRGa2dTIwgT8Nu1YTM8=
X-Received: by 2002:ac8:588f:0:b0:43e:26c1:1244 with SMTP id
 d75a77b69052e-444a7ac0548mr57767431cf.50.1718888532107; Thu, 20 Jun 2024
 06:02:12 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 20 Jun 2024 08:02:11 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CAAhSdy1pesbdTfWnFURMJRcy2ujjX+cXtt-cfLDj2CQf2Ua_gw@mail.gmail.com>
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-2-apatel@ventanamicro.com> <CAJM55Z9hGKo4784N3s3DhWw=nMRKZKcmvZ58x7uVBghExhoc9A@mail.gmail.com>
 <CAK9=C2WP2+gKScUFuoE9782gjSfnDtcLAw01eCwram3LMAStBg@mail.gmail.com>
 <CAJM55Z8ti-ePT0t714h1Za9X3Ns3=Fw0pCu3NZ=7eT76JU_p5g@mail.gmail.com> <CAAhSdy1pesbdTfWnFURMJRcy2ujjX+cXtt-cfLDj2CQf2Ua_gw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 20 Jun 2024 08:02:11 -0500
Message-ID: <CAJM55Z_=94+aMv=ywhih44eF0pR2WXiyx3FcrwRaX6tZto4gpQ@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: Anup Patel <anup@brainfault.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
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

Anup Patel wrote:
> On Wed, Jun 19, 2024 at 11:16=E2=80=AFPM Emil Renner Berthing
> <emil.renner.berthing@canonical.com> wrote:
> >
> > Anup Patel wrote:
> > > On Tue, Jun 18, 2024 at 7:00=E2=80=AFPM Emil Renner Berthing
> > > <emil.renner.berthing@canonical.com> wrote:
> > > >
> > > > Anup Patel wrote:
> > > > > The PLIC driver does not require very early initialization so con=
vert
> > > > > it into a platform driver.
> > > > >
> > > > > After conversion, the PLIC driver is probed after CPUs are brough=
t-up
> > > > > so setup cpuhp state after context handler of all online CPUs are
> > > > > initialized otherwise PLIC driver crashes for platforms with mult=
iple
> > > > > PLIC instances.
> > > > >
> > > > > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > > >
> > > > Hi Anup,
> > > >
> > > > Sorry for the late reply to the mailing list, but ever since 6.9 wh=
ere this was
> > > > applied my Allwinner D1 based boards no longer boot. This is the lo=
g of my
> > > > LicheeRV Dock booting plain 6.10-rc4, locking up and then rebooting=
 due to the
> > > > the watchdog timing out:
> > > >
> > > > https://pastebin.com/raw/nsbzgEKW
> > > >
> > > > On 6.10-rc4 I can bring the same board to boot by reverting this pa=
tch and all
> > > > patches building on it. Eg.:
> > > >
> > > >   git revert e306a894bd51 a7fb69ffd7ce abb720579490 \
> > > >              956521064780 a15587277a24 6c725f33d67b \
> > > >              b68d0ff529a9 25d862e183d4 8ec99b033147
> > >
> > > Does your board boot with only SBI timer driver enabled ?
> >
> > I'm not 100% sure this is what you mean, but with this change I can dis=
able
> > CONFIG_SUN4I_TIMER:
> >
> > diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> > index f51bb24bc84c..0143545348eb 100644
> > --- a/arch/riscv/Kconfig.socs
> > +++ b/arch/riscv/Kconfig.socs
> > @@ -39,7 +39,6 @@ config ARCH_SUNXI
> >         bool "Allwinner sun20i SoCs"
> >         depends on MMU && !XIP_KERNEL
> >         select ERRATA_THEAD
> > -       select SUN4I_TIMER
> >         help
> >           This enables support for Allwinner sun20i platform hardware,
> >           including boards based on the D1 and D1s SoCs.
> >
> >
> > But unfortunately the board still doesn't boot:
> > https://pastebin.com/raw/AwRxcfeu
>
> I think we should enable debug prints in DD core and see
> which device is not getting probed due to lack of a provider.
>
> Just add "#define DEBUG" at the top in drivers/base/core.c
> and boot again with "loglevel=3D8" kernel parameter (along with
> the above change).

With the above changes this is what I get:
https://pastebin.com/raw/JfRrEahT

/Emil

