Return-Path: <devicetree+bounces-264702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHFkCwVRjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:51:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E9F122F89
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFC10300CC15
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE903659ED;
	Wed, 11 Feb 2026 09:50:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F420352958
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803435; cv=none; b=DaGDD03zCd6aSw3NDJJY/zvnsxTs9eUhN2bWGN8W6RzSEnycwA75l36Ty4LfC37cdHwYBRq+i31yB5zWrUCeh2WZ42kEOD0ziEamiW/edimkqxowC0RpSwV33MeezVYMyDFdGh5HcGTulFJoz3uRKTduyvqS9+ufU732W1AzzEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803435; c=relaxed/simple;
	bh=VtrpV+5E2MYP2bSs7xhjfdUpfePxvZw2l3jpzf7ER7Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JsI5tGntIgHkzkfVuypjc7pbSZQP5thJdDQzABkbJap68PE8cRJGefdASCXWT5QdOqiUtDyzyX4NpOY9ek43DAnWgFcFrbP6PP8Bu45DCvHvgYMst61oabtzl/EouiY8vtTXuUjfBXsljFpsvyPgQexq1ebZux3osWFJaM/7qZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5fdec2df71fso69960137.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:50:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770803433; x=1771408233;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BMZYeGG7ZG/yKFwxj0StAxiw1b41IOFw6Lfjb8iE8V8=;
        b=Vmzgp/08eveBaHcXe4Nt+h4O76eV4vEEH5ZAaLxsQ+F47YE6cLgCZap+QS9oPjVAGd
         TNwbwXyNoNlRK7GMDHpHHSMZQTP2i/GwvbNhiCMOphe0nr4A6iI+Io6L1HwMBP40b062
         nK1cUmbnOejaZvLGVU5opKoD4H+pEvg8eA2Dw872wSDRinPkXHtVYltNDJTM43fE4XIV
         PBVAW3YKzf+MhJfarMJyGsi76jOYGdA2bXh7zqCcpo1qFgkYxUDcrTEIpOlLXQzAg32M
         h/YJjoJZXM/pVz+Xk+u1CMcvG6DSoxg+FUnCc5mMNrxTHSyRqBsGQ//U4LbOGircNccY
         9cZw==
X-Forwarded-Encrypted: i=1; AJvYcCW5KkZLMCG4VE6TftX7agFnomqzxrvBXXt4SxrRUHVSDBVkgNbmcmqUlasxcCaZDv9cP5iIwWMFJHGV@vger.kernel.org
X-Gm-Message-State: AOJu0YyWOt8d+6hQcOUD4BH7ZBToM/aZ1O+BTHrVDDB7a6khWpC/wShq
	MHK+lzilyoVgQIMDZGaywf7tvw6LlDuScYM9nWlNktLFZe+cvnja8oKRa9YVcGqNfx0=
X-Gm-Gg: AZuq6aKo+YqNoSsBA3b2KjYMOrTME7mmRAEtA1WT9/6wRbObJbMlcvutJ0LOgRH5cX1
	JjkMTa5QzJJldEqotyCCrNtKm4zWPfYHPDrKwhYdhs8AmNi2FAqsISxRqj6iLgXZmtFpxJWYJxZ
	FVEmbl86m2tUI7SG+yLlSer9pTUuGGz6Dpkn+6ORNbozlZAGwaTbMocgMsSMSmgMKAWSuhMuDj5
	zmfiqHEgNyOWIhYekS3b8NNW+F75aqlvXfcaSbbJmxv/hE4Y9o1Sxow0ybbeXyVi18Qfe7hUJCe
	nxjyPUjpAP2KbHPog8nDHG+FWHhqnz60B0H3NWq25NIT4hlliWihiugkdGYvoKHvg5sdtPSFAqz
	/m5ueKGEnxXzNPH1PiRxZe0gtOqg1YawYuq4fSxp+kCVjaj5OPq0rO7lVW9o8xrSQTWnHUYwwPl
	HjQuLfsRFOfc7SS0qIN+F8YxK3wzRAJcVR6iQS0E9r+Z0FoBcjh3IpWXojHqfz
X-Received: by 2002:a05:6102:4406:b0:5f5:328e:73ab with SMTP id ada2fe7eead31-5fde43b6332mr551836137.32.1770803433071;
        Wed, 11 Feb 2026 01:50:33 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5fde87fb840sm459399137.3.2026.02.11.01.50.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 01:50:32 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5fdec2df71fso69945137.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:50:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWrjBo0ef/X6TNvcaOfrabM5o2RXmCWgkAj2kA3flbsl2vSiztnhk/MYqP8buUIoS9on8/u0sEkPt3P@vger.kernel.org
X-Received: by 2002:a05:6102:2ad3:b0:5f8:e3a9:4135 with SMTP id
 ada2fe7eead31-5fde41e3eafmr606108137.11.1770803432517; Wed, 11 Feb 2026
 01:50:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <20260211081355.3028947-2-james.hilliard1@gmail.com> <CAMRc=MfgoKmsNAmn3rO2jDL-ZArMX2Jh-n4SnV6rpzRY3KSwuA@mail.gmail.com>
In-Reply-To: <CAMRc=MfgoKmsNAmn3rO2jDL-ZArMX2Jh-n4SnV6rpzRY3KSwuA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Feb 2026 10:50:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWS-ZaL1nLS=C=hjBVJeVtgNYX-XgWf-8Oy4cGt6OMGDg@mail.gmail.com>
X-Gm-Features: AZwV_Qh4Ali32MTB40vjxThNcq8cyjeQWEBbHXHrLxcpziNvcXJ0ME6copCcDgU
Message-ID: <CAMuHMdWS-ZaL1nLS=C=hjBVJeVtgNYX-XgWf-8Oy4cGt6OMGDg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: aggregator: add gpio-aggregator DT compatible
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: James Hilliard <james.hilliard1@gmail.com>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,ew.tq-group.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264702-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,glider.be:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 72E9F122F89
X-Rspamd-Action: no action

Hi Bartosz,

On Wed, 11 Feb 2026 at 10:47, Bartosz Golaszewski <brgl@kernel.org> wrote:
> On Wed, Feb 11, 2026 at 9:14=E2=80=AFAM James Hilliard
> <james.hilliard1@gmail.com> wrote:
> >
> > Add an OF match entry for "gpio-aggregator" to support plain GPIO
> > forwarding from devicetree without delay semantics.
> >
> > This allows exposing selected lines as a logical GPIO controller with
> > stable aggregated offsets, so consumers can reference forwarded lines
> > instead of physical controller offsets. It also allows creating bundled
> > groups of named lines that can be exposed to userspace as a convenient
> > virtual gpiochip interface. Using "gpio-delay" for this case is not
> > suitable because it enables delay features and requires 3-cell GPIO
> > specifiers.
> >
> > Signed-off-by: James Hilliard <james.hilliard1@gmail.com>

> > --- a/drivers/gpio/gpio-aggregator.c
> > +++ b/drivers/gpio/gpio-aggregator.c
> > @@ -1635,6 +1635,9 @@ static int gpio_aggregator_probe(struct platform_=
device *pdev)
> >  }
> >
> >  static const struct of_device_id gpio_aggregator_dt_ids[] =3D {
> > +       {
> > +               .compatible =3D "gpio-aggregator",
> > +       },
> >         {
> >                 .compatible =3D "gpio-delay",
> >                 .data =3D (void *)FWD_FEATURE_DELAY,
> > --
> > 2.43.0
> >
>
> Regardless of the DT bindings - this change is perfectly fine. We do
> that for other "virtual" devices like gpio-sim, gpio-virtuser, etc. I
> would just ask you to document it under
> Documentation/admin-guide/gpio/gpio-aggregator.rst.

This is not a pure virtual device, but for use with actual hardware.

Nacked-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

