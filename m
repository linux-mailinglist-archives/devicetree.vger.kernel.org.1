Return-Path: <devicetree+bounces-251995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 987CBCF95F0
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:34:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1395D3002630
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C842FF16F;
	Tue,  6 Jan 2026 16:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Z/9QDxDP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891A228640B
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 16:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767716860; cv=none; b=fV9c3/orYme4qFYz+dc3OWY567d1NiL6V3/9zQlcWDmpVoPnGDpOBA9fI+ev+uvEBGNW5B80Ox1tY08GWyqIzbKfUEraNj1YG5wcS6brXOM+zNYwlzR4b/E3RrvmmA8HDabOlHxLAHaY+p8kH5FKI8HW32gr8AMl1qdLqqWEo1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767716860; c=relaxed/simple;
	bh=4qxe2EeZAfI5QvxYDL8siuAHNYdc42STvjGMc1czfpo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UeF1M5h19aPh5JZ3JHF1Xvk/ahz3FBlPV14UqX2NNgFooD7ZSwisUHzV1fYB2dDeoeBF4ADy/IPiFmcYogfo8GzH1EUkC8Z0WT0fts9PKaIeNtAbWbxNoELBZ8yvUbR5qmVKdTW4VOEfp4WBGBK0WnNb19OuvPwQlba+WFcRs9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Z/9QDxDP; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-64b8b5410a1so1639254a12.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 08:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767716857; x=1768321657; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vzik8nXSR3mn/i9DyKHW0aMjXX+S/DWXAlyIvVyk9CI=;
        b=Z/9QDxDPG2RnnuTejNz+6dGb2Xb1Xe5REqHx4aoTrp99l51zQLcq+Ll0HVax1T1hWo
         Lv0McHW2S6eNxkZnGC2D8LD798DnZ/jny/j9uey7p1h+OPR4vNDxFEKgKpdVe1hBUEqr
         1XBJ/f10Ii+vIgnOM9GiVzOMKxUzPxuyGpsnZtZG4VzxxduyAVHeQiSlR0r9bY4Gqc3X
         N01d2EqWAGRkCw9hTWFGB8vC0jC2BaizQDh+XJcQAxbesFRNth1TYKW5Rr6QF1zwR1wU
         tUQp7ZbnwXYQMvdl8EZbj9IbbBvrbQ6DgMJJ+JleN8L3FLGe+MQJTOPFOTeu0T/LU42W
         1Czg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767716857; x=1768321657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vzik8nXSR3mn/i9DyKHW0aMjXX+S/DWXAlyIvVyk9CI=;
        b=kd0wj8rUBdguwIpkL5clDAqzn+hV117Fs4hnf0+4u5DUy7B8Qjt/JiSGrTUwK7H/z5
         jpsot/5//MhyhIQ+ePb3v7Krzrh8vYoN3NqMZ3BWWs0h9vN0gLJCKHcO/gWCtHN9dv96
         Iuppq7uUlikhyamEF5vjwQyeXNnT3HoB2Z9cn6/AlF1ir+fe/+E40D1qgRbizf/0MMsC
         wtYF3mC3zzc1Idu40wsg8BZe3S882Le9gp8rAXDmArkY+YSI7ylR0QcXjGn7toDyzGdF
         QKfpKPDaMTw1nNChpphtWVczv8IUBdcphQmKzaSzh9wotCTarSEMbhszaNckFH5cZRcG
         i64A==
X-Forwarded-Encrypted: i=1; AJvYcCXumVSvH8ByVGpk98wzClQKHmajlxOfLjprJCvXoVvdNFGvC0+KcceiAVoWF6sZ5WEoNr6sSBe3qmlf@vger.kernel.org
X-Gm-Message-State: AOJu0YyvRUKiBOWV1CY/UHkuUSK7+kbKPCOkYzSiXt2xqStqLkrw1gPP
	aozL3JD+ytsuZvpZx7pVUCGltlEoZ+vAWUIFL6zvLkdoOlVqPo+B6xrceh9hKDCDdL8=
X-Gm-Gg: AY/fxX55bs/PWdRHx0pQapp9DAUJSTQjFlyc40HPxjMevJpBO220IsDk1ycC2pTjJhx
	lJRQn3VilFAUVuVlN6m7sWqYKSCjVABraZYIbpFBqVHUzMXQ0stLVplZsoaeNpogEo+UhlunvTO
	wxZAUgKdrj4jx6gr6AvdxB7X1IwxzqbOL2qXsNWRFxu2Rf5Q59YdDucjEBZkEBlnhHYUBeU1ZQV
	tj8HUwXKUei1+DuTBmpg+ZJZqhexwA/2dcjZCDiLXhXihm5JFHmoUyUYGDoidJ4NgfR8Rho6h/5
	bYGpUVTtewSe6hHsIn60P07m0+6toKp96clF879YAtZm3qMeWo/uLjGays9hmwnoz5Lnk2Z/X1o
	0lVXYs78pYMAXdviU18qWmOyD6F3xfBqsLhjxR3urSfX+xon7HIdYpnyhO+5XUWMh2lGUTcJhlV
	OtP6gWBn4345Nuv2lCh7Smhe69hrs=
X-Google-Smtp-Source: AGHT+IFAk9Nui8g2Wvca+PO/+8m/8D82to1wW+PFqJUMRDqkKSTBkNs3hxMpJZxnAFqxb/4tZ/EvCQ==
X-Received: by 2002:a05:6402:210b:b0:641:15d:6b97 with SMTP id 4fb4d7f45d1cf-6507921efbemr2995418a12.2.1767716856825;
        Tue, 06 Jan 2026 08:27:36 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-6507b9d51c5sm2493981a12.14.2026.01.06.08.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 08:27:36 -0800 (PST)
Date: Tue, 6 Jan 2026 17:27:34 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Richard GENOUD <richard.genoud@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, Joao Schim <joao@schimsalabim.eu>
Subject: Re: [PATCH v2 2/4] pwm: sun50i: Add H616 PWM support
Message-ID: <mu3ciykmtxoaa24mdw7mofpdapbii23qrubw6uzptszok43tta@tq3rguupehwe>
References: <20251217082504.80226-1-richard.genoud@bootlin.com>
 <20251217082504.80226-3-richard.genoud@bootlin.com>
 <en7wscywn3xpw7cxvc2ngwrmjfciglzxgaje5qc5ngiehrjufh@jbvgp2neyzzx>
 <9c55d591-a280-4ed7-91b1-0c867cfff658@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xoh64gb6ddxqpmu6"
Content-Disposition: inline
In-Reply-To: <9c55d591-a280-4ed7-91b1-0c867cfff658@bootlin.com>


--xoh64gb6ddxqpmu6
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/4] pwm: sun50i: Add H616 PWM support
MIME-Version: 1.0

Hello Richard,

On Tue, Jan 06, 2026 at 12:19:59PM +0100, Richard GENOUD wrote:
> Le 24/12/2025 =E0 10:54, Uwe Kleine-K=F6nig a =E9crit :
> > this patch isn't checkpatch clean.
>=20
> Yes, I've seen that.
> It's because checkpatch doesn't detect that PWM_XY_SRC_MUX/GATE/DIV are
> structures
> If I unwrap PWM_XY_SRC_MUX/GATE/DIV and PWM_X_DIV, checkpatch doesn't
> complain anymore (indeed, do/while loops are not allowed at file-scope)

At least add parenthesis around usages of _reg. (And if you know that
checkpatch points out things that you don't agree to, preempting the
critic in the cover letter is a good idea.)

> I can drop PWM_XY_SRC_MUX/GATE/DIV PWM_X_DIV and declare the structures
> directly under PWM_XY_CLK_SRC() and PWM_X_CLK() if you prefer, but I
> find it less readable than the current form.

No strong feeling here.
=20
> > On Wed, Dec 17, 2025 at 09:25:02AM +0100, Richard Genoud wrote:
> > > +#define PWM_XY_SRC_GATE(_pair, _reg)			\
> > > +struct clk_gate gate_xy_##_pair =3D {			\
> > > +	.reg =3D (void *)_reg,				\
> > > +	.bit_idx =3D PWM_XY_CLK_CR_GATE_BIT,		\
> > > +	.hw.init =3D &(struct clk_init_data){		\
> > > +		.ops =3D  &clk_gate_ops,			\
> > > +	}						\
> >=20
> > I would consider
> >=20
> > 	.hw.init.ops =3D ...;
> >=20
> > and
> >=20
> > 	.hw =3D {
> > 		.init =3D {
> > 			.ops =3D ...;
> > 		},
> > 	},
> >=20
> > natural here. The middleway you chose looks strange to me.
>=20
> Actually, it's:
> 	.hw.init->ops =3D ... ;
> That's why I used this middleway construct.

Ah I see. Then it's fine for me.

> > > +#define PWM_XY_SRC_MUX(_pair, _reg)			\
> > > +struct clk_mux mux_xy_##_pair =3D {			\
> > > +	.reg =3D (void *)_reg,				\
> > > +	.shift =3D PWM_XY_CLK_CR_SRC_SHIFT,		\
> > > +	.mask =3D PWM_XY_CLK_CR_SRC_MASK,			\
> >=20
> > Huh, why does this structure has both a shift and a mask value? What is
> > the difference between
> >=20
> > 	.shift =3D 7,
> > 	.mask =3D 1,
> >=20
> > and
> >=20
> > 	.shift =3D 0,
> > 	.mask =3D 1 << 7,
> >=20
> > ? If the latter is equivalent, you could just pass
> > H616_PWM_XY_CLK_CR_SRC and get rid of the extra definitions for _SHIFT
> > and _MASK.
> >=20
> Unfortunately, struct clk_mux wants a shift and an unshifted mask, and
> according to:
> https://elixir.bootlin.com/linux/v6.18.3/source/drivers/clk/clk-mux.c#L93=
-L94
> using a 0 shift and mask =3D 1 << 7 won't work.

How annoying, I put that on my todo list ...

> > > +static inline struct h616_pwm_chip *to_h616_pwm_chip(struct pwm_chip=
 *chip)
> >=20
> > It probably doesn't help much, but conceptually this could be
> >=20
> > 	static inline struct h616_pwm_chip *to_h616_pwm_chip(const struct pwm_=
chip *chip)
> >=20
> Indeed, I'll add that.

If you rename it to h616_pwm_from_chip it even has the driver specific
prefix.

> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int h616_pwm_calc(struct pwm_chip *chip, unsigned int idx,
> > > +			 const struct pwm_state *state)
> > > +{
> > > +	struct h616_pwm_chip *h616chip =3D to_h616_pwm_chip(chip);
> > > +	struct h616_pwm_channel *chan =3D &h616chip->channels[idx];
> > > +	unsigned int cnt, duty_cnt;
> > > +	unsigned long max_rate;
> > > +	long calc_rate;
> > > +	u64 duty, period, freq;
> > > +
> > > +	duty =3D state->duty_cycle;
> > > +	period =3D state->period;
> > > +
> > > +	max_rate =3D clk_round_rate(chan->pwm_clk, UINT32_MAX);
> >=20
> > Huh, is this an artificial limitation? Do you rely on how clk_round_rate
> > picks the return value? (I.e. nearest value? nearest time? round up?
> > round down?)
>=20
> What I want to achieve here is to handle the lowest possible period case.
> Without the bypass, the lowest period is build with the highest clock,
> duty cycle =3D 1 and period cycle =3D 2 (0x10001 in period register)
> So, if the input clock is 100MHz, we have a lowest period of 20ns.
> Now, if we enable the bypass, the period register is ignored and we direc=
tly
> have the 100MHz clock as PWM output, that can act as a 10ns period with 5=
ns
> duty
> So the logic here is to detect this specific lowest period case that can =
be
> achieved by enabling the bypass.
> For that, the highest clock is retrieved and compared to the wanted period
> and duty.
>=20
> Now, I learned the hard way that clk_round_rate() is actually limited to a
> 32 bits value:
> clk_round_rate() calls at one point clk_divider_bestdiv() that uses
> DIV_ROUND_UP_ULL() which in turn uses do_div(n,base):
>   do_div - returns 2 values: calculate remainder and update new dividend
>   @n: uint64_t dividend (will be updated)
>   @base: uint32_t divisor
> So, in order to get the exact highest clock rate, I use clk_round_rate()
> with U32_MAX.

IMHO this should be addressed in the clk framework. And until this
happend the code in the pwm driver needs a verbose comment.
=20
> > > +	dev_dbg(pwmchip_parent(chip), "period=3D%llu cnt=3D%u duty=3D%llu d=
uty_cnt=3D%u\n",
> > > +		period, cnt, duty, duty_cnt);
> >=20
> > This is little helpful without the input parameters.
> >=20
> as
> 	duty =3D state->duty_cycle;
> 	period =3D state->period;
> The input parameters are there, right?
> But I can add the missing idx.

Today I agree, don't know why I missed that. It would be nice to stick
to the format that e.g. pwm-stm32 uses for the input parameters to make
me notice even on busy days that the input parameters are there :-)

> > > +	for (unsigned int i =3D 0; i < data->npwm; i++) {
> >=20
> > Huh, AFAIK we're not using declarations in for loops in the kernel.
>
> Actually, I've read somewhere (in LWN I guess) that Linus seems ok with t=
hat,
> but I'll remove it if you prefer.

If you find your source again, I'd be interested.

Best regards
Uwe

--xoh64gb6ddxqpmu6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmldN/QACgkQj4D7WH0S
/k6a3wf/dyB2OrJF/DAgW2HOZ0tlnIpsQAvUNWwXN8AM1HMaPt4MSdhAioirsfN0
/Aw1KjjVBKXpdbfo2twmv9ZSbREgKxIH6hske49hZVlubzdGwbSkxy61kdL6j1xG
odksjFrtzafYhMt8gC4tAmdSdigtAGF146BBSyrRksobpo4mySFMYUIQmQMnZIM7
znYdQIuYbtMsTkZ7B+uSveguzBgoDPvlzA6E4n6as9mATma6EW5GNw0WOqcdioQt
kh74bbrr+qilk1uS7x7AaMS5HPqL3R0/qiZpxobJkXoSUn36WRqEAGWGmvs1XoYt
5E9L+65geD1aHNOvvn5S3ezdcebtyA==
=mAfF
-----END PGP SIGNATURE-----

--xoh64gb6ddxqpmu6--

