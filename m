Return-Path: <devicetree+bounces-38078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C3D84764E
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 18:38:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 495861C20D77
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 17:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AAF114900B;
	Fri,  2 Feb 2024 17:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Q9BSD9Wl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421A3168B9
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706895515; cv=none; b=cRQy/I4a65VhSvlrW+R6B7A/LpbpBFOKOdJxXkb/CNLyBfd2kHuWW2YRyXcbcS/fO44P0JqYhlANqTdfDUrkoP6yEvtqWQRNJ+zQ5kSuwBej+kxWJe/GjQVX1PXsGi+lFl5Ehv7/LjR86F8GWiB5y7rcoYj52+bRZRhinHAya/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706895515; c=relaxed/simple;
	bh=gMeOk0DboN31GDue6zdH+v5hNgTHVHTQCD4yZisGAvU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fLzp1Hv/sNVoA2tvdqj5TsTU0Z1qjlQGXt2mTjXbV+9Or7jXYmuRjozWyYUr4MqbBt5PRBedW+viV3HniD2uTJHt95Cit0iG9JLc5uJKJpTiBZSBF64RbcvlHI1zNeMgSB8jvxyWOatNpkkvZLXSNKpeO6Yv0SbgEge9PGtRslQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Q9BSD9Wl; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6e1226b30ffso1238295a34.0
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 09:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1706895513; x=1707500313; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=125qZY7mbLGPBHcNyXp+a5vrMM3WFpV/QF8Lkc7h738=;
        b=Q9BSD9Wl9Jswx3XmYq7pdvUcrLEXj5EBmgzEIpQ7bFaX21fC4rKG2fjCAP0pRQN7vA
         6qMJt9kUTfex00A8MkfqwE7Uv2rfwepnOubsvPZNbE2egIX2ZR/ccdPH+FuMnSYpNDv1
         2hbpS/NgjP6um3gJngYC425eAhOn4gm9EPRk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706895513; x=1707500313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=125qZY7mbLGPBHcNyXp+a5vrMM3WFpV/QF8Lkc7h738=;
        b=CCSy4Nt4umzLovAvxNFuJ5jyp5jVxYhEYonsRZzu0XEc0hLCThhtua1HnVrLNgYEi9
         iWG1/4daVl1rFuFwVa+sBikKO0sHwcMybADwZY6Rm8mVq0w+U3ut4XFsx8x+/vnQBqkY
         CpWkg8GqXekFshdHxgkJBgKe1HFHLdC3e/R2iWmAeLWkJ14O9ZYXWyYhI71SbW1dPyrv
         OOGkKutJ3UfV59VWuHLqEThoVHCPyHMY8LQ/ZRNilnBCCu2317pIij62+jT1Pis8DP5o
         +t7yAxfNKiLEIKsfglOrlr9hiZk0Bkp1eJn5cNn4JawPpAirHgpy067oIm4I8pbn8Cyq
         qwSA==
X-Gm-Message-State: AOJu0Yw5bBSE8un54ImseoMGuOD78XKCqHOyGRpuyro8+PwwzJdf1yZ2
	AzPrgZelyqPUknx2KJCO5/WrAMX+Y5/kwgJxWe3HhURxoXxYhet3LMc2bgFeWTcaGGlBZLD0SPP
	HeCvk4GzCIlqKCAKZWO5CRUaII6ahz+7XHVqE
X-Google-Smtp-Source: AGHT+IFniiMmH77EyZiBHuEXf2cZWEQZFRYaIyi8fG4PrGFygt00mq7TaxqEzdxTBCEidE5sBJMD0NwhS1a+m73QRHo=
X-Received: by 2002:a05:6830:d8:b0:6e1:11be:2221 with SMTP id
 x24-20020a05683000d800b006e111be2221mr8322590oto.3.1706895513159; Fri, 02 Feb
 2024 09:38:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240124030458.98408-1-dregan@broadcom.com> <20240124030458.98408-11-dregan@broadcom.com>
 <20240124184027.712b1e47@xps-13> <CAA_RMS42FaiN+Za1iY12o0YUANH9rJarBTBa=9jNn8x6_g-Fng@mail.gmail.com>
 <20240126071913.699c3795@xps-13> <CAA_RMS5gX88v_Qt1csgSL_ffMNsqo2G8B164EB_Hg=hXd620eg@mail.gmail.com>
 <20240129115228.06dc2292@xps-13> <2a3edcf5-7afc-410c-a402-3d8cd3feb1da@broadcom.com>
 <20240130120155.3cb6feed@xps-13> <CAA_RMS577vw=QWN9_NHfmWqt+_cDG22tA01aU019CPNjAgHqJQ@mail.gmail.com>
 <20240130195504.506fb446@xps-13> <bcd9f8a5-7dab-42e6-b860-8a56ebb51cb6@broadcom.com>
 <20240201092558.5499ee6a@xps-13>
In-Reply-To: <20240201092558.5499ee6a@xps-13>
From: David Regan <dregan@broadcom.com>
Date: Fri, 2 Feb 2024 09:38:22 -0800
Message-ID: <CAA_RMS4V=RBzQCxSDbKgqNbnZz+ca-XThyoowMHuFga3jRyUSw@mail.gmail.com>
Subject: Re: [PATCH v3 10/10] mtd: rawnand: brcmnand: allow for on-die ecc
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: William Zhang <william.zhang@broadcom.com>, David Regan <dregan@broadcom.com>, dregan@mail.com, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	computersforpeace@gmail.com, kdasu.kdev@gmail.com, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Joel Peshkin <joel.peshkin@broadcom.com>, 
	Tomer Yacoby <tomer.yacoby@broadcom.com>, Dan Beygelman <dan.beygelman@broadcom.com>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, rafal@milecki.pl, 
	bcm-kernel-feedback-list@broadcom.com, andre.przywara@arm.com, 
	baruch@tkos.co.il, linux-arm-kernel@lists.infradead.org, 
	Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Miqu=C3=A8l,

On Thu, Feb 1, 2024 at 12:26=E2=80=AFAM Miquel Raynal <miquel.raynal@bootli=
n.com> wrote:
>
> Hi William,
>
> > >>>>>>>> This is a double check to turn on/off our hardware ECC.
> > >>>>>>>
> > >>>>>>> I expect the engine to be always disabled. Enable it only when =
you
> > >>>>>>> need (may require an additional patch before this one).
> > >>>>>>
> > >>>>>> We are already turning on the ECC enable at this point,
> > >>>>>> this is just adding the option to turn it off if the NAND chip
> > >>>>>> itself will be doing the ECC instead of our controller.
> > >>>>>
> > >>>>> Sorry if I have not been clear.
> > >>>>>
> > >>>>> This sequence:
> > >>>>> - init
> > >>>>> - enable hw ECC engine
> > >>>>> Is broken.
> > >>>>>   >>>> ECC engine is not enabled for all the cases. Here we only =
intended to enable it for the nand chip that is set to use NAND_ECC_ENGINE_=
TYPE_ON_HOST. The logic here should better change to:
> > >>>> if (chip->ecc.engine_type =3D=3D NAND_ECC_ENGINE_TYPE_ON_HOST)
> > >>>>       brcmnand_set_ecc_enabled(host, 1);
> > >>>> else
> > >>>>       brcmnand_set_ecc_enabled(host, 0);
> > >>>>   >>>>> It *cannot* work as any operation going through exec_op no=
w may
> > >>>>> perform page reads which should be unmodified by the ECC engine. =
You > driver *must* follow the following sequence:
> > >>>>> - init and disable (or keep disabled) the hw ECC engine
> > >>>>> - when you perform a page operation with correction you need to
> > >>>>>      - enable the engine
> > >>>>>      - perform the operation
> > >>>>>      - disable the engine
> > >>>>> Maybe I am missing something here but are you saying the exec_op =
can have different ecc type for page read/write at run time on the same nan=
d chip? I don't see the op instr structure has the ecc type field and thoug=
ht it is only bind to the nand chip and won't change at run time. So looks =
to me the init time setting to the engine based on ecc.engine_type should b=
e sufficient.
> > >>>>
> > >>>> What you described here can work for the hw.ecc read path (ecc.rea=
d_page =3D brcmnand_read_page) which always assumes ecc is enabled. Althoug=
h it is probably not too bad with these two extra operation, it would be be=
tter if we don't have to add anything as our current code does. For the brc=
mnand_read_page_raw,  we currently disable the engine and then re-enable it=
(but we need to fix it to only enable it with hw ecc engine type).  So it i=
s just opposite of you logic but works the same with no impact on the most =
performance critical path.
> > >>>
> > >>> This is not "my" logic, this is the "core's" logic. I am saying: yo=
ur
> > >>> approach is broken because that is not how the API is supposed to w=
ork,
> > >>> but it mostly works in the standard case.
> > >>
> > >> In the interest of minimizing register writes, would it be acceptabl=
e to
> > >> enable/disable ECC at the beginning of a standard
> > >> path transfer but not, after the transfer, turn off the ECC? This sh=
ould not
> > >> affect other standard path operations nor affect the exec_op path as=
 those
> > >> are low level transfers which our ECC engine would not touch and the=
 NAND
> > >> device driver should be responsible for turning on/off its own ECC.
> > >
> > > Do you have legitimate concerns about this register write taking way
> > > more time than I could expect? Because compared to the transfer of a
> > > NAND page + tR/tPROG it should not be noticeable. I don't see how you
> > > could even measure such impact actually, unless the register write do=
es
> > > way more than usual. I'm fine with the above idea if you show me it h=
as
> > > an interest.
> > >
> > Dave did the mtd_speed test and we can see we get consistently ~35KB/s =
slower with the extra enable and disable ecc engine calls in ecc read page =
path.
> >
> > With the change:
> > [   28.148355] mtd_speedtest:   page read speed is 9857 KiB/s
> > [   31.754258] mtd_speedtest: 2 page read speed is 9865 KiB/s
> > Without the change
> > [   56.444735] mtd_speedtest:   page read speed is 9892 KiB/s
> > [   60.042262] mtd_speedtest: 2 page read speed is 9897 KiB/s
>
> I believe if you repeat this 10 times you'll get totally different
> results. I don't think this test on a non RT machine is precise enough
> so that a unique 35kiB difference can be interpreted as being
> significant.
>
> > Although it is only less than 1% drop, it is still something. I underst=
and the procedure you laid out above is the preferred way but with our driv=
er fully control the chip ecc read/write page, ecc read_raw/write_raw page =
function and exec_op path, I don't see where it may not work.
>
> I just told you, the exec_op path runs with ECC enabled. I don't know
> how this controller works. Now if you don't care and are 100% sure this
> is working and future proof, just keep it like this.

Thank you for all your help, it appears this will need further rework
and testing. Since it's not critical to this series I will most likely
pull this patch and take all your good information to prepare for
a future update.

>
> Cheers,
> Miqu=C3=A8l

Thanks!

-Dave

