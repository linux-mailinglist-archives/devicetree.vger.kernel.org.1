Return-Path: <devicetree+bounces-252001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C266CF9876
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 18:05:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36EF9302C10F
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550723321B0;
	Tue,  6 Jan 2026 16:58:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E55932936E
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 16:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767718723; cv=none; b=HN0FRYi5iatX/LzelNGPZdgwp6THMIeW3rAuFZ5fHvVxVFOqmWT49N8GTwLYQcsyEeklSlN2R5sOvY+SVayUQiGOSeE5UGjAzX6HhjhORFSt/l13PIvPHUmm+mAlnK9csZGmAAs4/Bb1G05zimTQldjDwnKwnAm3RtHyvNES6OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767718723; c=relaxed/simple;
	bh=8AfHxkM9Ujg4QHDORz3CiFTGW0rgNoxWeH6HcWXHCq8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KSvWrFxXiQ8pyDpNrCtOQpPUVEP+4UyRBmoAenOJZyI8YR7gr9dPQCQZZ5y385MF0WIqulR+G9I75RwA131uufXuw6j8/e60pTiFHmJjErs5B9bnOk7NgBGH/fFEb0e69g6AMQYucm0C7sCMFiuQixd//46HbD82kcxdC770mFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-597d712c0a7so1211200e87.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 08:58:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767718716; x=1768323516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W+yaMBdttipWH+qCj6rq+qhgb8Gvgy18kNC7/oWi2sk=;
        b=uVPyRMON73HiKbB3/4k9CEFiDzYqF0k6lSlhm/tRf8cZSPC9GSEXPhlpa1/KqkdZJT
         DBIwl2+PIzyBDvsXb8Hlr3xLMBsm2zoqUOJpSrjhWmq/DN4T8LwPGE6KxTa8U14Ysy6S
         lhP+p+2eeyt34+9+rSqemfPuFBOwOGTR9r2e/EwFieURI+hI3LVsoh91xDNMotJCpj1a
         AR0eHLNP2Ds777wJJ3s/9WAXmE5GF/G2Ho9nqu1K+y5JpV1guvjReVdkyahbvrrMVIWD
         gM+BH/M49NVwDEUKAc+EihaFSzRsXOVBh1IWExViPLgpmHOQjvp/cu6/96y8t1lxotUB
         Fx6w==
X-Forwarded-Encrypted: i=1; AJvYcCXP5riahdGMG++5kYUjA/aWnowLytOaM1LR3NhlegtTLyMVfc54vqIT2OqhfMKbrXn7EfCabJDs+BH7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw81Hqpf299OHeVTYnv4b/6+4ThTvBLgMQ4I8x6/aJUDxyM2WO
	kAi9yfvtcuWaep/m0qz7dZhkEr20dZzvUACDCfBuZ52dqycqvxaaFVKZY2evB6Cn
X-Gm-Gg: AY/fxX4yzeeTwy0qmVqzd/NO+fkdzDnyoY0B1WKWE7arhRIEKjEEk5X3JhWp2VOe2oQ
	pfKNSsQlUj2F6UK/9QrpGiapNik3Tn8QSLmG0DxSnSWhtgX5gn5ICu9hUzYKiF3T+oH/oGMuUaq
	M7eSOlsoDO7WzQ3+xopg8w125l3yHISP3mM1/bVW7Jq9FT/r7g1TFWIRdC0AhXbmXA4rt+f3B98
	GXDRV6QPmdkLNAzLvRa6ZWZbXwy+ZxzDGYc/Rbx7HwPN8vqjvc4LXsgdNriIaTgAxUgvaS8/Xw3
	7Iu7bJIOhqZ/dg7xr2MSgVMhj2TL6F0h2nQqdhLexEHaY9k+jiFXLb3Z3R84cEJXxo1C8n0xqeJ
	zEThyfX5kKJf9y2zxXq3h+6pUJQdA490wfRnh9iB3a+mVzSw6vMy4+RKD7LSa0O6GHfOl4l8Cbl
	e+7FYVzUZgsmtFKercbgRHrLwTrj5VYzq99ALVwdZ6HME=
X-Google-Smtp-Source: AGHT+IFoo1ij9OUso83MhVEdg5PZCugbeWLpiL4G7jM6cP4rf6tq2ixk31pOe91HV3haCc9lrm2U9Q==
X-Received: by 2002:ac2:4e04:0:b0:598:f262:165b with SMTP id 2adb3069b0e04-59b65279df4mr1123294e87.8.1767718716233;
        Tue, 06 Jan 2026 08:58:36 -0800 (PST)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com. [209.85.208.178])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d697d4sm675479e87.73.2026.01.06.08.58.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 08:58:34 -0800 (PST)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-382fe06aa94so448681fa.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 08:58:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVJft3ateKHq+H8MCSb8Vemcm9STqMQLec/vkpptuW6s8f83BTqEiJV/p3RuzqbGMSorD+aQS+/ibY9@vger.kernel.org
X-Received: by 2002:a05:651c:154a:b0:382:fb5b:391a with SMTP id
 38308e7fff4ca-382fb5b3d74mr3007881fa.39.1767718713265; Tue, 06 Jan 2026
 08:58:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217082504.80226-1-richard.genoud@bootlin.com>
 <20251217082504.80226-3-richard.genoud@bootlin.com> <en7wscywn3xpw7cxvc2ngwrmjfciglzxgaje5qc5ngiehrjufh@jbvgp2neyzzx>
 <9c55d591-a280-4ed7-91b1-0c867cfff658@bootlin.com> <mu3ciykmtxoaa24mdw7mofpdapbii23qrubw6uzptszok43tta@tq3rguupehwe>
In-Reply-To: <mu3ciykmtxoaa24mdw7mofpdapbii23qrubw6uzptszok43tta@tq3rguupehwe>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 7 Jan 2026 00:58:20 +0800
X-Gmail-Original-Message-ID: <CAGb2v67O8xKUfXg2Xr0+G72upPsp6V=OpXeej8T8JeJf5sWk=A@mail.gmail.com>
X-Gm-Features: AQt7F2oUlgvIASVJbB18PqSaF_gWeVAJrv7ZCEFYwIRXVXpnDHSC_HjANB0daRE
Message-ID: <CAGb2v67O8xKUfXg2Xr0+G72upPsp6V=OpXeej8T8JeJf5sWk=A@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] pwm: sun50i: Add H616 PWM support
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Richard GENOUD <richard.genoud@bootlin.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, Joao Schim <joao@schimsalabim.eu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 7, 2026 at 12:27=E2=80=AFAM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@baylibre.com> wrote:
>
> Hello Richard,
>
> On Tue, Jan 06, 2026 at 12:19:59PM +0100, Richard GENOUD wrote:
> > Le 24/12/2025 =C3=A0 10:54, Uwe Kleine-K=C3=B6nig a =C3=A9crit :
> > > this patch isn't checkpatch clean.
> >
> > Yes, I've seen that.
> > It's because checkpatch doesn't detect that PWM_XY_SRC_MUX/GATE/DIV are
> > structures
> > If I unwrap PWM_XY_SRC_MUX/GATE/DIV and PWM_X_DIV, checkpatch doesn't
> > complain anymore (indeed, do/while loops are not allowed at file-scope)
>
> At least add parenthesis around usages of _reg. (And if you know that
> checkpatch points out things that you don't agree to, preempting the
> critic in the cover letter is a good idea.)
>
> > I can drop PWM_XY_SRC_MUX/GATE/DIV PWM_X_DIV and declare the structures
> > directly under PWM_XY_CLK_SRC() and PWM_X_CLK() if you prefer, but I
> > find it less readable than the current form.
>
> No strong feeling here.
>
> > > On Wed, Dec 17, 2025 at 09:25:02AM +0100, Richard Genoud wrote:
> > > > +#define PWM_XY_SRC_GATE(_pair, _reg)                     \
> > > > +struct clk_gate gate_xy_##_pair =3D {                      \
> > > > + .reg =3D (void *)_reg,                            \
> > > > + .bit_idx =3D PWM_XY_CLK_CR_GATE_BIT,              \
> > > > + .hw.init =3D &(struct clk_init_data){             \
> > > > +         .ops =3D  &clk_gate_ops,                  \
> > > > + }                                               \
> > >
> > > I would consider
> > >
> > >     .hw.init.ops =3D ...;
> > >
> > > and
> > >
> > >     .hw =3D {
> > >             .init =3D {
> > >                     .ops =3D ...;
> > >             },
> > >     },
> > >
> > > natural here. The middleway you chose looks strange to me.
> >
> > Actually, it's:
> >       .hw.init->ops =3D ... ;
> > That's why I used this middleway construct.
>
> Ah I see. Then it's fine for me.
>
> > > > +#define PWM_XY_SRC_MUX(_pair, _reg)                      \
> > > > +struct clk_mux mux_xy_##_pair =3D {                        \
> > > > + .reg =3D (void *)_reg,                            \
> > > > + .shift =3D PWM_XY_CLK_CR_SRC_SHIFT,               \
> > > > + .mask =3D PWM_XY_CLK_CR_SRC_MASK,                 \
> > >
> > > Huh, why does this structure has both a shift and a mask value? What =
is
> > > the difference between
> > >
> > >     .shift =3D 7,
> > >     .mask =3D 1,
> > >
> > > and
> > >
> > >     .shift =3D 0,
> > >     .mask =3D 1 << 7,
> > >
> > > ? If the latter is equivalent, you could just pass
> > > H616_PWM_XY_CLK_CR_SRC and get rid of the extra definitions for _SHIF=
T
> > > and _MASK.
> > >
> > Unfortunately, struct clk_mux wants a shift and an unshifted mask, and
> > according to:
> > https://elixir.bootlin.com/linux/v6.18.3/source/drivers/clk/clk-mux.c#L=
93-L94
> > using a 0 shift and mask =3D 1 << 7 won't work.
>
> How annoying, I put that on my todo list ...
>
> > > > +static inline struct h616_pwm_chip *to_h616_pwm_chip(struct pwm_ch=
ip *chip)
> > >
> > > It probably doesn't help much, but conceptually this could be
> > >
> > >     static inline struct h616_pwm_chip *to_h616_pwm_chip(const struct=
 pwm_chip *chip)
> > >
> > Indeed, I'll add that.
>
> If you rename it to h616_pwm_from_chip it even has the driver specific
> prefix.
>
> > > > +
> > > > + return 0;
> > > > +}
> > > > +
> > > > +static int h616_pwm_calc(struct pwm_chip *chip, unsigned int idx,
> > > > +                  const struct pwm_state *state)
> > > > +{
> > > > + struct h616_pwm_chip *h616chip =3D to_h616_pwm_chip(chip);
> > > > + struct h616_pwm_channel *chan =3D &h616chip->channels[idx];
> > > > + unsigned int cnt, duty_cnt;
> > > > + unsigned long max_rate;
> > > > + long calc_rate;
> > > > + u64 duty, period, freq;
> > > > +
> > > > + duty =3D state->duty_cycle;
> > > > + period =3D state->period;
> > > > +
> > > > + max_rate =3D clk_round_rate(chan->pwm_clk, UINT32_MAX);
> > >
> > > Huh, is this an artificial limitation? Do you rely on how clk_round_r=
ate
> > > picks the return value? (I.e. nearest value? nearest time? round up?
> > > round down?)
> >
> > What I want to achieve here is to handle the lowest possible period cas=
e.
> > Without the bypass, the lowest period is build with the highest clock,
> > duty cycle =3D 1 and period cycle =3D 2 (0x10001 in period register)
> > So, if the input clock is 100MHz, we have a lowest period of 20ns.
> > Now, if we enable the bypass, the period register is ignored and we dir=
ectly
> > have the 100MHz clock as PWM output, that can act as a 10ns period with=
 5ns
> > duty
> > So the logic here is to detect this specific lowest period case that ca=
n be
> > achieved by enabling the bypass.
> > For that, the highest clock is retrieved and compared to the wanted per=
iod
> > and duty.
> >
> > Now, I learned the hard way that clk_round_rate() is actually limited t=
o a
> > 32 bits value:
> > clk_round_rate() calls at one point clk_divider_bestdiv() that uses
> > DIV_ROUND_UP_ULL() which in turn uses do_div(n,base):
> >   do_div - returns 2 values: calculate remainder and update new dividen=
d
> >   @n: uint64_t dividend (will be updated)
> >   @base: uint32_t divisor
> > So, in order to get the exact highest clock rate, I use clk_round_rate(=
)
> > with U32_MAX.
>
> IMHO this should be addressed in the clk framework. And until this
> happend the code in the pwm driver needs a verbose comment.
>
> > > > + dev_dbg(pwmchip_parent(chip), "period=3D%llu cnt=3D%u duty=3D%llu=
 duty_cnt=3D%u\n",
> > > > +         period, cnt, duty, duty_cnt);
> > >
> > > This is little helpful without the input parameters.
> > >
> > as
> >       duty =3D state->duty_cycle;
> >       period =3D state->period;
> > The input parameters are there, right?
> > But I can add the missing idx.
>
> Today I agree, don't know why I missed that. It would be nice to stick
> to the format that e.g. pwm-stm32 uses for the input parameters to make
> me notice even on busy days that the input parameters are there :-)
>
> > > > + for (unsigned int i =3D 0; i < data->npwm; i++) {
> > >
> > > Huh, AFAIK we're not using declarations in for loops in the kernel.
> >
> > Actually, I've read somewhere (in LWN I guess) that Linus seems ok with=
 that,
> > but I'll remove it if you prefer.
>
> If you find your source again, I'd be interested.

IIRC Linus said this is the one case that made sense for "declare anywhere"=
.

I dug up this one:

https://lore.kernel.org/all/CAHk-=3DwgLYqYcw0xv65xrLSR7KDpS_6M+S9737m6NQorH=
GWsXYQ@mail.gmail.com/

 - quote -

The actual C99 version is the sane one which actually makes it easier
and clearer to have loop iterators that are clearly just in loop
scope.

That's a good idea in general, and I have wanted to start using that
in the kernel even aside from some of the loop construct macros.
Because putting variables in natural minimal scope is a GoodThing(tm).

 - end quote -

If you look around the kernel, you will see many for loops that are in
this style now.


ChenYu

