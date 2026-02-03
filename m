Return-Path: <devicetree+bounces-262194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qM7MFuzZgWlYKgMAu9opvQ
	(envelope-from <devicetree+bounces-262194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:20:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB1D82DC
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:20:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D24F30BD496
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 11:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39BCB333745;
	Tue,  3 Feb 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CR38R0no"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B73C32E733
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 11:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770117514; cv=pass; b=fC/XdMcgDDxnCMk6wIRec/JoXLTicNBGC4EHbknskAaeg2z2PTUzgAiohIdPt8MHTbDu3SpVvEVS1f0/E/hHim/boabH6MXeLIglJBGqBPASufzyqR1KUgzFisuvatIPYPgtT2dcSgAEEI4cDI1Ne9ShqwdMF89KqtYP3/GlZMs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770117514; c=relaxed/simple;
	bh=x0ozsReFvwxqdxxBW0bsucHLklQvL5qKhZ07z2jxlOA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e4MM7Q7WiqHnGZ++v5Bmw5e4qa8W5oOH13RN6tIe0pmH4IGG074sjQjcyJ+2PyB9dfVbqNHd2Q8u8XCWRNLie8b40S8gmTFx0nikF+vwnpO4tuyQ5O9YADzMjcEpgn9vmAEeOEu2fa4zf7vIy8YXZ9zqk8HU8t8da8wh2Nei0sw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CR38R0no; arc=pass smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47ee0291921so52420085e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 03:18:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770117511; cv=none;
        d=google.com; s=arc-20240605;
        b=eDcpy3KqRGAzhYMwMNiTSZxlyXOjo0ztKKE+Gs+gqxSbIrer3z7jTshcEUJny9yjrq
         DbEAH23jXJ4yayvz1f9KlTaglulqJ8zSug0xlQ06/U2LusmarxQ6/lthJ1iA7A0s1y+b
         d+t6ELZzET2L0bU5rqwBWga9NgnAqoOg9R0l/Y18FgJkm2aqqiT8dBCnKdoM9wKRK+mw
         KnuckSeJRqWHwP6KrAqBx55svo+2eX9lE4bO2jPRsN9MwFZ+uQmt+piKcPKzg8GabMQg
         YESz6dAWZCodxEjbIzwEHg3mNrPcuRD2DYyH+6PjjGkgkH9g2jyjsbnKH+QZawjZ9zp8
         1WMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2zZNMGa3yn75FsqDEZyP0PuDAGN3sitzxX2byO47nv0=;
        fh=Kw4f9v8jdlJdj/ipdyz3xondGqJ9ejvGgcwwTmg4nUE=;
        b=TfIE4DrTM8MEwBnUKaL5XKEmvSESIE2F+d1HB11TihGaKMpRw+i/J+KeyZRx5m0SkW
         7JBdQd06pjOKF6eA+0ylkTNL5mS2cWPLEEVGr2MD/dEfmEVmggrsRf7P6c2GsEoz7auG
         6Hx1dDvacA1388R8mzLEPHFBVsytpftNcrDBkMFof45PdjSIetlqVK4FSCj4BG68qPwe
         mhY9dC+ayguFSu/RUfjIvVxk0wV0RdplDE26yr9K/KievazoB4RbbIDLKpFLQobAdupG
         +CaVaPBvi1RlLXiHxPbZAehxXDEd3FXOM+iA8L7sYrgOjnt29ki4EkiwpLGcnaj4CL+c
         hGJA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770117511; x=1770722311; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2zZNMGa3yn75FsqDEZyP0PuDAGN3sitzxX2byO47nv0=;
        b=CR38R0nobPSER2TyZ4NQnKNQFmU8280WcWQeveL1FiVa1jy1p0hTfo/fYR0DxZ/Dfq
         227hwIzSY8zyulWXMhJy1ilRwNdo7bOkpfKGNk/jf/3ic05KANKYyYHfwB9IcTjbiiuj
         p40E0biNTgPNkBryF/S3zEG++0TdkAlUKTdEsZZqEt2n+25QgIMklWtnzoTFzIDCMAbj
         S5fGBmTP94HJCosPKdVubJOMDNkJ1BbUnF2GJNpihtI9H6m3O0rJyF76OV8B2pbWDukj
         n8b3/KXIhhf1WA2dpRpi4dW+LVGqaij7UIXvK0mKzU1cwJnFxljqrv+FgT00wXQwYIPJ
         9kjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770117511; x=1770722311;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2zZNMGa3yn75FsqDEZyP0PuDAGN3sitzxX2byO47nv0=;
        b=CGz9Cbs/UbNf6xerUek2apWFLHjoriXKzfVOreJLG/hTub0/RWpgcP7vW7ezKO2xyd
         pSfbWu/By9zPK4lWvbjW+u5ITuYKebFpZGXHkum6cynAHd2a8B0tsC84fZIH8+7wNLFw
         TdchCjBEE/sFKPYkcP/5DQhnRzSMSWHIkLwrQcxnXoBh/lTHIi3LCfRQE1imZYxXqaec
         q72x+/0xEYf35lPLuIoUc71LQz1HPYiUzsxD8NxlS8k9fm9VH48qQ/YpLLqnZvKez5Z6
         NwE5YNZBGzk/958OguEEriUiNBRVpaP0F8TEKICZTCBvW8dbO1gxcdH+Jo2opmIOnG6D
         O8Kg==
X-Forwarded-Encrypted: i=1; AJvYcCWjVkIMn/6QpVCsHba6GIzf2Rq2exo2pK2nGD2fxP9Hb4Oi8R7xkE4cnpECpkK3u0kc0Fdi2j6fNyD3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6MnkruceBLXcnNFlGZN6aI/0Wtmf3mMvChwfxyD0i7zrBp3Xv
	KSUhMzsBn2J0UhnUpXExmh9Y0ANe797ssr1yJyKVNbDlSxqfjTS6F0CrE59KJrRBxA69L6DPzQO
	WU1mhhY1CWBpqLPhpViDnBLCD5GFq6FTNLw==
X-Gm-Gg: AZuq6aJmzGydSgx7vTx6r4SyhOkiyzKxTwGWvWhlbK31XTvweEusAMr/X/uzb9n86uK
	aPWyEkzhPxELisnD8K+tzP1fSgCejiEOz8H7ZHUI4VltUef+M3wUX1s3vkvKHZr1eUMt0Izrkq/
	DhQNyfH8OyVi2wxchKfyJcy2lUkawkBQEW3uJXQF1i/xHEXTaL6AAwj6s5x42dNkaRsbPAtT2gD
	ltgM+ATofz04rzUMwigByUdCTuv1jTQFVmwsLEL7Q1mCW22oTz/tAYNcQU/PMk09ajcih2M
X-Received: by 2002:a05:600c:1c06:b0:480:6bef:63a0 with SMTP id
 5b1f17b1804b1-482db4d859amr196633815e9.21.1770117510819; Tue, 03 Feb 2026
 03:18:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260201104343.79231-1-clamor95@gmail.com> <20260201104343.79231-7-clamor95@gmail.com>
 <aYHU5g5iOVjrHrE_@google.com>
In-Reply-To: <aYHU5g5iOVjrHrE_@google.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 3 Feb 2026 13:18:19 +0200
X-Gm-Features: AZwV_QheFCGeHv9dTwRKbCZ3hfG3HmOrfJbSWa64fyut6TH7i-1Px0zxlCCElGo
Message-ID: <CAPVz0n0YXJ2KdO2LPJ8gYr_8=TuaEnY+=sVy1AsiiNtJG=nx3w@mail.gmail.com>
Subject: Re: [PATCH v1 6/9] input: keyboard: Add driver for Asus Transformer
 dock multimedia keys
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sebastian Reichel <sre@kernel.org>, 
	=?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	Ion Agorria <ion@agorria.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262194-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 03BB1D82DC
X-Rspamd-Action: no action

=D0=B2=D1=82, 3 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 13:00 Dmitr=
y Torokhov <dmitry.torokhov@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Hi Svyatoslav,
>
> On Sun, Feb 01, 2026 at 12:43:40PM +0200, Svyatoslav Ryhel wrote:
> > +static void asus_ec_input_event(struct input_handle *handle,
> > +                             unsigned int event_type,
> > +                             unsigned int event_code, int value)
> > +{
> > +     struct asus_ec_keys_data *priv =3D handle->handler->private;
> > +
> > +     /* Store special key state */
> > +     if (event_type =3D=3D EV_KEY && event_code =3D=3D KEY_RIGHTALT)
> > +             priv->special_key_pressed =3D !!value;
>
> Is this functionality supposed to be triggered by any keyboard or only
> the dock one?
>

Any keyboard. Dock keyboard is basically a regular keyboard fused with
a multimedia top row.

> Thanks.
>
> --
> Dmitry

