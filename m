Return-Path: <devicetree+bounces-128176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2489E7B18
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 22:37:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AD281886492
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 21:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA3D1D6DBC;
	Fri,  6 Dec 2024 21:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oNhsjEBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D455B22C6C8
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 21:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733521021; cv=none; b=VFw3BelNdswz/8gOlAesa7XzvsqfCV1DHw3Pqf7FGz5ZZ72rUcXRJDiZL273+1ka66b4JUDn+wZ0YChlsiVmQ9kIbqAJo+OwsepOEI96TDL2+Sq3ibLrkyyWALYzdnZE75Hm0HDcF42cfuxKglws19Z7lMSvo+Izom8APN1Q9F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733521021; c=relaxed/simple;
	bh=WjmiODHE0RfZuzGjACtofn6r+sN4IQHw5qp4zf/KT/U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RHZF60J9xsoNoEvBPcDF6ePS0oh9dMzn1pd1z5JXGkaSA7lH6uXFNMH/qr9H4hdavjlmhBwDns0dJdKqqu00LyyBlLnKC1AdK2Sil1aFP8u19STkGKBkGMUnevcaYRtj4EjQ3LbppRmcZYkg2ZTdljl5CAa0pPOyu9Rw4aEnl2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oNhsjEBC; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-29e91e58584so1469993fac.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 13:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733521018; x=1734125818; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JDGos5IYn4cUKKTCBfIOCbIdPjpC20Gkllm+9b75PHY=;
        b=oNhsjEBCUw01NBVcpx4NTJr6yNuzstzzEKWNC+6hthsj/+VsLudssPVBx4mlfrQq07
         hHZaFNKgs0R73JqbRyRsHGclOQOinSJrjylFhAVWabhqsLoa3wNto/5zsXKxUPFMaZCB
         cnBa4SpjuIclGPznb3C1YUkrWMYLeClhVUgTEbAcF1jiMqvNmIrHtHUrLKJaFszC4Kfe
         6P6RyiILqfzz+vEwtPhMSawWAyC1/yvFMzFj+qMYvnAiq7qWNH6camnLDRKkpIPn9LUP
         ulQwvpIfF12OdLo9erRYrheS5Wdh7K3JSP+Q/dauMJZea9D/W/4/lKQFvAsSEuvBhH5d
         nZ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733521018; x=1734125818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JDGos5IYn4cUKKTCBfIOCbIdPjpC20Gkllm+9b75PHY=;
        b=H1KkgO1O2s3VXgHUJxzgepTAWN33381pu4uW+NHBfcW8ZedUS3ALWY4sBhEsc+23DS
         Vo32szUtpX+2ZVy8WWcdcl1X0yqkZqMEc0MdDFPgJ8GVJ/GndozOOWGPSycuf+etb6Gq
         15Bb9jBq3aMDP4lHfjEOFSywXjFGnDhiNtBskfGgXrqinv7B4X81Ey/CO9ZxOJysHHvt
         jR2YPojTkj/dOYua/1a/8fBNCIPGgQeAhENdOLIucGDSIvxRxJIE+JZtym/zREQ37oEw
         lTBszcQPdhInC4I6H6XOR5RFtj1N0om0VzlavivYX7eh11YyZBhVZZqnCmBAHgQmwsU6
         a5Rw==
X-Forwarded-Encrypted: i=1; AJvYcCViWdxkKkHw7ZR6IsRQy1duvhQx81c55u8bZCVadWojDtTJ2X4MR4QBxMvaGaxSMkXZr6K6W9n/2yLq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf2WN7WovMNhOwMDMvSK0mgkKtbYz7DodyETmtJjyEXWVzdp+m
	B6yblBNfYedcG1Wx6AzWlQyJpdUlgwRGKx8vGlVgEt7kVzbpIDBuONg/JTRAolc=
X-Gm-Gg: ASbGnctVq+JpsRMCASfafXVM2WEoS3j9fXfjeepH3N1+LyKHL7xFNg1Ao8TG/d9yF8s
	PkMXR6WZlEKLVNoDnjxEADB1jpVp38ZcxlV79nOi0ncCHTGd6Jr7yW8OxgdIq7AjzZAKScSYfLi
	BLYyX+FaTOOZFszIP11RA8oF4/Hxyw5HqABYNHqgkhxAkcAmsyvXcnRAG9xbcxO1YO2+rH4sr3W
	HGp3OEBiIV4zjsem4Djo5hG7dSqCLoClSAuA8cLnUUpKWLzAaTW4hR5zx2i/SVrm3rVu5HlV/dl
	uwi22io7dLQ=
X-Google-Smtp-Source: AGHT+IE68IJYDSQELPihcT43hUzjwmg2DjnIGVlMJYhA3PW3X3/SHQRZ5oUY7kB/CAv5/AIiDBBmUA==
X-Received: by 2002:a05:6870:44d0:b0:29d:c764:f873 with SMTP id 586e51a60fabf-29f735320d5mr3072443fac.31.1733521017990;
        Fri, 06 Dec 2024 13:36:57 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-29f5694a265sm1063557fac.34.2024.12.06.13.36.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 13:36:56 -0800 (PST)
Message-ID: <08ccc3fd-a53c-4d0e-8659-92204d2c27a8@baylibre.com>
Date: Fri, 6 Dec 2024 15:36:54 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 10/16] iio: buffer-dmaengine: add
 devm_iio_dmaengine_buffer_setup_ext2()
To: Jonathan Cameron <jic23@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241115-dlech-mainline-spi-engine-offload-2-v5-0-bea815bd5ea5@baylibre.com>
 <20241115-dlech-mainline-spi-engine-offload-2-v5-10-bea815bd5ea5@baylibre.com>
 <20241124171609.50c6c3a8@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241124171609.50c6c3a8@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/24/24 11:16 AM, Jonathan Cameron wrote:
> On Fri, 15 Nov 2024 14:18:49 -0600
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> Add a new devm_iio_dmaengine_buffer_setup_ext2() function to handle
>> cases where the DMA channel is managed by the caller rather than being
>> requested and released by the iio_dmaengine module.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
> Fresh read and I'm wondering if the lifetimes in here can be managed
> more simply either by pushing the DMA channel get down, or dragging
> the release up.   Basically I'd like to see them at the same level
> of nesting in the code.  If it ends up being necessary to duplicate
> more code that is fine if it makes this easier to reason about.
> 

One option could be instead of introducing a 2nd function, change
the existing iio_dmaengine_buffer_setup_ext() to use the signature
of the proposed devm_iio_dmaengine_buffer_setup_ext2(). There are
only two users of these functions. So we could move the dma chan
request/release out to the drivers for those.

Otherwise, we can't completly get rid of the owns_chan bit.

> Jonathan
> 
>> ---
>>
>> v5 changes: none
>>
>> v4 changes:
>> * This replaces "iio: buffer-dmaengine: generalize requesting DMA channel"
>> ---
>>  drivers/iio/buffer/industrialio-buffer-dmaengine.c | 107 +++++++++++++++------
>>  include/linux/iio/buffer-dmaengine.h               |   5 +
>>  2 files changed, 81 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
>> index 054af21dfa65..602cb2e147a6 100644
>> --- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
>> +++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
>> @@ -33,6 +33,7 @@ struct dmaengine_buffer {
>>  	struct iio_dma_buffer_queue queue;
>>  
>>  	struct dma_chan *chan;
>> +	bool owns_chan;
>>  	struct list_head active;
>>  
>>  	size_t align;
>> @@ -216,28 +217,23 @@ static const struct iio_dev_attr *iio_dmaengine_buffer_attrs[] = {
>>   * Once done using the buffer iio_dmaengine_buffer_free() should be used to
>>   * release it.
>>   */
>> -static struct iio_buffer *iio_dmaengine_buffer_alloc(struct device *dev,
>> -	const char *channel)
>> +static struct iio_buffer *iio_dmaengine_buffer_alloc(struct dma_chan *chan,
>> +						     bool owns_chan)
>>  {
>>  	struct dmaengine_buffer *dmaengine_buffer;
>>  	unsigned int width, src_width, dest_width;
>>  	struct dma_slave_caps caps;
>> -	struct dma_chan *chan;
>>  	int ret;
>>  
>>  	dmaengine_buffer = kzalloc(sizeof(*dmaengine_buffer), GFP_KERNEL);
>> -	if (!dmaengine_buffer)
>> -		return ERR_PTR(-ENOMEM);
>> -
>> -	chan = dma_request_chan(dev, channel);
>> -	if (IS_ERR(chan)) {
>> -		ret = PTR_ERR(chan);
>> -		goto err_free;
>> +	if (!dmaengine_buffer) {
>> +		ret = -ENOMEM;
>> +		goto err_release;
>>  	}
>>  
>>  	ret = dma_get_slave_caps(chan, &caps);
>>  	if (ret < 0)
>> -		goto err_release;
>> +		goto err_free;
>>  
>>  	/* Needs to be aligned to the maximum of the minimums */
>>  	if (caps.src_addr_widths)
>> @@ -252,6 +248,7 @@ static struct iio_buffer *iio_dmaengine_buffer_alloc(struct device *dev,
>>  
>>  	INIT_LIST_HEAD(&dmaengine_buffer->active);
>>  	dmaengine_buffer->chan = chan;
>> +	dmaengine_buffer->owns_chan = owns_chan;
>>  	dmaengine_buffer->align = width;
>>  	dmaengine_buffer->max_size = dma_get_max_seg_size(chan->device->dev);
>>  
>> @@ -263,10 +260,12 @@ static struct iio_buffer *iio_dmaengine_buffer_alloc(struct device *dev,
>>  
>>  	return &dmaengine_buffer->queue.buffer;
>>  
>> -err_release:
>> -	dma_release_channel(chan);
>>  err_free:
>>  	kfree(dmaengine_buffer);
>> +err_release:
> This ends up oddly miss balanced.  If you get an error here, why
> not just do the release at the caller instead?

Yes, we can do that.

> 
>> +	if (owns_chan)
>> +		dma_release_channel(chan);
>> +
>>  	return ERR_PTR(ret);
>>  }
>>  
>> @@ -282,12 +281,38 @@ void iio_dmaengine_buffer_free(struct iio_buffer *buffer)
>>  		iio_buffer_to_dmaengine_buffer(buffer);
>>  
>>  	iio_dma_buffer_exit(&dmaengine_buffer->queue);
>> -	dma_release_channel(dmaengine_buffer->chan);
>> -
>>  	iio_buffer_put(buffer);
>> +
>> +	if (dmaengine_buffer->owns_chan)
>> +		dma_release_channel(dmaengine_buffer->chan);
>>  }
>>  EXPORT_SYMBOL_NS_GPL(iio_dmaengine_buffer_free, IIO_DMAENGINE_BUFFER);
>>  
>> +static struct iio_buffer
>> +*__iio_dmaengine_buffer_setup_ext(struct iio_dev *indio_dev,
>> +				  struct dma_chan *chan, bool owns_chan,
>> +				  enum iio_buffer_direction dir)
>> +{
>> +	struct iio_buffer *buffer;
>> +	int ret;
>> +
>> +	buffer = iio_dmaengine_buffer_alloc(chan, owns_chan);
>> +	if (IS_ERR(buffer))
>> +		return ERR_CAST(buffer);
>> +
>> +	indio_dev->modes |= INDIO_BUFFER_HARDWARE;
>> +
>> +	buffer->direction = dir;
>> +
>> +	ret = iio_device_attach_buffer(indio_dev, buffer);
>> +	if (ret) {
>> +		iio_dmaengine_buffer_free(buffer);
> Note that if you did push the free out to the caller for owns_chan
> as suggested above this would need to never free the buffer as
> that would be done if necessary at the caller for this...

We can't push iio_dmaengine_buffer_free() out here since it is balancing
the call to iio_dmaengine_buffer_alloc() which is called just above in
this function.

But we do have a problem then with the caller not knowing if the channel
was released or not on error. So perhaps we get rid of this helper
function and duplicate some code as you suggested.

> 
>> +		return ERR_PTR(ret);
>> +	}
>> +
>> +	return buffer;
>> +}
>> +
>>  /**
>>   * iio_dmaengine_buffer_setup_ext() - Setup a DMA buffer for an IIO device
>>   * @dev: DMA channel consumer device
>> @@ -308,24 +333,13 @@ struct iio_buffer *iio_dmaengine_buffer_setup_ext(struct device *dev,
>>  						  const char *channel,
>>  						  enum iio_buffer_direction dir)
>>  {
>> -	struct iio_buffer *buffer;
>> -	int ret;
>> -
>> -	buffer = iio_dmaengine_buffer_alloc(dev, channel);
>> -	if (IS_ERR(buffer))
>> -		return ERR_CAST(buffer);
>> -
>> -	indio_dev->modes |= INDIO_BUFFER_HARDWARE;
>> -
>> -	buffer->direction = dir;
>> +	struct dma_chan *chan;
>>  
>> -	ret = iio_device_attach_buffer(indio_dev, buffer);
>> -	if (ret) {
>> -		iio_dmaengine_buffer_free(buffer);
>> -		return ERR_PTR(ret);
>> -	}
>> +	chan = dma_request_chan(dev, channel);
>> +	if (IS_ERR(chan))
>> +		return ERR_CAST(chan);
>>  
>> -	return buffer;
>> +	return __iio_dmaengine_buffer_setup_ext(indio_dev, chan, true, dir);
> As above, why not just free the channel here if this fails? Thus matching
> the dma_request_chan just above.

This one is manageable.

> 
> 
>>  }
>>  EXPORT_SYMBOL_NS_GPL(iio_dmaengine_buffer_setup_ext, IIO_DMAENGINE_BUFFER);
>>  

