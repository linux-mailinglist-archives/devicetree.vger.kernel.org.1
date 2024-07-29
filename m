Return-Path: <devicetree+bounces-89127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DBB94005F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 23:29:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B8042836E5
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 21:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 812C818D4BA;
	Mon, 29 Jul 2024 21:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="T52My0+7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30045131E4B
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 21:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722288545; cv=none; b=SyJOabn16RwQobDlt0XbhuebF6CWQIAHl4Zfe4UqbBr5BQz1cnP+PptkT4WosRVfhYAagSU0nT70ZSa90XHqMoDEZVnJE5vN3WIlx1hxrH+1IMLfUJzMo+fpzif8LmEPjLrJlWuIM4qjmtenRn+HTRWkLsQ0AqXKIKzPod7tEqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722288545; c=relaxed/simple;
	bh=QFV2qmQz26sFTRFMCHxGRzSOy7flmRvNfoiw+6kBYCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HUEVCQ2kvYK+Vpz976hDhrsF1JtQkpF2bRNGchl0C+EzibJnSA0stBdZ7LbEdN3APngE4+fFZP3I66THN+YSMKFdL5XVZR18uI5MzA+N43ezIvJqKQYVbYv6t1i8W/zXGo8xxxxaOtBDcp34hkbofKXoaIyuExwh47ng61AALXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=T52My0+7; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-36868fcb919so1675613f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 14:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722288540; x=1722893340; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4cErnTb1l8yhpg9Tg8ypbE+BCEieRlUIej+QcI2FRX0=;
        b=T52My0+7Gmtx4NAtVrSFaMTg2gEeWoG5jDAxJzsV0I5N07330b1OWIJJ7fKllqvbG/
         l4UvSYqxifywEl1IWOc1GR6W+uI+ivmaKf5Gqfki6G9Dlk2blYwokOneI9kKPsfvOTJy
         E8S4Di/jYkLloKLlvH9p+capbmL8vLWp1O8X7mZNN4jCbb1mhmGufiQC0xQGkhiBcxA2
         +CUlPz8bvJs7pdJiqkRSPx1F4dF/dFDg235UZ8VcJ/tJc4ENFHTIb7YolxVq2knGuOb/
         YPmOh5caE0PM4Gw8PA6b1CboU0QRc3N8uU2HPrweaejKd6IYbUgY16KwLK4CYHzoFBWs
         wbNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722288540; x=1722893340;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4cErnTb1l8yhpg9Tg8ypbE+BCEieRlUIej+QcI2FRX0=;
        b=sG6xN/X9y+JOYX1+Z3iPEnuYhTFUEVQ0Xki+4f5T3OfAGA3KMI3BrjXVXg5pyrJXfk
         L0GO3IugW3lPLtcivgDnkm2O90RizZVI+1eP1WAk/++VncGc9TEWL0igBdU7KDzdiVbG
         7VW2uY/vidyE5BAq7NJIsScdrmlDS+3+8UIEsiXXFC4/SN4LnDA47VGLkNgONCkf2euj
         vExun3qUygi2CTMmFsgNLchPWL7oMFhAK9G4CeIlUK2BQNLsfZdv3zZ2sHRvonO1oBBB
         3bWO/RqIu7/kM96X52YTO8Ve57b86JdwtvzNVaLLG5O8s16CvNWvAEDd1zs3W+XOSiEo
         EosA==
X-Forwarded-Encrypted: i=1; AJvYcCX7vngx1VPJdwiQQ+8i8BF2YnyUL6u7JWntVtgizPrIcvIifRCqtYM4fDQeDRXBYb/Nvn4KSL2mPLKwOEBJ4wmgByHDuxAQoIsRFg==
X-Gm-Message-State: AOJu0Yzhf6HR7OOx0/+T1r/TWor47eZk2mWwvBItzxYvB5/2QncOXxq3
	yVtKO6PTCHeqr46Pfrg0ANO4cKFIxYx80Zbami/cvUOeAWYIdVsTvS5fIGVdcO8=
X-Google-Smtp-Source: AGHT+IGhSm3nq8nMhPLKmqoYbbfdLfGUwTrnX7GQ11Xjp/jK9udRNVktuEPxWgIWLY3VJ3gPERx9CA==
X-Received: by 2002:adf:e263:0:b0:367:4ddf:385c with SMTP id ffacd0b85a97d-36b5d0b033cmr6147968f8f.6.1722288539773;
        Mon, 29 Jul 2024 14:28:59 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:9281:2426:cfd1:cea])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b367e51f0sm13093207f8f.46.2024.07.29.14.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 14:28:59 -0700 (PDT)
Date: Mon, 29 Jul 2024 23:28:56 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dimitri Fedrau <dima.fedrau@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] pwm: add support for NXPs high-side switch
 MC33XS2410
Message-ID: <aczpsiqyh4qsbvnqhqdnvkj2j3fihkltafop5ajkxm57sehbx5@mn4vp7avpeac>
References: <20240515112034.298116-1-dima.fedrau@gmail.com>
 <20240515112034.298116-3-dima.fedrau@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bbbjns3pyudpuy4n"
Content-Disposition: inline
In-Reply-To: <20240515112034.298116-3-dima.fedrau@gmail.com>


--bbbjns3pyudpuy4n
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Wed, May 15, 2024 at 01:20:34PM +0200, Dimitri Fedrau wrote:
> diff --git a/drivers/pwm/pwm-mc33xs2410.c b/drivers/pwm/pwm-mc33xs2410.c
> new file mode 100644
> index 000000000000..1904d1ee0652
> --- /dev/null
> +++ b/drivers/pwm/pwm-mc33xs2410.c
> @@ -0,0 +1,410 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2024 Liebherr-Electronics and Drives GmbH
> + *
> + * Limitations:
> + * - Supports frequencies between 0.5Hz and 2048Hz with following steps:
> + *   - 0.5 Hz steps from 0.5 Hz to 32 Hz
> + *   - 2 Hz steps from 2 Hz to 128 Hz
> + *   - 8 Hz steps from 8 Hz to 512 Hz
> + *   - 32 Hz steps from 32 Hz to 2048 Hz
> + * - Cannot generate a 0 % duty cycle.
> + * - Always produces low output if disabled.
> + * - Configuration isn't atomic. When changing polarity, duty cycle or period
> + *   the data is taken immediately, counters not being affected, resulting in a
> + *   behavior of the output pin that is neither the old nor the new state,
> + *   rather something in between.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/math.h>
> +#include <linux/math64.h>
> +#include <linux/minmax.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/of.h>
> +#include <linux/pwm.h>
> +
> +#include <asm/unaligned.h>
> +
> +#include <linux/spi/spi.h>
> +
> +#define MC33XS2410_GLB_CTRL		0x00
> +#define MC33XS2410_GLB_CTRL_MODE_MASK	GENMASK(7, 6)
> +#define MC33XS2410_GLB_CTRL_NORMAL_MODE	BIT(6)
> +#define MC33XS2410_PWM_CTRL1		0x05
> +#define MC33XS2410_PWM_CTRL1_POL_INV(x)	BIT(x)
> +#define MC33XS2410_PWM_CTRL3		0x07
> +/* x in { 0 ... 3 } */
> +#define MC33XS2410_PWM_CTRL3_EN(x)	BIT(4 + (x))
> +#define MC33XS2410_PWM_FREQ1		0x08
> +/* x in { 1 ... 4 } */
> +#define MC33XS2410_PWM_FREQ(x)		(MC33XS2410_PWM_FREQ1 + (x - 1))
> +#define MC33XS2410_PWM_FREQ_STEP_MASK	GENMASK(7, 6)
> +#define MC33XS2410_PWM_FREQ_COUNT_MASK	GENMASK(5, 0)
> +#define MC33XS2410_PWM_DC1		0x0c
> +/* x in { 1 ... 4 } */
> +#define MC33XS2410_PWM_DC(x)		(MC33XS2410_PWM_DC1 + (x - 1))
> +#define MC33XS2410_WDT			0x14
> +
> +#define MC33XS2410_WR			BIT(7)
> +#define MC33XS2410_RD_CTRL		BIT(7)
> +#define MC33XS2410_RD_DATA_MASK		GENMASK(13, 0)
> +
> +#define MC33XS2410_MIN_PERIOD_STEP0	31250000
> +#define MC33XS2410_MAX_PERIOD_STEP0	2000000000
> +/* x in { 0 ... 3 } */
> +#define MC33XS2410_MIN_PERIOD_STEP(x)	(MC33XS2410_MIN_PERIOD_STEP0 >> (2 * x))
> +/* x in { 0 ... 3 } */
> +#define MC33XS2410_MAX_PERIOD_STEP(x)	(MC33XS2410_MAX_PERIOD_STEP0 >> (2 * x))
> +
> +#define MC33XS2410_MAX_TRANSFERS	5
> +#define MC33XS2410_WORD_LEN		2
> +
> +struct mc33xs2410_pwm {
> +	struct spi_device *spi;
> +};
> +
> +static
> +inline struct mc33xs2410_pwm *to_pwm_mc33xs2410_chip(struct pwm_chip *chip)
> +{
> +	return pwmchip_get_drvdata(chip);
> +}
> +
> +static int mc33xs2410_xfer_regs(struct spi_device *spi, bool read, u8 *reg,
> +				u16 *val, bool *ctrl, int len)
> +{
> +	struct spi_transfer t[MC33XS2410_MAX_TRANSFERS] = { { 0 } };
> +	u8 tx[MC33XS2410_MAX_TRANSFERS * MC33XS2410_WORD_LEN];
> +	u8 rx[MC33XS2410_MAX_TRANSFERS * MC33XS2410_WORD_LEN];
> +	int i, ret, reg_i, val_i;
> +
> +	if (!len)
> +		return 0;
> +
> +	if (read)
> +		len++;
> +
> +	if (len > MC33XS2410_MAX_TRANSFERS)
> +		return -EINVAL;
> +
> +	for (i = 0; i < len; i++) {
> +		reg_i = i * MC33XS2410_WORD_LEN;
> +		val_i = reg_i + 1;
> +		if (read) {
> +			if (i < len - 1) {
> +				tx[reg_i] = reg[i];
> +				tx[val_i] = ctrl[i] ? MC33XS2410_RD_CTRL : 0;
> +				t[i].tx_buf = &tx[reg_i];
> +			}
> +
> +			if (i > 0)
> +				t[i].rx_buf = &rx[reg_i - MC33XS2410_WORD_LEN];
> +		} else {
> +			tx[reg_i] = reg[i] | MC33XS2410_WR;
> +			tx[val_i] = val[i];
> +			t[i].tx_buf = &tx[reg_i];
> +		}
> +
> +		t[i].len = MC33XS2410_WORD_LEN;
> +		t[i].cs_change = 1;
> +	}
> +
> +	t[len - 1].cs_change = 0;
> +
> +	ret = spi_sync_transfer(spi, &t[0], len);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (read) {
> +		for (i = 0; i < len - 1; i++) {
> +			reg_i = i * MC33XS2410_WORD_LEN;
> +			val[i] = FIELD_GET(MC33XS2410_RD_DATA_MASK,
> +					   get_unaligned_be16(&rx[reg_i]));
> +		}
> +	}
> +
> +	return 0;

Huh, this is complicated. Isn't that covered by regmap somehow?

> +}
> +
> [...]
> +
> +static u8 mc33xs2410_pwm_get_freq(u64 period)
> +{
> +	u8 step, count;
> +
> +	/*
> +	 * Check if period is within the limits of each of the four frequency
> +	 * ranges, starting with the highest frequency(lowest period). Higher
> +	 * frequencies are represented with better resolution by the device.
> +	 * Therefore favor frequency range with the better resolution to
> +	 * minimize error introduced by the frequency steps.

I'm not a native English speaker, but I find that misleading. That
period is in the "possible" range is already asserted by the caller. So
the switch is about "Check which step is appropriate for the given
period", right?

> +	 */
> +
> +	switch (period) {
> +	case MC33XS2410_MIN_PERIOD_STEP(3) + 1 ... MC33XS2410_MAX_PERIOD_STEP(3):
> +		step = 3;
> +		break;
> +	case MC33XS2410_MAX_PERIOD_STEP(3) + 1 ... MC33XS2410_MAX_PERIOD_STEP(2):
> +		step = 2;
> +		break;
> +	case MC33XS2410_MAX_PERIOD_STEP(2) + 1 ... MC33XS2410_MAX_PERIOD_STEP(1):
> +		step = 1;
> +		break;
> +	case MC33XS2410_MAX_PERIOD_STEP(1) + 1 ... MC33XS2410_MAX_PERIOD_STEP(0):
> +		step = 0;
> +		break;
> +	}
> +
> +	count = DIV_ROUND_UP(MC33XS2410_MAX_PERIOD_STEP(step), period) - 1;
> +
> +	return FIELD_PREP(MC33XS2410_PWM_FREQ_STEP_MASK, step) |
> +	       FIELD_PREP(MC33XS2410_PWM_FREQ_COUNT_MASK, count);
> +}
> +
> [...]
> +
> +static int mc33xs2410_pwm_get_relative_duty_cycle(u64 period, u64 duty_cycle)
> +{
> +	if (!period)
> +		return 0;
> +
> +	duty_cycle *= 256;

This might overflow.

> +	duty_cycle = DIV_ROUND_CLOSEST_ULL(duty_cycle, period);

round-closest is most probably wrong. Please test your driver with
PWM_DEBUG enabled and increasing and decreasing series of duty_cycle and
period.

> +
> +	/* Device is not able to generate 0% duty cycle */
> +	if (!duty_cycle)
> +		return -ERANGE;

Given that the hardware emits a low level when disabled, please disable
if duty_cycle = 0 is requested.

> +	return duty_cycle - 1;
> +}
> +
> [...]
> +static int mc33xs2410_pwm_get_state(struct pwm_chip *chip,
> +				    struct pwm_device *pwm,
> +				    struct pwm_state *state)
> +{
> +	struct mc33xs2410_pwm *mc33xs2410 = to_pwm_mc33xs2410_chip(chip);
> +	struct spi_device *spi = mc33xs2410->spi;
> +	u8 reg[4] = {
> +			MC33XS2410_PWM_FREQ(pwm->hwpwm + 1),
> +			MC33XS2410_PWM_DC(pwm->hwpwm + 1),
> +			MC33XS2410_PWM_CTRL1,
> +			MC33XS2410_PWM_CTRL3,
> +		    };
> +	bool ctrl[4] = { true, true, true, true };
> +	u16 val[4];
> +	int ret;
> +
> +	ret = mc33xs2410_read_regs(spi, reg, ctrl, val, 4);
> +	if (ret < 0)
> +		return ret;
> +
> +	state->period = mc33xs2410_pwm_get_period(val[0]);
> +	pwm_set_relative_duty_cycle(state, val[1] + 1, 256);

pwm_set_relative_duty_cycle doesn't use the right rounding for
.get_state().

> +	state->polarity = (val[2] & MC33XS2410_PWM_CTRL1_POL_INV(pwm->hwpwm)) ?
> +			  PWM_POLARITY_INVERSED : PWM_POLARITY_NORMAL;
> +
> +	state->enabled = !!(val[3] & MC33XS2410_PWM_CTRL3_EN(pwm->hwpwm));
> +
> +	return 0;
> +}
> +
> [...]
> +static int mc33xs2410_probe(struct spi_device *spi)
> +{
> [...]
> +	/* Disable watchdog */
> +	ret = mc33xs2410_write_reg(spi, MC33XS2410_WDT, 0x0);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to disable watchdog\n");

Wouldn't the watchdog functionality better be handled by a dedicated
watchdog driver? Disabling it here unconditionally looks wrong.

> +	/* Transition to normal mode */
> +	ret = mc33xs2410_modify_reg(spi, MC33XS2410_GLB_CTRL,
> +				    MC33XS2410_GLB_CTRL_MODE_MASK,
> +				    MC33XS2410_GLB_CTRL_NORMAL_MODE);
> [...]

Best regards
Uwe

--bbbjns3pyudpuy4n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmaoCZUACgkQj4D7WH0S
/k5krwgAnusykD9o65Uxr7SGCwAZy4+TP1jawyHLjKBmdQMxzqoyzrg1ZHhxvK0G
uBIHVOHYBoJe03YpjUfjPFkXHD3nzbWNrN4UQ/wMVquDuZp/mEv+ku/kVSS4/C4z
asELbHeMdjY7M5cpYNGopoSbVDsUMPXEbN69FLEluWVi32qh/dJofShf/XdWF1x3
Z8DF7rBU4m1+LHDWl2cz6TcDwc/TcgK9usmlNYoED/Zi56JenK1JzoBLiQ4iJ3VB
pZYvhKvJEMhDselSe8xp52PFnhbdoguCoQ02+WS22gPjVTo6YJzr84GImkt5eLzE
LgP+rlJwZbl+Ja4guJF4kxk5tl5twg==
=Yv+K
-----END PGP SIGNATURE-----

--bbbjns3pyudpuy4n--

