Return-Path: <devicetree+bounces-181695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EE2AC8927
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 09:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 944774E2D54
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 07:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A39721771B;
	Fri, 30 May 2025 07:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TwvbsS9d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A4821423C
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 07:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748590706; cv=none; b=YF7pa75SGTBTBTL7TWXkj4O3qmqE7y/Iv5TonETwbzp1yctIYYI2DpxbsFOblopb+f6XwOk3OF5HMLbnsdfKCMUOVMhFzEXmf/+NlBoJxNBvXoCkZFhRx/4NrNjQ26oGN+ZfsnK2pP9Qjcw6BVAitXwpoNSZOISRrXSr2B1OXyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748590706; c=relaxed/simple;
	bh=iQgrvOqRA70LGQbw+GLCqJWS7MwZcGOXx4QpLJML8B4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i26ucSTowmE5W92StblsNs08vz3LLH9h66yASSqdFlu8BGLgDFrOgYos4V2wAS6EDZNKWgwajGUwKYny1hhJnZkqvyMQ8BLY6rEMDWSPakp10bVYGdLU0V4eGQVV1S24RHlgy/p1o3DMiXzIpms58FHJf9n7Mr8nlYF3OvunN04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TwvbsS9d; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a361b8a664so1703678f8f.3
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 00:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748590702; x=1749195502; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LfnbZiQbAmqPKSfMf+Mq18rGvap4moTa+Dp1DimkkJE=;
        b=TwvbsS9d3VlOo3x6Q//jbKnLl5Vx4QDTxknbDZXit1vgjNBupa+rTyv9V6VEIT43tT
         YZdImqytpkQBbO7cs5TPqbthDEj6MOsC0m3xzz39H3+juQJbXll1iU2a+/E5hma12GxV
         7hTu/o+eqjw10KGJdF91MrJkn50gBgR9q5YsVw0CTintje57+ZisT38Ff+8lhsLiOUPY
         ySHAF8DG7ZvdLn1F4z9gzenTSnXBnu1PXNSbjE1ApByfKuwZqsSVwkR4Ak7/3UI1GMgg
         R5JZm2K6bHQsOzZeW6PJrVkgLGUMEG5HEsliGC+OERW1BV7cjCTz1yNVKKimTwvg/ugv
         ayFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748590702; x=1749195502;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LfnbZiQbAmqPKSfMf+Mq18rGvap4moTa+Dp1DimkkJE=;
        b=FlcgtmNmfzlZC9BKZRI/FWw2+zZI+g2QR5YRIQbXxyoK1Yp6OO3Qo5O2FW2eEgAFW6
         lXFKuHTb6KgL7aJs2xNdZVdYIxgKE7WbvpxVtI2+L42IQtZnJ9MtmO0ayQ49VEEZx/es
         J3/niHhUcVKk/0PF5No4y28xuD7gPv/DVFMLBohMDcUP35KS2skiMQ/5krAPV6N7+wQ/
         LPuiLkIaS9qXnVrLYvHfosrXiR8UueOQ6MlYVW6AXySjSjCjr1OgSLDGGsOOQbS+6SKU
         bWu9rMoRnlY8uwB2cgRPFd3CNRfR+a9vDfYpRdniBuyJWmeuR3/W7GdNTxRTNc4dQ9qT
         IHgA==
X-Forwarded-Encrypted: i=1; AJvYcCXsJ2fwTqaiGiLYC+ERhFFICbe9f062kxCk66Ix1qlWnkWHjU+oo5KfH6O4o9Ruem9scUW2hssfbLXs@vger.kernel.org
X-Gm-Message-State: AOJu0YyJpqAg0BK+MUvLJ62E3JDZA/JJ/MVIBE6td5u3+e6swKskNJbA
	s3ri+o1lTFGZpjtmY9jp6A3VVIC8Uie/wzPuQsPMmKNJY7OU15echvGFOLviQGr2eHc=
X-Gm-Gg: ASbGncu4LBx+rd1uyPuz2ZZoyVwGBq/0rKzhbhPLJYsjB4kx7dTe9JQ1KmVGa5Re+Pc
	Zbl4rQVrT5azvT6xdRyC9zKpPS/rHtsTOyYS3bqta3zDTPWxhtrdWDTZi+U+0pE0UmOm2/irMCe
	tYJ8gYeHeIPxQpiLRbSwfhnd/XocB0rja+dFyq5/N8wTncaVOPP6xjqmRwVNYR71rHaneBybOqM
	Up1Eai0KrNvvPnA5PJvKGgtglm4f98+869hYgnLWeOxnmivNGSN70+hpx43hJx5Z60oANbKkPF7
	CLqIw0vxwNQu/hXW3MkjyqZwHUpI03XZVU1CynsVuREe/+vmBYwyLzCOak3eKYUblE3akKt83oB
	6IPP4o1Va4YktZZDFUMd0h4FDsr4FmA==
X-Google-Smtp-Source: AGHT+IE9MXHewsFsO65gOCbyBARWfhxCc3GiAp4JhYo92c97qkhscjKdSO1/x+TgAzn1ycE2rzPEIA==
X-Received: by 2002:a05:6000:4212:b0:3a4:e1d2:9a7a with SMTP id ffacd0b85a97d-3a4f7aa591fmr1586687f8f.46.1748590701612;
        Fri, 30 May 2025 00:38:21 -0700 (PDT)
Received: from archlinux (host-80-116-51-117.pool80116.interbusiness.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4f009758esm4057600f8f.75.2025.05.30.00.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 00:38:20 -0700 (PDT)
Date: Fri, 30 May 2025 09:36:57 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Andy Shevchenko <andy@kernel.org>, Jonathan Cameron <jic23@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/6] Documentation: ABI: IIO: add calibconv_delay
 documentation
Message-ID: <lj2jhnuggbpil5ogler7uruhf5uv5u6lnrs5jxgsvxiy5lq2fd@kwmvftbyozkl>
References: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
 <20250526-wip-bl-ad7606-calibration-v7-1-b487022ce199@baylibre.com>
 <aDbmTaX1d0HCx8V2@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aDbmTaX1d0HCx8V2@smile.fi.intel.com>

Hi Jonathan,

If all the rest is ok and there is no need for v8, could you maybe adjust
to 6.17 on acceptance ?

Thanks a lot,
regards
angelo

On 28.05.2025 13:32, Andy Shevchenko wrote:
> On Mon, May 26, 2025 at 12:03:16PM +0200, Angelo Dureghello wrote:
> > 
> > Add new IIO "convdelay" documentation.
> > 
> > The ad7606 implements a phase calibation feature, in nanoseconds.
> > Being this a time delay, using the convdelay suffix.
> 
> ...
> 
> > +KernelVersion:	6.16
> 
> You need to bump to 6.17 if it's not a fix.
> 
> ...
> 
> > +KernelVersion:	6.16
> 
> Ditto.
> 
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

