Return-Path: <devicetree+bounces-107986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4532991104
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 22:59:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7C521C22E97
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 20:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF1CA1AE00C;
	Fri,  4 Oct 2024 20:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="opas+Z2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077281AE006
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 20:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728075539; cv=none; b=NHUuAYcxnSDdfLrtt7iK9cg1gIpiqrOo2lc4VTC3Du25GOjmLS8o+rzsVizEdjJqKnSekZPWWEJSipcCcbE7nNeun9GIoJ3lUPX9hL7YNiI9r0RTO/qSGV7BmwZ1z+SMY8FqaX/gQmky7qbreRcU0TsrD0vu6kq4ix0y18iGalk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728075539; c=relaxed/simple;
	bh=xP/opaOwjv451l1beLSrpPgG341KqLIiRhzQr2JxViI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hP4gdu5lpz/YYxFS8Z7OzlBdWOzYk8S1xkLHBbPzAJaIeaLxJeoAVT20INTbyIndgGVdtjwtEt/VuA6+bktRUzcXT5dKHMyzH2VCd0tkdvS/gB7khX6HDWfNpcXmDdetN/8BhoZDYVqoSsvYLCwrWxs3kvSROXcLhPmiGxcfpPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=opas+Z2U; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42e82f7f36aso22386145e9.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 13:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728075534; x=1728680334; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J8MsopGDBZh89NXCdDaJHBO8hLQ9Mfot/5Rg7RiyCcs=;
        b=opas+Z2UcOjhRSDZaHJS/FxBOhNUnzCK2cwv7a05dAJo14Eer1yiJUzh+mFnGw2RZR
         b2A7Xg0YsDjojOWaMa4T5GPa2Yv92h10GC9USMoJNY+rO2AtA0oCP/KM1oi+E0dJPHj3
         5ICDTxkOCS9rQ4Z6tLmdNJc9juyIZjLjEg1zvf4QkxJOKyNwMx56mN/nE3PL2001oxnH
         hNuRa8CGmX1m4koKvgLmuwSWU3g/JybCAWxcAw69zqjODgyFCvz4kLuH8t1tD2lDIi1X
         Lq6mFS1RqVRtGwrbkbPwJhjxjRfDYqehYFshPnbj7/84Jnd+zfUHu4/QM8v8KfFPT02J
         aVhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728075534; x=1728680334;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J8MsopGDBZh89NXCdDaJHBO8hLQ9Mfot/5Rg7RiyCcs=;
        b=uzS1LrJdpFLwX0qQg0mqsqSy7TRmBEzf1o65YF2oFv397P1VqQZLlUsa3fnRMtUrbz
         P0n02L3dDNZ/Mtc2kL01Nx325mcGKcgKkzn9EFG215TElZtkdsf3EpzUQNId5lPMB346
         3Y9unDe2KP6dta81pvRjjkRUk1Opg0l+O5qohv34utO1nKM9vmt6qbuVHA/+zqqHZaUN
         6WGDazmtZW45Zhu13xPkii5ejKbG0ptXf/vA2slUxxMmDEH9l4uiZ/bXrSIv0WaVLHGZ
         0nNcxdLTiGeJalM8iXzetE2+WXX6BCuOD03SDX97hm543joaVdekye0rgRP26nj9AOa4
         kAEg==
X-Forwarded-Encrypted: i=1; AJvYcCWLIAgremkmlLiQpcFuayVGIt+AZwb2uh7eJRQf5Utx/g6aiCcAhw4mEAG/hMDiCmiS+YQv+WUgk998@vger.kernel.org
X-Gm-Message-State: AOJu0YzG+sYHaxJe0SLBGfY4ve3fO4y+dpQ2KX8LQp0oQondSGDphzJb
	DWZHVbxR5/WhLisTfBA+X9FQGArvBIY6og35VWQnuiLpkGOc+DPf7S4qYHcr9jM=
X-Google-Smtp-Source: AGHT+IG8M/0BflaVAnnJ6R9cDhDwVKnveT6SG8gFhytIaQVvSkL0UKWeFbPjaATzZapVB2zmiX62Xw==
X-Received: by 2002:a05:600c:3b2a:b0:42f:8267:69e6 with SMTP id 5b1f17b1804b1-42f85aa3344mr27754945e9.3.1728075533734;
        Fri, 04 Oct 2024 13:58:53 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:d256:57e2:5fdf:c092])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f89e8973bsm5878455e9.11.2024.10.04.13.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 13:58:53 -0700 (PDT)
Date: Fri, 4 Oct 2024 22:58:49 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: marex@denx.de, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	festevam@gmail.com, francesco@dolcini.it, imx@lists.linux.dev, jun.li@nxp.com, 
	kernel@pengutronix.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, p.zabel@pengutronix.de, 
	pratikmanvar09@gmail.com, robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, 
	xiaoning.wang@nxp.com
Subject: Re: [PATCH v7 1/1] pwm: imx27: workaround of the pwm output bug when
 decrease the duty cycle
Message-ID: <5cvzarqkldstuziokdbxxne75i35odexkcykzikyq2gm6ytdyd@5wkm7mhotgej>
References: <20241004193531.673488-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zsz3f6d3am6ir2bd"
Content-Disposition: inline
In-Reply-To: <20241004193531.673488-1-Frank.Li@nxp.com>


--zsz3f6d3am6ir2bd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 04, 2024 at 03:35:31PM -0400, Frank Li wrote:
> From: Clark Wang <xiaoning.wang@nxp.com>
>=20
> Implement workaround for ERR051198
> (https://www.nxp.com/docs/en/errata/IMX8MN_0N14Y.pdf)
>=20
> PWM output may not function correctly if the FIFO is empty when a new SAR
> value is programmed
>=20
> Description:
>   When the PWM FIFO is empty, a new value programmed to the PWM Sample
>   register (PWM_PWMSAR) will be directly applied even if the current timer
>   period has not expired. If the new SAMPLE value programmed in the
>   PWM_PWMSAR register is less than the previous value, and the PWM counter
>   register (PWM_PWMCNR) that contains the current COUNT value is greater
>   than the new programmed SAMPLE value, the current period will not flip
>   the level. This may result in an output pulse with a duty cycle of 100%.
>=20
> Workaround:
>   Program the current SAMPLE value in the PWM_PWMSAR register before
>   updating the new duty cycle to the SAMPLE value in the PWM_PWMSAR
>   register. This will ensure that the new SAMPLE value is modified during
>   a non-empty FIFO, and can be successfully updated after the period
>   expires.
>=20
> Write the old SAR value before updating the new duty cycle to SAR. This
> avoids writing the new value into an empty FIFO.
>=20
> This only resolves the issue when the PWM period is longer than 2us
> (or <500kHz) because write register is not quick enough when PWM period is
> very short.
>=20
> Reproduce steps:
>   cd /sys/class/pwm/pwmchip1/pwm0
>   echo 2000000000 > period     # It is easy to observe by using long peri=
od
>   echo 1000000000 > duty_cycle
>   echo 1 > enable
>   echo  800000000 > duty_cycle # One full high plus will be seen by scope

That should be "pulse" I guess ------------------^^^^

I would have expected a much lower value for the second write to
duty_cycle. I guess it depends on the machine you run this on if this
hits the race window.

> Fixes: 166091b1894d ("[ARM] MXC: add pwm driver for i.MX SoCs")
> Reviewed-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Clark Wang <xiaoning.wang@nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change from v6 to v7
> - Add continue write for < 500hz case to try best to workaround this
> problem.
>=20
> Change from v5 to v6
> - KHz to KHz
> - sar to SAR
> - move comments above if
>=20
> Change from v4 to v5
> - fix typo PMW & If
> - using imx->mmio_base + MX3_PWMSAR
>=20
> Change from v3 to v4
> - none, wrong bump version number
> Change from v2 to v3
> - simple workaround implement.
> - add reproduce steps.
>=20
> Change from v1 to v2
> - address comments in https://lore.kernel.org/linux-pwm/20211221095053.uz=
4qbnhdqziftymw@pengutronix.de/
>   About disable/enable pwm instead of disable/enable irq:
>   Some pmw periphal may sensitive to period. Disable/enable pwm will
> increase period, althouhg it is okay for most case, such as LED backlight
> or FAN speed. But some device such servo may require strict period.
>=20
> - address comments in https://lore.kernel.org/linux-pwm/d72d1ae5-0378-4ba=
c-8b77-0bb69f55accd@gmx.net/
>   Using official errata number
>   fix typo 'filp'
>   add {} for else
>=20
> I supposed fixed all previous issues, let me know if I missed one.
> ---
>  drivers/pwm/pwm-imx27.c | 75 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 74 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/pwm/pwm-imx27.c b/drivers/pwm/pwm-imx27.c
> index 9e2bbf5b4a8ce..00a7189ba46ca 100644
> --- a/drivers/pwm/pwm-imx27.c
> +++ b/drivers/pwm/pwm-imx27.c
> @@ -26,6 +26,7 @@
>  #define MX3_PWMSR			0x04    /* PWM Status Register */
>  #define MX3_PWMSAR			0x0C    /* PWM Sample Register */
>  #define MX3_PWMPR			0x10    /* PWM Period Register */
> +#define MX3_PWMCNR			0x14    /* PWM Counter Register */
> =20
>  #define MX3_PWMCR_FWM			GENMASK(27, 26)
>  #define MX3_PWMCR_STOPEN		BIT(25)
> @@ -223,6 +224,8 @@ static int pwm_imx27_apply(struct pwm_chip *chip, str=
uct pwm_device *pwm,
>  	struct pwm_imx27_chip *imx =3D to_pwm_imx27_chip(chip);
>  	unsigned long long c;
>  	unsigned long long clkrate;
> +	unsigned long flags;
> +	int val;
>  	int ret;
>  	u32 cr;
> =20
> @@ -263,7 +266,77 @@ static int pwm_imx27_apply(struct pwm_chip *chip, st=
ruct pwm_device *pwm,
>  		pwm_imx27_sw_reset(chip);
>  	}
> =20
> -	writel(duty_cycles, imx->mmio_base + MX3_PWMSAR);
> +	/*
> +	 * This is a limited workaround. When the SAR FIFO is empty, the new
> +	 * write value will be directly applied to SAR even the current period
> +	 * is not over.
> +	 *
> +	 *           =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
> +	 * PWM OUTPUT                     =E2=94=82
> +	 *                                =E2=94=94=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80
> +	 *
> +	 *           =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
> +	 * Counter   =E2=94=82       XXXXXXXXXXXXXX                         =E2=
=94=82
> +	 *           =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
> +	 *                   =E2=96=B2            =E2=96=B2
> +	 *                   =E2=94=82            =E2=94=82
> +	 *                 New SAR      Old SAR
> +	 *
> +	 *           XXXX  Errata happen window

Hmm, ok, so SAR is the register value that implements the duty cycle
setting. And if a new SAR is written, it is directly applied to the
hardware and this way it can happen (if SAR_new < counter < SAR_old)
that no falling edge happens in the current period. Right?

If so, I think the depicted PWM output is misleading. I'd describe and
picture it as follows:

	/*
	 * At each clock tick the hardware compares the SAR value with
	 * the current counter. If they are equal the output is changed
	 * to the inactive level. As a new SAR value is applied
	 * immediately to the currently running period, it can happen
	 * that no falling edge happens in a period and so the output is
	 * active for a whole period. Consider a change from
         *     ________
	 *    /        \______/
         *    ^      *        ^
	 * to
         *     ____   =20
	 *    /    \__________/
         *    ^               ^
	 *
	 * where SAR is written at the time marked by *. The counter
	 * didn't reach the old (bigger) value because it was changed
	 * before the counter reached that value and when the new value
	 * becomes active it is already lower than the current counter
	 * and so doesn't trigger either while the counter continues to
	 * grow. So the resulting waveform looks as follows:
	 *
         *     ________        ____________________
	 *    /        \______/                    \__________/
         *    ^               ^      *        ^               ^
	 *    |<-- old SAR -->|               |<-- new SAR -->|
	 *
	 * that is the output is active for a whole period.
	 */

> +	 *
> +	 * If the new SAR value is less than the old one, and the counter is
> +	 * greater than the new SAR value (see above diagram XXXX), the current
> +	 * period will not flip the level. This will result in a pulse with a
> +	 * duty cycle of 100%.
> +	 *
> +	 * Check new SAR less than old SAR and current counter is in errata
> +	 * windows, write extra old SAR into FIFO and new SAR will effect at
> +	 * next period.
> +	 *
> +	 * Sometime period is quite long, such as over 1 second. If add old SAR
> +	 * into FIFO unconditional, new SAR have to wait for next period. It
> +	 * may be too long.
> +	 *
> +	 * Turn off the interrupt to ensure that not IRQ and schedule happen
> +	 * during above operations. If any irq and schedule happen, counter
> +	 * in PWM will be out of data and take wrong action.
> +	 *
> +	 * Add a safety margin 1.5us because it needs some time to complete
> +	 * IO write.
> +	 *
> +	 * Use __raw_writel() to minimize the interval between two writes to
> +	 * the SAR register to increase the fastest PWM frequency supported.
> +	 *
> +	 * When the PWM period is longer than 2us(or <500kHz), this workaround
> +	 * can solve this problem. No software workaround is available if PWM
> +	 * period is shorter than IO write.
> +	 */
> +	c =3D clkrate * 1500;
> +	do_div(c, NSEC_PER_SEC);
> +
> +	local_irq_save(flags);
> +	val =3D FIELD_GET(MX3_PWMSR_FIFOAV, readl_relaxed(imx->mmio_base + MX3_=
PWMSR));
> +
> +	if (duty_cycles < imx->duty_cycle) {
> +		if (state->period < 2000) { /* 2000ns =3D 500 kHz */
> +			/* Best effort attempt to fix up >500 kHz case */
> +			udelay(6); /* 2us per FIFO entry, 3 FIFO entries written =3D> 6 us */

I don't understand the motivation to wait here. Wouldn't it be better to
write the old value 3 - val times and not sleep? Or busy loop until
MX3_PWMSR_FIFOAV becomes 0?

> +			writel_relaxed(duty_cycles, imx->mmio_base + MX3_PWMSAR);
> +			writel_relaxed(duty_cycles, imx->mmio_base + MX3_PWMSAR);

With the comment above I would have expected __raw_writel here?!

> +		} else if (val < MX3_PWMSR_FIFOAV_2WORDS) {
> +			val =3D readl_relaxed(imx->mmio_base + MX3_PWMCNR);
> +			/*
> +			 * If counter is close to period, controller may roll over when
> +			 * next IO write.
> +			 */
> +			if ((val + c >=3D duty_cycles && val < imx->duty_cycle) ||
> +			    val + c >=3D period_cycles)
> +				writel_relaxed(imx->duty_cycle, imx->mmio_base + MX3_PWMSAR);
> +		}
> +	}
> +	writel_relaxed(duty_cycles, imx->mmio_base + MX3_PWMSAR);
> +	local_irq_restore(flags);
> +
>  	writel(period_cycles, imx->mmio_base + MX3_PWMPR);

I didn't find the time yet to look into your other pwm-imx27 series.
Does it conflict with this patch? Which should be applied first?

Best regards
Uwe

--zsz3f6d3am6ir2bd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcAVv4ACgkQj4D7WH0S
/k4jPgf/VEjlFc3Nmhf46jkIBoz3HYkWPCxGSJ3bLG70dnalHbSN8W7mbjqc5h9A
S1B5h/fBbCEE1CVo0xQ6zUsLIW+v5RxHC8YiLu7xG+at1yCU6OCTE5GPrVxdndGB
sCytakrlsV1234eW/4u+V1gqkUd/8oxiE0o8RLSrPOiMl7wUvQj+rtPy0GkRo/mq
zPkVTBiDBJ8F0DiRZwY92OVd1ZoQArcoKS4otS6jNllSOxxTBxd3MawvULnWj2gz
gLi1JtGAT1j1A7bJHz3/1Y/4aXvCYGu1Iczvq01fbIFeS1531xrDKpWNSoRgqqVL
j5JeU9FRbCghm6YAUpqI7UALotg8wA==
=3pre
-----END PGP SIGNATURE-----

--zsz3f6d3am6ir2bd--

