Return-Path: <devicetree+bounces-256879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E387D3A9F5
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0A9DB3000E8C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03F1D364EB8;
	Mon, 19 Jan 2026 13:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XztQSOuu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C7A364EB9
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768828220; cv=none; b=NuFAVIiTPZy6U9sgvDRxcEnaLIFUWv2S8uTKZH0F77xWJVuWILQSou7nX2FBblBq+e0wVIpCQDuKXlwK+NHkpxIx7cYkFh9BnzNL5h2mxzleBI2awGMekkuxekcyynq8brYnGAXWvDSWhz/nAQJKhJAmbGT0UF8zmFeu+rvcjlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768828220; c=relaxed/simple;
	bh=RbIznMFxyjtdscNIHV+mpdQT2F/p5a92VpVZkbRVgCw=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V+YRd5zyo8a89/2VXEPXMi3Mlnz3Nfl7J2VkZNvi4C54sY07bCj6BbTKf2D7YeYJPfk3VqebmK/n6Fi2c1LpsLJFRPRNLiQczrC8/RCRGHwJfl4eadFFxlNiOuu1uYreF+53oKa7k51GSiiq4PEzRNyF6wf2vx8+gzc+BapA0Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XztQSOuu; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-501469b598fso29444271cf.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 05:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768828216; x=1769433016; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=As7ad+RroQjVUHt90+2p37ZNFr3kAcDjR6210U9k6EI=;
        b=XztQSOuuNQ7SiY4+8EUkBdNz9etJRK8wNQQ5Ackw04WUt/HEg6EGhJ1i3V87lvDAaL
         HLfJCiRoONq40qKZF3/81edrGdxkvcjZ2pjSi20Qzh56KhnSc422yhr/i7Liw7f6cUOg
         zyG2wQkewsPgGu7Ndj3MBp3Rsmh7HjMlRhEZ1e2KkNwro1u2jn+rkDGA/j9H85hdi2cf
         fF7j8H4rlw1LqVWcZ4IWOlcx1PX9ymHpDVKAINdpC+Vp5x5gEpk7M4L5em2mOCq3t4vo
         UAooLkn2G94hDhgtzFGgwavP1zWRNHxH0JJgt02whRZKlftNvy+L0wOsL6QHBhSiFa8r
         BtDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768828216; x=1769433016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=As7ad+RroQjVUHt90+2p37ZNFr3kAcDjR6210U9k6EI=;
        b=u47GDQaaLVodoLGakpqLepHWxfCmkl3ahxsbiSQ9b/LHz+PmJTgdjHmPG54u6uyzqs
         H3Ap5G0VwKfjirsVbx9CRAsAW3q/BomSjmkyTXESpIGszwF8BQr6JRxJvqVWMwDZqexm
         TzeCzwI+pXppjKmmUiGiBHtpDYs9ccNwtG1I7/e/Osy8FYbcLmuQmKssNLhV5e3rj3uD
         BRmepXf4sMK0Pm7B4z4r5B8aVkaz+YR+qw9NCoF7IYrY0taAUgNnK5pzQV0dTwuEKKEp
         ELh7EnqkK6No0pJwWDP8yp/5Xn5V2x2dbEIoLhM1GUMxxswvfC0CUv6zJoJgx9N2kVSE
         8WmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeMCVpXFypa6vT+V4MJu8dd2i24VHsz61bWO9Llyk0iX/LHRKCXYP0MVL9RjOnOmowFBGRneO6Oxdw@vger.kernel.org
X-Gm-Message-State: AOJu0YzNn4RjLGKwW/5rUMaU07lGFlRbL4WjRm7YXxAVqD1c0Rp05OVp
	iV8IDJTMC4OnPODQ8i/7SONyPDjOSoQ8sbZzN9mdO6CIFph32NOfWOB7EKXkbQ==
X-Gm-Gg: AY/fxX7qnbbAzSsAbVJPEdNDSHwOXFF6/7V/BSDCFQJmqPUJ4g+OwxyqCA94y8GyIle
	1kK1qP+SmOImqJt6bZKdBQzOHiHlII1rZaAahCj/oqRhAsDlSewhFt14iGSD2It5kgzcs36irVT
	ne9Rs6uW6Ts5TwCsMovy2je5y99ZpHUlQA+H6i/KP2ZPUA5P02/Xzxz+oy1K1s3hVbAZdhqRz6P
	8teT9u/MPCLirH7gVQnWhEc2Q84v78vqE4fTWOKjXp6x5+PjHV2Zy+CqxqCisUBMZgf00vGo/+7
	VviNnAbYlvrAR3Ivrlbk1zVyNFo9keMKUWzvaUjFfks46vwNVZrjBQRs86TDusJIwbbV3E5wxQl
	Ioboj51KNt4o/l+gFbxcmgqABgK6TNsR9FYn77E0GVPMZAjmqdV74oaPjQM5pQjtWyU/ifeNjho
	kvsiICQIr1ElJkWo8dqRqHeYdER+D+bdJF8Vh0UEAHksU8ognUATTLwTiU6NIUF38Yq4qib5NTb
	HLQ
X-Received: by 2002:ac8:7dc3:0:b0:502:9f6b:a3b3 with SMTP id d75a77b69052e-502a1e60bbamr148654691cf.37.1768828216161;
        Mon, 19 Jan 2026 05:10:16 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ad820sm774437585a.10.2026.01.19.05.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 05:10:15 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 19 Jan 2026 13:10:09 +0000
To: Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v4 3/7] iio: frequency: adf41513: driver implementation
Message-ID: <fv4kgfxqgzrw2yaq3vv5g5douyer4ocqk5nloi5iwxc2aueby2@vswsu4jxz6xh>
References: <20260116-adf41513-iio-driver-v4-0-dbb7d6782217@analog.com>
 <20260116-adf41513-iio-driver-v4-3-dbb7d6782217@analog.com>
 <20260116192916.436d24c9@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116192916.436d24c9@jic23-huawei>

On 26/01/16 07:29PM, Jonathan Cameron wrote:
> On Fri, 16 Jan 2026 14:32:22 +0000
> Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
>

...
 
> > +
> > +	cp_resistance = ADF41513_DEFAULT_R_SET;
> > +	device_property_read_u32(dev, "adi,charge-pump-resistor-ohms", &cp_resistance);
> > +	if (cp_resistance < ADF41513_MIN_R_SET || cp_resistance > ADF41513_MAX_R_SET)
> > +		return dev_err_probe(dev, -ERANGE, "R_SET %u Ohms out of range\n", cp_resistance);
> > +
> > +	st->data.charge_pump_voltage_mv = ADF41513_DEFAULT_CP_VOLTAGE_mV;
> 
> This leaves some odd corner cases.
> If DT defines cp_resistance but not cp_current then we ignore the cp_resitance.
> If you want to insist it is either both or nothing, that needs enforcing in the dt-binding.
> I think I slightly prefer this option..
> 
> Alternative is define a default current such that the maths works to give the DEFAULT_CP_VOLTAGE_mV
> if both properties use defaults and use that here + document in the dt-binding as the default
> for this property.   That may mean if only one property is set we reject the pair and fail
> to probe.  You have comment about valid combinations in the dt-binding so that's fine.

Understood. I suppose the following in the dt-binding would be enough:

dependencies:
  adi,charge-pump-resistor-ohms: ["adi,charge-pump-current-microamp"]

as current can be defined alone (it would use the default resistor value).

Kind regards,

Rodrigo Alencar

