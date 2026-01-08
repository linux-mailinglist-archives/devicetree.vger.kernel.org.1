Return-Path: <devicetree+bounces-252980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DDED058A8
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 308943024533
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 18:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF60330DD2C;
	Thu,  8 Jan 2026 18:16:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1FC30DD01
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 18:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767896189; cv=none; b=WIQANyp96eRQxGAXCHjupcznsSGTdH5pmEC8TpqxtYlyKun4FZCMcrzBfSaE6IaaHy5K/XVnoS6wdfPUd+IsK8deknvT59A7bSQvJChRtUEVrcANTu/vrI5xhjBn881S/KOFMQX3G4RcUz9Q5x7jVR+c5aNqIEoioNAViEiOBvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767896189; c=relaxed/simple;
	bh=K6Z6o40ihTPpiR+Kr8j0TVVtfNVmsUN/rw5oBiuRevE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HmwdouGSIX+Xw87JDIRp8ssrKp52jW2f6cUu3uQJf9RyV4a1o1z9mt6zHMkQevR6WX+tgeXvbAKepOTShU1LiBD2lZkR8EsB3q6thedY7e6LwLjl+TXSfKgj0hM2E1VASOl6HD9O4gdayzxGNJBW5bP2hGAHnKwVZaRFjUaz1Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56021b53e9eso1059293e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 10:16:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767896184; x=1768500984;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zt3wBCEAoEDXtzh+lfzJmSPYLZ4A0fGF3pcV2qxjAOs=;
        b=qXaTWVgetuQsgGG34QrIbBeTGoF/2zAnJx18EBepnqy9yWFE+AlM8WaG3Z8+mtn6y1
         A9ljcUP5XM1Zc/5ZY/ffWDtwqOhEvmJq05EScQexvu/iWyRWTR5UQwBJIcqVp73Gomhe
         ZBXWLrYF1T3qLrUUPxaVvppIehwWiLia5NOf+OWr9jPPYnh14I9GFtVa/5dAUu3Xs0VH
         GMUEX6cWYX1XqSMxMioq1T2gUAPBCHrpXNl4qPgQoqDN3IZuMIJ00hM0Sus0aMpiKVG8
         uBBx+5Cb7jUbkB1JxO8Dt78/mZhYWJgbdd3/ixp4IFziNIyfyr0a76erIP4iZybjLAap
         N+2g==
X-Forwarded-Encrypted: i=1; AJvYcCUEgJBX03dehmV1IpX23nav1zaGdial7EWKIBSai/SykMIfw3DDLmeXzE8LOAoxFSz6Mh4XWAtYePmD@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl+5RWNun4HsIPfhqRldgzJZOsWHxmkhkrqDmnzW0li6nmGEnA
	m7i0FMs5dZfmKbZX6PTlkPIpWddEcRaO6Bwog+kHSPSUJ5YW5yzsekDOcFj+eoF6
X-Gm-Gg: AY/fxX6y/BJYvG25rc5voijZPnJXcd9qW9A4m5+ZRnKY5OPLmA1fUG1kFT02lQQ3Pzs
	OUPltfbiHtSGj8lwGAQwsbXJvaSx3V/qN5AtE+5INYQcMVeGQQL7SDZjsSUdgDZBaHPg+e48VYz
	/KCq5i1C89XmHbrhlZ/vxQ7r4wNJPpHVfEAQygaj0rLSdrUMtuvFuOvF3mmGOBqRHZe44l0m76P
	6zUh0zJkpSNNVIRFc4TlEoJJkFc1BIxPiCNbgw99a6A2cUec1hglHh/sry6GfVHD9IY63UlaVld
	AZp4MLBtUwynlJKMFQbfIn+lEpTTmb7G9koU2yRzIQiLfx3dAg7v/2oAZ/HAGPRMSXPjU0m6MgA
	gTOEtVMPUXsKHeDwYUBAV+wJW7cT9UuVhFlztdeIrD3vgCPL0rlu/V08t37vmjEO6kMALlhRnaN
	Bgm2D+TieAJiYPQjx0L4pd/lZQggQ1yq7jdjQWw0UUrklVGsnz
X-Google-Smtp-Source: AGHT+IE337PkkhMhyINepHXlgLURceWtKS8rwZBcfOVFd6/DCT8/uWBsW4WOfhYZJgej6sofGWzuKg==
X-Received: by 2002:a05:6102:26d1:b0:5db:23ce:3db with SMTP id ada2fe7eead31-5ecb6859dbbmr2766372137.11.1767896183815;
        Thu, 08 Jan 2026 10:16:23 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ecdaf1bab4sm6228629137.2.2026.01.08.10.16.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 10:16:22 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-93f5b804d4aso1184425241.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 10:16:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV6wWR+gqAKBIea3yh+m7GVf7zsv+LFwPPphO7ZCi5BFs+wsUl8ajAUgj0OL0BCKcLisrZ8BEqeMusY@vger.kernel.org
X-Received: by 2002:a05:6102:3908:b0:5ee:a6f8:f925 with SMTP id
 ada2fe7eead31-5eea6f90e16mr713176137.8.1767896182056; Thu, 08 Jan 2026
 10:16:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108165324.11376-1-cosmin-gabriel.tanislav.xa@renesas.com>
 <20260108165324.11376-6-cosmin-gabriel.tanislav.xa@renesas.com>
 <CAMuHMdX0G92JmwneZp1h+AOF-Cit2scVGGWXCBZGwBVmJjUAVg@mail.gmail.com> <TYRPR01MB15619ECA5180E6F630798DDEE8585A@TYRPR01MB15619.jpnprd01.prod.outlook.com>
In-Reply-To: <TYRPR01MB15619ECA5180E6F630798DDEE8585A@TYRPR01MB15619.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 19:16:11 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUs33Y25xV2ML2hMfi=9oZF_qunf+iBytWoCVK6wB9eXw@mail.gmail.com>
X-Gm-Features: AZwV_QhXsBpAEocXJbizxDMe17TBY897URMAJavkibcXrlE9she2ISf152UrKmI
Message-ID: <CAMuHMdUs33Y25xV2ML2hMfi=9oZF_qunf+iBytWoCVK6wB9eXw@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] thermal: renesas: rzg3e: add support for RZ/T2H
 and RZ/N2H
To: Cosmin-Gabriel Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, "magnus.damm" <magnus.damm@gmail.com>, 
	"linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Thu, 8 Jan 2026 at 19:08, Cosmin-Gabriel Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Thu, 8 Jan 2026 at 17:55, Cosmin Tanislav
> > <cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > > The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs expose the
> > > temperature calibration via SMC SIP and do not have a reset for the
> > > TSU peripheral, and use different minimum and maximum temperature values
> > > compared to the already supported RZ/G3E.
> > >
> > > Although the calibration data is stored in an OTP memory, the OTP itself
> > > is not memory-mapped, access to it is done through an OTP controller.
> > >
> > > The OTP controller is only accessible from the secure world,
> > > but the temperature calibration data stored in the OTP is exposed via
> > > SMC.
> > >
> > > Add support for retrieving the calibration data using arm_smcc_smc().
> > >
> > > Add a compatible for RZ/T2H, RZ/N2H can use it as a fallback.
> > >
> > > Reviewed-by: John Madieu <john.madieu.xa@bp.renesas.com>
> > > Tested-by: John Madieu <john.madieu.xa@bp.renesas.com>
> > > Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

> > > --- a/drivers/thermal/renesas/rzg3e_thermal.c
> > > +++ b/drivers/thermal/renesas/rzg3e_thermal.c
> >
> > > @@ -362,6 +366,21 @@ static int rzg3e_thermal_get_syscon_trim(struct rzg3e_thermal_priv *priv)
> > >         return 0;
> > >  }
> > >
> > > +static int rzg3e_thermal_get_smc_trim(struct rzg3e_thermal_priv *priv)
> > > +{
> > > +       struct arm_smccc_res local_res;
> >
> > Missing #include <linux/arm-smccc.h> (on e.g. arm and riscv).
>
> Ack.
>
> > > +
> > > +       arm_smccc_smc(RZ_SIP_SVC_GET_SYSTSU, OTP_TSU_REG_ADR_TEMPLO,
> > > +                     0, 0, 0, 0, 0, 0, &local_res);
> >
> > Can this crash? E.g. if this SMC call is not supported by the firmware?
> >
>
> Default TF-A firmware for RZ/N2H was missing this exact SMC call as it
> was on an older version. All it did was return SMC_UNK, which is -1.
> I checked the code and SMC_UNK is returned in all failure cases.
> So, no crash. And -1 is caught by the 0xFFF check.

OK.

> Oh, maybe I should change the 0xFFF check (the one I just moved into
> rzg3e_thermal_probe()) to use the TSU_CODE_MAX macro too? I just
> noticed it.

Yeah, sounds good.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

