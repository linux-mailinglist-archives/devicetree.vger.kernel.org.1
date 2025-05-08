Return-Path: <devicetree+bounces-174975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7700AAF696
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 11:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2D139E288F
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 09:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5502144C1;
	Thu,  8 May 2025 09:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ROgpOU2S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722ED4C81
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 09:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746695858; cv=none; b=W/TAXVQMVGmI3Cj2+nyLLQXsm3aT4HXwNTxqCWiFHDDR/ZO2Agrt/ljG3UJfmFXtzgAxatQ7COQ6Os7vmiIW2VQwRWFQBB59+FA6SKj7iTDxUtjmBOO04+j70SNK9Ih6vZlvLVL1sk3HhXfn4Wx4HE+TskZP4sFtCDLe+sNFKLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746695858; c=relaxed/simple;
	bh=hASGQaxXpiY5FHVtp3EgMQ6Y/NJAsNGG/hzPVZj9HMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V5XmCizrF6kXNqoaXZo0Bb/UG/QNdhrZAKYtiRbEcs/MSLz+2LVv3/XJQsQrrftIu+XuQ0UynhCbZWtNfmJ7WcjsywpDM1PCznZqN+RYdsOOmSVNO0hXywlPNb2tFkq73lJucImnQ93GKbJmHhY5IX9aa8jRRRI2MCxLS1yz9Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ROgpOU2S; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-39ac8e7688aso600116f8f.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 02:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746695854; x=1747300654; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BF1WFSYzy6unIRUXzEpd/eRhMY+e6oBnTujYR6+ffP4=;
        b=ROgpOU2Sz+LbA9BpU+SgekuRNd/eYVVJwu5n/efwodhpbp1GFyYe+nP+OAxA5rnLdJ
         iQ2TN9Yu5bHelFqd0PWtv3KRU3Cy0HaqPWtL+hTk1DVEr3zF5mVBJKzy1l6nz7yY7/VQ
         82LUpCI617nOLl/ER1K/LdZBEdJ8o2e/Y28zUttWahi5hkAXG0nndlFEZgMQRm4EXjvy
         E68U4rQgvwwSSWmfoXE7RaYvojmKPmkIqI0Knnpbf9XMohoOQJhJzfw8Ki4cm3ApAw00
         qfKdVEIpJLN4RI9k38/xYeZ1hVMR58q9yZbeaHgsKU1gZFh5IqOiKl7P+e+LutXhDxpJ
         j54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746695854; x=1747300654;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BF1WFSYzy6unIRUXzEpd/eRhMY+e6oBnTujYR6+ffP4=;
        b=tt9T+1Cg6i8vaNwKVyT+KhllAt3xk7hzTuaneQVbrt2YjcaHQ67kf+a6xY5F5Z1gB2
         CGan6xpdgc0QP7C3fkGtxSonLWgc/PxT/iFic1jhxwCMsfYeqvr0O/f/oQH/CqM/SuFP
         DG4WOD97antITnoi3XYsBj/zBOT4JP1VkATf+D9pNWpb45kPRkxitzcKEVPhXCoqnqQc
         aphs4n5KvtfaJbiZynWm2dcLtx6XTX6eXqBjgnF5MXPvqD0/qxMpckK4U3413HbI1y+E
         RDsIMrMXX7P83X6b8teXXYoN8nWsd36FGJ1rWhYNnlrdCCioUVLLmaH9140YB1eTsLwX
         nSOA==
X-Forwarded-Encrypted: i=1; AJvYcCU87E/O6V9JcfcXIuEgJZjYGTDnQg6x8zIrF3bacXVswmfeicGetn2wcSp5yxW0lvtntjRflf6/38Lv@vger.kernel.org
X-Gm-Message-State: AOJu0YxfxOiFkeMyUUZiRS+zX0wsv6tXKv8KZmWkA1oyv3XwqtUO4nlC
	5tKBhZZtvwf2UJoxWY3G/JS5pbQZ+oNYLKBQi+NHnjdJV3qSP0XQTADnaIhK6WM=
X-Gm-Gg: ASbGnctsJuZZ5LdfbXDlICMeEK0DmuOqodn4FEPOYGxx1hCwdX/Ug5fiaCcCV1nNa+5
	DzCtR8yTMmUVYjJee1vD+RL9f2jl9mpJMGd/jD9iuxJ5+QJwZznZGbCneZPbw1bZozymmE1iiYq
	x4ykTVo+SLfkmgQ5f3Lki5puofsDor8AWTCGeA6UfRcXM9JmLPqu2E9DH59YJubZwKKyuJO6D5u
	kUGC2nTjP5YxNCO7Ps6gbRYuSZld6GbRToKrJY58nWWrHrZDIcnDj2xE/bRsB7zIi0xlW8XOQdu
	g3q9BRj1evA6EQQV0stXJ2HNyT/NxIfP7yX+9tbM/Tc0c2ejBz6877EmYTOjugrXyTLVWXvBnuf
	YRb11zkiSV/8jeMwgaA==
X-Google-Smtp-Source: AGHT+IHmUlWs7sWnu8sNqCM7w1Ovbo7chcDANaOLySE8KJF9TX6KqKSbMi5HVBx/UBaB7+ICOj4c0Q==
X-Received: by 2002:a05:6000:178c:b0:39e:cbc7:ad38 with SMTP id ffacd0b85a97d-3a0b49bc923mr5220023f8f.32.1746695853692;
        Thu, 08 May 2025 02:17:33 -0700 (PDT)
Received: from archlinux (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a0ebf11bffsm495167f8f.20.2025.05.08.02.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 02:17:33 -0700 (PDT)
Date: Thu, 8 May 2025 11:16:19 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 5/5] iio: adc: ad7606: add gain calibration support
Message-ID: <qaiqdak4pieewavl2ff4mpr2ywhw2bvnoob55buiinkisacar5@q6jhlb5klcf6>
References: <20250506-wip-bl-ad7606-calibration-v3-0-6eb7b6e72307@baylibre.com>
 <20250506-wip-bl-ad7606-calibration-v3-5-6eb7b6e72307@baylibre.com>
 <c999800bb5f6c1f2687ff9b257079dcf719dd084.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c999800bb5f6c1f2687ff9b257079dcf719dd084.camel@gmail.com>

Hi all,
On 07.05.2025 07:14, Nuno Sá wrote:
> On Tue, 2025-05-06 at 23:03 +0200, Angelo Dureghello wrote:
> > From: Angelo Dureghello <adureghello@baylibre.com>
> > 
> > Add gain calibration support, using resistor values set on devicetree,
> > values to be set accordingly with ADC external RFilter, as explained in
> > the ad7606c-16 datasheet, rev0, page 37.
> > 
> > Usage example in the fdt yaml documentation.
> > 
> > Tested-by: David Lechner <dlechner@baylibre.com>
> > Reviewed-by: Nuno Sá <nuno.sa@analog.com>
> > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > ---
> >  drivers/iio/adc/ad7606.c | 56 ++++++++++++++++++++++++++++++++++++++++++++++++
> >  drivers/iio/adc/ad7606.h |  4 ++++
> >  2 files changed, 60 insertions(+)
> > 
> > diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
> > index
> > a986eb1284106da4980ac36cb0b5990e4e3bd948..049fd8616769d32778aa238b348b2fb82fa83745
> > 100644
> > --- a/drivers/iio/adc/ad7606.c
> > +++ b/drivers/iio/adc/ad7606.c
> > @@ -33,6 +33,10 @@
> >  
> >  #include "ad7606.h"
> >  
> > +#define AD7606_CALIB_GAIN_MIN	0
> > +#define AD7606_CALIB_GAIN_STEP	1024
> > +#define AD7606_CALIB_GAIN_MAX	(63 * AD7606_CALIB_GAIN_STEP)
> > +
> >  /*
> >   * Scales are computed as 5000/32768 and 10000/32768 respectively,
> >   * so that when applied to the raw values they provide mV values.
> > @@ -125,6 +129,8 @@ static int ad7609_chan_scale_setup(struct iio_dev *indio_dev,
> >  				   struct iio_chan_spec *chan);
> >  static int ad7616_sw_mode_setup(struct iio_dev *indio_dev);
> >  static int ad7606b_sw_mode_setup(struct iio_dev *indio_dev);
> > +static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev,
> > +					struct iio_chan_spec *chan);
> >  
> >  const struct ad7606_chip_info ad7605_4_info = {
> >  	.max_samplerate = 300 * KILO,
> > @@ -180,6 +186,7 @@ const struct ad7606_chip_info ad7606b_info = {
> >  	.scale_setup_cb = ad7606_16bit_chan_scale_setup,
> >  	.sw_setup_cb = ad7606b_sw_mode_setup,
> >  	.offload_storagebits = 32,
> > +	.calib_gain_setup_cb = ad7606_chan_calib_gain_setup,
> >  	.calib_offset_avail = ad7606_calib_offset_avail,
> >  	.calib_phase_avail = ad7606b_calib_phase_avail,
> >  };
> > @@ -195,6 +202,7 @@ const struct ad7606_chip_info ad7606c_16_info = {
> >  	.scale_setup_cb = ad7606c_16bit_chan_scale_setup,
> >  	.sw_setup_cb = ad7606b_sw_mode_setup,
> >  	.offload_storagebits = 32,
> > +	.calib_gain_setup_cb = ad7606_chan_calib_gain_setup,
> >  	.calib_offset_avail = ad7606_calib_offset_avail,
> >  	.calib_phase_avail = ad7606c_calib_phase_avail,
> >  };
> > @@ -246,6 +254,7 @@ const struct ad7606_chip_info ad7606c_18_info = {
> >  	.scale_setup_cb = ad7606c_18bit_chan_scale_setup,
> >  	.sw_setup_cb = ad7606b_sw_mode_setup,
> >  	.offload_storagebits = 32,
> > +	.calib_gain_setup_cb = ad7606_chan_calib_gain_setup,
> >  	.calib_offset_avail = ad7606c_18bit_calib_offset_avail,
> >  	.calib_phase_avail = ad7606c_calib_phase_avail,
> >  };
> > @@ -357,6 +366,49 @@ static int ad7606_get_chan_config(struct iio_dev *indio_dev,
> > int ch,
> >  	return 0;
> >  }
> >  
> > +static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev,
> > +					struct iio_chan_spec *chan)
> > +{
> > +	struct ad7606_state *st = iio_priv(indio_dev);
> > +	unsigned int num_channels = st->chip_info->num_adc_channels;
> > +	struct device *dev = st->dev;
> > +	int ret;
> > +
> > +	device_for_each_child_node_scoped(dev, child) {
> > +		u32 reg, r_gain;
> > +

working on further features, i noticed this function is called
for each channel, that is not correct, so need to fix this,
will send a v4.

Regards,
angelo

> > +		ret = fwnode_property_read_u32(child, "reg", &reg);
> > +		if (ret)
> > +			return ret;
> > +
> > +		/* channel number (here) is from 1 to num_channels */
> > +		if (reg < 1 || reg > num_channels) {
> > +			dev_warn(dev, "wrong ch number (ignoring): %d\n", reg);
> > +			continue;
> > +		}
> > +
> 
> Sorry Angelo, just realized this now. Any reason for not treating the above as a real
> invalid argument? It's minor and not a big deal but odd enough...
> 
> - Nuno Sá
> 
> > +		ret = fwnode_property_read_u32(child, "adi,rfilter-ohms",
> > +					       &r_gain);
> > +		if (ret == -EINVAL)
> > +			/* Keep the default register value. */
> > +			continue;
> > +		if (ret)
> > +			return ret;
> > +
> > +		if (r_gain > AD7606_CALIB_GAIN_MAX)
> > +			return dev_err_probe(st->dev, -EINVAL,
> > +					     "wrong gain calibration value.");
> > +
> > +		/* Chan reg is 1-based index. */
> > +		ret = st->bops->reg_write(st, AD7606_CALIB_GAIN(reg - 1),
> > +			DIV_ROUND_CLOSEST(r_gain, AD7606_CALIB_GAIN_STEP));
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  static int ad7606c_18bit_chan_scale_setup(struct iio_dev *indio_dev,
> >  					  struct iio_chan_spec *chan)
> >  {
> > @@ -1410,6 +1462,10 @@ static int ad7606_probe_channels(struct iio_dev *indio_dev)
> >  				chan->info_mask_separate_available |=
> >  					BIT(IIO_CHAN_INFO_CALIBBIAS) |
> >  					BIT(IIO_CHAN_INFO_CONVDELAY);
> > +				ret = st->chip_info->calib_gain_setup_cb(
> > +					indio_dev, chan);
> > +				if (ret)
> > +					return ret;
> >  			}
> >  
> >  			/*
> > diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
> > index
> > f613583a7fa4095115b0b28e3f8e51cd32b93524..94165d217b69d54cbce9109b8c0f9dc0237cf304
> > 100644
> > --- a/drivers/iio/adc/ad7606.h
> > +++ b/drivers/iio/adc/ad7606.h
> > @@ -50,6 +50,8 @@ struct ad7606_state;
> >  typedef int (*ad7606_scale_setup_cb_t)(struct iio_dev *indio_dev,
> >  				       struct iio_chan_spec *chan);
> >  typedef int (*ad7606_sw_setup_cb_t)(struct iio_dev *indio_dev);
> > +typedef int (*ad7606_calib_gain_setup_cb_t)(struct iio_dev *indio_dev,
> > +					    struct iio_chan_spec *chan);
> >  
> >  /**
> >   * struct ad7606_chip_info - chip specific information
> > @@ -66,6 +68,7 @@ typedef int (*ad7606_sw_setup_cb_t)(struct iio_dev *indio_dev);
> >   * @init_delay_ms:	required delay in milliseconds for initialization
> >   *			after a restart
> >   * @offload_storagebits: storage bits used by the offload hw implementation
> > + * @calib_gain_setup_cb: callback to setup of gain calibration for each channel
> >   * @calib_offset_avail: pointer to offset calibration range/limits array
> >   * @calib_phase_avail:  pointer to phase calibration range/limits array
> >   */
> > @@ -81,6 +84,7 @@ struct ad7606_chip_info {
> >  	bool				os_req_reset;
> >  	unsigned long			init_delay_ms;
> >  	u8				offload_storagebits;
> > +	ad7606_calib_gain_setup_cb_t	calib_gain_setup_cb;
> >  	const int			*calib_offset_avail;
> >  	const int			(*calib_phase_avail)[2];
> >  };
> > 
> 

