Return-Path: <devicetree+bounces-271387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEAkCnEvqWmo2wAAu9opvQ
	(envelope-from <devicetree+bounces-271387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:23:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF5220C951
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8966301E98F
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 07:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E0330AAB3;
	Thu,  5 Mar 2026 07:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WVxmLOeD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CBAC26E706
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 07:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772695400; cv=pass; b=u/RWVz59tUX/B1mVlqLUk6NASoY0LXw/8Tt4kUYMpi34enXR+TCiy9FCIAu3P7/V0JuMwX+vS3bUHD4ckVRiM7bZ0G4CpeIzlWotmePeKlF4BbRYAFzxTAoJGkBbK+AZEmlReWouhck/RBCoWOKMvwD6cudvobIvW5h1NsV5gpQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772695400; c=relaxed/simple;
	bh=6d9iALXQBoNB4cnEhLTGHwkc0K50kFA5oASj6pn8SFU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fw+foWNvUeXf22RfTHwqGOTHSpZfEMHgI64zDQKg/Dk7+FoaHfvMvDBY7PnlcyKARGAXhF9SuvFhLL2XC3/q6JmjeGgDK5LYa+kzScfx7kyNeZer73Pfixb/Ys7gSyT4WiQWfcv2msTVvzPB8L/63kVqtkXGh4FRyaS42V8gIc8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WVxmLOeD; arc=pass smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439c944bb62so1132959f8f.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 23:23:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772695397; cv=none;
        d=google.com; s=arc-20240605;
        b=OLjF9Gu4+bLVjXE/PgXS1KMnpk8a7DsWMWXFYqrKZCdSDCY/iYRbUumcYvCdyAhT3L
         2zBKzdCEHv5otKJ1TRa046DcCQiYHsqLob0u4W8I/e5BfwAibyP/Bb1QxLhT14e39MBq
         NEgrb+E/UmAVuF11BMdzXeW30w73W4fxNxJ4wb1JN/UpzUM0qpWWml4b4V/wy/D1jv1d
         Ce68F16nDmnL0PJMOESLc6ePKQCPSKneOWJQuHAoISvn7hHxZvwzGQxk1ByumyNDHFlU
         Ix9NTgFwozuqU+hZMweVxenfxWn4cW6eLkoY8wrHt/k2JKyqbY4JYE6Urc3W3crSo6DD
         0QXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DfTie6sjjRqoc8VvjGkPKWkDcR9MnH5s+DJKluUMEqw=;
        fh=RHfOHdFQBhHESErdck/BECjvytsTsj+M2TT5SVpBtbg=;
        b=YP88nSkPweyEojhMqAmfygpTkq7QHb2lEO/mIn6B15ENgNGzpbJu0k5Ub9jNfGshtt
         aFX+/zAbUMKQm1d8bS0x57yDJal4cRA706ml0VC9fL7Q1ty/0A6RkxzV6TZwBjoKfWi9
         AgyRcN8Q8CxmywyosOrZqZdIr3suLFciHeFMUWODIgwkvLSSsTFnH8ACuK7tA7zu/obn
         c/huQC33COke0cowfReXjm827YiBEk6L3T30DoJDkwCMOneeTlDDpZoHXMhYJH4j48iW
         LzSq7+8x45SjLp19bhWfBtNgHTMwtxZUPiCIlQq+P0g9FniitQq4NLxm4l7esTSm5Qpa
         armg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772695397; x=1773300197; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DfTie6sjjRqoc8VvjGkPKWkDcR9MnH5s+DJKluUMEqw=;
        b=WVxmLOeDNsssNr2kGSSo3VEVTXtxAyWpQ2ftN+ydHn4Y0CTJUkDHqqxIAUxODlQx/n
         WRCeEvaUgwd6137D71DuI6u87A3WH44qtlR6MCvURdccpeY/H9K+tb4PdyIOlnxM1PnM
         Hl1A+E/Oy0+98H0vNytytTiiED+k8lIoxzKnTbb8Crb/NON2Ls/xmq0/CT07DoRGc0Bg
         ESUIlxJRuUhvxoOnqVX6RiPcz75FB0pcQBbwRYWut/+8r2N14QoRFHgbNLTWSV5qwluM
         Dh+EPr18nhrQSAfnyufOg2TTu5ciWo1IsxrLRQrmwRbMJRwTl9x8p/b6fIz0DslvVDqU
         zbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772695397; x=1773300197;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DfTie6sjjRqoc8VvjGkPKWkDcR9MnH5s+DJKluUMEqw=;
        b=fZKkEIujQSXcW0tbA/X6CkwEUj61P+kOlgs0Yowv0FbcuRITLfaHIIMiGHTdIMnwnh
         UAbdYNZuHBLTfwPJt4Z/5byh3TnNypfOazoFDAJHYY89WyPVLpTUixK4sEZ5jFvjtRLh
         qPqZljJYJWQcA+2u8ikE1qamTDk5wzTYNHq9JEHAw4dWJpreVwwdZ9GTJZc1S8gb3//n
         JLI7gMcB5FSIIsxTaskXAO96oRg0JctfNWpAdill/Ifx+0lwBSOEN1HKC9VqDgG0hfsh
         NkfyaustZ8LbXsvNCpnyU81bAWRaLzJCzhOY86Peu14rLbVGld34YfQmFIidtQo5DO3a
         A1Qw==
X-Forwarded-Encrypted: i=1; AJvYcCVgpOv/KHTyLOUgQ4tghVz6ZynQ2FHwllGW8LsoyuPMzrRN5m5QPTE5cof7Gm6ZXFnsMg3QA7+VMaBH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9lO6qIn8Oj3xGElYRC8jXGM/LCn0UXEPUg4jF+GnaVylLzv99
	WKaf6/X/ae05xAKeORiYeDkvBRtcLRTgdS43IrelCYmP/PttuKLMkmHTSxGOYqBqnMFMw1ISWio
	6HgPi7InLezK9IiWsaVJEKQxkpVenkfg=
X-Gm-Gg: ATEYQzxzf4eF30lgmMsb53s0AatznrvVBqMHGpkDZzVu2dLKveDZHVMHTp9VVhxJj7W
	QOLE4YWh1qeKpq/WXsb1AeYxhAfASlwpU130giwdm8zC2hDX1r27K2Q7V/+yBCSGyNk68bxZpSB
	rkR0je/098e/cRHXSTNuqUVWIt2iJEMBikLwAnSRGsH5jJsB8jn4WNkacxaw3TM0b6TOyauRQnB
	+ljZF6k451h2508dAVqDD0cHcJ9w/ZXg3KQyv+HU3D3hE3wCimaPJzzBzYXcCkkfd3S4/4Q8wYm
	FbZg27vK6OuZOK89K5V13FAJNIj46EBd2UnBLEU=
X-Received: by 2002:a05:6000:430e:b0:439:b791:f91b with SMTP id
 ffacd0b85a97d-439c7fad55cmr8856048f8f.13.1772695396641; Wed, 04 Mar 2026
 23:23:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
 <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com>
 <CALWfF7+gdNqSgzk4uAnVRkG8vT9FwJDV46VXpb26hd7BzdaGcw@mail.gmail.com> <CAABkxwtG2e5LpjS-sScmn46DY3eXd6tyNCc1oNHKqoaO+PVwuA@mail.gmail.com>
In-Reply-To: <CAABkxwtG2e5LpjS-sScmn46DY3eXd6tyNCc1oNHKqoaO+PVwuA@mail.gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Thu, 5 Mar 2026 01:23:05 -0600
X-Gm-Features: AaiRm51FK2TekjfReO5yyq_AsAFtqk-i8QQCiDNrxrloJyJp6EjAnYYZQPYBnc0
Message-ID: <CALWfF7+_wRDW1UpV-Z05OOqQYDH=mS50aqKf46WvdHJubg7gKA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Dennis Gilmore <dennis@ausil.us>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 9AF5220C951
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271387-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,radxa.com,chainsx.cn,kwiboo.se,rock-chips.com,gmail.com,rootcommit.com,cherry.de,lunn.ch,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[honyuenkwun@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ausil.us:email]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 12:50=E2=80=AFAM Dennis Gilmore <dennis@ausil.us> wr=
ote:
>
> On Tue, Mar 3, 2026 at 9:45=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com> =
wrote:
> >
> > On Tue, Mar 3, 2026 at 1:43=E2=80=AFPM Dennis Gilmore <dennis@ausil.us>=
 wrote:
> > >
> > > On Mon, Mar 2, 2026 at 11:57=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.=
com> wrote:
> > > >
> > > > Hi Dennis,
> > > >
> > > > Some curiosities below,
> > > >
> > > > On Sat, Feb 28, 2026 at 2:54=E2=80=AFPM <dennis@ausil.us> wrote:
> > > > <snip>
> > > > > +
> > > > > +       /* Pro uses gpio-leds instead; pwm0 LED is not wired up *=
/
> > > > > +       /delete-node/ pwm-leds;
> > > > <snip>
> > > > > +
> > > > > +       gpio-leds {
> > > > > +               compatible =3D "gpio-leds";
> > > > > +               pinctrl-names =3D "default";
> > > > > +               pinctrl-0 =3D <&leds_rgb>;
> > > > > +
> > > > > +               blue-led {
> > > > > +                       color =3D <LED_COLOR_ID_BLUE>;
> > > > > +                       function =3D LED_FUNCTION_STATUS;
> > > > > +                       gpios =3D <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH=
>;
> > > > How come you decided gpio-leds instead of pwm-leds for this? GPIO1 =
C6
> > > > is muxed with PWM15_IR_M2
> > >
> > > the downstream dts uses gpio-leds  the GPIO comes from the schematic
> > It should be fine to upgrade to pwm-leds when adding into mainline.
> > The Orange 5 Plus did.
> > In the downstream DTS, they used gpio-led for the green led
> > https://github.com/orangepi-xunlong/linux-orangepi/blob/232ed4b97b65da2=
b7b647c4e3c496f8594b9f3f1/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-pl=
us.dts#L31-L36
> > But in the mainline kernel, it was converted to use pwm-led.
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts?id=3D236d225e1ee=
72a28aa7c2b1e39894e4390bbf51c
> >
> > Jimmy
>
> Is there a reason the blue led was not converted from GPIO to PWM, and
> only the green led was?
There is no PWM muxed with GPIO3 A6. So the only option is GPIO.

Jimmy

>
> Dennis

