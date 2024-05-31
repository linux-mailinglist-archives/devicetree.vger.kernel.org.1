Return-Path: <devicetree+bounces-71024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 906CF8D56E2
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 02:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3974D28A600
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 00:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368354C89;
	Fri, 31 May 2024 00:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VXLlzU0i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE0017E9
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 00:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717114975; cv=none; b=eleVZv+e5oDsskPbqrcyer+t2brC0XQICaUZ2k6BwPdIGnGdl81RXIQhoDw1xZvzEUXF+DDWr1/oS5u7wXQQ5UQ6P/8KrKSoYcCbsrrWrW4r5QSeR/1J1jAItRf3KhtSBgBSsOxVvxHcDrugRFVIp+qyQtRSm0e3riJ1dD7T7xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717114975; c=relaxed/simple;
	bh=a+MTHRbQZmyET4RE0SkjiFYdjs368VfVHQLAD7aFXJg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iPWzHN04ikW8L6IgBlP7/lDV2F7/ZFbmLUWkwTHtahbL+naNLoqOooqewVzahoQO1wjR8bruWtlAbQdKvi8Sqdqw/7TARxaF6PJhT/VJuVtiwtNWMstd7sY1XagBGywXHctZx2aHYKi/DP3wAMArEjzAI2EjHuRrq4sV1OGiJ2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VXLlzU0i; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52b840a001dso1020595e87.3
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 17:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717114971; x=1717719771; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0yVVKFhmIVyi/gwbSmn3VSSTQQqssFlSlOSpKOH7IJg=;
        b=VXLlzU0i3WzR4ZBScI9I1du86ITe1/++yytMBiCicYyoFgn5TWyQP/KBM8rBaX7bEm
         K6X0Y/FBV6iTa4pyok/4/JubT0CDILaA5q55YO2zSgSzDNvnyW7ILJXs/9jvvJnr4ZRP
         yw1cCmjHxxmzHZh146HwrENngKNQAeCVBVfqSkYavcbv8N2b6X0PDxz3gBNIQKI+sEPZ
         OwHgrhkFNezkr9m9VWel7Xj1tXPB0d5sbw+mNgfcdU5jxiyWRi63hLABcUzGKRc2hRYM
         KYPyiyrLFw/RkGnIzHA4ic+kRP6NT2wj2TbJKroz2MCM5Tn0GJwDRuijKAovNCAB8e0s
         Y9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717114971; x=1717719771;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0yVVKFhmIVyi/gwbSmn3VSSTQQqssFlSlOSpKOH7IJg=;
        b=orLKa8CI8RgaDsYRKrSwXbXCrpVeRmMzL9izl8MM/ovefssqbrzWg18wC5Ti0HjDIX
         nZkPt1RpXAy+kUUhymt+hnQ4LP9zBGhu3oJ2ceKFgplMe9kZhqMy4SMGEsMa+idMWJkM
         UPWz4LwilpTRSHXWzYvnMhZVWvAjg+LJLTWRePXbmeZvckoabHpWRmHf/+6FPECofzJj
         vkq3aqoVxcq7RW2GZEQ3lWySjFXLfPI//9367CtCl+IyckGIoTSmHL6vSt8Cvj6shyYp
         9EHI2FgTb/CDCrsb6XFeE1JZZ626/8A5W026s8m0uHUHqFndKBmu1yZsk8T+qToYjaDf
         w8Bg==
X-Forwarded-Encrypted: i=1; AJvYcCVC+ezOFXMPEnzipbEEozjYOvhGrSq+aDxdZej2iFzIAiTCf+PE4yFsZtsXK/GPPWD4/a48e5WDbTsdMxo343b44jro82GUKa7z9Q==
X-Gm-Message-State: AOJu0YwUnGZR9TmdDDYm48hvSivYpySZNZ4oFreyPMhx0FG5aPVlVeuF
	v5eEjqXliLK1mNbTyUuUVucEjcF9CySnqs87vlu2yXmAx7XS87knelwnETHyr14=
X-Google-Smtp-Source: AGHT+IGwyTjaK7sTOD0lwTEcc8h2FpDlgvXSpJCoPLo5Nq2Xn4TWRqpsowc5anXlgkfZ9x1bVaT+CA==
X-Received: by 2002:a19:7519:0:b0:523:9811:b0d6 with SMTP id 2adb3069b0e04-52b8959c577mr100931e87.15.1717114970664;
        Thu, 30 May 2024 17:22:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d34cdasm135780e87.50.2024.05.30.17.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 17:22:49 -0700 (PDT)
Date: Fri, 31 May 2024 03:22:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Hans de Goede <hdegoede@redhat.com>, 
	Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Nikita Travkin <nikita@trvn.ru>
Subject: Re: [PATCH v4 3/6] usb: typec: ucsi: add Lenovo Yoga C630 glue driver
Message-ID: <bo6jvoew3s37g753nclbx3badpnnhxs53myuaqb3whr5zb4tf3@fcra5ic6y6wo>
References: <20240528-yoga-ec-driver-v4-0-4fa8dfaae7b6@linaro.org>
 <20240528-yoga-ec-driver-v4-3-4fa8dfaae7b6@linaro.org>
 <afed0bee-de6e-4e86-8437-0518c616bd2c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afed0bee-de6e-4e86-8437-0518c616bd2c@linaro.org>

On Wed, May 29, 2024 at 04:41:40PM +0100, Bryan O'Donoghue wrote:
> On 28/05/2024 21:44, Dmitry Baryshkov wrote:
> > The Lenovo Yoga C630 WOS laptop provides implements UCSI interface in
> > the onboard EC. Add glue driver to interface the platform's UCSI
> > implementation.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/usb/typec/ucsi/Kconfig          |   9 ++
> >   drivers/usb/typec/ucsi/Makefile         |   1 +
> >   drivers/usb/typec/ucsi/ucsi_yoga_c630.c | 189 ++++++++++++++++++++++++++++++++
> >   3 files changed, 199 insertions(+)
> > 
> > diff --git a/drivers/usb/typec/ucsi/Kconfig b/drivers/usb/typec/ucsi/Kconfig
> > index bdcb1764cfae..680e1b87b152 100644
> > --- a/drivers/usb/typec/ucsi/Kconfig
> > +++ b/drivers/usb/typec/ucsi/Kconfig
> > @@ -69,4 +69,13 @@ config UCSI_PMIC_GLINK
> >   	  To compile the driver as a module, choose M here: the module will be
> >   	  called ucsi_glink.
> > +config UCSI_LENOVO_YOGA_C630
> > +	tristate "UCSI Interface Driver for Lenovo Yoga C630"
> > +	depends on EC_LENOVO_YOGA_C630
> > +	help
> > +	  This driver enables UCSI support on the Lenovo Yoga C630 laptop.
> > +
> > +	  To compile the driver as a module, choose M here: the module will be
> > +	  called ucsi_yoga_c630.
> > +
> >   endif
> > diff --git a/drivers/usb/typec/ucsi/Makefile b/drivers/usb/typec/ucsi/Makefile
> > index b4679f94696b..aed41d23887b 100644
> > --- a/drivers/usb/typec/ucsi/Makefile
> > +++ b/drivers/usb/typec/ucsi/Makefile
> > @@ -21,3 +21,4 @@ obj-$(CONFIG_UCSI_ACPI)			+= ucsi_acpi.o
> >   obj-$(CONFIG_UCSI_CCG)			+= ucsi_ccg.o
> >   obj-$(CONFIG_UCSI_STM32G0)		+= ucsi_stm32g0.o
> >   obj-$(CONFIG_UCSI_PMIC_GLINK)		+= ucsi_glink.o
> > +obj-$(CONFIG_UCSI_LENOVO_YOGA_C630)	+= ucsi_yoga_c630.o
> > diff --git a/drivers/usb/typec/ucsi/ucsi_yoga_c630.c b/drivers/usb/typec/ucsi/ucsi_yoga_c630.c
> > new file mode 100644
> > index 000000000000..ca1ab5c81b87
> > --- /dev/null
> > +++ b/drivers/usb/typec/ucsi/ucsi_yoga_c630.c
> > @@ -0,0 +1,189 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (c) 2022-2024, Linaro Ltd
> > + * Authors:
> > + *    Bjorn Andersson
> > + *    Dmitry Baryshkov
> > + */
> > +#include <linux/auxiliary_bus.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_data/lenovo-yoga-c630.h>
> > +
> > +#include "ucsi.h"
> > +
> > +struct yoga_c630_ucsi {
> > +	struct yoga_c630_ec *ec;
> > +	struct ucsi *ucsi;
> > +	struct notifier_block nb;
> > +	struct completion complete;
> > +	unsigned long flags;
> > +#define UCSI_C630_COMMAND_PENDING	0
> > +#define UCSI_C630_ACK_PENDING		1
> > +	u16 version;
> > +};
> > +
> > +static  int yoga_c630_ucsi_read(struct ucsi *ucsi, unsigned int offset,
> > +				void *val, size_t val_len)
> > +{
> > +	struct yoga_c630_ucsi *uec = ucsi_get_drvdata(ucsi);
> > +	u8 buf[YOGA_C630_UCSI_READ_SIZE];
> > +	int ret;
> > +
> > +	ret = yoga_c630_ec_ucsi_read(uec->ec, buf);
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (offset == UCSI_VERSION) {
> > +		memcpy(val, &uec->version, min(val_len, sizeof(uec->version)));
> > +		return 0;
> > +	}
> > +
> > +	if (offset == UCSI_CCI)
> > +		memcpy(val, buf,
> > +		       min(val_len, YOGA_C630_UCSI_CCI_SIZE));
> > +	else if (offset == UCSI_MESSAGE_IN)
> > +		memcpy(val, buf + YOGA_C630_UCSI_CCI_SIZE,
> > +		       min(val_len, YOGA_C630_UCSI_DATA_SIZE));
> 
> For some reason I believe multi-lines like this, including function calls
> that are split over lines should be encapsulated with {}
> 
> else if(x) {
>     memcpy(x,y,
>            z);
> }
> 
> If checkpatch doesn't complain about it feel free not to do that though.

No, checkpatch --strict doesn't complain

> 
> > +	else
> > +		return -EINVAL;
> > +
> > +	return 0;
> > +}
> > +
> > +static  int yoga_c630_ucsi_async_write(struct ucsi *ucsi, unsigned int offset,
> > +				       const void *val, size_t val_len)
> > +{
> > +	struct yoga_c630_ucsi *uec = ucsi_get_drvdata(ucsi);
> > +
> > +	if (offset != UCSI_CONTROL ||
> > +	    val_len != YOGA_C630_UCSI_WRITE_SIZE)
> > +		return -EINVAL;
> > +
> > +	return yoga_c630_ec_ucsi_write(uec->ec, val);
> > +}
> > +
> > +static  int yoga_c630_ucsi_sync_write(struct ucsi *ucsi, unsigned int offset,
> > +				      const void *val, size_t val_len)
> > +{
> > +	struct yoga_c630_ucsi *uec = ucsi_get_drvdata(ucsi);
> > +	bool ack = UCSI_COMMAND(*(u64 *)val) == UCSI_ACK_CC_CI;
> > +	int ret;
> > +
> > +	if (ack)
> > +		set_bit(UCSI_C630_ACK_PENDING, &uec->flags);
> > +	else
> > +		set_bit(UCSI_C630_COMMAND_PENDING, &uec->flags);
> > +
> > +	reinit_completion(&uec->complete);
> > +
> > +	ret = yoga_c630_ucsi_async_write(ucsi, offset, val, val_len);
> > +	if (ret)
> > +		goto out_clear_bit;
> > +
> > +	if (!wait_for_completion_timeout(&uec->complete, 5 * HZ))
> > +		ret = -ETIMEDOUT;
> > +
> > +out_clear_bit:
> > +	if (ack)
> > +		clear_bit(UCSI_C630_ACK_PENDING, &uec->flags);
> > +	else
> > +		clear_bit(UCSI_C630_COMMAND_PENDING, &uec->flags);
> > +
> > +	return ret;
> > +}
> > +
> > +const struct ucsi_operations yoga_c630_ucsi_ops = {
> > +	.read = yoga_c630_ucsi_read,
> > +	.sync_write = yoga_c630_ucsi_sync_write,
> > +	.async_write = yoga_c630_ucsi_async_write,
> > +};
> > +
> > +static int yoga_c630_ucsi_notify(struct notifier_block *nb,
> > +				 unsigned long action, void *data)
> > +{
> > +	struct yoga_c630_ucsi *uec = container_of(nb, struct yoga_c630_ucsi, nb);
> > +	u32 cci;
> > +	int ret;
> > +
> > +	if (action == LENOVO_EC_EVENT_USB || action == LENOVO_EC_EVENT_HPD) {
> > +		ucsi_connector_change(uec->ucsi, 1);
> > +		return NOTIFY_OK;
> > +	}
> > +
> > +	if (action != LENOVO_EC_EVENT_UCSI)
> > +		return NOTIFY_DONE;
> 
> Is this disjunction on action a good candidate for a switch(){}

Ack, refactored the function by extracting the UCSI notification code
and then using the switch-case.

> > +
> > +	ret = uec->ucsi->ops->read(uec->ucsi, UCSI_CCI, &cci, sizeof(cci));
> > +	if (ret)
> > +		return NOTIFY_DONE;
> > +
> > +	if (UCSI_CCI_CONNECTOR(cci))
> > +		ucsi_connector_change(uec->ucsi, UCSI_CCI_CONNECTOR(cci));
> > +
> > +	if (cci & UCSI_CCI_ACK_COMPLETE &&
> > +	    test_bit(UCSI_C630_ACK_PENDING, &uec->flags))
> > +		complete(&uec->complete);
> > +	if (cci & UCSI_CCI_COMMAND_COMPLETE &&
> > +	    test_bit(UCSI_C630_COMMAND_PENDING, &uec->flags))
> > +		complete(&uec->complete);
> 
> IMO these multi-line clauses should end up with a {} around the complete
> even though its not required.
> 
> Emphasis on the O.

I added an empty line inbetween, then it's easier to comprehent event
without curly brackets.

> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
With best wishes
Dmitry

