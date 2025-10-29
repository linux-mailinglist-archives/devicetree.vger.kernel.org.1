Return-Path: <devicetree+bounces-232977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF77C1D8CC
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 23:03:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F1453A950B
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 22:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB2E52FFDC1;
	Wed, 29 Oct 2025 22:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BWxji16n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4599A2E2663
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 22:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761775413; cv=none; b=ZnoY2CcdsJtdJHBP12qP1BJfQRj56l0z6WQVAKkKx29py4YDFOaXlphOzJE14GsxtGk2PsOAC/UKIM5ynO2ivZoXhlqJWcbKkJGh7DYTs4IqeIuV2BOQhAsdAhCDkj0N8QWZv6jLdiovqYqbnXxdCirzAwXZewjfusa45lE5pWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761775413; c=relaxed/simple;
	bh=Rpx+i+g4UDOw+uheC336cz/8fzW0yUsW3KtUgY9A9/Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VXuA0+zuocCK8LyXR36DtUsvmFMTB0BFbRuePl/4CLfP49xOz2T1WpDlfe+FFDPxqPRPA61WL2Eby5QflsKAFgNu/5+5/faDo3oloLNT87JIWhmKJ6K9txF4piHL1d69Qj7zc/smpeq+gx8ML8rJf482HMF6Ab0yuEAplIhs4dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BWxji16n; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-78af743c232so374669b3a.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 15:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761775411; x=1762380211; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Nblfgm5XoVGA2pwggUTGBEWVQZIZxWS8tzQ3rNya1k=;
        b=BWxji16nJLKjInABvrLXLKUmUE3XuS1E0BNaJ5bmjeGIyBnxSjLDc6MQoRz+9Z+YDX
         g7pZhhRL+s/VBub26bsKS4eUUb595+susT3Rj8u6paScAqqC6BTvFewfsnh6lMfnivU4
         +I3b0ql29WFTh/uwApl9Oh/nG9FLsdvHf0mlbyeGfmb9rla+c6zUXV/556oAyKQ4rqte
         FBfE1Tu1Km3MzpBXnzy4vvaaOivAChYY+/BJxHd8iAWxW0Vkt2PnLqf4pIEG0WHDIq5X
         zyuFON8aen8D+jrRm/Rxd2SZuSRDH89HRIRSY3Gxq8NvU1prHYzR0Fr7EM9Aewa/LDe+
         QieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761775411; x=1762380211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Nblfgm5XoVGA2pwggUTGBEWVQZIZxWS8tzQ3rNya1k=;
        b=bSO+JcaANOGsnt5i/njnjn9CiBvdix6gCMS/96NnacT1rUcd4GqUOUn/qhRAd516xg
         1lQthbZJKq9l1NIHbNVj4M+6wmJJ9PhBr1UZTuEuXWaaIuFUdtDSsyDKCu/+FqbmSauW
         DTkx7nMXknapGeC+qJsVtumBE1wyLGiBlrJKHpYHiJyA8i+xYPkg68zUstgXe8Wo2Ytg
         c+hqUq8SLXbuUT0dDIHcS4ncEKgeVNKue+cKXAW1TBZZNAdMeAUBy89qYfdQ4GdzrKcG
         wVo7jMHHfh+UPiqSPOtNkxRI8IiUo59Da5RoPM0K4l7taDSsmmOkk8LhJQGW9ENg7bIF
         ESvA==
X-Forwarded-Encrypted: i=1; AJvYcCVG6eAXX20jLqs2wCVsYOpTlpLADg/AJM4d/kWGF2qE3a/427Japf5/n5pvjo9sP+qLc3ya63TdVHaN@vger.kernel.org
X-Gm-Message-State: AOJu0YyIc6ZH0oLPJxndG3QhiGgjaORXnCKpjf7Pb1g4KsXiplxRQQni
	DMcpYXfO5vZ405AQO6hRwdcUIuimub7N4z3weTJCEC2OlmxaEeVT4tO9
X-Gm-Gg: ASbGncsUVfVvZrKEB6hsrjHUHsu0qv4rez7aT9I5xNW9j+qpGw8qdqgadD92OWFApdW
	iyZDmNuFGu3Dwjd6vgDxBNP990DZngWm7vegihQlqmOssWr0PdU++BchxzWITchax+tB8CMHiIr
	3k9b3tK2PrXEiudaxbUzEn+5U9AW/Okr4B+WamVGkC07g4AZnZ39cvSwPClati7eBOndcj/1pvm
	scdBgtXFKIRtpMgZQT6zaBGlqxBr76/PN04BOmq1G9XcFZdd/N8lO9OiEpcUY4ertlXpeItgI32
	lplQLYGUYZszG+ITNPSWvCvnpYjb+tZgjD3AQOqaZ9KHajFyTxvPiEoDZpiyhbVn0rSMwHPqv4S
	RRPYZJGW/0jRX2c4JY9WJtjK2hMN7pmOZ8Iau6c7rb8OmOp4nnhsxalWo+dYUBx9V3QqIvZxJiv
	3kSny/dSyOYbpj
X-Google-Smtp-Source: AGHT+IEwsj2J/ftTrnWWbeM7o5Z+AJ9IhB7ABxIMbByBawCiASkXvvXWBg+ahShIu+FUAW/13d84Zg==
X-Received: by 2002:a17:903:ad0:b0:269:96db:939 with SMTP id d9443c01a7336-294def33bffmr54489445ad.58.1761775411490;
        Wed, 29 Oct 2025 15:03:31 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d230basm162597355ad.46.2025.10.29.15.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 15:03:30 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 29 Oct 2025 15:03:29 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Marius Cristea <marius.cristea@microchip.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH 2/2] hwmon: temperature: add support for EMC1812
Message-ID: <86b94f01-ff93-457e-95cc-4e87009964af@roeck-us.net>
References: <20251029-hw_mon-emc1812-v1-0-be4fd8af016a@microchip.com>
 <20251029-hw_mon-emc1812-v1-2-be4fd8af016a@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029-hw_mon-emc1812-v1-2-be4fd8af016a@microchip.com>

On Wed, Oct 29, 2025 at 05:50:59PM +0200, Marius Cristea wrote:
> This is the hwmon driver for Microchip EMC1812/13/14/15/33
> Multichannel Low-Voltage Remote Diode Sensor Family.
> 
> Signed-off-by: Marius Cristea <marius.cristea@microchip.com>

One more ...

> +static int emc1812_parse_fw_config(struct emc1812_data *data, struct device *dev)
> +{
> +	unsigned int reg_nr = 0;
> +	int ret;
> +

I added
	if (!dev_fwnode(dev)) {
                data->num_channels = data->chip->phys_channels;
                data->active_ch_mask = BIT(data->num_channels) - 1;
                return 0;
        }

to be able to load the driver and run basic unit tests.
I expect something similar in the final driver.

Also, here is the unit test result from writing negative values
into the limit registers:

temp1_crit: Suspected underflow: [min=0, read 4294903296, written -2147483648]
temp1_min: Suspected underflow: [min=0, read 4294903296, written -2147483648]
temp1_max: Suspected underflow: [min=0, read 4294903296, written -2147483648]
temp2_crit: Suspected underflow: [min=0, read 4294903296, written -2147483648]
temp2_min: Suspected underflow: [min=0, read 4294903296, written -2147483648]
temp2_max: Suspected underflow: [min=0, read 4294903296, written -2147483648]

Thanks,
Guenter

