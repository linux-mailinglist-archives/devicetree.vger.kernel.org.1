Return-Path: <devicetree+bounces-149143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9443A3E79B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 23:38:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C141E7AA485
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 22:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8864E214210;
	Thu, 20 Feb 2025 22:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fNKlmkCe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D271EC01F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 22:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740091111; cv=none; b=CfwtAYNDwQkWuj78b0Yjq44CqDQ70PdIHY6i9K/LHRzUxHFdUTl9gPLUI4NvaCcY/hPxb9TOFsVnDP00/c0F5yvEvYG/ulNElmqhUbJzeU9YraWq2Rt8w7GODWmHaa28YgTJ89WT/cJi1LIEQODMwaQVH0n0byU+YtZyKTVlHhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740091111; c=relaxed/simple;
	bh=sWMtMJhIGgZDkwBs1wdeFaJJtPcHRts5l/4w38T2rfk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qfD7KIwiXuEd7RTEKMpqi42bRZ/Mr+8dqqR0GJfVliBhjMgZNLwoxvEiUhyDAOQIERdEJnqbdwz0NNVghZYUVwv4/RU2x4fWFIllHy+VSJYdxjnaga7tYllH2y1dvzJ2xCAZCkYC07l2g6RJSEvDDGElKbgJ4lMZnf5TcoT/WlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fNKlmkCe; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-727118c4f9aso403139a34.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740091108; x=1740695908; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pZvnme7tRdTD63uQFjHp0iE5fgweZwPuVbaZo06CSNU=;
        b=fNKlmkCeOyqBMIADau+YNglc76AOrOmhQDFNSz2eaZF1tODfP5NcxSn9gfc5fwfgMD
         Tms4gc6lkuE/ydOWKs8DhFxgfTUKg3p/61QmC7O1hQEK5bgc/Ds2Xfja5RFoLWDJavBk
         HL9KtkCTtVF3G+xhkZFWO/MMm/8rl098PrckC1+GDDeDkl3nIQ+4VzLAZIIM4BE+iDsU
         Ugkn6xnCwlGdjYyD9WsbS+E484CBFJ8PFWg9l4uuxPP8/JZNdxwr1oHGYgkg8JQ1yKRs
         Br+9AYo9lhx+akioUQnaKKeeznxd1NYjE9t6uI1auOEGFAxjTmO4d4t/QwrSOkHxzARw
         Dr/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740091108; x=1740695908;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pZvnme7tRdTD63uQFjHp0iE5fgweZwPuVbaZo06CSNU=;
        b=AXzglr5r5yFz1fnIS/7/H4QLlb8/w6BjXCUtXXhZTrtG3kIAgqNJDa13gO1HUIsFMo
         OSDoiK93tvDPma9D1oPgauTO3DUZ4iUw/Rt6prXyBM+5WWTV1EaBwdnqEsmQxWujERXc
         q95Tq8J1ARri57HlewLmEa4j9mVWy4q1XFiUmj1j77qjewO+eqVUtA8S0d7A0zagws39
         gpjfpL62AX9JqF350Yd5Qzzfq2nGQIkTyU0yF3EstMpu9XA+B5cLsDzIDC5A7cvBwPUe
         G5In9lXItChsQhDgSy0szm6/9y1k454xA+r66nNWr/8mOHsbTeCVOV6wTm5EwOO88CvJ
         WPog==
X-Forwarded-Encrypted: i=1; AJvYcCWH7hiNrLr7sLzyvQzly65NIi8f9AsnGZRPf2gJ/rxcKxmv4ot+xT9joAS5TYsjBXhohrUYVQS9zFOr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1Qv7wbVH7e2l6MlQzlOL0seLY+Di2RlDUoY0DAinJ908hN065
	B/UZdb+JxU/XrVdPoo0+kt9nnvVQwv5+C7chfK/7XO2enlT4vUppQs9//lFICK8=
X-Gm-Gg: ASbGncsr53ppuMgri0UjtbWqYk43PKimWD+d8qd5TuJknMQofkjzFchvsTzchKJehOG
	D8kUEEW235lJiY7L+yP9V6LSrKeo9Q4wq2o5PTBUE6+TD8qU/HAIRkGBbYlf+gwjjoPDTHeDdTI
	FVnCM1IMygYUQu3WvXtsh8w3Op43UJ/Q26J01fMqWChtmQYBCmNDdLT5gQHnnFzCAuTxDtp1CBO
	h5mcgskm863ZaZyGMTCPDWjsCprIKYTrSBTCWBJWMLMBWFArPgnsZfo64d2o6KjyHqM/v1lq7kR
	dwlnV5JSrdTzc/t9KOURmJSKBoxrLl7B2dXVor48dUvNf7/nu6Y2
X-Google-Smtp-Source: AGHT+IEzdfjmrp9J+sxTdexLYB1VUUUSlpEgBRUKFEO5q3qrJomkJEMgCb7UY4Y09D1Vyk3fevqGpw==
X-Received: by 2002:a05:6830:8d2:b0:727:2751:6b93 with SMTP id 46e09a7af769-7274c25bcedmr785372a34.20.1740091108688;
        Thu, 20 Feb 2025 14:38:28 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72732331fe0sm1729171a34.43.2025.02.20.14.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 14:38:28 -0800 (PST)
Message-ID: <3c54045c-6001-4f13-a421-f7f4844b6ccc@baylibre.com>
Date: Thu, 20 Feb 2025 16:38:26 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 13/17] iio: adc: ad7768-1: add multiple scan
 types to support 16-bits mode
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1739368121.git.Jonathan.Santos@analog.com>
 <854d64a0b431e66e70dcfeaf75bc6e40c4c25a78.1739368121.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <854d64a0b431e66e70dcfeaf75bc6e40c4c25a78.1739368121.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/12/25 12:18 PM, Jonathan Santos wrote:
> When the device is configured to Sinc5 filter and decimation x8,
> output data is reduced to 16-bits in order to support 1 MHz of
> sampling frequency due to clock limitation.

It would be a bit more clear if this said that x8 is only possible
with sinc5, so we don't have to check the filter type in the code.
At first, I thought the code was missing that part of the check.

> 
> Use multiple scan types feature to enable the driver to switch
> scan type in runtime, making possible to support both 24-bit and
> 16-bit resolution.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---

Reviewed-by: David Lechner <dlechner@baylire.com>


