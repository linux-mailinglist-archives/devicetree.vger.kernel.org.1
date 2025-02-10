Return-Path: <devicetree+bounces-144769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 794F9A2F302
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF3211884BDF
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:18:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 420772580DD;
	Mon, 10 Feb 2025 16:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lW9b5+py"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E7E2580C8
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739204301; cv=none; b=GRSvUKc+NoBwp5zt1zMi+UFiWCc9/0HXRI71UmKKK5kY/moCy5Rdec86rvvrlTDYtehKqKRiIBIgy7HAcFL8gtW+9c//mAUw2b2TUz5T8q1zPJcMLf+lA1KMtqYr1OkHhp9tSWdw3b+Ru/OokGLK9dkDa0yNZAI+Rld03/2h7XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739204301; c=relaxed/simple;
	bh=besRNeHJT7xqfYb5uKHuNlYZxzWOS6Do+dRJvjqEIr0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QkmTRTf6Hcom5iPi1x2k4AgdVILu4xFgUy2bsEWFaomx/IRwzga9sj2E6mvYDC0ADWbwTQjV+yWrUm8Y3UWzaaEHLwSogasXNnatO96WUORDGYhTtGULPvLo2AYEFwE7WzvYr+qtdPupsVIRSNWSR6Zw3qNtO52d8tHgRnL/KjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lW9b5+py; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aaf900cc7fbso771572966b.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739204297; x=1739809097; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yg5LLUjdjjPvXo+kEmWGKdPDo5dG0M8KkYaCsN9kciQ=;
        b=lW9b5+pyMvfH12lIjeC8I1cwPuHYyukcKFWR6qBvPNQS3K5vIeEBN7nWklHsLGWVK8
         y1X8UEnsLqNOH4r9ZfJIYJVxh05/nwGG6V2TFypOXF2+SMBebEECYOi1cCA3MnoZQWTs
         ooektOHYcXHdl1W4ex/E9OhWpqCDE446tTnVaASAoNSjJnBBniudXgDKQRiqyaxTmwEy
         pAyekLGgB/qA3bA8O6YkBkDCUgVuYiIVrff6rSVgRtCXdG5+gFinlvwWDv4loftHoPZB
         S5+z8hhxm8kKmqDCqRPFF6W3w99VdekvTvvIaa7V47CmSqg6+uUnmBwvpHMcdSUHoE75
         Ejgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739204297; x=1739809097;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yg5LLUjdjjPvXo+kEmWGKdPDo5dG0M8KkYaCsN9kciQ=;
        b=C41sbw7gWh9BC44Veo1oB63Capk+ro4SaqOCkyC+3EhGZMQTrbLBYdswpQ8ak5YCu7
         IAwUGIntGdjpvL+nqJYtKPF3idLmybp4KtOCmWt9Ed3PrWG8hQcjZlVU48EPO5H3mMEt
         xHtARtJK/J3GEJRCzvwrigHIfl0fXfP7Gn0qX4xmYSqU9znkRLIVVw+/P9qtaeBtQNrn
         xpfT3bSTnw6tEPwWDzcH4py97XRUtLT7zQE242Nuz2dEOYgzOP+xPAznhuwi/N5MprbK
         HMx1WJW/emNXeLhaOatackzk1s+mQAaS4ZHtLae6iwVfxjTIFHzC29jYNOOp239dvQNw
         5KbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrxS05DF1OZk5qKkB+j1tzOtpqebERHQMXFM4obrstzXs3Euf8IQh0nqhuom3z/fPwOYqUrtkXbSb8@vger.kernel.org
X-Gm-Message-State: AOJu0YxRcAN8hlVhbSqOLfzmugtmONjy5di+VpV7K2gttwicVrA1mXYK
	ymyp+osPHBYdjogPoqQMQuIicXoCRImVrfUdZQMUdJDVSq6qoZ9XCG1xOR2N6ls=
X-Gm-Gg: ASbGncul2VgU6RFrV7KFGmYpRP7jdIpziyxd84iP8H1aq9cd72JiRdgUQ3I5VVnBNgn
	syZ1ZPY9as826uGFyB4l36DruQ5G5wiyImSqGJERgxBf9NKij+bqom1Z2G9ZLm9BVL6FZFqxQY0
	jnaVLnnKaGWebLaN02Lt0UeYSjhPNssT6Ap2kIKEAo/YUHXhkM/hlENIeBtaDwn3XqpnrT9trWH
	oLhOCIPKcxLjgx/RkQzuOA10szoN3337N0wG+bXAUfCrZtGcsjVwNzwe2JqYA3QE1ag8pGg3Gar
	5N2PNF5z3fvGNxLmlIwT57h8xhVM/Zcu57MweRA9ECviWaFAEGrH
X-Google-Smtp-Source: AGHT+IEFxvSi01mPcsN5/DWt+q8dGob9WMf5sr35JDwrIqiJd2YPbauAQ6jPapa824lM0WBiNVlM9g==
X-Received: by 2002:a17:907:1b28:b0:aac:619:e914 with SMTP id a640c23a62f3a-ab789aad2d1mr1778763366b.16.1739204297350;
        Mon, 10 Feb 2025 08:18:17 -0800 (PST)
Received: from dfj (host-87-8-15-130.retail.telecomitalia.it. [87.8.15.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7c0907e77sm253674066b.98.2025.02.10.08.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 08:18:16 -0800 (PST)
Date: Mon, 10 Feb 2025 17:16:49 +0100
From: Angelo Dureghello <adureghello@baylibre.com>
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	David Lechner <dlechner@baylibre.com>, "jic23@kernel.org" <jic23@kernel.org>, 
	"robh@kernel.org" <robh@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>, 
	"Sa, Nuno" <Nuno.Sa@analog.com>
Subject: Re: [PATCH v11 5/8] iio: adc: adi-axi-adc: set data format
Message-ID: <ucxlvvrejjeagopcqdwawgcv43c4uywmkubt4a5apxlbbnbzkw@takqoc4njft7>
References: <20250127105726.6314-1-antoniu.miclaus@analog.com>
 <20250127105726.6314-6-antoniu.miclaus@analog.com>
 <08d8e97d-752d-4fa7-95f0-d828ef80f7b8@baylibre.com>
 <CY4PR03MB33993EE62F4E1B3939F213B29BF52@CY4PR03MB3399.namprd03.prod.outlook.com>
 <20250203152517.000028ca@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203152517.000028ca@huawei.com>


Hi Antoniu,

On 03.02.2025 15:25, Jonathan Cameron wrote:
> On Mon, 3 Feb 2025 11:02:58 +0000
> "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com> wrote:
> 
> >  
> > > On 1/27/25 4:57 AM, Antoniu Miclaus wrote:  
> > > > Add support for selecting the data format within the AXI ADC ip.
> > > >
> > > > Reviewed-by: Nuno Sa <nuno.sa@analog.com>
> > > > Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> > > > ---
> > > > no changes in v11.
> > > >  drivers/iio/adc/adi-axi-adc.c | 46  
> > > +++++++++++++++++++++++++++++++++++  
> > > >  1 file changed, 46 insertions(+)
> > > >
> > > > diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
> > > > index d2e1dc63775c..3c213ca5ff8e 100644
> > > > --- a/drivers/iio/adc/adi-axi-adc.c
> > > > +++ b/drivers/iio/adc/adi-axi-adc.c
> > > > @@ -45,6 +45,12 @@
> > > >  #define ADI_AXI_ADC_REG_CTRL			0x0044
> > > >  #define    ADI_AXI_ADC_CTRL_DDR_EDGESEL_MASK	BIT(1)
> > > >
> > > > +#define ADI_AXI_ADC_REG_CNTRL_3			0x004c
> > > > +#define   AD485X_CNTRL_3_PACKET_FORMAT_MSK	GENMASK(1, 0)
> > > > +#define   AD485X_PACKET_FORMAT_20BIT		0x0
> > > > +#define   AD485X_PACKET_FORMAT_24BIT		0x1
> > > > +#define   AD485X_PACKET_FORMAT_32BIT		0x2
> > > > +
> > > >  #define ADI_AXI_ADC_REG_DRP_STATUS		0x0074
> > > >  #define   ADI_AXI_ADC_DRP_LOCKED		BIT(17)
> > > >
> > > > @@ -312,6 +318,45 @@ static int axi_adc_interface_type_get(struct  
> > > iio_backend *back,  
> > > >  	return 0;
> > > >  }
> > > >
> > > > +static int axi_adc_data_size_set(struct iio_backend *back, unsigned int size)
> > > > +{
> > > > +	struct adi_axi_adc_state *st = iio_backend_get_priv(back);
> > > > +	unsigned int val;
> > > > +
> > > > +	switch (size) {
> > > > +	/*
> > > > +	 * There are two different variants of the AXI AD485X IP block, a 16-bit
> > > > +	 * and a 20-bit variant.
> > > > +	 * The 0x0 value (AD485X_PACKET_FORMAT_20BIT) is corresponding  
> > > also to  
> > > > +	 * the 16-bit variant of the IP block.
> > > > +	 */
> > > > +	case 16:
> > > > +	case 20:
> > > > +		val = AD485X_PACKET_FORMAT_20BIT;
> > > > +		break;
> > > > +	case 24:
> > > > +		val = AD485X_PACKET_FORMAT_24BIT;
> > > > +		break;
> > > > +	/*
> > > > +	 * The 0x2 (AD485X_PACKET_FORMAT_32BIT) corresponds only to  
> > > the 20-bit  
> > > > +	 * variant of the IP block. Setting this value properly is ensured by
> > > > +	 * the upper layers of the drivers calling the axi-adc functions.
> > > > +	 * Also, for 16-bit IP block, the 0x2  
> > > (AD485X_PACKET_FORMAT_32BIT)  
> > > > +	 * value is handled as maximum size available which is 24-bit for this
> > > > +	 * configuration.
> > > > +	 */
> > > > +	case 32:
> > > > +		val = AD485X_PACKET_FORMAT_32BIT;
> > > > +		break;
> > > > +	default:
> > > > +		return -EINVAL;
> > > > +	}
> > > > +
> > > > +	return regmap_update_bits(st->regmap,  
> > > ADI_AXI_ADC_REG_CNTRL_3,  
> > > > +				  AD485X_CNTRL_3_PACKET_FORMAT_MSK,
> > > > +  
> > > FIELD_PREP(AD485X_CNTRL_3_PACKET_FORMAT_MSK, val));  
> > > > +}
> > > > +
> > > >  static struct iio_buffer *axi_adc_request_buffer(struct iio_backend *back,
> > > >  						 struct iio_dev *indio_dev)
> > > >  {
> > > > @@ -360,6 +405,7 @@ static const struct iio_backend_ops adi_axi_adc_ops  
> > > = {  
> > > >  	.test_pattern_set = axi_adc_test_pattern_set,
> > > >  	.chan_status = axi_adc_chan_status,
> > > >  	.interface_type_get = axi_adc_interface_type_get,
> > > > +	.data_size_set = axi_adc_data_size_set,
> > > >  	.debugfs_reg_access = iio_backend_debugfs_ptr(axi_adc_reg_access),
> > > >  	.debugfs_print_chan_status =  
> > > iio_backend_debugfs_ptr(axi_adc_debugfs_print_chan_status),  
> > > >  };  
> > > 
> > > Why was [1] not addressed?
> > > 
> > > [1]: https://urldefense.com/v3/__https://lore.kernel.org/linux-
> > > iio/9c262f599fb9b42feac99cfb541723a0a6f50e6b.camel@gmail.com/__;!!A
> > > 3Ni8CS0y2Y!6uVytAwWUCsEazOUTACecMQkbMuHBF95sbla50CbTUFkZkyxS
> > > -S7jMOCczpoyKCjtAKvMOyrt0ukYwcXC_l5q60$  
> > 
> > Indeed it was not addressed. I remained with the impression that adding part prefix
> > in the macro definitions was enough. I will add the compatible string support.
> > Although I have a question in order to minimize the number of versions to be sent
> > In the future. Should I add a separate patch for the compatible support (which
> > will not add value independently) or should I include it in this patch which adds
> > custom function for data format for the AD485x IP core?
> 
> Binding docs update needs to be a separate patch.
> 
> Also, we should probably only set axi_adc_data_size_set in iio_backend_ops for
> that ID.  So you'll need to pick from two copies of adi_axi_adc_ops
> which probably means two iio_backend_info structures.
> That data_size_set callback should not be set for cases that don't use it
> (so the generic IP if I understand this correctly).
> 
> Similar to that part of:
> https://lore.kernel.org/all/20250129-wip-bl-ad7606_add_backend_sw_mode-v3-7-c3aec77c0ab7@baylibre.com/
> 
> Hmm. This is looking like a messy merge.
> 
> Angelo, Antoniu,
> 
> Please figure out between you an order to the series so who is going to have
> to rebase.  If this one goes first, may be worth pulling part of
> patch 6 from Angelo's set to introduce struct axi_adc_info with what
> this patch needs (just the backend_info pointer and maybe version?)
>

i separated the info struct part in a separate patch,
you can eventually get it from here:

https://lore.kernel.org/linux-iio/20250210-wip-bl-ad7606_add_backend_sw_mode-v4-4-160df18b1da7@baylibre.com/T/#u
 
Regards,
angelo

> Thanks,
> 



> Jonathan
> 

