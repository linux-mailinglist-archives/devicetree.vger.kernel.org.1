Return-Path: <devicetree+bounces-142672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1862A2611A
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 18:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 404C33A1964
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43AF920B806;
	Mon,  3 Feb 2025 17:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iXwGmjk9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9632720B807
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 17:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738602906; cv=none; b=fAu27zf9v1PxClKWAIADTpydju/i1sHNuAJ4AT4/Pct9VvH+HPp/Y4O05zkilyhhBaqCEkG6LquZ0FGvssSiJxaz1J0kLMkt2e5gDyx8rV8Hu+OSv/ppHbpRr+UwOSoetI8ofO8rTaLkxOP5ckFCNoJ1w8MzQYTtm2ULBhw6Rw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738602906; c=relaxed/simple;
	bh=g51urvsmbno3RV0RLA1p29HSiAegCakkuz2f9qWDbvk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jJAsCg8r/JBZF5Pl4eHQj0JC+BD4pAM7rqTWX9TOo1zTiYR7RwJj1LpI776imvq/32FXOTcQd24aLgcsBRwjY5+hfWlRFo1tM9XK8BOFCTsdqTYr3+CXWumNXWARMFe6NhjFjB3EvQwxpNlMgj5CCqJDqP7MgWaQH40Ipmy5dgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iXwGmjk9; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43624b2d453so55228555e9.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 09:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738602902; x=1739207702; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oYXrzKfPW50nAFT/gfCn1I4J1t5Ff+uXK1Iu+P5YNBs=;
        b=iXwGmjk9ulEHv1tzLWlTrZTa8K++Z+uhnFXGEDalLKnIHl2S8MJZqgH8LdMblLtCM0
         O8fcBe197FCYWP6PxvAuBbF/qBMONO0IcLNhrpNnivKqyWbqjl/sA5IlRoXGxk+9TR5/
         DPsaRaU+vDBDrWcTcLYp+p/c4pgDhgo1dYgRVTJLf1IVtowG0PQ0t5bM2BoGFkRuYEYU
         Dpe9eytKMxaNu9c+5FPMGNNlAFzGA1gFSeN7hKm2eFYyjn4i4lyXJGRFblBWehCgVATS
         keoei2SiFqQ2zMX5V/HgO6ZKOZ8kM88I1qtbHH/rYwpfSmZ8PgHoeYzW3r6QhSYRVQkc
         Zdaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738602902; x=1739207702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oYXrzKfPW50nAFT/gfCn1I4J1t5Ff+uXK1Iu+P5YNBs=;
        b=KVjBI2hGF0LwEpIvkB67LOKTfkvvy8sDXRNxkq/XmKLjQJOz11PNxtcWFE/fedxARL
         GUedZQiojyFa4Mz038p3PmmsSejxYQUGHMCQFW+CdXmc+LfBStFHjF8yPJikeEqnQ+G6
         +40Z8w7Qp3kJ87jtq+K9vCDJO0IcxebJt7vD4Zq+NF26uoAViCxtbhv++3iUviX+QYIl
         iXkV0PUcY9C+vvDv94we/sZrZJGIMa2HTzuAEueqmPBJn7yUYTfTGa6783tVmiEacUww
         UwQ5NqjdSmqljl269DVCMLRiNsZ6kfd9HO4BdIl9uY+xM3XH1HFmd7eEeqYinvXdQtbx
         8nuQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5gHZg0Yk/L7WNk/SNMvaLwamgmugXnGnw4OmM6s/qCoAdUg4Bk6fdT8oxRcdJNfob4PFmhd/YKoLb@vger.kernel.org
X-Gm-Message-State: AOJu0YyfUxAX9ZXv1x3nhzbjOlc4NHkChCuyJ8YP6Q67rOxErhmVXXoD
	L9247OFNlEBdH/2CNMrV6ogxQcyHELPQsSBb9ZvJi1/U+WMlszjAL4k/UF0VhOA=
X-Gm-Gg: ASbGnctzddm/zoppyngxRMAnI0fO8yaIMCD/tvqiyR9aN8E+mITK4TVXfvD8N6wjah2
	V24uN0hmrj90IqyPHBH9XkKga8Tcf8GCHKBI5RmiZsZYAGkwcsDHcRst6QH1nvEcnHtJQvu1JsO
	MrwElVjd5wI/SjRIyQ1OSZxhXnbvqxEbMmCVG0hQ/zbDl9l4LGihAvVrDDEAkM3TUd1805hMYwv
	+6RzJO/pQoZGyJy+uDsQyl71FGYpfqraAfrIfd1DJr/RJ4FVFoWS8ymhOYoBTPGMcyTk5/vIrUF
	tNe7oHZxrkAZwDMVu1btqybuCjVW9yAXLg4pH1muenw885uVnr4va9RCaWJ4
X-Google-Smtp-Source: AGHT+IGZ6LCRbN/g81Cdu9GtP64OfXpVD+fsXx17T0qUhX8zW9Lzx5y/7TysN4A3BVS6rPTzVu1K9A==
X-Received: by 2002:a05:600c:1e02:b0:434:a802:e9a6 with SMTP id 5b1f17b1804b1-438dc3c22acmr249674495e9.7.1738602901802;
        Mon, 03 Feb 2025 09:15:01 -0800 (PST)
Received: from dfj (host-95-244-234-244.retail.telecomitalia.it. [95.244.234.244])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c0ec02bsm13527921f8f.13.2025.02.03.09.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 09:15:01 -0800 (PST)
Date: Mon, 3 Feb 2025 18:13:46 +0100
From: Angelo Dureghello <adureghello@baylibre.com>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>, 
	David Lechner <dlechner@baylibre.com>, "jic23@kernel.org" <jic23@kernel.org>, 
	"robh@kernel.org" <robh@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>, 
	"Sa, Nuno" <Nuno.Sa@analog.com>
Subject: Re: [PATCH v11 5/8] iio: adc: adi-axi-adc: set data format
Message-ID: <y3vqe5x4vien7yub5hpynhltzske6ryoxq4bvzqkhyibburq7m@lujzg45ajbxh>
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

Hi,

yes, above suggestion seems good to me.
I go on with my patchset, than i can rebase in case this go first.

Regards,
angelo
 
> Thanks,
> 
> Jonathan
> 

