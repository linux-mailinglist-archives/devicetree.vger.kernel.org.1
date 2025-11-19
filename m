Return-Path: <devicetree+bounces-240133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EA3C6DC67
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:39:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 030754F95A5
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 784A833EB11;
	Wed, 19 Nov 2025 09:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ixD2uj0q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D9F33C1A6
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 09:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763544507; cv=none; b=pkxm1Z6njEoRkwoWvYHqXiVU3RZHWrqelZ0FAQsfZnDIMOi1BfIC1nRYFvSTQbWQq+YUP+n1oXZAzdjKx5o+8YmMGaOeDCEYS+NJy5pWMQaC7YPQRpIO7m7TslfgZbNGtAGgywse4/20hnbN7G2A1mrfo9UWHjC9afjmgwyIWAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763544507; c=relaxed/simple;
	bh=tyBHd/sD6QMY7Lk4BsXzzXhUokKGbdyEon6jpEDmLuI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gqnFBqN8b+R9QkazCIeWFCX56CBo/fKGKmPOtPAcz+1gdr3lqHOpt5Th9GBqa1tcw2XqAPdOkgL1OGMEewcsytPkLAq8HfnLwwjifrv1vR+mLz0FNxivgI1z44qtuRN+O5aXvonKjIatptGnE/mlypL85qLteiIQvgAmcTw3Prw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ixD2uj0q; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b735e278fa1so989105566b.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 01:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763544503; x=1764149303; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mk8B3cojzWWruLtn+KqWZ/72SZHhnc9WvIBJjyExMNY=;
        b=ixD2uj0qOMzlmtV+gKw8MREAO6VV01ftDSTqmRVb9PCPVjJOwsEKdWJxltqR3ojrX6
         JQm3NdVYqBHW4xh/6AJKxsNdUq6bPY1/+wchxiBArklC+paRviAGVMldKIUn8eq8pV54
         CbzWvzLo97ptUvCZOOC29V5eQwmc2hT6o6j4wLLZwPiRi5BGM4DAnYYoEFFVZfgEBlC2
         zRQqgYJ1nbjCPo8tyMnht3d4V9HyFACnWyR2RCvjuPiEhWLudH6Y+QcRrwlAck1MjriU
         IxYQ7nc1I9DvCUgCQexmyKyKfSaqlfGXT+aeG3UpSC8xIXaiCtfjJCUEVF7fY7PBtMUK
         PcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763544503; x=1764149303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mk8B3cojzWWruLtn+KqWZ/72SZHhnc9WvIBJjyExMNY=;
        b=tjiclwOZfuw0oCsxeNoT9qXMtUHKqaCsinFppD4g8XiCurgItN4bWWTvhu3aiKFO8y
         PiNPFHGn4ZFUZPFgnKa/TmDliibJmlHNgK6e//tmV58w4nvhwJCbG26BSiU8W8C9mHJb
         hKNkYMlBanB3LPOWoDnGNl/32ZdEQswOYr2ij5I+mB1ZJbqvnpx9QTIo8Ift5c7UrlX2
         la3u9lcB/2cdt1QPr+AP4jj7Ac5oLykmszKZYCK6lqnHqs2jOEsIXITi2nR91q0PIMoO
         GzBrweUhVseBGisy3P6EmML9yZAKKtwxyXsW5sbGvM/O0bLVutYo1H9vebU5EWLmyC7Y
         rxcA==
X-Forwarded-Encrypted: i=1; AJvYcCWzx+mbYFdUw9OIVC0hM/DnQaLQCWVKKYGG6CebafT1tdAHAYCTh2ZuCWPlPG8gXUd942f9oJ0wx+vs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy45kdAd65LCoFeU3D4e4rMlm7QvslBVcEWE0VFAUOPu7GYqrJw
	TALGeXVCQiB0Q+TiqcUMAJqtnSpAG2jBOU65XXYHgjOcaeqNzXv7KatTq617DbEMTPTksPUIcbb
	yqtFKyCGHL9SI0fj8F8MYRWUlbQ9BCo0=
X-Gm-Gg: ASbGncvR2cnepOCZLW9Fi37KaKq8vzpyajSrKK/9QNFUS+ktfBmUFlwjiWDuPsCNqkI
	5YD2pmwbYr4mRCyGqMvenmErYaf5uRaS0ZKgVyb5ItBhfK/ndBdh2Xqf0mXO09RnWG8fzmTg9MR
	GuuU1fPyRaCk6mOyY8tzpVmP5iuj6MIJPSxwB3vmqNq3vniRDm9pMCXIkWJvg8CFEzHwtqDQG02
	0bhPDkiO0QOwKyohuhSDai2QCP4Us3laxu94iPa9476PGfbEF5KkZ9TXjxayoKcvqyNhI8s9vIT
	6ltvMLD1bBqMLYAL9YOm6yiZqb4tLpsRM0SIen1NSCKfDuErPt6UEghdvBqKJr0cscfe0QML2nC
	lCPwtFw==
X-Google-Smtp-Source: AGHT+IEyGpGW+oiPii/+GMJRrXskY0cNXM+cCjTvk+0ovKdatlaE2sFNYqPJXvEgodhtsxrrNTAhNY/TeL7OFjp/9HI=
X-Received: by 2002:a17:907:7207:b0:b73:7325:112d with SMTP id
 a640c23a62f3a-b73732513dbmr1903766566b.35.1763544502768; Wed, 19 Nov 2025
 01:28:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118203305.3834987-1-daniel.lezcano@linaro.org> <20251118203305.3834987-3-daniel.lezcano@linaro.org>
In-Reply-To: <20251118203305.3834987-3-daniel.lezcano@linaro.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 19 Nov 2025 11:27:45 +0200
X-Gm-Features: AWmQ_bmeAhIfHskOkZFn6ZSVM4jsXibZAlrpoGTU5Fd2b-ehl-T6Xpanfsx7_KU
Message-ID: <CAHp75Ve=CU8ecXk5sgkHPJbYA_K+sa+Lyys+cdpCm=QHOw2ytg@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com, 
	andy@kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
	linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com, 
	ghennadi.procopciuc@oss.nxp.com, vkoul@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2025 at 10:34=E2=80=AFPM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:

Thanks for the update, my comments below (but we are almost done).

> The NXP S32G2 and S32G3 platforms integrate a successive approximation
> register (SAR) ADC. Two instances are available, each providing 8
> multiplexed input channels with 12-bit resolution. The conversion rate
> is up to 1 Msps depending on the configuration and sampling window.
>
> The SAR ADC supports raw, buffer, and trigger modes. It can operate
> in both single-shot and continuous conversion modes, with optional
> hardware triggering through the cross-trigger unit (CTU) or external
> events. An internal prescaler allows adjusting the sampling clock,
> while per-channel programmable sampling times provide fine-grained
> trade-offs between accuracy and latency. Automatic calibration is
> performed at probe time to minimize offset and gain errors.
>
> The driver is derived from the BSP implementation and has been partly
> rewritten to comply with upstream requirements. For this reason, all
> contributors are listed as co-developers, while the author refers to
> the initial BSP driver file creator.

I would move this paragraph closer to the tag block and FWIW we also
have Originally-by: tag in case it suits better (usually when the
original code is rewritten more than ~67%).

> All modes have been validated on the S32G274-RDB2 platform using an
> externally generated square wave captured by the ADC. Tests covered
> buffered streaming via IIO, trigger synchronization, and accuracy
> verification against a precision laboratory signal source.
>
> One potential scenario, not detected during testing, is that in some
> corner cases the DMA may already have been armed for the next
> transfer, which can lead dmaengine_tx_status() to return an incorrect
> residue.  The callback_result() operation=E2=80=94intended to supply the
> residue directly and eliminate the need to call
> dmaengine_tx_status()=E2=80=94also does not work.  Attempting to use
> dmaengine_pause() and dmaengine_resume() to prevent the residue from
> being updated does not work either.
>
> This potential scenario should apply to any driver using cyclic DMA.
> However, no current driver actually handles this case, and they all rely
> on the same acquisition routine (e.g., the STM32 implementation).
> The NXP SAR acquisition routine has been used in production for several
> years, which is a good indication of its robustness.
>
> As the IIO is implementing the cyclic DMA support API, it is not worth
> to do more spins to the current routine as it will go away when the
> new API will be available.

...

> +#define NXP_SAR_ADC_EOC_CH(c)          BIT((c) % 32)

Do you expect "c" to be bigger than 31? In which circumstances?

...

> +#define NXP_SAR_ADC_CTR_INPSAMP_MIN    0x08
> +#define NXP_SAR_ADC_CTR_INPSAMP_MAX    0xFF

Keep the style consistent (I think you want small hexadecimal letters
in the value).

...

> +/* Other field define */
> +#define NXP_SAR_ADC_CONV_TIMEOUT_MS    100
> +#define NXP_SAR_ADC_CONV_TIMEOUT_JF    (msecs_to_jiffies(NXP_SAR_ADC_CON=
V_TIMEOUT_MS))

I don't see the use of the first definition. Dropping _JF (we usually
assume the timeouts without units in "ticks") and using 100 directly
as a parameter to the msecs_to_jiffies() will make it clear enough.

...

> +static bool nxp_sar_adc_set_enabled(struct nxp_sar_adc *info, bool enabl=
e)
> +{
> +       u32 mcr;
> +       bool pwdn;
> +
> +       mcr =3D readl(NXP_SAR_ADC_MCR(info->regs));

> +       /* Return the current state. */
> +       pwdn =3D FIELD_GET(NXP_SAR_ADC_MCR_PWDN, mcr);

The comment is a bit odd. I think you want to say "Save the current
state and return it later" or something like this.

> +       /* When the enabled flag is not set, we set the power down bit */
> +       FIELD_MODIFY(NXP_SAR_ADC_MCR_PWDN, &mcr, !enable);
> +
> +       writel(mcr, NXP_SAR_ADC_MCR(info->regs));
> +
> +       /*
> +        * Ensure there are at least three cycles between the
> +        * configuration of NCMR and the setting of NSTART.
> +        */
> +       if (enable)
> +               ndelay(div64_u64(NSEC_PER_SEC, clk_get_rate(info->clk) * =
3));

I'm wondering how low the clock rate can be? With low enough clock
rates this becomes a 100% CPU busyloop and in atomic context (is this
the case?) without even the possibility to schedule.

> +       return pwdn;
> +}

...

> +static int nxp_sar_adc_calibration(struct nxp_sar_adc *info)
> +{
> +       int ret;
> +
> +       /* Calibration works only if the adc is powered up. */

ADC

> +       nxp_sar_adc_enable(info);
> +
> +       /* The calibration operation starts. */
> +       nxp_sar_adc_calibration_start(info->regs);
> +
> +       ret =3D nxp_sar_adc_calibration_wait(info->regs);
> +
> +       /*
> +        * Calibration works only if the adc is powered up. However

ADC

> +        * the calibration is called from the probe function where the
> +        * iio is not enabled, so we disable after the calibration.
> +        */
> +       nxp_sar_adc_disable(info);
> +
> +       return ret;
> +}

...

> +static int nxp_sar_adc_read_data(struct nxp_sar_adc *info, unsigned int =
chan)
> +{
> +       u32 ceocfr, cdr;
> +
> +       ceocfr =3D readl(NXP_SAR_ADC_CEOCFR0(info->regs));

> +       /* FIELD_GET() can not be used here because EOC_CH is not constan=
t */
> +       if (!(NXP_SAR_ADC_EOC_CH(chan) & ceocfr))
> +               return -EIO;

[nxp_sar_adc_]field_get() may be defined and used. There is a series
pending to bring field_get() to bitfield.h next release.

> +       cdr =3D readl(NXP_SAR_ADC_CDR(info->regs, chan));
> +       if (!(FIELD_GET(NXP_SAR_ADC_CDR_VALID, cdr)))
> +               return -EIO;
> +
> +       return FIELD_GET(NXP_SAR_ADC_CDR_CDATA_MASK, cdr);
> +}

...

> +static irqreturn_t nxp_sar_adc_isr(int irq, void *dev_id)
> +{
> +       struct iio_dev *indio_dev =3D (struct iio_dev *)dev_id;

Unneeded explicit casting.

> +       struct nxp_sar_adc *info =3D iio_priv(indio_dev);
> +       int isr;
> +
> +       isr =3D readl(NXP_SAR_ADC_ISR(info->regs));
> +       if (!(FIELD_GET(NXP_SAR_ADC_ISR_ECH, isr)))
> +               return IRQ_NONE;
> +
> +       if (iio_buffer_enabled(indio_dev))
> +               nxp_sar_adc_isr_buffer(indio_dev);
> +       else
> +               nxp_sar_adc_isr_read_raw(indio_dev);
> +
> +       writel(NXP_SAR_ADC_ISR_ECH, NXP_SAR_ADC_ISR(info->regs));
> +
> +       return IRQ_HANDLED;
> +}

> +static void nxp_sar_adc_channels_disable(struct nxp_sar_adc *info, u32 m=
ask)
> +{
> +       u32 ncmr, cimr;
> +
> +       ncmr =3D readl(NXP_SAR_ADC_NCMR0(info->regs));
> +       cimr =3D readl(NXP_SAR_ADC_CIMR0(info->regs));
> +
> +       /* FIELD_MODIFY() can not be used because the mask is not constan=
t */
> +       ncmr &=3D ~mask;
> +       cimr &=3D ~mask;
> +
> +       writel(ncmr, NXP_SAR_ADC_NCMR0(info->regs));
> +       writel(cimr, NXP_SAR_ADC_CIMR0(info->regs));
> +}

...

> +static void nxp_sar_adc_stop_conversion(struct nxp_sar_adc *info)
> +{
> +       u32 mcr;
> +
> +       mcr =3D readl(NXP_SAR_ADC_MCR(info->regs));
> +
> +       FIELD_MODIFY(NXP_SAR_ADC_MCR_NSTART, &mcr, 0x0);
> +
> +       writel(mcr, NXP_SAR_ADC_MCR(info->regs));
> +
> +       /*
> +        * On disable, we have to wait for the transaction to finish.
> +        * ADC does not abort the transaction if a chain conversion
> +        * is in progress.
> +        * Wait for the worst case scenario - 80 ADC clk cycles.
> +        */
> +       ndelay(div64_u64(NSEC_PER_SEC, clk_get_rate(info->clk)) * 80);

Same comment / question about the possible too long delays.

> +}
> +
> +static int nxp_sar_adc_start_conversion(struct nxp_sar_adc *info, bool r=
aw)
> +{
> +       u32 mcr;
> +
> +       mcr =3D readl(NXP_SAR_ADC_MCR(info->regs));
> +
> +       FIELD_MODIFY(NXP_SAR_ADC_MCR_NSTART, &mcr, 0x1);
> +       FIELD_MODIFY(NXP_SAR_ADC_MCR_MODE, &mcr, !raw);

raw ? 0 : 1

is better to understand (it will be optimised by the compiler anyway,
no branches will be added).

> +
> +       writel(mcr, NXP_SAR_ADC_MCR(info->regs));
> +
> +       return 0;
> +}
> +
> +static int nxp_sar_adc_read_channel(struct nxp_sar_adc *info, int channe=
l)
> +{
> +       int ret;
> +
> +       info->current_channel =3D channel;
> +       nxp_sar_adc_channels_enable(info, BIT(channel));
> +       nxp_sar_adc_irq_cfg(info, true);
> +       nxp_sar_adc_enable(info);
> +
> +       reinit_completion(&info->completion);
> +       ret =3D nxp_sar_adc_start_conversion(info, true);
> +       if (ret < 0)
> +               goto out_disable;

> +       ret =3D wait_for_completion_interruptible_timeout(&info->completi=
on,
> +                                                       NXP_SAR_ADC_CONV_=
TIMEOUT_JF);
> +       if (ret =3D=3D 0)
> +               ret =3D -ETIMEDOUT;
> +       if (ret > 0)
> +               ret =3D 0;

Since semantically it's not the same ret, I would write above as

  if (!wait_for_completion...(...))
    ret =3D -ETIMEDOUT;

And note, no "else" branch is needed in this case.

> +       nxp_sar_adc_stop_conversion(info);
> +
> +out_disable:
> +       nxp_sar_adc_channels_disable(info, BIT(channel));
> +       nxp_sar_adc_irq_cfg(info, false);
> +       nxp_sar_adc_disable(info);
> +
> +       return ret;
> +}

> +               /*
> +                * Configures the sample period duration in terms of the =
SAR
> +                * controller clock. The minimum acceptable value is 8.
> +                * Configuring it to a value lower than 8 sets the sample=
 period
> +                * to 8 cycles.  We read the clock value and divide by th=
e
> +                * sampling timing which gives us the number of cycles ex=
pected.
> +                * The value is 8 bits wide, consequently the max value i=
s 0xFF.

8-bit wide

> +                */

...

> +       /*
> +        * DMA in some corner cases might have already be charged for
> +        * the next transfer. Potentially there can be a race where
> +        * the residue changes while the dma engine updates the
> +        * buffer. That could be handled by using the
> +        * callback_result() instead of callback() because the residue
> +        * will be passed as parameter to the function. However this

as a parameter


> +        * new callback is pretty new and the backend does not update
> +        * the residue. So let's stick to the version other drivers do
> +        * which has proven running well in production since several
> +        * years.
> +        */

...

> +               /*
> +                * iio_push_to_buffers_with_ts should not be

iio_push_to_buffers_with_ts()

> +                * called with dma_samples as parameter. The samples
> +                * will be smashed if timestamp is enabled.
> +                */

...

> +       nxp_sar_adc_channels_disable(info, *indio_dev->active_scan_mask);

Wondering why this can't take a pointer to a mask.

...

> +       info =3D iio_priv(indio_dev);

> +

Unneeded blank line.

> +       info->vref_mV =3D data->vref_mV;

...

> +       ret =3D devm_request_irq(dev, irq, nxp_sar_adc_isr, 0,
> +                              dev_name(dev), indio_dev);
> +       if (ret < 0)
> +               return dev_err_probe(dev, ret, "failed requesting irq, ir=
q =3D %d\n", irq);

No error code duplication in the message, please.

...

> +       spin_lock_init(&info->lock);

Shouldn't this be _before_ IRQ registration? Theoretically the  IRQ
may fire already just after the registration (yeah, it might be
spurious, but handler and code should be ready for this).

...

> +       ret =3D nxp_sar_adc_calibration(info);
> +       if (ret)
> +               dev_err_probe(dev, ret, "Calibration failed: %d\n", ret);

No error code duplication in the message, please.

...

> +static int nxp_sar_adc_suspend(struct device *dev)
> +{
> +       struct iio_dev *indio_dev =3D dev_get_drvdata(dev);
> +       struct nxp_sar_adc *info =3D iio_priv(indio_dev);

Can be one-lined

       struct nxp_sar_adc *info =3D iio_priv(dev_get_drvdata(dev));

> +       info->pwdn =3D nxp_sar_adc_disable(info);
> +       info->inpsamp =3D nxp_sar_adc_conversion_timing_get(info);
> +
> +       clk_disable_unprepare(info->clk);
> +
> +       return 0;
> +}
> +
> +static int nxp_sar_adc_resume(struct device *dev)
> +{
> +       struct iio_dev *indio_dev =3D dev_get_drvdata(dev);
> +       struct nxp_sar_adc *info =3D iio_priv(indio_dev);

Ditto.

> +       int ret;
> +
> +       ret =3D clk_prepare_enable(info->clk);
> +       if (ret)
> +               return ret;
> +
> +       nxp_sar_adc_conversion_timing_set(info, info->inpsamp);
> +
> +       if (!info->pwdn)
> +               nxp_sar_adc_enable(info);
> +
> +       return 0;
> +}

...

> +static const struct nxp_sar_adc_data s32g2_sar_adc_data =3D {
> +       .vref_mV =3D 1800,
> +       .model =3D "s32g2-sar-adc"

Leave trailing comma, it's not a terminator.

> +};


--
With Best Regards,
Andy Shevchenko

