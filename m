Return-Path: <devicetree+bounces-166896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D692A88CAC
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 22:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D5CB189B86B
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 20:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4ED61F3BB4;
	Mon, 14 Apr 2025 20:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kZfvKh6g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E0F1DAC92
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 20:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744660848; cv=none; b=Htmo6DVbuvxzHaUzmqSqGurkl9RF7CIhB8A+eEBn1key/0AoahQ+fpzOVpADEY28tACVlFelHuG3hxOBUCBwWU2MAebdjigHEWGkWp+17maLed8gRVjoEnl5NqbtevlDkLbPQ27/Et04tWKfpFzavsmcg5F4Yi1+j5qpK9TKKYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744660848; c=relaxed/simple;
	bh=Nw0LcWGPT7ovb/UapvxLHTltKihzzl3S+Aj3yFzA+Kg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qPkmwHpUfa6L9/s+NDb94Dm4z63pl3UR27o2DpCFyeaZr08ws3GGjoHOH1Q2ZQbPsLr9tfou0qFiTK3lp+2xJAonhDadvXq+aqWxPAxt4ZJKGoE0S6K3lJrPGDUEkKNpCJEXFJ5ofbZWxdHWz+gK0UAkXvhWwkyrO0FKXzz3B5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kZfvKh6g; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43ede096d73so34816835e9.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744660844; x=1745265644; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I+dr467YMrCXRlo27LgBCAnCDb+4zH3txMsyWAkJpXA=;
        b=kZfvKh6gMXpNUV6sClVyHYdPqfb+wW1IM/qlKhhPFRHyQJb+GhloSOAV896kTNzjmI
         gd9Ea/2REUYl8wgmFykz0blSSxnOb99j6LJKDleNlqMckgjXDITuoUiZ10P0VinxdNa7
         N8MhKxnfjxVOg6I+JUMbGtzDPwjvSz1J21m5hH2mzJ3Ms9i4a9VMruNKWBDKq95P3eTx
         dSLT3X0lFjab/jQMZeT3N9c9H4vHGLDuFr5rFl2ZM3IVr4Cau+YYIo06CZXq/2bZipue
         We8DMpHIzYN4P6kgGcovvr9o9+rdRI7T6SfUlLyMvKBYIhlXjcVVYtAY7Menu4IZ+Hl4
         aBsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744660844; x=1745265644;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+dr467YMrCXRlo27LgBCAnCDb+4zH3txMsyWAkJpXA=;
        b=Rg/MWfinZ4q5OI3kbzLqAyVHItHfVf2T0UKEQfyg0xwpfdKaooK172jMU6/9mTtNuN
         d99iTSO8PPAfpJjzrMFRx/4FMkbtpHnTP/V+01MdnVaKYKezLORvvLIig0X1vPRV4qo3
         Ve6CVtHX7FFqpfhdfnDI5PUSKpLqTJGHstwAEgYWRUzvpbDHmQ5ibxYKsCBHMSm7c142
         Qu4UZiFV6Hq7jQE8a62l6ZHJHAVW1HSeQmsPBCf6t2NP9r+gyJlN2ILKsNo8ErXwWSG6
         x8pQTzAPeeOPMTOSQ52L1EIiJ7o82XQuVV4h1Z6a7VcHwZXcRlROXBflK0/dGd0rmnqp
         ea1A==
X-Forwarded-Encrypted: i=1; AJvYcCXWfVpg8YhXuW5UKQeAPVT0t3JbMQy2jVVCktC6LQVtn0joaCfINckv5Sd5WBJps6UFHGlCgeGobSNQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8WsLL+D6zaF3ZMNkyyjT8rM0E7l7PSIng8X9hzh7hY1oQVvkF
	AoR7wjkfnLh1BFIU3HGqYzYkPuEQvboTWkqwlyr/vhhWkRA8y8ayOnS61wmEhgU=
X-Gm-Gg: ASbGncv/Hwo1uXN5liedGPiFzXD4bIxxHBDxyA6C1VB/wX6VjK8QGirvivWbDhZXayM
	Wy5m6EJOYbmoZUOE+BtMwMDMLN/2f4B7Sx/iIHvrO3qpYp2cpsH14qg9oIbn9pdXq9EVwxiesMp
	Oeeu2HdOD5FsYngL5GOevGZdbjLl92EZmhwJmsRGgt33dLmgNIcNxCGeHNlOIEhtT0xv/tBuKp6
	tZWu4zg2voi5aiA2ColHYVrOOzN9ns0SoYpAMmsnXHEB/UpFsmYpY/SM5Q8DvU3Fzi7w8H2Y395
	wCIHpIk/PmA9/dlSt3Fbbiuw0A1vf0v9r6uaYxCkuLsihMTwwGg0e0RFmbzCLFpddoVEHSSj83x
	30qXDgeERSCGRgo968VVftCA=
X-Google-Smtp-Source: AGHT+IG6KMFrnxI51KOYugO7FGCSBaq/lcvpClmyxP06XlPfwq97MevV0T43qHWbhAawMclBkpDoXg==
X-Received: by 2002:a5d:6daa:0:b0:39c:310a:f87e with SMTP id ffacd0b85a97d-39ea51f59eamr11814936f8f.16.1744660843596;
        Mon, 14 Apr 2025 13:00:43 -0700 (PDT)
Received: from archlinux (host-87-15-70-119.retail.telecomitalia.it. [87.15.70.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae9640a9sm11987383f8f.10.2025.04.14.13.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 13:00:42 -0700 (PDT)
Date: Mon, 14 Apr 2025 21:59:16 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, David Lechner <dlechner@baylibre.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH 3/3] iio: adc: ad7606: add SPI offload support
Message-ID: <alstwly2ya6qtb3usscpwavofzpinakmtx4dugt3aoey3fyjqz@sfnxwjt72jjj>
References: <20250403-wip-bl-spi-offload-ad7606-v1-0-1b00cb638b12@baylibre.com>
 <20250403-wip-bl-spi-offload-ad7606-v1-3-1b00cb638b12@baylibre.com>
 <20250414192422.039817b7@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414192422.039817b7@jic23-huawei>

On 14.04.2025 19:24, Jonathan Cameron wrote:
> 
> > +static int ad7606_spi_offload_probe(struct device *dev,
> > +				    struct iio_dev *indio_dev)
> > +{
> > +	struct ad7606_state *st = iio_priv(indio_dev);
> > +	struct spi_device *spi = to_spi_device(dev);
> > +	struct spi_bus_data *bus_data;
> > +	struct dma_chan *rx_dma;
> > +	struct spi_offload_trigger_info trigger_info = {
> > +		.fwnode = dev_fwnode(dev),
> > +		.ops = &ad7606_offload_trigger_ops,
> > +		.priv = st,
> > +	};
> > +	int ret;
> > +
> > +	bus_data = devm_kzalloc(dev, sizeof(*bus_data), GFP_KERNEL);
> > +	if (!bus_data)
> > +		return -ENOMEM;
> > +	st->bus_data = bus_data;
> > +
> > +	bus_data->offload = devm_spi_offload_get(dev, spi,
> > +						 &ad7606_spi_offload_config);
> > +	ret = PTR_ERR_OR_ZERO(bus_data->offload);
> > +	if (ret && ret != -ENODEV)
> > +		return dev_err_probe(dev, ret, "failed to get SPI offload\n");
> > +	/* Allow main ad7606_probe function to continue. */
> > +	if (ret == -ENODEV)
> > +		return 0;
> > +
> > +	ret = devm_spi_offload_trigger_register(dev, &trigger_info);
> > +	if (ret)
> > +		return dev_err_probe(dev, ret,
> > +				     "failed to register offload trigger\n");
> > +
> > +	bus_data->offload_trigger = devm_spi_offload_trigger_get(dev,
> > +		bus_data->offload, SPI_OFFLOAD_TRIGGER_DATA_READY);
> > +	if (IS_ERR(bus_data->offload_trigger))
> > +		return dev_err_probe(dev, PTR_ERR(bus_data->offload_trigger),
> > +				     "failed to get offload trigger\n");
> > +
> > +	/* TODO: PWM setup should be ok, done for the backend. PWM mutex ? */
> > +	rx_dma = devm_spi_offload_rx_stream_request_dma_chan(dev,
> > +							     bus_data->offload);
> > +	if (IS_ERR(rx_dma))
> > +		return dev_err_probe(dev, PTR_ERR(rx_dma),
> > +				     "failed to get offload RX DMA\n");
> > +
> > +	ret = devm_iio_dmaengine_buffer_setup_with_handle(dev, indio_dev,
> > +		rx_dma, IIO_BUFFER_DIRECTION_IN);
> > +	if (ret)
> 
> should be ret;  Thanks to 0-day for the report and fixed up.
> 

thanks for fixing it.

Regards,
angelo

> > +		return dev_err_probe(dev, PTR_ERR(rx_dma),
> > +				     "failed to setup offload RX DMA\n");
> > +
> > +	/* Use offload ops. */
> > +	indio_dev->setup_ops = &ad7606_offload_buffer_setup_ops;
> > +
> > +	st->offload_en = true;
> > +
> > +	return 0;
> > +}

