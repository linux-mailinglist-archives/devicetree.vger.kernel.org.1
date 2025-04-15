Return-Path: <devicetree+bounces-167535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E705FA8AB36
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 00:18:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 62CEE1901FD2
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 22:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7E227A11E;
	Tue, 15 Apr 2025 22:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PJFxT1cV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4DD257AC1
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 22:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744755477; cv=none; b=My8BoPuRiR/lxTIoCf9Fqo/nnbgE3Q5GCCnBVv/0Q7d8Oijih0r0utai5rU7CKsMhfdZnXhwELU+6RWO3o3fgCGO2EZ1BQ2ir6uwIoDn1AgGtzAiPHXiFhJncrz++hWTnv/l0gb59F7F1tIVIW0FbMpTFPEXRdkIpvr1BO636qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744755477; c=relaxed/simple;
	bh=hGlTveS2616ckTcGMpFiqiYVbcqh6/+6UFd/j7gYNa0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uoRhKRYsAJ5r9FHW4jURuQd5q4HBMLsZHDTkYGrnXQ/UvstWTcLUFCzjZGNI6fIoMzSeOhFl93sd/3SknJS1se/ZGXShlqtg8q+jqSqq/fDS89lk30fh6XXXnFSBULqYOjQEjeNuIxPZjdjEWx6qB94DbwKE+dscU/++FMgQP6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PJFxT1cV; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-306b6ae4fb2so6125726a91.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 15:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744755474; x=1745360274; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4J73IHenn0V6xQDZgF63RJqhtreeLtTKV20Qod+uY/M=;
        b=PJFxT1cVupe5DkeyO+H6r69bYJLrQxSOAVNcTpPkXRLSEFx+qD7tPZeMSO26BJiFkP
         3GeJ78XywP38u9diAVmypwrJNNju0NjG9MX2P8b2XwIPKx9L/nqyodlsN87BghnktLNs
         pquXgxyfLcu0ltvOqzFqPX5Ez+FXy6i1J8AN69FnKbBipUaeHNMVMgwzux/VmrpdgEjd
         YqRhXYoYAYdDpS/0rQeVRv8nvxb+ORda69zIAmF7I9oN89H6tGT3MDPuxqoTHui0aktI
         1SpZWEfZ28lx5dQyugoDqQev/i7pfrCNev9ABdxz5OG6EATJoQdpOsePUh1EkmAjwsc1
         Bz5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744755474; x=1745360274;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4J73IHenn0V6xQDZgF63RJqhtreeLtTKV20Qod+uY/M=;
        b=KGMAnVJtO1BLuIc3rThpP2X2IbJLDHHvNSoXxFWbAsxKaoMhJVoqgCM4FBTupQ6aWM
         UpJ2OgD3QyD8Tw2fvsh7STHLG/bnRLWq+Nahswh2+bcxZRB6ApsMgXW8S3OxyiKd+Ejc
         PHU7KjaI3YrHSkw0dfE+hkjCst5SyykjbpNBqVfa/z0Zhg7j+d1V+5tnagRMCDe74G+b
         2qzgoteXpj/MRz7ykIg1s2yedjl+PX1elqpbYNJVcFxB2LGsnVA6rilPfbQbRTbKWJ8x
         H9zgjMSH6QWE0LCn9c6dJLl9XS53bCPIMsfCi4fjXq05SYzEx7+85g9vdfHgLJGZr8n2
         X2CA==
X-Forwarded-Encrypted: i=1; AJvYcCUlmLsM0FqP8uT8kSUA+DVMR3T+gN1k6d/HWYUHujwImONwSNClppg94SI0itIiRFjQgnZ3lNnAHj+V@vger.kernel.org
X-Gm-Message-State: AOJu0YyLPRT9H4tTsGKWPCJOeqkgdgaWoezz4b1mg5BVOfG4wIE/sQ4c
	VUuxj0ruIarDs+yKrCFAGnUUC3VCMwynAk3vUuhuC04n7OhAss481rwEg7F8JBA=
X-Gm-Gg: ASbGncuxqsE0L3Lj3g5bMu6LNeLklAlJ4IIDIyHgVErjGqxg+6dVYaItP+m181M6P3p
	TSL3WLOZ7fNHg+QARCqJXJBIGJ21MyeaoraT5tTeZw7Cs2Pi5o+IDoJ7Gm0NPw75olaEzLy8z4r
	EDmJOzouWRlOTo4Et6F0MyMJq63/LyQkJvgO02fxUVo842+wviNtYrU5/6cNReCwRHA+OXYaOm/
	BSzIKktdnpQ93CPdZrRyYCN76KYaKjO+MeEKjEf5vRn8+PZSSa71e/U8j9se7IflKoPLEwZ19Sm
	noI3B3WZLjj+M+9A1eHnqTWRZWkiqSxt8MxOFgsp9SmrHvT5UaXSqsOgVRMv+ZeBk+5Gq2hMjRr
	o
X-Google-Smtp-Source: AGHT+IFhuSJk+eLjcOi/3nG+9UyHOVKqlJoxNhC/IcW+qjXwSHez/LX3r8QEUmn6wUetBFK7viVoEg==
X-Received: by 2002:a17:90b:2dcb:b0:2ef:114d:7bf8 with SMTP id 98e67ed59e1d1-3085eecc278mr1070084a91.6.1744755474088;
        Tue, 15 Apr 2025 15:17:54 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30861212fbesm111911a91.23.2025.04.15.15.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 15:17:53 -0700 (PDT)
Date: Tue, 15 Apr 2025 15:17:46 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Angelo Compagnucci <angelo.compagnucci@gmail.com>,
	Nishanth Menon <nm@ti.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Matti Vaittinen <mazziesaccount@gmail.com>
Subject: Re: [PATCH 0/2] iio: adc: ti-adc128s052: Add support for adc102s021
Message-ID: <Z/7bCn1S5wFQFaiT@dev-linux>
References: <20250408132120.836461-1-sbellary@baylibre.com>
 <20250412141047.4273a8b1@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250412141047.4273a8b1@jic23-huawei>

On Sat, Apr 12, 2025 at 02:10:47PM +0100, Jonathan Cameron wrote:
> On Tue,  8 Apr 2025 06:21:18 -0700
> Sukrut Bellary <sbellary@baylibre.com> wrote:
> 
> > The patch series adds the support for adc102s021 and family.
> > 
> > The family of devices are easier to
> > support since they all (no matter the resolution) seem to respond in
> > 12-bits with the LSBs set to 0 for the reduced resolution devices.
> 
> This has raced against Matti's series
> https://lore.kernel.org/linux-iio/cover.1744022065.git.mazziesaccount@gmail.com/
> Support ROHM BD79104 ADC
> 
> With hindsight that wasn't obvious from the patch series name though
> which should ideally have been
> iio: adc: ti-adc128s052: Support ROHM BD79104 ADC
> 
> Please rebase on the iio testing branch on kernel.org or on top of that series.
> Technically I've only applied the first 7 patches so far, but the 8th
> should be a simple change from that v3.
>  
> Matti, you volunteered as maintainer :)  Hence please take a look at
> this one.
> 
> One nice thing in there is we now have a __be16 buffer16 element that
> can avoid at least one cast in patch 2.

Ok, thanks.
I will work on the top of this series.

> Thanks,
> 
> Jonathan
> 
> > 
> > Changes in v3:
> > 	Patch 1:
> >         - No changes in dt-bindings
> > 
> > 	Patch 2:
> > 	- used be16_to_cpu() for the endian conversion.
> > 	- used config index enum while setting up the adc128_config[]
> > 
> > - Link to v2:
> > 	https://lore.kernel.org/lkml/20231022031203.632153-1-sukrut.bellary@linux.com/
> > 
> > Changes in v2:
> > 	Patch 1:
> > 	- No changes in dt-bindings
> > 
> > 	Patch 2:
> > 	- Arranged of_device_id and spi_device_id in numeric order.
> > 	- Used enum to index into adc128_config.
> > 	- Reorder adc128_config in alphabetical.
> > 	- Include channel resolution information.
> > 	- Shift is calculated per resolution and used in scaling and
> > 	raw data read.
> > 
> > - Link to v1: https://lore.kernel.org/all/20220701042919.18180-1-nm@ti.com/
> > 
> > Sukrut Bellary (2):
> >   dt-bindings: iio: adc: ti,adc128s052: Add adc08c and adc10c family
> >   iio: adc: ti-adc128s052: Add lower resolution devices support
> > 
> >  .../bindings/iio/adc/ti,adc128s052.yaml       |   6 +
> >  drivers/iio/adc/ti-adc128s052.c               | 149 +++++++++++++-----
> >  2 files changed, 118 insertions(+), 37 deletions(-)
> > 
> 

