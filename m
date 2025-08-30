Return-Path: <devicetree+bounces-210832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 700E2B3CED8
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 20:48:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CB972005C1
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 18:48:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30BCD2D8398;
	Sat, 30 Aug 2025 18:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pygJbV/c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6BAEEA6
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 18:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756579688; cv=none; b=AT15PAVVwtWsntjZfrj0wmz/Q2pInoXQl+CsJpGcUTgyxov8d7NOfh53PyPw3yugCYzIz2mtaPNx612kpg9+TWuhDe/BmyF1ZPfwZ4CVcqdgKzOjqEg+QwFypRGpuUnpST8mpPdLJzEyLZSOk6mCVKjoX/xJgxQPQ1JaZY15kT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756579688; c=relaxed/simple;
	bh=DD7DefC7ukvmx58D5ApAi7pdjLyBv9rq18lNqvOe6SM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lvvMZJENDmMolD/3YPPdlu8hINtXqC2RmzPPZIt4izuw3EP8xvFnTyEzcxzFH309uMsVhn99eRCNWOrIF4iGf++A8kq7oxBfO2jD+BhaTxBzT7LxGMuyoBFYRUAYG7KkjZOV/yRIpZL4VzcvFqEBo4rwlqXsVDZiY5y2GhC0sJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pygJbV/c; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-74381e207a0so2177117a34.0
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756579686; x=1757184486; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m5Xj0H0mStsxJLJCOC7FKJU4x7mcdP/yvgXS7VpGPqg=;
        b=pygJbV/cmRCl2gp5is4lbAEo+shZTs+uU/0Tevdv3PB7xhuT8wYLDv7J6q9m/V8usU
         ClzzGE8LwibTPI5XT5bNJmAkEFGBiKpvxg6Qy1LHDUvSuGk5jUfdpp/TUhrZ2LT/1MpS
         6tt7v1nBWWHdib2lbhPMrSTloYPY6Pm4fWDdnDsmOKlDLFdNX14Kslzhc9oSQ683dBYf
         Y6r0FJD+htAbbbu4BrLHoXrV156+9BVat5T2a7YLyqfJ8fB6z421ievhoZ5NQfx3oW8+
         XXSpILOROwL2PifqXS3WP+Jtn4R0AcBywl/hv10IBQRvUHmpLibtPThT9OKGTPeBdZqT
         UryA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756579686; x=1757184486;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m5Xj0H0mStsxJLJCOC7FKJU4x7mcdP/yvgXS7VpGPqg=;
        b=QErDJOjbDsLSexxONt1rJ+zPd15GMocxWItUgRsZ3u3waZHgQIVy899VJmzzeCC4Ow
         0BbImvfp+l2ZRgxMArbxbeepgFaKsZ0H8g2hnDA9CPQfiGFrV5rABJq+w27ddlGViCKb
         PJtYpzwg8Y38pXxJyEpN9jxqgHTl9o9GSfdBBsB58LkJwZo0LinwGZZcY6/a8lGRaW3C
         pxW9n3ShQ0fF94R4xIeU6XXIx4ZDuIFuYrkFinqX4MgLIaCcqG0GDOFYDu3f+3qTa9sy
         sGIPQSXNUmwb+Ffix5LzjJtaIjtX/iWeBY4ZIQLFkR0uRGzks+AaR7Jz2j9gvObFpDo0
         Wf7g==
X-Forwarded-Encrypted: i=1; AJvYcCUQ/gDHD79mSjaMdFhy2fzg/1lncmZcKQYQS43M4SSB8fFw3YC/jSqZSVbQKMjbD2k4h1Ytd0lQBawT@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdqpl1oDlDA6MniQz+kgyS7Jm/tMI5M8midffdu+1m/3xCIxor
	6OX1+8RsXm1DIhY4Y1EjYtOD89MPR09nZjk/l4jGAl1ZYPDK2cPhbQwmHJiAZTzS/Cy7lm1Urg5
	e1Os3
X-Gm-Gg: ASbGncveB9V9Z7zVU8CfXQ0ZgHIfcFJSyGCvaDMbPP1iOo568ccwkwMf220MDnGcIxm
	1fi84QWf4Yj3LTJ8zqHGqxT/1YeJZ5DXyBOgm/Y9BrO4IDnEFSNatHj2uESAM+K7C8PhSAlP+8V
	BgkzBqx1XLUYS78nxIMi13L00N/p/3evmMJM0YmvxS541R1AeZUFxYNJL6YpwNPpbWjgheujenG
	vNWv4+WxQkmwvg+i7Qy1UyKnXQoVsoz3eBwzjCwvy/x82DKGhwVqnwxjV3495PAIXppuZisPGd+
	JeFv58Q9VV0WQENMVVCvB2zOofXAcqNKdKkanx+nflQPR3gFCqK+IwglRV9+D9TFfxMEU7dgVrJ
	eLMB3o2Zv6Frl3FVQJ5blYGEvkAlz3oXUo0zZpImfVse0FyA/GkfcMq5RPIcpNZpNa+uicm/Zzo
	f+MdVBfsshKQ==
X-Google-Smtp-Source: AGHT+IGSev9qbLSBhI0IZugbu8NAy2nFpxdYwCkrkjiUPJ2fDHLmRW1GmCDslyXrxwFppSI9n0uNbQ==
X-Received: by 2002:a05:6808:1889:b0:437:cfa1:73bd with SMTP id 5614622812f47-437f7d03adcmr1220355b6e.22.1756579685636;
        Sat, 30 Aug 2025 11:48:05 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d? ([2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-437ffedd355sm21206b6e.12.2025.08.30.11.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 11:48:04 -0700 (PDT)
Message-ID: <97f20435-e4b9-49c5-ab02-b67a8112f0ee@baylibre.com>
Date: Sat, 30 Aug 2025 13:48:03 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/15] iio: adc: ad4030: Fix _scale for when oversampling
 is enabled
To: Jonathan Cameron <jic23@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, Michael.Hennerich@analog.com, nuno.sa@analog.com,
 eblanc@baylibre.com, andy@kernel.org, corbet@lwn.net, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
 Jonathan.Cameron@huawei.com, andriy.shevchenko@linux.intel.com,
 ahaslam@baylibre.com, marcelo.schmitt1@gmail.com
References: <cover.1756511030.git.marcelo.schmitt@analog.com>
 <f9d40e8deb3d17a41b4fd6ecc1b8ac92275f0078.1756511030.git.marcelo.schmitt@analog.com>
 <20250830194308.32def0e5@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250830194308.32def0e5@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/30/25 1:43 PM, Jonathan Cameron wrote:
> On Fri, 29 Aug 2025 21:40:24 -0300
> Marcelo Schmitt <marcelo.schmitt@analog.com> wrote:
> 
>> Previously, the AD4030 driver was using the number of scan realbits for the
>> voltage channel to derive the scale to millivolts. Though, when sample
>> averaging is enabled (oversampling_ratio > 1), the number of scan realbits
>> for the channel is set to 30 and doesn't match the amount of conversion
>> precision bits. Due to that, the calculated channel scale did not correctly
>> scale raw sample data to millivolt units in those cases. Use chip specific
>> precision bits to derive the correct channel _scale on every and all
>> channel configuration.
>>
>> Fixes: dc78e71d7c15 ("iio: adc: ad4030: remove some duplicate code")
>> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> 
> Hi Marcelo
> 
> I was assuming that when this said 'averaging' it actually meant
> summing (there is a note about using the upper precision bits to get the same
> scaling which is what we'd expect it were simply summing over X samples).
> 
> So given that we don't divide back down to get the original scaling I'm
> not following how this works.

I had the same feeling. I have some hardware I can test later this week.


