Return-Path: <devicetree+bounces-10804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 088247D2C27
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:04:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38DCD28146B
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EEED10A0F;
	Mon, 23 Oct 2023 08:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fu7Fm2CW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BD011185
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:04:00 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36F1AC4
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:03:58 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so2236926276.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698048237; x=1698653037; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gmB9mDTwiF3uEH0iaSmju1hjjf2PC63Y5fnQXGlfFvY=;
        b=fu7Fm2CWDTbU4vgkZvk0KUscLqzKdSu6257lMymgRY9sILLbrOqdqyinFyrNaDGfE4
         m1nBqXpywvnoLTZ1tRewNBSZuvo0XQ+12uYKvMrvPBxGG6bx/sxoYOdOPh1942HSpuTq
         che/cfCX5eANbAMk8+pZl6fzmuYHd9y9Z3iqTxGENKMe9e8/YxwvwPX0JLweZiyUogDy
         vIXBTWsMpWbolKvbLfxoo8f3IWF0MrQ6oXZmiz6vO8qDTYgJuJzAh4X/JdgyJhSthmN9
         mFGCuOs8ufYglvDsYWHA9busqoiS/wJeSXpd2VMSWGMLQafa3RJ8VlV6OPBIbGgo2tEJ
         qkVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698048237; x=1698653037;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gmB9mDTwiF3uEH0iaSmju1hjjf2PC63Y5fnQXGlfFvY=;
        b=sr6Is7BWTNfexQ6Cb0bilSuaLZCbpP+AosF9Jhym3noTB/wP1a30BmoZWWSwhcJbhk
         BK1CbxxWfA6Mrur4zV0KrYBaWsSZOttE4vs1YTu/vDQ9Dko2eeLfRWOWlaIQiM9XqN/P
         u2U3QGqBwH5u8KZFqUz2HqL+P/tYo/Y0WVZB0BgPb4iYVcO1nSXnpKCjPDXUDjpy+Mzy
         CFFVJmCxXVBgRMwy+4sYJW9jj54oSsgiME55hNNmYbNhIwbxOAITLgAc06Awt0LYs4jB
         +wfJCSaDoURO9kR8LUjICJubaYM0vNAgVLGi3x+TXlcidprfCXawchjCbVcETpg99fMZ
         lIjQ==
X-Gm-Message-State: AOJu0YyQ6SLCKVkcwadk8m4UcSTRDwDDtOMK6vCYOf2LIhNusg+Rm5QL
	eRTuAhIRqAEOBAZr9ezY5jclGoxnZ+JHqC6Zk1qjjw==
X-Google-Smtp-Source: AGHT+IElEdOoTwEWHGztCKoP/uOTBAVSI/z9UeRXX/JNfSNw3yEy28Sub6mcDg2QCSreuoawpXgqJLjt53W3G81bRMU=
X-Received: by 2002:a25:ef4e:0:b0:d9d:116a:89c8 with SMTP id
 w14-20020a25ef4e000000b00d9d116a89c8mr4808003ybm.54.1698048237350; Mon, 23
 Oct 2023 01:03:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230708072835.3035398-1-quic_jprakash@quicinc.com>
 <20230708072835.3035398-8-quic_jprakash@quicinc.com> <20230708165955.08c1159c@jic23-huawei>
 <13d5dee2-1da4-2ad0-91f8-a53b43adba2b@quicinc.com>
In-Reply-To: <13d5dee2-1da4-2ad0-91f8-a53b43adba2b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 23 Oct 2023 11:03:46 +0300
Message-ID: <CAA8EJprb=804S=GfxPw_7AxoHRO1XzC+wGPCsvNGrRpJgj+y6A@mail.gmail.com>
Subject: Re: [PATCH 07/11] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
To: Jishnu Prakash <quic_jprakash@quicinc.com>
Cc: Jonathan Cameron <jic23@kernel.org>, agross@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linus.walleij@linaro.org, 
	Jonathan.Cameron@huawei.com, sboyd@kernel.org, quic_subbaram@quicinc.com, 
	quic_collinsd@quicinc.com, quic_kamalw@quicinc.com, 
	marijn.suijten@somainline.org, andriy.shevchenko@linux.intel.com, 
	krzysztof.kozlowski@linaro.org, Lars-Peter Clausen <lars@metafoo.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, Cosmin Tanislav <demonsingur@gmail.com>, 
	Mike Looijmans <mike.looijmans@topic.nl>, Ramona Bolboaca <ramona.bolboaca@analog.com>, 
	ChiYuan Huang <cy_huang@richtek.com>, Ibrahim Tilki <Ibrahim.Tilki@analog.com>, 
	William Breathitt Gray <william.gray@linaro.org>, Lee Jones <lee@kernel.org>, 
	=?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
	Haibo Chen <haibo.chen@nxp.com>, linux-iio@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-msm-owner@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 23 Oct 2023 at 09:15, Jishnu Prakash <quic_jprakash@quicinc.com> wrote:
>
> Hi Jonathan,
>
> On 7/8/2023 9:29 PM, Jonathan Cameron wrote:
> > On Sat, 8 Jul 2023 12:58:31 +0530
> > Jishnu Prakash <quic_jprakash@quicinc.com> wrote:

> >> +
> >> +    ret = adc5_get_fw_data(adc);
> >> +    if (ret < 0) {
> >> +            dev_err(adc->dev, "adc get dt data failed, ret=%d\n", ret);
> >> +            return ret;
> >> +    }
> >> +
> >> +    for (i = 0; i < adc->num_sdams; i++) {
> >> +            ret = devm_request_irq(dev, adc->base[i].irq, adc5_gen3_isr,
> >> +                                    0, adc->base[i].irq_name, adc);
> >> +            if (ret < 0) {
> >> +                    dev_err(adc->dev, "Getting IRQ %d failed, ret=%d\n", adc->base[i].irq, ret);
> >> +                    return ret;
> >> +            }
> >> +    }
> >> +
> >> +    ret = adc_tm_register_tzd(adc);
> >> +    if (ret < 0)
> >> +            return ret;
> >> +
> >> +    if (adc->n_tm_channels)
> >> +            INIT_WORK(&adc->tm_handler_work, tm_handler_work);
> >> +
> >> +    indio_dev->name = pdev->name;
> >> +    indio_dev->modes = INDIO_DIRECT_MODE;
> >> +    indio_dev->info = &adc5_gen3_info;
> >> +    indio_dev->channels = adc->iio_chans;
> >> +    indio_dev->num_channels = adc->nchannels;
> >> +
> >> +    return devm_iio_device_register(dev, indio_dev);
> >> +}
> >> +
> >> +static int adc5_gen3_exit(struct platform_device *pdev)
> >> +{
> > As you are mixing devm manged cleanup and the explicit sort the
> > result is that you remove the userspace interfaces 'after' you run
> > everything in here. I'm thinking disabling the channels at least
> > isn't a good idea in that case.
> >
> > If you want to use devm (which is good) then you need to work out how
> > to register additional callbacks during probe to tear down everything in
> > the right order (typically the reverse of what happens in probe)
> > devm_add_action_or_reset() is the way to add those extra callbacks.
> >
> > If not, just don't use devm for at least those bits that will end up
> > running out of order (such as iio_device_register()) and manually call their
> > cleanup routines instead.
>
>
> I checked some other examples in the iio/adc/ folder, I think I see what
> you mean here. It looks like drivers with a remove callback always use
> iio_device_register and iio_device_unregister instead of the devm_*
> variant, due to the issue with sysfs removal as you said.
>
> I'll update the probe and remove functions similarly, to do explicit
> cleanups as required, avoiding devm_ usage for places where it should be
> avoided.

I think you got the message all wrong. There is nothing bad with using
devm_. As a matter of fact it is a preferred form in most of the
cases. However you have to be careful to tear down your device in the
correct order. And as Jonathan pointed
out, you might add necessary hooks manually by calling
devm_add_action_or_reset().

[skipped the rest]



-- 
With best wishes
Dmitry

