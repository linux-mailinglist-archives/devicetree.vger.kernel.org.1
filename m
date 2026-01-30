Return-Path: <devicetree+bounces-261250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMgbFPfKfGnaOgIAu9opvQ
	(envelope-from <devicetree+bounces-261250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:15:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB62BBE8D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E5028300DD65
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C1B33066E;
	Fri, 30 Jan 2026 15:14:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A582831DDB8
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 15:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769786099; cv=none; b=NRydYS4zxzW/0KrVTnMpadjj76EuRBNBRRXgabPwbjUzRaLpto8SR43naAJCsGc7ZdDo8ra3PPp/h+KqPIJQTMwk+2bUFwE01mxuBv2Yy+vwZoZII1S+02DfnWXxFqrPljjSrNGhvltCeAvNPyDoHqY/hruJq0DiG8a58o8d8I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769786099; c=relaxed/simple;
	bh=SCFTBM65OjdnEPSOyA/r/B8nbJZrxArFeaTdSVVDLVk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EylycifKLRyIzbkKPcDfjjmY8OHnjwXNcZj+9P+O5DnZ30VOy4vQOfcB38n0l7bs+wfZtazvHyZl+s0T1LSsEzaXm4YDc8hiGcf/TVHSebvAlUQ19yoJ4vTbeC3arS1Mh9jxNkhN+N66463iJsRmbG3iZXxv4kePCpWTsranyS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5f53021703aso710588137.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:14:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769786097; x=1770390897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O5GxIpMewJabp2FPSWHiEBeFWfyS29PfJrKQD476a5o=;
        b=aHcCfe52xq0txEzdqe+IcN20GriUt6FKPjeyZ4Cpy8YGYZeW6Ac+HsTPhU1vscl+Qp
         9PUu7Vg1rsVYXFWxO/uXtmdQLWDgZL12si+lEtwCnXwZh3EmbxHm1jnZixygpqoIIkA4
         94g7OOsPmIppOWlGpWcLkuIxvMOPZe8iAUPLiF2au6ySAEEd/4uTFdBUSVEemWifw5bd
         5k1JL2iZRfY9J2zo2WXPWzh7RtbheN62zOI3k4Y74uttUbgiDvr9HySucqgUaifHF+IY
         czxeswao5lUPrRKSTAEK8M0A5/X/T7FAhalTaaD/x9Lcb9P0vj7Hb/jUiMNlRpns/B7k
         7XMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlP2OvRyGHonXaD7ZDsg91Ey3WQ6rWUe/kzDaEHcvqR7kFxZ6MLgBrg1sjr71GkBJCr5RA9tz8SDjR@vger.kernel.org
X-Gm-Message-State: AOJu0YzFFGYcOF1JcPM6C/eM+C0vae/3ZcTd5tRYxl2tRLHfhlhU/PvO
	PCOAXHFGdsQRDxOhXDomOICteGnWalH9bpApiOezuFC8h9kRZTeK92EMGt2kVnKA
X-Gm-Gg: AZuq6aIEa/HHhr5Cde2hABazRrlkI6wIvKnWaDkjkPnCCiNut60A4yThfDuiLCdH7Yk
	8TbgeFOKvWJfu4H4UWnY6oKrxKaP9diLOzSegS5Mk79esk/oXlnFJAx2HtztD1tYNIyiKytd3Le
	BTr5kumYegb47YUWTJxc09aC1e0rtT6oxbYbuxVwfxqCn5465leG1/Ul2A5Nkl8JlqLCXjFckbm
	U/pYw26ETnp75iHfAZniS0fIUcSba/PnvIpOkK3eWPM4LX0QRghAeXDzO/GHjQb+VM7Tfp5Sfm1
	hEnEehs5+NdZP3u7P/JkKUnD8vbBeohd6yiR2lpS4XnJdcgAS1XOPI4+e6Evp2Z8uRZVoiORY+G
	0zzHfAfzesEdZzsM8mYRdXd7EhJCgbS0KZK0WKfORBAGOyjr9EzABPhPnhY9MRUixDy3XX/2dcc
	WlDo/mr22LLJ79L9SI53eCTlg3eUpkshJNBEJ1Sld0DHeSuVLo
X-Received: by 2002:a05:6102:dcc:b0:5f5:773d:88bb with SMTP id ada2fe7eead31-5f8e25fc5f8mr894471137.28.1769786095063;
        Fri, 30 Jan 2026 07:14:55 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-948724e4feesm2198264241.13.2026.01.30.07.14.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 07:14:54 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94849af2400so633538241.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 07:14:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUIiPW8Aj3cGXBKcvF07aa3vODkOvtJJu15fXYiL53z86ZK1nUVnyOUr2QRdzchQIojmOqJxj8jlvyY@vger.kernel.org
X-Received: by 2002:a05:6102:c0f:b0:4e6:a338:a421 with SMTP id
 ada2fe7eead31-5f8e245a613mr777546137.6.1769786093798; Fri, 30 Jan 2026
 07:14:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120150606.7356-1-ovidiu.panait.rb@renesas.com>
 <20260120150606.7356-5-ovidiu.panait.rb@renesas.com> <CAMuHMdVOCFS-31HA2Uxiu7CSmiOf_XwPk1kijYf_WkD0aJJJMw@mail.gmail.com>
 <TY7P301MB1984CB3A92C79442592B045DD39FA@TY7P301MB1984.JPNP301.PROD.OUTLOOK.COM>
In-Reply-To: <TY7P301MB1984CB3A92C79442592B045DD39FA@TY7P301MB1984.JPNP301.PROD.OUTLOOK.COM>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 30 Jan 2026 16:14:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUwsC96cnsZqkV63hnG=C86G5ymScY3qnLR9v830D4m4Q@mail.gmail.com>
X-Gm-Features: AZwV_Qi6n9e2kcogpnHrc6feOuUgDWyZ2jOoQdQQziRL-Ylwm9-bZFnrkPgSJg0
Message-ID: <CAMuHMdUwsC96cnsZqkV63hnG=C86G5ymScY3qnLR9v830D4m4Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Add
 versa3 clock generator node
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: "magnus.damm" <magnus.damm@gmail.com>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,baylibre.com,bp.renesas.com,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-261250-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.12:email,0.0.0.69:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,renesas.com:email,linux-m68k.org:email]
X-Rspamd-Queue-Id: ACB62BBE8D
X-Rspamd-Action: no action

Hi Ovidiu,

On Fri, 30 Jan 2026 at 14:43, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> > On Tue, 20 Jan 2026 at 16:06, Ovidiu Panait
> > <ovidiu.panait.rb@renesas.com> wrote:
> > > Add versa3 clock generator node. It provides clocks for the RTC, PCIe
> > > and audio devices.
> > >
> > > Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
> >
> > Thanks for your patch!
> >
> > > --- a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> > > +++ b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> > > @@ -108,6 +108,12 @@ vqmmc_sdhi1: regulator-vccq-sdhi1 {
> > >                 states =3D <3300000 0>, <1800000 1>;
> > >         };
> > >
> > > +       x1: x1-clock {
> > > +               compatible =3D "fixed-clock";
> > > +               #clock-cells =3D <0>;
> > > +               clock-frequency =3D <24000000>;
> > > +       };
> > > +
> > >         /* 32.768kHz crystal */
> > >         x6: x6-clock {
> > >                 compatible =3D "fixed-clock";
> > > @@ -277,6 +283,25 @@ raa215300: pmic@12 {
> > >                 clocks =3D <&x6>;
> > >                 clock-names =3D "xin";
> > >         };
> > > +
> > > +       versa3: clock-generator@69 {
> > > +               compatible =3D "renesas,5l35023";
> > > +               reg =3D <0x69>;
> > > +               clocks =3D <&x1>;
> > > +               #clock-cells =3D <1>;
> > > +               assigned-clocks =3D <&versa3 0>,
> > > +                                 <&versa3 1>,
> > > +                                 <&versa3 2>,
> > > +                                 <&versa3 3>,
> > > +                                 <&versa3 4>,
> > > +                                 <&versa3 5>;
> > > +               assigned-clock-rates =3D <24000000>,
> >
> > Shouldn't (at least) qextal_clk and
> >
> > > +                                      <24576000>,
> > > +                                      <32768>,
> >
> > rtxin_clk be overridden to point to the corresponding versa3 outputs?
> > Same comment for [PATCH v2 5/5].
> >
>
> I tried implementing this by overriding qextal_clk and rtxin_clk with
> fixed-factor-clock nodes that reference the versa3 outputs as parents:
>
> --- a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
> @@ -504,7 +504,11 @@ io {
>  };
> =C2=B7
>  &qextal_clk {
> -       clock-frequency =3D <24000000>;
> +       compatible =3D "fixed-factor-clock";
> +       clocks =3D <&versa3 0>;
> +       #clock-cells =3D <0>;
> +       clock-mult =3D <1>;
> +       clock-div =3D <1>;
>  };
> =C2=B7
>  &rtc {
> @@ -512,7 +516,11 @@ &rtc {
>  };
> =C2=B7
>  &rtxin_clk {
> -       clock-frequency =3D <32768>;
> +       compatible =3D "fixed-factor-clock";
> +       clocks =3D <&versa3 2>;
> +       #clock-cells =3D <0>;
> +       clock-mult =3D <1>;
> +       clock-div =3D <1>;
>  };
>
> However, this breaks the boot. The problem seems to be probe
> ordering:
> 1. fixed-factor-clock uses CLK_OF_DECLARE, so it registers very early
> 2. At that point, versa3 clocks are not yet available (since versa3 is
> an I2C device, it is probed much later)
> 3. The clock framework registers the fixed-factor-clock with rate =3D 0
> 4. Consumers (RTC, timers, etc) probe and see rate =3D 0, causing failure=
s
>
> I'm also concerned that if qextal_clk (the main SoC clock) depends on
> versa3, nearly everything would need to defer until the I2C subsystem
> and versa3 driver are ready.
>
> Could you please provide any suggestions on how to handle this?

I meant to override the references to qextal_clk and rtxin_clk, i.e.

    &cpg {
            clocks =3D <&audio_extal_clk>, <&versa3 2>, <&versa3 0>;
    };

However, that could still delay everything, in which case we should
just document the routing in the DTS using comments.

Can you please give it a try?
Thanks!

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

