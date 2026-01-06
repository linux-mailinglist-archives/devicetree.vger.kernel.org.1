Return-Path: <devicetree+bounces-251721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7033CCF60F9
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 01:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C3003047960
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 00:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C069DF76;
	Tue,  6 Jan 2026 00:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Owxbi8n0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A255D125A9
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 00:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767658184; cv=none; b=ZFFW2iYxVpFTpFyfxa7ktS6goTndSrStFN6TH8XZPnjoa4a88cZKsk+Sizs9I4W2GMiPnYdzpRtYbc6y0DKnqz2KdHS28UpUUt6YlgRjCzu8mNIYCZSmy8XspIxD4733JeS5dOn6bfCXhNL1/r6ihCmUmI0tQds/Hp0suwfZP78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767658184; c=relaxed/simple;
	bh=Inz8nTS6OWDoscUKHtvKeqpWbQFl+Dyu+VyLRoOtOD4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bt0RDDBSDvgScrfHdkFCVFpNAPQCac2P3hO2LJiIVoCPrAWxGSUEp3i/5PMXGpb0thhB41NbVoi/tSLIxyR6JV5HCA+U9sawOEU87RJFL0bTOLSn8kwOtfYO+Yn6jSk2vXn3F1y1PltjZ2THA1dNHlK14p8fEGGreuVPUJId3Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Owxbi8n0; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b7ce5d6627dso98092466b.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 16:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767658181; x=1768262981; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=t0w3r/U9/0dcuntJYRjXZI1yXpnHl8d1fsQTIz2OC54=;
        b=Owxbi8n0qWLJG9ef6VDq5dtGSn4CVLhxQIxRx1VouV8f8imsOJNQoBa6PLvtjm+wr+
         uOzkdtCYScM+LjSoINH/OOqF28obqoJB3iMWwOdKGvVyDePY0hHX9gK79sDI3UVP9FBA
         VYeTb3hwtHQyTzU4tScz5N4UPGdvvRy9IQ9p7uQEY8ITSTeHeVHUofVhvleyTGBJnJtz
         +LxUvsdAVKhhF1qxH3Ab5i3JdSxeETBWTGNeoz7btQw+Sx5uFGNvb6wHOMEAhOR543Fc
         Z/mq/PcizVNBy4ZMkAyeJQLKvAcBdj+GQlf5Qty8PhIw+vPhP+gUQYMQDCcWcAjOGF9q
         pm1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767658181; x=1768262981;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t0w3r/U9/0dcuntJYRjXZI1yXpnHl8d1fsQTIz2OC54=;
        b=gFssGWk7H3xjTcQQcqFeA+asUEKBHAOpEwUI6rn4zhOKD/A1q7gl/ZJrJGzxSiyanA
         a6p6oaw+GRLd7yFL8LFoIcDKwpmdYrrN7pR9t2bTSNWLC91zPfas18wBWI3d67h/aF5n
         0BsWUBuk0ZFUqCNwlVSX+gsGahgisumNu0PHsVxPpREoGvxLCfVHIySI3K6hJi9/l+Xz
         ovKAR+V4Fj2jrONTcd846pQp3iUu7XBfnLDjXL/3IsTjEaFYZEE8gJBkiyhFn0eN1eKN
         7GuZzye7bRHJ7wq1DviyumRI8zl7Qv2uOYd2nsfrrZqJGRI2O+GC7rKBaNrOi3oc+ZVI
         jVeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoBFmDDFfWJ65v633XgqzJ63kR0tZxWrfipkypL0BftHgJow1egLR0eAAup54DaPLej3m9A9ssJ/ca@vger.kernel.org
X-Gm-Message-State: AOJu0YwXyTuKqu0dA72Q9x8KcYSXuHYhhEJ4/jmfLKYzPU2CKu+PR7v4
	Aw8wni+yrcyq/XHzg1tC30QCG3qGGpHu5jI+akA73cOg5xLqu5/XNVUQKMVkIrEoF1DGf/+uUtK
	LgAUNqSnfVaMRTAKLDigis0mGuFeDynk=
X-Gm-Gg: AY/fxX6vUacs+BWJii0NIV4/+33+yc7CXgTknG8kh3mNSZFl57EuLLnUpPzdt9+Tcy0
	MoDMRjWwtvMexH2tsHXYaD/XYLKfGb26qjd/A+UU/6PF00iSRYZh7ls0qo8BsLronL2KWgixxa7
	lURRPTUcElG8a06aOChcLnUyTwTPu08VlsgEvMChu/dzKxysXpZgKSq3oq/3LkvK6T42V7ysr30
	8yPcGQ/bpy6nzxwJrwvSzYFYY9dlT1TjocYEw/XjzolCEphZ/tyIWsOl6cUMVbWZA+VIew=
X-Google-Smtp-Source: AGHT+IFMnVXUBbAqxy1CdeEbhDre6zAjnix7BkyzGQ8cmTde62SCsh37pgUJjlGPMbTMfJfpYz28ivvO4jE9aAPINss=
X-Received: by 2002:a17:907:6d18:b0:b80:3fb3:bea0 with SMTP id
 a640c23a62f3a-b8426c18872mr170679366b.56.1767658180951; Mon, 05 Jan 2026
 16:09:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260101-b4-rfd77402_irq-v4-0-42cd54359e9f@gmail.com>
 <20260101-b4-rfd77402_irq-v4-4-42cd54359e9f@gmail.com> <aVe7SP914oI-jAam@smile.fi.intel.com>
In-Reply-To: <aVe7SP914oI-jAam@smile.fi.intel.com>
From: Shrikant <raskar.shree97@gmail.com>
Date: Tue, 6 Jan 2026 05:39:29 +0530
X-Gm-Features: AQt7F2pnMWJoN619uvUW6hqPcSiC2qf7DvL5DGgl8npv-T3Lorsh6XKSLCi7x6c
Message-ID: <CAHc1_P4dCdt6QFgfZ8OUZGT+UfLqiP_ect7pOsd_HeQaDe8jTg@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] iio: proximity: rfd77402: Add interrupt handling support
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, skhan@linuxfoundation.org, 
	david.hunter.linux@gmail.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> >  #include <linux/module.h>
> >  #include <linux/i2c.h>
> >  #include <linux/delay.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/completion.h>
> >  #include <linux/iopoll.h>
>
> Same comment as per previous patch. Do not add even more misordering, please.
Will it be okay if I re-order the includes as below ?
#include <linux/completion.h>
#include <linux/delay.h>
#include <linux/i2c.h>
#include <linux/interrupt.h>
#include <linux/iopoll.h>
#include <linux/module.h>

#include <linux/iio/iio.h>
> > +/**
> > + * struct rfd77402_data - device-specific data for the RFD77402 sensor
> > + * @client: I2C client handle
> > + * @lock: mutex to serialize sensor reads
> > + * @completion: completion used for interrupt-driven measurements
> > + * @irq_en: indicates whether interrupt mode is enabled
> > + */
> >  struct rfd77402_data {
> >       struct i2c_client *client;
> > -     /* Serialize reads from the sensor */
> >       struct mutex lock;
> > +     struct completion completion;
> > +     bool irq_en;
> >  };
>
> The kernel-doc conversion can be a separate patch, but I'm not insisting.
I can split this into a separate patch within the same series.
Please let me know if you would prefer it to be handled differently.

> > +static int rfd77402_wait_for_irq(struct rfd77402_data *data)
> > +{
> > +     int ret;
>
> Missed blank line. Doesn't checkpatch complain?
Checkpatch did not complain but I will add a blank line.

> > -     mutex_init(&data->lock);
> > +     ret = devm_mutex_init(&client->dev, &data->lock);
> > +     if (ret)
> > +             return ret;
>
> In my opinion this deserves a separate change.
I will add a separate patch for this within the same series.
Please let me know if you would prefer it to be handled differently

Regards,
Shrikant

