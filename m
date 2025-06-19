Return-Path: <devicetree+bounces-187509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F83AAE0333
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:15:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B192418885A7
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 11:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE4FA225407;
	Thu, 19 Jun 2025 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ba1iy66j"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE327218585
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 11:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750331733; cv=none; b=J+sMglDDadqpgVS0Ak/BFAAp7svtmQVlJrmS6oqBO+vE0uCjASpw354SRIw99Ol2ojD0R8Nf23k8aW2f5saCfcZlLu/6bhN0op25QSvCu/to3cMx76xTNxkWqpYTzMvRvafpku+XwWtIQbTU9URUN10iqPvA6VZb1Lm7SzsbEDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750331733; c=relaxed/simple;
	bh=LUeQAjtBZos6OdUZbbQVfexhZynCiSgqlsEwbuBatHQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qsgnKFs+UsGcHh/h39tBjTxhi4Ps518ZL+Qcnqx8kq/Te47A+lXzybPCABS6eMDrU+fYJyHTjcK12d9fStHtugysn9deFlMApnuPgo7L2sFWWY6wGpEMEuPW1WIQ4bdDF3kXqQ9kmAlfFTGYxqWkIwzRdT9FfzC+Y3seQCGogjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ba1iy66j; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750331730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3xZv/IaN3pVBxm6Ay/mMD7muLAWVYifKr0RAn2IkTKE=;
	b=ba1iy66jrY3A+2qdWoghrzrb+8yfNWKaw+0rMZgtvIFKRL5l92OsE+GeJlSLEbdJ0C1iij
	TooyEEf57u7YU4WtSpL5HnMwi+8KAiBkg0nv6sOmVzuc/MnjuDYrY6hc84D91ql7y4WfZg
	MHCTMN3LME10M5/aM2p+WQCtkU1ftls=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-26--qOfN211NyePlkbmqwlsng-1; Thu, 19 Jun 2025 07:15:29 -0400
X-MC-Unique: -qOfN211NyePlkbmqwlsng-1
X-Mimecast-MFC-AGG-ID: -qOfN211NyePlkbmqwlsng_1750331728
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-450cb8f8b1bso681375e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 04:15:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750331728; x=1750936528;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3xZv/IaN3pVBxm6Ay/mMD7muLAWVYifKr0RAn2IkTKE=;
        b=TagcECkF4lw0l+pKG3zkGK2tpDgRlTz6EW4CbafNElYIBEne17O/IdaltYejgPjtYH
         giwq9pyjsPdpPOE3sp2Sx7kKVQOe/rxP/0dD+t3wjDstAXh9kEPp3eJsIgbGyWTPU/+G
         J6E1tP4MPT91vPH6YzOi4rBcmHeahAsmKLr6PmNdS5qHcgMhD02451neXnDABSNtHGC0
         Kk+FNeiBajtDqVQEpJaVinwgEu+gsZVsWVwEzPGeLAe/2A7zS07rExvYf6cahpbx4nv5
         FTcpsjgOO+n2v4aLGEiVJcxdjAoHCwfaKRN8izqbRiD3GKQ9+612LTjlKxIQfj2D5FMk
         MUXw==
X-Forwarded-Encrypted: i=1; AJvYcCUhPx8RHSVPd/BOMbdtVH42x+smBn9ca7AfaABT+eod6lMRMjZJh4fKxVphXgp6yyBZKtfSP9KMwt8P@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc25f2GIn4nqpc6Kf27B5Rut9MlnSO4wEzsVU0Yb9glGXXg0FZ
	jXMrFuHlJ565YCArmIngUGbNDz4QmABu74HujKXmoo9wP0/5+pmA1dHnWlOVETQsiRK/eaWWVnD
	Ew4MORb4MT4LJaTJ8gHs8/HcNUiF5kNEXCFNqofmBdvzWO72a5V57Hmd0OUfIpnM=
X-Gm-Gg: ASbGnctH8KWZ6/0i0+6ZjMhTsuvNw2YJ/lprTwjWlYzd44lEYS2qzvFpIPZyx1LLNZ+
	dXQkXO/gdx936CkFV6eQjVidHK3KNT+J7YfqHybWjkTdBjbEeQ3FA4zEa7xiyJrP8xGO0mEy4mR
	+yH2OwjkhtDJ++XR398q0kwza8WFsa0QasybekdXXpuqzotCo9zgUCu9hZ8Ds2jV81Z5jJOrUUE
	ybyHXoq2/zwX8LWL8773nfZkcm9T8UsCVCc2x8e1aCWL9vDu25h6J3eVXaxINyJ9qIJlyM1NVUi
	r3aeZJkJVzWNyK1WtYEa3EcI4KMoLR4oJMzdHD51AsmDH6P6T2n7uEL7cFwLecParmCqVw==
X-Received: by 2002:a05:600c:190b:b0:445:1984:247d with SMTP id 5b1f17b1804b1-4533cadefe8mr187697325e9.7.1750331728257;
        Thu, 19 Jun 2025 04:15:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG43dOM5T7qmoDFSYxKLqTuwEzuqqfaVGRVW809R5AKI8GEve+HAJw7T1QeY9uWvmBGJ78U+g==
X-Received: by 2002:a05:600c:190b:b0:445:1984:247d with SMTP id 5b1f17b1804b1-4533cadefe8mr187696945e9.7.1750331727767;
        Thu, 19 Jun 2025 04:15:27 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:271a:7310:d5d8:c311:8743:3e10? ([2a0d:3344:271a:7310:d5d8:c311:8743:3e10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535e99503asm25371355e9.29.2025.06.19.04.15.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 04:15:25 -0700 (PDT)
Message-ID: <72bab3b2-bdd6-43f6-9243-55009f9c1071@redhat.com>
Date: Thu, 19 Jun 2025 13:15:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v11 13/14] dpll: zl3073x: Add support to get/set
 frequency on input pins
To: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
Cc: Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Simon Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Jason Gunthorpe <jgg@ziepe.ca>, Shannon Nelson <shannon.nelson@amd.com>,
 Dave Jiang <dave.jiang@intel.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 Michal Schmidt <mschmidt@redhat.com>, Petr Oros <poros@redhat.com>
References: <20250616201404.1412341-1-ivecera@redhat.com>
 <20250616201404.1412341-14-ivecera@redhat.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250616201404.1412341-14-ivecera@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/16/25 10:14 PM, Ivan Vecera wrote:
> +/**
> + * zl3073x_dpll_input_ref_frequency_get - get input reference frequency
> + * @zldpll: pointer to zl3073x_dpll
> + * @ref_id: reference id
> + * @frequency: pointer to variable to store frequency
> + *
> + * Reads frequency of given input reference.
> + *
> + * Return: 0 on success, <0 on error
> + */
> +static int
> +zl3073x_dpll_input_ref_frequency_get(struct zl3073x_dpll *zldpll, u8 ref_id,
> +				     u32 *frequency)
> +{
> +	struct zl3073x_dev *zldev = zldpll->dev;
> +	u16 base, mult, num, denom;
> +	int rc;
> +
> +	guard(mutex)(&zldev->multiop_lock);
> +
> +	/* Read reference configuration */
> +	rc = zl3073x_mb_op(zldev, ZL_REG_REF_MB_SEM, ZL_REF_MB_SEM_RD,
> +			   ZL_REG_REF_MB_MASK, BIT(ref_id));
> +	if (rc)
> +		return rc;
> +
> +	/* Read registers to compute resulting frequency */
> +	rc = zl3073x_read_u16(zldev, ZL_REG_REF_FREQ_BASE, &base);
> +	if (rc)
> +		return rc;
> +	rc = zl3073x_read_u16(zldev, ZL_REG_REF_FREQ_MULT, &mult);
> +	if (rc)
> +		return rc;
> +	rc = zl3073x_read_u16(zldev, ZL_REG_REF_RATIO_M, &num);
> +	if (rc)
> +		return rc;
> +	rc = zl3073x_read_u16(zldev, ZL_REG_REF_RATIO_N, &denom);
> +	if (rc)
> +		return rc;
> +
> +	/* Sanity check that HW has not returned zero denominator */
> +	if (!denom) {
> +		dev_err(zldev->dev,
> +			"Zero divisor for ref %u frequency got from device\n",
> +			ref_id);
> +		return -EINVAL;
> +	}
> +
> +	/* Compute the frequency */
> +	*frequency = base * mult * num / denom;

As base, mult, num and denom are u16, the above looks like integer
overflow prone.

I think you should explicitly cast to u64, and possibly use a u64 frequency.

/P


