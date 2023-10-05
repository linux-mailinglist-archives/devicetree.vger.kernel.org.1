Return-Path: <devicetree+bounces-6144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5287B9F22
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 537C01C20910
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA73528E21;
	Thu,  5 Oct 2023 14:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZq+rtBH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7F328E1A
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:18:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E33CC43395;
	Thu,  5 Oct 2023 14:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696515539;
	bh=+5giS8dCDEB9SSIrIST7R8CXKZKXlmVab1T0e3RZ980=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FZq+rtBHFgu7hUs9WU6oYZctlBrd8N8B6gpDD6vXr/eRZuuDq5yhSI/zvykHn5bDG
	 FxdBPitqVLrJMSY2mQ5UEB8SQR+q42ZA328/UwbpxuQg8xFE4s8cHoyPLZyCFlaJm2
	 T8oZPiVBbWLi7I528nPlTqYqOiYM4XSlFSJe6B5tMJpFlK9QpdxD+TldHQwf7bibC2
	 sU0eKnKWL9hjEdZ4CKwA+7bpCQwxA/GxAj6ro2nfoSowaAJb9MLyufNioMejjt0SV6
	 GvMsnjHqOYXyPXDbzQ4TO6ni2SPaiSB2w3FFb523TufPFH1DyA58ff5TAH+ONFDlVh
	 j/hSOIbqc4dUg==
Date: Thu, 5 Oct 2023 22:06:50 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 2/2] pwm: add T-HEAD PWM driver
Message-ID: <ZR7C+hrisF0lsAg1@xhacker>
References: <20231004092731.1362-1-jszhang@kernel.org>
 <20231004092731.1362-3-jszhang@kernel.org>
 <20231004140130.ljsfpn4axmsmszwm@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231004140130.ljsfpn4axmsmszwm@pengutronix.de>

On Wed, Oct 04, 2023 at 04:01:30PM +0200, Uwe Kleine-König wrote:
> On Wed, Oct 04, 2023 at 05:27:31PM +0800, Jisheng Zhang wrote:
> > T-HEAD SoCs such as the TH1520 contain a PWM controller used
> > to control the LCD backlight, fan and so on. Add driver for it.
> > 
> > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > ---

...

Hi Uwe,

Thanks a lot for your review and nice suggestions. v3 has been sent out.
And I want to add more comments to your questions here.

> > +
> > +static int thead_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
> > +			   const struct pwm_state *state)
> > +{
> > +	struct thead_pwm_chip *priv = thead_pwm_from_chip(chip);
> > +	u64 period_cycle, duty_cycle, rate;
> > +	u32 val;
> > +
> > +	/* if ever started, can't change the polarity */
> > +	if (priv->ever_started && state->polarity != pwm->state.polarity)
> > +		return -EINVAL;

This is the polority check[1] for ever started channel.

> > +
> > +	if (!state->enabled) {
> > +		if (pwm->state.enabled) {
> > +			val = readl(priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
> > +			val &= ~THEAD_PWM_CFG_UPDATE;
> > +			writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
> > +
> > +			writel(0, priv->mmio_base + THEAD_PWM_FP(pwm->hwpwm));
> > +
> > +			val |= THEAD_PWM_CFG_UPDATE;
> > +			writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
> > +		}
> > +		return 0;
> > +	}
> > +
> > +	if (!pwm->state.enabled)
> > +		pm_runtime_get_sync(chip->dev);

> 
> pm_runtime_get_sync() returns an int that you shouldn't ignore.

In v3 I switch to pm_runtime_resume_and_get() because it can simplify
the error handling code.

> 
> > +	val = readl(priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
> > +	val &= ~THEAD_PWM_CFG_UPDATE;
> > +
> > +	if (state->polarity == PWM_POLARITY_INVERSED)
> > +		val &= ~THEAD_PWM_FPOUT;
> > +	else
> > +		val |= THEAD_PWM_FPOUT;
> 
> What happens here if the bootloader already touched that flag? Or the
> driver is reloaded/rebound?

Only polarity can't be changed once started, so if bootloader already
configured polarity and started the pwm channel, and we want to change
to a different polarity, the check[1] in the beginning of this function
will fail so return -EINVAL.

> 
> > +	writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
> > +
> > +	rate = clk_get_rate(priv->clk);
> > +	/*
> > +	 * The following calculations might overflow if clk is bigger
> > +	 * than 1 GHz. In practise it's 24MHz, so this limitation
> > +	 * is only theoretic.
> > +	 */
> > +	if (rate > (u64)NSEC_PER_SEC)
> 
> this cast isn't needed.
> 
> > +		return -EINVAL;
> > +
> > +	period_cycle = mul_u64_u64_div_u64(rate, state->period, NSEC_PER_SEC);
> > +	if (period_cycle > THEAD_PWM_MAX_PERIOD)
> > +		period_cycle = THEAD_PWM_MAX_PERIOD;
> > +	/*
> > +	 * With limitation above we have period_cycle <= THEAD_PWM_MAX_PERIOD,
> > +	 * so this cannot overflow.
> > +	 */
> > +	writel((u32)period_cycle, priv->mmio_base + THEAD_PWM_PER(pwm->hwpwm));
> 
> This cast can also be dropped.
> 
> > +
> > +	duty_cycle = mul_u64_u64_div_u64(rate, state->duty_cycle, NSEC_PER_SEC);
> > +	if (duty_cycle > THEAD_PWM_MAX_DUTY)
> > +		duty_cycle = THEAD_PWM_MAX_DUTY;
> > +	/*
> > +	 * With limitation above we have duty_cycle <= THEAD_PWM_MAX_PERIOD,
> > +	 * so this cannot overflow.
> > +	 */
> > +	writel((u32)duty_cycle, priv->mmio_base + THEAD_PWM_FP(pwm->hwpwm));
> 
> ...
> 
> > +
> > +	val |= THEAD_PWM_CFG_UPDATE;
> > +	writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
> > +
> > +	if (!pwm->state.enabled) {
> > +		val |= THEAD_PWM_START;
> > +		writel(val, priv->mmio_base + THEAD_PWM_CTRL(pwm->hwpwm));
> > +		priv->ever_started = true;
> > +	}
> 
> Further above you conditionally call pm_runtime_get_sync(), there should
> be a matching pm_runtime_put().

In v3, I call pm_runtime_put_sync() when pwm channel is disabled.


Thanks

