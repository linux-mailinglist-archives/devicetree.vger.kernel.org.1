Return-Path: <devicetree+bounces-192079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D24AF14DF
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 14:03:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F0CA3B4FC9
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2517E269D17;
	Wed,  2 Jul 2025 12:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b="yl5MV7Y7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B8B25F793
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 12:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751457782; cv=none; b=LxG2ST9YkJP/zGKddk0ufzgr4TrOeeXo3py2icR+Yw0XeFTsQeHI7YSvYCQ87MyBemXrBvAEjt/Up0A8s/FlNMBTUapBAuXw2I7c4sp4LhkxokOS0Dr8IGzfVrQEkldlWw40xeflsLQuS0wuTwFdMu3xHIG4GbFMXzPrKOI0jq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751457782; c=relaxed/simple;
	bh=9OBjOWdofz0ubYLc035JjloaZp9RG4Jzt2NgjvAujAc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DK0H+2h+mf72IOVcaWk2VgqxtkjDAZD34/QdrbWgEEV8DNoKbijZUIeCkxSPpfrQMVqi5+EvKnVWj5S3ryC+Y5yr1ToFqtWlDrOvIIlj4THc9brOq1Vq82uoRitqIC9RXMqKvr9PwVg6L2ic8yEA0vgtbmJyvx+bi2bfAFpwWqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us; spf=none smtp.mailfrom=resnulli.us; dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b=yl5MV7Y7; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=resnulli.us
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a57ae5cb17so2894442f8f.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 05:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1751457779; x=1752062579; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=37vsbM8Nn6JfDGmwzaOKscFK8qNZkRywZ4E54Ix7WTA=;
        b=yl5MV7Y75g8RwQo3uwNIiSSc58yfgNr/yG5t1p+CyRDULwUTPBRynq1Dh7xwuSoCqe
         fo6YXCIAKASvDZcmPiRgGKPrsyA00Rg1zsOcebpsTh+lBfUSx8e/U6G4xCv7gv+s9grH
         8NkM/NqiUurppZlCDe/kxGXKu+xmWLW1z8KJ6hN48qPfLYWXZ+4oDti4VpQl4KqRk8AE
         dSuRuKWTrCGedTAFvYvQjOPFQ3ZgpBFXS1jBwrgPM5O5xMLfjcwWYQJ6lnxXv0QZ+cNr
         xI3AdU9P1svaHlKKIAVTw5l671i7jcaBOU0FhXQ6f/0kycmjqA0pG2eGf/Z9GS53Q0ME
         tSUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751457779; x=1752062579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=37vsbM8Nn6JfDGmwzaOKscFK8qNZkRywZ4E54Ix7WTA=;
        b=U6R+s2aSvxu7d863y60dyJwlXAMFQBpHE2mAUljW1xXzwDNcrEM1n3oEBCex5K4t6B
         nW/OMKn5xixoYbxxjtiLUDqqgD3Dd83My33cBDo5x7lD6Z4GZbqfZByGnwToUCrUn/cZ
         Gu2rU2/iaqKJsC8736U+T42dxO0iCGrtOa92imCyLrCSPidB3ACPm0TA33aEQ1kMwBti
         fweb1RD6aLmDfw/lpu2mXAwFm4TQCVNxplRqBKNhyOJQ8QnNIATuIshyMkZHNBZ4uKFZ
         RxnagxwkvAFIxgGnRN92bl+83w8XZK3Gw0uVDLobsr67MYdTtNWfSa8MKiVS81QPpdgw
         O0Yw==
X-Forwarded-Encrypted: i=1; AJvYcCXCGVA6Y2NaYRmJyX0mjVOEoD8eTf4DCJHX1vDOaka8QkUuR9Lel4r0tcA60Fw8Zp/nE8+FAnmEM6ek@vger.kernel.org
X-Gm-Message-State: AOJu0YwWAoOFYBkygt66hXVbP1CtvcfKf+g5d6Rzk7nLOyDwN1ka5JQK
	aeVLgDFj3QE4xuHXbgYNEACNgg3RihwAS2kaLMzr9o4p3AmQWavwTqj44CJAzI8qDeQ=
X-Gm-Gg: ASbGncs71JIhEYXJLeCznwPIx92q3zbgm8nYj8823uLkLvGsug0LMrGamvGI9eSJmkt
	zdHr03RK9UWgLSkw+FYRydfCEaF1YxykRNGbR8DHX1ptthdW8qJAFG8PJsYorTS7HjpTjkc4KsX
	U015HnxRKr2Pi83RPJXMeqg0q9YTW68fHag3ZHEizst8wj0w/e8MqvbURoCaMnFn1U6ffzNtj4b
	W3fpPS5CJKaH71VxgqAgKGD3YjvsZRF/9ZZdIYGL3bOfRrhp0vUSHavLI/AtX+aYkR5uuF89/Aw
	b1zZARInoFgLXcZivBkeORxEjpa2pFmRf6oQqLcDZQ/VFN5mApEabutsZZz5rvRRNsSfuL09gdX
	OAu76
X-Google-Smtp-Source: AGHT+IHbVVQaW4FRowFBfmEzpyakEnrdf6FVBPSZnjLiOnlSiWUKwogash8HMSktSg7QFFh0mlJEXA==
X-Received: by 2002:a05:6000:1aca:b0:3a5:2cb5:642f with SMTP id ffacd0b85a97d-3b2019b7e75mr1918089f8f.34.1751457778695;
        Wed, 02 Jul 2025 05:02:58 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a88c7fb20esm16164594f8f.36.2025.07.02.05.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 05:02:58 -0700 (PDT)
Date: Wed, 2 Jul 2025 14:02:49 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Cc: netdev@vger.kernel.org, 
	Prathosh Satish <Prathosh.Satish@microchip.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Jason Gunthorpe <jgg@ziepe.ca>, 
	Shannon Nelson <shannon.nelson@amd.com>, Dave Jiang <dave.jiang@intel.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, Michal Schmidt <mschmidt@redhat.com>, 
	Petr Oros <poros@redhat.com>
Subject: Re: [PATCH net-next v12 09/14] dpll: zl3073x: Register DPLL devices
 and pins
Message-ID: <k2osi2mzfmudh7q3av5raxj33smbdjgnrmaqjx2evjaaloddb3@vublvfldqlnm>
References: <20250629191049.64398-1-ivecera@redhat.com>
 <20250629191049.64398-10-ivecera@redhat.com>
 <ne36b7ky5cg2g3juejcah7bnvsajihncmpzag3vpjnb3gabz2m@xtxhpfhvfmwl>
 <1848e2f6-a0bb-48e6-9bfc-5ea6cbea2e5c@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1848e2f6-a0bb-48e6-9bfc-5ea6cbea2e5c@redhat.com>

Wed, Jul 02, 2025 at 01:49:22PM +0200, ivecera@redhat.com wrote:
>
>
>On 02. 07. 25 12:57 odp., Jiri Pirko wrote:
>> Sun, Jun 29, 2025 at 09:10:44PM +0200, ivecera@redhat.com wrote:
>> 
>> [...]
>> 
>> > +/**
>> > + * zl3073x_dpll_device_register - register DPLL device
>> > + * @zldpll: pointer to zl3073x_dpll structure
>> > + *
>> > + * Registers given DPLL device into DPLL sub-system.
>> > + *
>> > + * Return: 0 on success, <0 on error
>> > + */
>> > +static int
>> > +zl3073x_dpll_device_register(struct zl3073x_dpll *zldpll)
>> > +{
>> > +	struct zl3073x_dev *zldev = zldpll->dev;
>> > +	u8 dpll_mode_refsel;
>> > +	int rc;
>> > +
>> > +	/* Read DPLL mode and forcibly selected reference */
>> > +	rc = zl3073x_read_u8(zldev, ZL_REG_DPLL_MODE_REFSEL(zldpll->id),
>> > +			     &dpll_mode_refsel);
>> > +	if (rc)
>> > +		return rc;
>> > +
>> > +	/* Extract mode and selected input reference */
>> > +	zldpll->refsel_mode = FIELD_GET(ZL_DPLL_MODE_REFSEL_MODE,
>> > +					dpll_mode_refsel);
>> 
>> Who sets this?
>
>WDYM? refsel_mode register? If so this register is populated from
>configuration stored in flash inside the chip. And the configuration
>is prepared by vendor/OEM.

Okay. Any plan to implement on-fly change of this?


>
>> > +	zldpll->forced_ref = FIELD_GET(ZL_DPLL_MODE_REFSEL_REF,
>> > +				       dpll_mode_refsel);
>> > +
>> > +	zldpll->dpll_dev = dpll_device_get(zldev->clock_id, zldpll->id,
>> > +					   THIS_MODULE);
>> > +	if (IS_ERR(zldpll->dpll_dev)) {
>> > +		rc = PTR_ERR(zldpll->dpll_dev);
>> > +		zldpll->dpll_dev = NULL;
>> > +
>> > +		return rc;
>> > +	}
>> > +
>> > +	rc = dpll_device_register(zldpll->dpll_dev,
>> > +				  zl3073x_prop_dpll_type_get(zldev, zldpll->id),
>> > +				  &zl3073x_dpll_device_ops, zldpll);
>> > +	if (rc) {
>> > +		dpll_device_put(zldpll->dpll_dev);
>> > +		zldpll->dpll_dev = NULL;
>> > +	}
>> > +
>> > +	return rc;
>> > +}
>> 
>> [...]
>> 
>

