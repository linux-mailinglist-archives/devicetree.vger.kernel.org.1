Return-Path: <devicetree+bounces-107880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D649904BD
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 15:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C591B20CCB
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 13:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740CB2139BC;
	Fri,  4 Oct 2024 13:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cUtJWK0k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB81F212F04
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 13:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728049611; cv=none; b=tby/8zwDfwOxOxV9BF2ctMI1sLXIKoqsFLF4iJcCEZ+KwXVqI9vEgAHnmiZa/lvzrSPbHlrnenJZhgXVrjyqimF1SCNZFftOKhM1g2FBxxUuTACdkUNWUIKV6KZixte44mXadZQolHTVZSPkSTOCYxvMIzMcYlgTzIEW4EXVTRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728049611; c=relaxed/simple;
	bh=GMPZMjlkQcqXyBH1Ka//qE03cBrrpDcnxDCaWkbgejk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NtWBXxNscdtAh/lJ8SDMtWQzI0MyEu2X3kKqpn5HJ/13wCVkvtm9KVn+Co9laK57oYqz722XhCQzRt9o4psLc3L0R+9mE1UPUaf5w0RyZTHSdc9l4aBs+szcAKseh6rUKp1kK4IwzE5So0vqLPayEUfrPf7Gg5RWfxzYZs6LNzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cUtJWK0k; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42e5e758093so18865125e9.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 06:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728049606; x=1728654406; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+l6NR9x5ynudfzAve4vmqteAo7Egm7pljeYYNvDo0zU=;
        b=cUtJWK0kA2JldIKf0JUXs4qhXaDMKI3G9UQhv8c/WxVkowMELH8qDi0wChNsa7USKK
         b3e3a7WZ7mN0AVOEsKCj0WUZRb8WbWlTeY75RSWcdbtEz08Ia2RCjuOhRcf7OdUlo9lo
         UD2PItGb6d3JHaM+0EcyM3AOsRWxJwEXFByoU6oXNectMPHwirem5iLpbea6PyiH8r26
         upbo37xIltNxghLfHawoL+DsM3g0RdrDScRVaLs9NI+gZyt5lMeZ8X1Sm8WanCkzqC0d
         bwxFKTCscW2WW0WIvt55pp9cHgCJHmnd1ejHEo3txUB1iRxwwXWGFMqWi4s1J7fqgXbp
         xZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728049606; x=1728654406;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+l6NR9x5ynudfzAve4vmqteAo7Egm7pljeYYNvDo0zU=;
        b=d1VpQdI5yjEaBAehrZFjDkJAfQKEXpPC6IJoqu1DlkglidxTnsHG5wcnuzD1EDkHHO
         b7QXukMncnEDamNn2Fz72otcAh4/WeM2cVBtH2ljb/D104cHtoJE63FRJy4WKvkQ/VYn
         YH9DFmoANNlbR4npUbRfu0IwHLolhwk+H/0FVDlXoMs7NS1HdF+b8ZEjg+2me71b+2sg
         2FPUFnn+rIJCg414dkppRMY+vtMhl7gTpnRSnHeLs/NNvMi3HX8riQU8n07ux1wjHmvs
         mBR8hA2McM07beYIY4fhDaYD+8phL1pWwdZ65fGc/VdfTplTPIHqMm+r1txrHrfwBi2o
         FtPg==
X-Forwarded-Encrypted: i=1; AJvYcCUsB2abHJd3bL9QP6u9ies6rzmiDVuIB0vtDQ/Z6Xg2iXnnbEVAvbGhIPlinCoAZGqBVVuLT9KeDexh@vger.kernel.org
X-Gm-Message-State: AOJu0YxS5Qvg/246Tc7+vZPg9ocmOGLfRu805kMac7crcNCtv2RFKd/p
	1bW5WWzLl+rA26h4BQhf1SzMG+pLNM+jbWegMB47Nwx1SQ98NVI9fIz67nljk9A=
X-Google-Smtp-Source: AGHT+IHsrIDaJTASrH2355pi8O3jwbrwP0InvMA5HPzpqiIAC7Q0Np/5g3AmiIejnI+RwiEdOFLGhA==
X-Received: by 2002:adf:ce8f:0:b0:371:8a3a:680a with SMTP id ffacd0b85a97d-37d0e782737mr1706155f8f.32.1728049606166;
        Fri, 04 Oct 2024 06:46:46 -0700 (PDT)
Received: from dfj (host-79-54-25-3.retail.telecomitalia.it. [79.54.25.3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d082a6c2fsm3316540f8f.72.2024.10.04.06.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 06:46:45 -0700 (PDT)
Date: Fri, 4 Oct 2024 15:45:21 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Nuno Sa <nuno.sa@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mihail Chindris <mihail.chindris@analog.com>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org, dlechner@baylibre.com, 
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 06/11] iio: backend: extend features
Message-ID: <ihkd45xlg3hejchdw6ksmuzoxu3cazmx5rd4d4zca7xl4rfcrd@krururfftdlx>
References: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-0-ceb157487329@baylibre.com>
 <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-6-ceb157487329@baylibre.com>
 <451aaf360690cf60704e8a2880e98501156bda73.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <451aaf360690cf60704e8a2880e98501156bda73.camel@gmail.com>

Hi Nuno,

On 04.10.2024 14:54, Nuno Sá wrote:
> On Thu, 2024-10-03 at 19:29 +0200, Angelo Dureghello wrote:
> > From: Angelo Dureghello <adureghello@baylibre.com>
> > 
> > Extend backend features with new calls needed later on this
> > patchset from axi version of ad3552r.
> > 
> > The follwoing calls are added:
> > 
> > iio_backend_ddr_enable
> > 	enable ddr bus transfer
> > iio_backend_ddr_disable
> > 	disable ddr bus transfer
> > iio_backend_buffer_enable
> > 	enable buffer
> > iio_backend_buffer_disable
> > 	disable buffer
> > iio_backend_data_transfer_addr
> > 	define the target register address where the DAC sample
> > 	will be written.
> > 
> > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > ---
> >  drivers/iio/industrialio-backend.c | 79 ++++++++++++++++++++++++++++++++++++++
> >  include/linux/iio/backend.h        | 17 ++++++++
> >  2 files changed, 96 insertions(+)
> > 
> > diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-
> > backend.c
> > index 20b3b5212da7..d5e0a4da761e 100644
> > --- a/drivers/iio/industrialio-backend.c
> > +++ b/drivers/iio/industrialio-backend.c
> > @@ -718,6 +718,85 @@ static int __devm_iio_backend_get(struct device *dev, struct
> > iio_backend *back)
> >  	return 0;
> >  }
> >  
> > +/**
> > + * iio_backend_ddr_enable - Enable interface DDR (Double Data Rate) mode
> > + * @back: Backend device
> > + *
> > + * Enable DDR, data is generated by the IP at each front (raising and falling)
> > + * of the bus clock signal.
> > + *
> > + * RETURNS:
> > + * 0 on success, negative error number on failure.
> > + */
> > +int iio_backend_ddr_enable(struct iio_backend *back)
> > +{
> > +	return iio_backend_op_call(back, ddr_enable);
> > +}
> > +EXPORT_SYMBOL_NS_GPL(iio_backend_ddr_enable, IIO_BACKEND);
> > +
> > +/**
> > + * iio_backend_ddr_disable - Disable interface DDR (Double Data Rate) mode
> > + * @back: Backend device
> > + *
> > + * Disable DDR, setting into SDR mode (Single Data Rate).
> > + *
> > + * RETURNS:
> > + * 0 on success, negative error number on failure.
> > + */
> > +int iio_backend_ddr_disable(struct iio_backend *back)
> > +{
> > +	return iio_backend_op_call(back, ddr_disable);
> > +}
> > +EXPORT_SYMBOL_NS_GPL(iio_backend_ddr_disable, IIO_BACKEND);
> > +
> > +/**
> > + * iio_backend_dma_stream_enable - Enable iio buffering
> > + * @back: Backend device
> > + *
> > + * Enabling sending the dma data stream over the bus.
> > + * bus interface.
> > + *
> > + * RETURNS:
> > + * 0 on success, negative error number on failure.
> > + */
> > +int iio_backend_dma_stream_enable(struct iio_backend *back)
> > +{
> > +	return iio_backend_op_call(back, dma_stream_enable);
> > +}
> > +EXPORT_SYMBOL_NS_GPL(iio_backend_dma_stream_enable, IIO_BACKEND);
> > +
> > +/**
> > + * iio_backend_dma_stream_disable - Disable iio buffering
> > + * @back: Backend device
> > + *
> > + * Disable sending the dma data stream over the bus.
> > + *
> > + * RETURNS:
> > + * 0 on success, negative error number on failure.
> > + */
> > +int iio_backend_dma_stream_disable(struct iio_backend *back)
> > +{
> > +	return iio_backend_op_call(back, dma_stream_disable);
> > +}
> > +EXPORT_SYMBOL_NS_GPL(iio_backend_dma_stream_disable, IIO_BACKEND);
> > +
> 
> I'm not sure if this is what Jonathan was suggesting... Ate least I don't really
> agree with it. I mean, yes, this is about buffering and to start receiving (or
> sending) a stream of data. But AFAICT, it might have nothing to do with DMA. Same as
> .request_buffer() - It's pretty much always a DMA one but we should not take that for
> granted.
> 
> So going back to the RFC [1], you can see I was suggesting something like struct
> iio_buffer_setup_ops. Maybe just add the ones we use for now? So that would
> be.buffer_postenable() and .buffer_predisable(). Like this, it should be obvious the
> intent of the ops.
> 
ok, thanks,

so something as :

struct iio_backend_setup_ops {
	int (*buffer_postenable)(struct iio_backend *back);
	int (*buffer_predisable)(struct iio_backend *back);
};

struct iio_backend_ops {
	struct iio_backend_setup_ops setup_ops;

?

> - Nuno Sá
> 
> 

-- 

Regards,
  Angelo

