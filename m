Return-Path: <devicetree+bounces-119010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C56B89BC8F6
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 10:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8155A2837D0
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 09:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 887F81D094B;
	Tue,  5 Nov 2024 09:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="praN6Yia"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0932B1C233C
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 09:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730798438; cv=none; b=ZbqdoB5PrezpAuLM8Ez9ppF6BMlgrX0UBFSf31fXNAZUS7aYJOIrJ3M7O5d6IJqGfthdnpumxBsdoHgMjlsXtvAOAU1E+rVBBPbIcuZHY9N8Zy2xAmLtULgafRjnQyr1IxTBNPIfnKGeMCeLSiBWrPNpDZ5Im6L++bao77VOF2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730798438; c=relaxed/simple;
	bh=VwcuckTKVtcNraahCWWlZ1kgOBnfZFDNCYnRJR5O7Fs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r9yrLAgwRHtG6ePQ25rCTpPxydD0HS/1pvJm2LWKyHlP4fbMH6VpfPHDLbPS1cyxSCcAWLt9XkfAGGj+Yoq7ykXcHojVd28OS5PxpfeKo423qfEkA41oRthTnkW9yBlWNrksGbIspfpFcu0w6w8/CSWZWetmK2j55P2KQ9Nzyfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=praN6Yia; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-431695fa98bso41092155e9.3
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 01:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730798434; x=1731403234; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1PhMt1ToIfwBTc4PLIJNIycu8yk8kDbR0tddSdmTi/A=;
        b=praN6Yia7QmyMayA5NyLoYZj2mQlV85aQJGHOAVUUC3R62mUX6o3FKA7m9EIA2g2b9
         F0pnES7k6dQAxwrDSRYcnAiw0Ucu9hqBKwJkx1eDA/FwC1QdgBtTfoX5UsYi8nvgm+UT
         0bPNPwM4cspELFcxtOzQu7eBizyx97a3PcMjWasV/4KDi06ukakeF+clC6GPitEye45+
         s8ilYG/CrOjuVZ4IsCR+zgzv6Ds/ttRacMA5iR14IkVYPGib6khY0Tr2tDdWVreJs/Fy
         1UJ9wnU9yrTwq0JjmBT5mepWJ6Xa/mYdFB+TRs6ybij5190MUGat7uLGaN908Ay4FqBN
         O29Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730798434; x=1731403234;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1PhMt1ToIfwBTc4PLIJNIycu8yk8kDbR0tddSdmTi/A=;
        b=FsUBuJ/uZhimfu1NHfdCWx/8ELvEez1atcbasCKVxkQdRCnb/GLwkTxMZ3YmibMZjm
         VzTZ8FXxX81XoC/QwP8c/HvtNeCORJqqeTWI1rMlHN0lg6YqoadNuXCiOutdvIcEWHBp
         3WRn/hY4ZuL7IPtwvfiDo+If2sRBk3ZhX4MgAgZ3dYTO3SNUpQob9uviuvWvPXbQ+CKr
         Li04lwVK5dB4eeHHqHl4fit2V2qWJCgiamfwa7kyIjlmi1foTcM0CVWdl+Qsy14OpUHw
         F7FmwPnKurk742DwufMMh7RMRf175kYhDbMI0gjOtpl+VAnHbI6sNHPlGxRDQuhTKdGW
         K3xA==
X-Forwarded-Encrypted: i=1; AJvYcCX3JeWjyvpRpoxVdY1wfBxK8pDzEdzz3X+rv1127Pc1WjtWDPbaoiaJUgyWxOZV48U2nQ/Y0zmyde3W@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/NafM5jgjTcOKhscevAVqIQM7wVRYOE2x0hs2KvMpjVmGSuKe
	IsvZVrtwCH/jpdgB8S60b5pLBe8K189xk8hmhbTsIITk5Um5f7NFo0Lnji2giic=
X-Google-Smtp-Source: AGHT+IHkeDrNdzl8z2slRUqjWAJrkax+d8O38lB1++o4VVKlvs1K/sdTRwNA1MpddiPFwirucprjxg==
X-Received: by 2002:a05:600c:354c:b0:42f:7e87:3438 with SMTP id 5b1f17b1804b1-4319ab8d515mr324631815e9.0.1730798434191;
        Tue, 05 Nov 2024 01:20:34 -0800 (PST)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd9ca8eesm208975855e9.43.2024.11.05.01.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 01:20:33 -0800 (PST)
Date: Tue, 5 Nov 2024 10:20:32 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Dumitru Ceclan <dumitru.ceclan@analog.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, 
	Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 3/4] iio: adc: ad_sigma_delta: Add support for reading
 irq status using a GPIO
Message-ID: <6qecwcncfjxphezk6zwwafo5khpiqn4g7tsklrd6wv2xlzaok2@pm3rbfhaolzw>
References: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
 <20241028160748.489596-9-u.kleine-koenig@baylibre.com>
 <a575430a74a7825a2df9fad1a8e073ad0507b0e7.camel@gmail.com>
 <20241030204429.70cdcf35@jic23-huawei>
 <y3amm7yj37lravbk6fcwze3jlllp4extmffqtx4jaoeqjt6uyl@nsdrcy2dk5kr>
 <1de551c284aaa9f4e91f91fa0c4ac570c8b7f2c9.camel@gmail.com>
 <xka5svqs3jbjiqcz6bacih7hjqzjbrugutjii6qusdbqoxfrp5@5hcv3htsjtlp>
 <2760d1a59114d0eec79405c56253aa82268ecba7.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="py2ki72mt5cy6sx3"
Content-Disposition: inline
In-Reply-To: <2760d1a59114d0eec79405c56253aa82268ecba7.camel@gmail.com>


--py2ki72mt5cy6sx3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/4] iio: adc: ad_sigma_delta: Add support for reading
 irq status using a GPIO
MIME-Version: 1.0

Hello Nuno,

On Mon, Nov 04, 2024 at 02:15:49PM +0100, Nuno S=C3=A1 wrote:
> On Mon, 2024-11-04 at 13:49 +0100, Uwe Kleine-K=C3=B6nig wrote:
> > On Thu, Oct 31, 2024 at 01:05:21PM +0100, Nuno S=C3=A1 wrote:
> > > On Thu, 2024-10-31 at 11:40 +0100, Uwe Kleine-K=C3=B6nig wrote:
> > > > On Wed, Oct 30, 2024 at 08:44:29PM +0000, Jonathan Cameron wrote:
> > > > > On Wed, 30 Oct 2024 14:04:58 +0100
> > > > > Nuno S=C3=A1 <noname.nuno@gmail.com> wrote:
> > > > > > Regarding this, I do share some of the concerns already raised =
by Jonathan.
> > > > > > I fear
> > > > > > that we're papering around an issue with the IRQ controller rat=
her than
> > > > > > being an
> > > > > > issue with the device. When I look at irq_disable() docs [1], i=
t feels that
> > > > > > we're
> > > > > > already doing what we're supposed to do. IOW, we disable the la=
zy approach
> > > > > > so we
> > > > > > *should* not get any pending IRQ.
> > > >=20
> > > > I think this is wrong and you always have to be prepared to see an =
irq
> > > > triggering that became pending while masked.
> >=20
> > I did some research, here are my findings:
> >=20
> > https://www.kernel.org/doc/html/v6.12-rc6/core-api/genericirq.html#dela=
yed-interrupt-disable
> > reads:
> >=20
> > 	The interrupt is kept enabled and is masked in the flow handler
> > 	when an interrupt event happens. This prevents losing edge
> > 	interrupts on hardware which does not store an edge interrupt
> > 	event while the interrupt is disabled at the hardware level.
> >=20
> > This suggests that lazy disabling is needed for some controllers that
> > stop their event detection when disabled. I read that as: *Normally* an
> > irq event gets pending in hardware while the irq is disabled.
>=20
> I might be wrong, but I think that the lazy approach is the one for optim=
ization.

It's both. Needed for some controllers *and* an optimisation (that
isn't beneficial in some corner cases).

> I think the reasoning is that __normally__ no more IRQs will come so
> no need to access the HW. But also thinking more on the subject and
> looking at what the lazy approach is doing, I take back what I said in
> previous emails. I *think* the expectation for a received IRQ while
> the line is masked (or disabled?!), is to keep it as pending (both on
> HW - when possible - and in SW).
>=20
> > The lazy disable approach is expected to work fine always, the reason to
> > implement non-lazy disabling is "only" a performance optimisation. See
> > commit e9849777d0e27cdd2902805be51da73e7c79578c.
>=20
> Not sure If I understood you correctly, but I think is the other way arou=
nd?=C2=A0
> Also, as said in the commit, I think it also prevents the same interrupt =
=66rom
> happening twice (in some cases).

The conversation thread isn't complete on lore.kernel.org, so I don't
know for sure, but the way I understand it is: Normally while you handle
an irq no new irq comes in and so it's sensible to do lazy disabling.
Approximately: In 99.9 % of the cases you save 1 =C2=B5s by not masking and
in the remaining 0.1% you get another hard irq that costs you say
500 =C2=B5s. So on average you save: 0.999 * 1 =C2=B5s + 0.001 * (1 - 500) =
=C2=B5s =3D 0.5 =C2=B5s.

However if for a certain device it's normal that another irq comes in
the "improvement" degrades to: In 20 % of the cases you save 1 =C2=B5s and =
in
the remaining 80 % you get a penalty of 500 =C2=B5s. So in this case it's n=
ot
an expected win anymore and you can better stop doing lazy disabling and
invest the time to mask the irq improving the average cost from
- 0.2 * 1 =C2=B5s + 0.8 * 499 =C2=B5s =3D 399.4 =C2=B5s to 1 =C2=B5s.

The interrupt happening twice is not a problem for correctness as the
second one is not given to the device driver but caught in the irq
subsystem that only then disables the irq in hardware and marking it
pending for later consumption. It "only" costs cpu time. (And maybe it's
given to the driver twice after enable_irq is called?)

Looking at the problem at hand with the shared DOUT/=CC=85R=CC=85D=CC=85Y l=
ine: It's
(nearly?) 100% of the cases that the line toggles while the irq is
logically disabled/masked. So it makes sense to do

	irq_set_status_flags(sigma_delta->irq_line, IRQ_DISABLE_UNLAZY);

which however should only have an effect iff the irq controller doesn't
miss an edge while the irq is disabled.

So assuming my understanding is correct, there is something to do about
the raspberry pi gpio controller to prevent setting IRQ_DISABLE_UNLAZY
have an effect, because that one looses events.

> > However that makes me wonder what is the difference between the
> > irq_mask() and irq_disable() callbacks defined in struct irq_chip.
>=20
> Wondering the same...
>=20
> Thanks for digging into this. This has been a long standing thing with si=
gma delta
> ADCs (I'm fairly sure this discussion about being an issue on the IRQ con=
troller or
> not already happened before).

I keep that paragraph in my reply because the question is still open
even though I don't add new infos here.

Best regards
Uwe

--py2ki72mt5cy6sx3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcp410ACgkQj4D7WH0S
/k46vgf/QA9nNoXA/KrXvRA3BKyyoao9Z/c7rffnOd9O2wRboo7cJky1M8JbyGZU
s1Z+3KNq6Qlo4jH4PdhKNHatJkjDGFsLwLde0dIPT4CgE8c3AJOckGAp39VFT0LB
dYuvynlVMGLPLcp4OfkGLkQi6Jh4oNa3SAGIO+GLWL7MsZtGiV4h6Xyl36Sx3H05
JSPT5BKqFWd0ZJ0VPKJTkGOl5V5qO98TEUMB69CUie/8f8CJbanBXP6fYyX2LrJU
bZajRdeYplN1imUp3SrgzRDeI4MhEAJFzmYpqja/kdmx2tkmvGaay8OtC78X8Y+o
SSx1hmsX4xC5qm2wHtinAOIgYb7zPQ==
=dQQr
-----END PGP SIGNATURE-----

--py2ki72mt5cy6sx3--

