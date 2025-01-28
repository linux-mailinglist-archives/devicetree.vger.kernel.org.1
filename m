Return-Path: <devicetree+bounces-141257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F25BA20308
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 02:32:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D1CA1886F06
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 01:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A84822745E;
	Tue, 28 Jan 2025 01:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rM6CJkIL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78778F54
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738027968; cv=none; b=Cmiv73nt/BMbmF8Icfb2RtXpl3JY2vn0VDgG3ShTYznzkx1yKQFJSuPIFH/W+hlO6F4El32ACVdwxE9kG05fcIY8WTL/aBYVMwfwtdyAkisX4RCQ3Ov/omo1rFaFFhTFnw03jYsDeVjp9FDR4Ro0MIaJk11vIhZIOYqcyus3YM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738027968; c=relaxed/simple;
	bh=lpnYd8GVhkmesJCdwtwJ90i0qkJVHatvY1VVHkW5Yo4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IQCQZo/c3/AYlKDDhk+HQSJoo4gbu7tXMTVDsFsfJ5EpYV9pRK4VFGjEwJGfIrYQioHlu/5WUelytGoA5juYzj05a2qKlXrZ2pHbLE6Xk/a5FMv91dd1Ct1gbsFzSqafTSDBIVCcZd/QezcmeFghLG5jh+93v2W/7F7KuPpjPjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rM6CJkIL; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-71e2a32297dso2872637a34.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 17:32:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738027966; x=1738632766; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GbO53/E/v3sT/UJVuYcpmb+fsW1h2IM7Y9VN72GDUo8=;
        b=rM6CJkILLzgEhQHcVQVyGkxxZCRLRdL0JOU98Qwu0kHcnTXBsojcJHPLKZIetelDLU
         Yb/nqeCUcUTOZg4kGbGlOGyo7R2ykQofjGlbVrpdRGMekNMJvdi/FkCC+P0dVfZWkv9I
         p1zFX5VZ5HSQehFxUlEUGcFXCLGkg2UhWwvNl2HttlLRGGF6jbXz1BLvudkWJQq9Uvgp
         YOhs5UCk3oAsOsQk5et1XFqlrMWizMM5Nq7ZQiroVy7fEfH9Y1+E982evIypV+Mxp1Fb
         rwK2gmHJCiPYXw9h2JnAGdzOOxDFx3Sv5EUeZxKivDjpMMZtmZQHWB1bVEu0karabEFJ
         u5Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738027966; x=1738632766;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GbO53/E/v3sT/UJVuYcpmb+fsW1h2IM7Y9VN72GDUo8=;
        b=N14gmylohujqqAVQhmT4DcGV4/ryjMRDsetKFyiNWqZHQ8cGUndlGKHtpeEmmgujaN
         ZEIzj17xFbQ24rU/F2jxLWQAASqgujaPfaAo7FfaoQM4jmC9GVFHSV1/pMiPXaaGv4SO
         apfshTRuH/Wo7XQVEW6JFC1v8BTb6SxThnw9WQdk+gQJkxbYy0UDk6ATDoY8E8Ya6fjW
         bNByQexZO/FAUk8dV738lxX9LVoRo6+MKGn0dgYzZKKOxRvVkEBhokvHUtdeLRHo8bFE
         NjIEg86r0TZCQHUzhPOte36zIXRTF3drGmKH5DaWy0gjixQw8ixmCyMS4pIZZTxLFu7R
         sn+Q==
X-Forwarded-Encrypted: i=1; AJvYcCW3CAU9Gia3oUPb687xZDbmxIjEsG/xZ8nnTRSbNgQz1tAN9F/0eg1oNeQBFFdpR9VmI4gIbkTG+8oX@vger.kernel.org
X-Gm-Message-State: AOJu0YzOWfW/77Btagw2itt45oCEOjNQ9ENtEIMnJlDCrHhP0oTeiEPJ
	DfHhMD0W1ngJV2bmockEN1T5Vm0uKDb1rln4BOj8kfoBKHjm6GrR+EhETfCJlw8=
X-Gm-Gg: ASbGncu+ZzbQNEIqpCH0yazOAHaJZBGMdaK++Lh5/cponqZUy6dLIquT6Zyn8TO3hu/
	zYn0OTP9w83Ua6yqzfihtnba0d4Dz4YPunPrGCqAtkOwIN4hPY4W2MpQkICCZUme/Q0LsET4qnR
	uVLWC+xuV6/vkKOq+AIpP2mCTB7rJ8KCarKgv0BZw5vd0YZlGUZS44/3NaBx56rJ93UM0amAjrj
	v9PBPVoGtCQv+OuIPm/z7TgIz4RVfJDdrFWnL7MyoOO7ULfOWsc+9Xlf1ap5RLgzICN8Bj5JNTo
	oULHMb3u96BZZ4E4B758ZWGGfsDDA0J4ykS7ixwmN+vhH1HVdAuI
X-Google-Smtp-Source: AGHT+IEY9cy5k786jJtuN21pZ/JGG1tZcIhLGrbik1aA0W/Oj5MPrOTVGqDbCv6skYcYjfTdC+aqKA==
X-Received: by 2002:a05:6830:d06:b0:71d:f7d8:225 with SMTP id 46e09a7af769-72648c9bf71mr1046206a34.12.1738027966061;
        Mon, 27 Jan 2025 17:32:46 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-724ecda3a22sm2696494a34.8.2025.01.27.17.32.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 17:32:45 -0800 (PST)
Message-ID: <95e9fc42-db0a-45fd-9155-9c8721c849d7@baylibre.com>
Date: Mon, 27 Jan 2025 19:32:45 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/16] Documentation: ABI: add wideband filter type to
 sysfs-bus-iio
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <351b15550f8d8e7126ed8253f3a8028c708327f8.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <351b15550f8d8e7126ed8253f3a8028c708327f8.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 9:12 AM, Jonathan Santos wrote:
> The Wideband Low Ripple filter is used for AD7768-1 Driver.
> Document wideband filter option into filter_type_available
> attribute.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v2 Changes:
> * Removed FIR mentions.
> ---
>  Documentation/ABI/testing/sysfs-bus-iio | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index f83bd6829285..9b879e7732cd 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -2291,6 +2291,8 @@ Description:
>  		* "sinc3+pf2" - Sinc3 + device specific Post Filter 2.
>  		* "sinc3+pf3" - Sinc3 + device specific Post Filter 3.
>  		* "sinc3+pf4" - Sinc3 + device specific Post Filter 4.
> +		* "wideband" - filter with wideband low ripple passband
> +		  and sharp transition band.
>  
>  What:		/sys/.../events/in_proximity_thresh_either_runningperiod
>  KernelVersion:	6.6

I'm a bit shy to make any more suggestions on this one since my previous
suggestions were clearly not the "right way". :-)

But, the key takeaway I got from the discussion on v1 is that this describes the
_shape_ of the filter. To me, "wideband" describes the size but not the shape.
Would rectangular be the correct shape?


