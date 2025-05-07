Return-Path: <devicetree+bounces-174591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57922AADA8D
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 10:53:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57FF49A02F7
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 08:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580C820B1F5;
	Wed,  7 May 2025 08:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0rdxeE1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A455513AF2
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 08:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746608002; cv=none; b=E9eE8sGIcZqINXMhbx2krAq2zeQWsI0qM8DvNsAo6FCntu4vjxzx2wj6m5tXkt/X4u9MHEQKCjSq2PPp+fIqEE9suD6/lKzrQVuCDXqxjX7BpmAyT5AfRrPRHT9kFRMtKrdUzpLDNgDs7Tp7G30uc68dHwE0DGkt3QfZb9QNT7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746608002; c=relaxed/simple;
	bh=MefsLm2LYZSWXM+U6DcO1xp6Ymoiy47kL5qySJPR/Ic=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UOxlUCrgqtqDhvZJpDUizTvoZxelgdDSTOzVj0Hs3t4UuCt1AbcXXQhIQ4ypPH+5g/CM8kR6lbDm9oxQavQqR/pq66fHySDI0gYV6UNPFoC9q9Vzw01AxNM4k/aeDPksjAlDY+5I3V0DMpPJeBS3waQfXk6mfUBMOFmG4Z6Hcr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0rdxeE1n; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39ee5a5bb66so4349485f8f.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 01:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746607997; x=1747212797; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lIaQHgu5wVlZN/ny7uaRfCyEjhyfW7AjwVDVEyBv8kw=;
        b=0rdxeE1nqYtGPOjJKtqeSCtgibGQYZZJIEtxrd+Nl5eDJJZq63dEf/4gGXdVp9r0ym
         bzf5M9XYBtCT+edQf31Y7gtWI+z/eVAhrhjwJ6Z9vbaj4wfhhuoorml71sMTtUSspE6J
         Eg2CyRnrMkn1l7uGVPqov04yDq672Ayg6ZD/yhiIYbmG+y8BkHxQJh5Aqhjjbsh9hk56
         VM9CgVzntNqtmbctLhKC8LKV12X0AkvZEsiMXysug03zgWBEc1eRjCRuH5C4/USF5WmL
         VrD0+bl5YzMwq+fN9smKRYJP3S/uPsOmYhzB+8Qre+OifHxOFRIfnzEt2bW1J2NMttSF
         8D0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746607997; x=1747212797;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lIaQHgu5wVlZN/ny7uaRfCyEjhyfW7AjwVDVEyBv8kw=;
        b=fqye3MQY74H//0tnkA2jJmSOGO5rd3D9E7VkIxdJ08Nm4RHtywOhEnannvQz00MxEd
         zGHo6g6cidlOjzRuox0CZVLY9gcm0s3BVzDAKesPlP93MlUwQE1yyu2VWbVjrwYvAcMM
         JdcQibOpogfByxhjljQ57+O5Htg6/5v36EO9pIVeaSe1NThUXEc7sGgnU+HwrMxrpXFs
         N5qekPaEvvBZ3hQ7eZVn+AI1H2y5JBlRkCSbJBRu2Y2iLCewA9wgg6D4nVXe6ZRS+ewq
         3WRlBP5zv08w2Gk/aWqfcumRQi+kcTUTMfIUgXps+UTNFQ24UJSShpDLGTpikU2LYMc0
         A+0A==
X-Forwarded-Encrypted: i=1; AJvYcCXXWcvNY6qLnGGZCrKIIC/cni7oRYTFZOqk56QY1JW04hXKpQp/ScqvyccaQWtm6+q+cakxbvmHvsNx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn0QYgABqD6a59Qxig7491OWJ96ZhSLvQSOnozPTAuh7tmKuzw
	h1F3cUPmOKVXkc/3GorPUVgZse+qmZ4aW9nDE8f4ojQmECsVkRea6o0a/xYg5sg=
X-Gm-Gg: ASbGncvgBv1CwJOsg3h3BuEmcFGgIKhFv18UR+iFV8Ag3b/M4ZWvLjJvX7Bjo9/H4Cn
	yFhZ/wnePkagQq6ky/oAIv8SXPKbsfmHXa/4Z2gvW/bU/BYF4dTDT+hGyCZpMxPxCoXcCiqzeWg
	PU6tMFaqebyB7tYtEFACIu+AUVbPg0yh4Fk/3g8cSIVveF7rnnUmiMk7i7xIHuUN84aKAUfSpi0
	XHJ22JOMzF/kOqwikmK3mZn+J0KTZoZ9a9OF6Kc2cunVBjGnLX6ANQWOpPGsfZqxruf60EbpTHu
	/qIbUr4bAXB08BoDuLAKp19GvRV7fS3MRTn4dGZ68egQwP1xPfsOZFO4cipBGEU5tg60l9H6zx5
	75Hv6s0I=
X-Google-Smtp-Source: AGHT+IFctu/oxiZGVdnX4qiQrIGjN2+SbUQklxNDfT204VlQNUB4HV/5f4j4j5wQtrPcFL3b+7OlOw==
X-Received: by 2002:a5d:53ce:0:b0:3a0:b72a:b36 with SMTP id ffacd0b85a97d-3a0b72a0ce2mr416216f8f.36.1746607996849;
        Wed, 07 May 2025 01:53:16 -0700 (PDT)
Received: from archlinux (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a0b714829esm347693f8f.48.2025.05.07.01.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 01:53:16 -0700 (PDT)
Date: Wed, 7 May 2025 10:52:04 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 5/5] iio: adc: ad7606: add gain calibration support
Message-ID: <ygjn26b4g7ksxayfjs24iovndmgdrq5hvqdmanbsqpbzay3uir@zqmyrckzycps>
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

On 07.05.2025 07:14, Nuno S� wrote:
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
> > Reviewed-by: Nuno S� <nuno.sa@analog.com>
> > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > ---
> > �drivers/iio/adc/ad7606.c | 56 ++++++++++++++++++++++++++++++++++++++++++++++++
> > �drivers/iio/adc/ad7606.h |� 4 ++++
> > �2 files changed, 60 insertions(+)
> > 
> > diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
> > index
> > a986eb1284106da4980ac36cb0b5990e4e3bd948..049fd8616769d32778aa238b348b2fb82fa83745
> > 100644
> > --- a/drivers/iio/adc/ad7606.c
> > +++ b/drivers/iio/adc/ad7606.c
> > @@ -33,6 +33,10 @@
> > �
> > �#include "ad7606.h"
> > �
> > +#define AD7606_CALIB_GAIN_MIN	0
> > +#define AD7606_CALIB_GAIN_STEP	1024
> > +#define AD7606_CALIB_GAIN_MAX	(63 * AD7606_CALIB_GAIN_STEP)
> > +
> > �/*
> > � * Scales are computed as 5000/32768 and 10000/32768 respectively,
> > � * so that when applied to the raw values they provide mV values.
> > @@ -125,6 +129,8 @@ static int ad7609_chan_scale_setup(struct iio_dev *indio_dev,
> > �				�� struct iio_chan_spec *chan);
> > �static int ad7616_sw_mode_setup(struct iio_dev *indio_dev);
> > �static int ad7606b_sw_mode_setup(struct iio_dev *indio_dev);
> > +static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev,
> > +					struct iio_chan_spec *chan);
> > �
> > �const struct ad7606_chip_info ad7605_4_info = {
> > �	.max_samplerate = 300 * KILO,
> > @@ -180,6 +186,7 @@ const struct ad7606_chip_info ad7606b_info = {
> > �	.scale_setup_cb = ad7606_16bit_chan_scale_setup,
> > �	.sw_setup_cb = ad7606b_sw_mode_setup,
> > �	.offload_storagebits = 32,
> > +	.calib_gain_setup_cb = ad7606_chan_calib_gain_setup,
> > �	.calib_offset_avail = ad7606_calib_offset_avail,
> > �	.calib_phase_avail = ad7606b_calib_phase_avail,
> > �};
> > @@ -195,6 +202,7 @@ const struct ad7606_chip_info ad7606c_16_info = {
> > �	.scale_setup_cb = ad7606c_16bit_chan_scale_setup,
> > �	.sw_setup_cb = ad7606b_sw_mode_setup,
> > �	.offload_storagebits = 32,
> > +	.calib_gain_setup_cb = ad7606_chan_calib_gain_setup,
> > �	.calib_offset_avail = ad7606_calib_offset_avail,
> > �	.calib_phase_avail = ad7606c_calib_phase_avail,
> > �};
> > @@ -246,6 +254,7 @@ const struct ad7606_chip_info ad7606c_18_info = {
> > �	.scale_setup_cb = ad7606c_18bit_chan_scale_setup,
> > �	.sw_setup_cb = ad7606b_sw_mode_setup,
> > �	.offload_storagebits = 32,
> > +	.calib_gain_setup_cb = ad7606_chan_calib_gain_setup,
> > �	.calib_offset_avail = ad7606c_18bit_calib_offset_avail,
> > �	.calib_phase_avail = ad7606c_calib_phase_avail,
> > �};
> > @@ -357,6 +366,49 @@ static int ad7606_get_chan_config(struct iio_dev *indio_dev,
> > int ch,
> > �	return 0;
> > �}
> > �
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
> - Nuno S�

Hi Nuno,

no problem, feel free to comment,
 
Main reason is that on a wrong fdt channel node, continue does not stop
the parsing of other maybe correct channel nodes.

Regards,
angelo

> 
> > +		ret = fwnode_property_read_u32(child, "adi,rfilter-ohms",
> > +					������ &r_gain);
> > +		if (ret == -EINVAL)
> > +			/* Keep the default register value. */
> > +			continue;
> > +		if (ret)
> > +			return ret;
> > +
> > +		if (r_gain > AD7606_CALIB_GAIN_MAX)
> > +			return dev_err_probe(st->dev, -EINVAL,
> > +					���� "wrong gain calibration value.");
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
> > �static int ad7606c_18bit_chan_scale_setup(struct iio_dev *indio_dev,
> > �					� struct iio_chan_spec *chan)
> > �{
> > @@ -1410,6 +1462,10 @@ static int ad7606_probe_channels(struct iio_dev *indio_dev)
> > �				chan->info_mask_separate_available |=
> > �					BIT(IIO_CHAN_INFO_CALIBBIAS) |
> > �					BIT(IIO_CHAN_INFO_CONVDELAY);
> > +				ret = st->chip_info->calib_gain_setup_cb(
> > +					indio_dev, chan);
> > +				if (ret)
> > +					return ret;
> > �			}
> > �
> > �			/*
> > diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
> > index
> > f613583a7fa4095115b0b28e3f8e51cd32b93524..94165d217b69d54cbce9109b8c0f9dc0237cf304
> > 100644
> > --- a/drivers/iio/adc/ad7606.h
> > +++ b/drivers/iio/adc/ad7606.h
> > @@ -50,6 +50,8 @@ struct ad7606_state;
> > �typedef int (*ad7606_scale_setup_cb_t)(struct iio_dev *indio_dev,
> > �				������ struct iio_chan_spec *chan);
> > �typedef int (*ad7606_sw_setup_cb_t)(struct iio_dev *indio_dev);
> > +typedef int (*ad7606_calib_gain_setup_cb_t)(struct iio_dev *indio_dev,
> > +					��� struct iio_chan_spec *chan);
> > �
> > �/**
> > � * struct ad7606_chip_info - chip specific information
> > @@ -66,6 +68,7 @@ typedef int (*ad7606_sw_setup_cb_t)(struct iio_dev *indio_dev);
> > � * @init_delay_ms:	required delay in milliseconds for initialization
> > � *			after a restart
> > � * @offload_storagebits: storage bits used by the offload hw implementation
> > + * @calib_gain_setup_cb: callback to setup of gain calibration for each channel
> > � * @calib_offset_avail: pointer to offset calibration range/limits array
> > � * @calib_phase_avail:� pointer to phase calibration range/limits array
> > � */
> > @@ -81,6 +84,7 @@ struct ad7606_chip_info {
> > �	bool				os_req_reset;
> > �	unsigned long			init_delay_ms;
> > �	u8				offload_storagebits;
> > +	ad7606_calib_gain_setup_cb_t	calib_gain_setup_cb;
> > �	const int			*calib_offset_avail;
> > �	const int			(*calib_phase_avail)[2];
> > �};
> > 
> 

