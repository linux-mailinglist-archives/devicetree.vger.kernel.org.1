Return-Path: <devicetree+bounces-55487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC0389563C
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 16:09:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E4D91C229A9
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 14:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAC0B126F04;
	Tue,  2 Apr 2024 14:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OY3OBIdS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DC08662E
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 14:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712066982; cv=none; b=cb3tb6C6Qmi3yyZLGJ3y3pIkV1N5xPpwy56bZ2/vGIqCpcP4PThPccl2M4yucFXPceaKZLkJ/br5Nn7YcbyHD2bqJbn8Ll4iLlIt84Zxh+40o/U79RJEMoScZkLUbG4hgrgi4in0pWa0n6xUHop8Nh8Z4LMhgVelmTDpEc51fu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712066982; c=relaxed/simple;
	bh=LTkw8G/UbnzbJ69YL6GosvdrYC0acddZdwlT7ImDQUo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jv/f/w5vMk12XelJpIMzP65DW6XXzXGJutVJsWv5bvPR5AQo+CJyYKRVNl/CbY6k0cGIs2iDX9P4LTPza+ltpH1hTafgGpNS7aCst736yKDEotsuY8hLl3csGJUxTuo9OKJ2pextfmwK7D0bbGAUWJWRIngjxOhc6LDik/Wbr60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OY3OBIdS; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a4a387ff7acso628003966b.2
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 07:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712066979; x=1712671779; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Pd+8DVN5G2IkVOB54fyerdrNg9YmjMKBL8xpHTKHGmI=;
        b=OY3OBIdSWblv0nToz3q181O1+CbQTm6FF84pyqm1+qlq+GLigNp3vbYxsrKcY8PbaE
         HUgIX3/Hvue1FpHH+qAf2ULOCGgBBqbI6JUJhFLJN2aIhRua7nrFECSp9h0cfagTp7gz
         7SOscx0ouyyzp24gon//1QVeB8L+s9o99V/r29hz4koQELs5EJtpG/j3zGxqYrp2ziJJ
         EbmNgOd2T/JeNwCMlm3o8kHHesf0uCuiSoNxnvnAA2sSODuQXXXOG4OFbcjRpSAvhW9U
         L9AhEBquNfemiOOOXU8mVTFjLDTJ352kw3Ul6row1abTE93QhH1m8jLm/fSK0x5lqZEl
         eZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712066979; x=1712671779;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pd+8DVN5G2IkVOB54fyerdrNg9YmjMKBL8xpHTKHGmI=;
        b=v4+aZ2jGLL8mBpsI2qFX0I7UKCOZGprE03L8kWGOThL1LXMDSoioqOOayvds1M23X3
         TBqgY8yfjrZb65PbgqWscBEcM9CE9BJYK7J+3lDqzbff+qKkDdHoVHobFUdyWskNvHoD
         BKsI/1OJU8UmsTZbXmCcVI3+SxO6Iicq59sCDvi6sErM6Iig4cOW9vk5GMb9l/VlAi4g
         yibJX3JryuSicdKIlq+/tY8qVNnZZPDAWwpf08zL7SqBw/WWMPfT7JEXaPknIauH5HTL
         l77zfG5VllHZtqwWxP38uyfr7QcAYcgbtElkwhB7rKVGrQvyCRGeLEPbzJRU/dUEmkzA
         5hww==
X-Forwarded-Encrypted: i=1; AJvYcCU6SswX1SDzEw071HKSxuqvAYHxtjtcAv8G39er0OVVQJONSoETmtKfBnRziK8lzWPo006hZ6QTTM0Eg1xR6lyVqjfbGp15O1d5zw==
X-Gm-Message-State: AOJu0YyGXRGX1I0J203TynIQze19FtIjG7a7p9SjcOIzw24Baopl07yR
	L+DEmT6GXExW7BVY72AnVMxsm4FCypuqRyuYJ9/pcEiqp7SUJ9i2li85idybiOI=
X-Google-Smtp-Source: AGHT+IHULZd7aTRgJq9Vh0DgCgeBzmCZLRHFYYSFMf78XHwA50Pp9CV+gJCGmkGqv9CBrWjPGxHVeQ==
X-Received: by 2002:a17:907:7f12:b0:a4e:516b:2fea with SMTP id qf18-20020a1709077f1200b00a4e516b2feamr6665482ejc.50.1712066978929;
        Tue, 02 Apr 2024 07:09:38 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id q2-20020a170906b28200b00a4655976025sm6534890ejz.82.2024.04.02.07.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 07:09:38 -0700 (PDT)
Date: Tue, 2 Apr 2024 17:09:34 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>,
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>
Subject: Re: [PATCH v7 4/4] pinctrl: Implementation of the generic
 scmi-pinctrl driver
Message-ID: <c5bdf039-c43b-4611-9f0b-81585e296206@moroto.mountain>
References: <20240402-pinctrl-scmi-v7-0-3ea519d12cf7@nxp.com>
 <20240402-pinctrl-scmi-v7-4-3ea519d12cf7@nxp.com>
 <ZgwGpZ6S13vjk8jh@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgwGpZ6S13vjk8jh@smile.fi.intel.com>

On Tue, Apr 02, 2024 at 04:22:45PM +0300, Andy Shevchenko wrote:
> On Tue, Apr 02, 2024 at 10:22:24AM +0800, Peng Fan (OSS) wrote:
> > +static int pinctrl_scmi_get_pins(struct scmi_pinctrl *pmx,
> > +				 struct pinctrl_desc *desc)
> > +{
> > +	struct pinctrl_pin_desc *pins;
> > +	unsigned int npins;
> > +	int ret, i;
> > +
> > +	npins = pinctrl_ops->count_get(pmx->ph, PIN_TYPE);
> > +	/*
> > +	 * npins will never be zero, the scmi pinctrl driver has bailed out
> > +	 * if npins is zero.
> > +	 */
> 
> This is fragile, but at least it is documented.
> 

It was never clear to me where the crash would happen if npins was zero.
Does some part of pinctrl internals assume we have at least one pin?

It's nice to be able to allocate zero element arrays and generally it
works well in the kernel.  The one common bug with zero element arrays
has to do with strings.  Something like this (garbage) example:

	str = kmalloc(n_char, GFP_KERNEL);
	copy_from_user(str, user_ptr, n_char);
	str[n_char - 1] = '\0';

If the str is zero bytes long it will lead to an Oops when we add a NUL
terminator.

regards,
dan carpenter


