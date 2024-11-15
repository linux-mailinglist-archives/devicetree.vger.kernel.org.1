Return-Path: <devicetree+bounces-122213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4919CF28E
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 18:15:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AC6F1F22265
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 17:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 790531D61A4;
	Fri, 15 Nov 2024 17:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jf7YoCl1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF001D5CEE
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 17:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731690902; cv=none; b=jCZFRqA857SoiUhnh1df/iI3Bp4hRgWtLVg90eezHgsHuFC8CvjZ2lMQqg6hFDKoL9PKzKlQeoIHNVUSdMo8cYsN/HgZFiTcvF+AP1p13bDFTujwEz3Sje9BgZrfL2LK/9aU4rkbxpC9LLBJU8hAfCWs9ooeML0nMyBhHYn5pCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731690902; c=relaxed/simple;
	bh=MLVGdOKUHWHTbWRLhDF0MToJ/PEyDmhqvew3tWWi1Ro=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oWWNHxRgihcZYYroCbdT/OrGkfXN6xWtPoNecJoeaw4HcpgF/Oz+E7OAdK+oxiZ7pM/IZY/pnHvfT8v+b9MJKd+7xmU4+tq3Pk74X9mCZIsWRjLQrC6iImlRGsm8EDwEbG8STqAHRWpqC8eUCgpeVJmLqps4Z6kdf65YzGx93d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jf7YoCl1; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3e7b706b966so1037647b6e.1
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 09:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731690899; x=1732295699; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+t5QbplXWf+OH1Spy65VnQjon5zvVtjuq4EZhXbiI6U=;
        b=jf7YoCl1czhp9aIYVRd2MzNKpL36C9ZX28iPoA3EgyKzI1957EqTomkM5f6wolaoGc
         YLzbroZxa/kd4bgZ4rjrYyCwzywk5Rfp8Dla61+daYEmbgb8XCb3TLfAqcZPHp3wq6sq
         rhHImRt9KPEOoqKn+FmhcjVysB829MWnErku45PtntwN7VErqfWg1iDLqR103+lYeKCJ
         6RdWra6ki2RmBmd2JrXn7BPOJIE467IZmM/2lgvXHdsw92fyn/jkqM/9yoiH6u9Gum+0
         /fr+kvl0iK+bJLPq+M8iimZWe1nApQYFY17dtegNBei0VO+NzvINVHhjfFOEMWfGkHmG
         nQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731690899; x=1732295699;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+t5QbplXWf+OH1Spy65VnQjon5zvVtjuq4EZhXbiI6U=;
        b=AF1vPRcZU7D3hhaRzU5gjoaju842QnsvGRAmjQyBwR85Flbmm5ud1xTxFd4Jk1kgZx
         vy6XanHwNGL4GmeL0o2qd7EjOIWrI6DdzykV8R+BgInwxRecT95RZ8EDMzwRfJgj/Sd+
         LKmfCzKGechZU+7lY9+tzy0ya9d/Xsw0H8GAaR91A8dJb56LYlir3CzUZxFufc8+PfKR
         Xg4DERz2yv5/Gb5kDkbaiahJftjCVgfjJNiXUIPpxIQrnQoBeXEYZgMOiGltwmrx8tqC
         Qz6zUCMzb1ARJ9dLhdYZvCUNsMcb0R9WURIYc/ZRh0hyzPDWnhO2+vieB67t26b048iX
         l5BQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNsDd6MWqf1j5tqylzjNh8UlbuJBYiLJeOk1kU5ED335bZvnNAWfjDsLA97/EspOFHf2XZvZmg8ghA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn85xBfs9nXaKJh4374MSStrXaYArY67w2vlOv3TMU5DCmNDwJ
	BZ++ik6Jd9LeVc56EjwDLOl9J6mAAceDb5Uo6qfXEYldXIDpYvs+LkF/FHTAXVw=
X-Google-Smtp-Source: AGHT+IFA6j1bD6Ro4mlGCDGX37IVHQawFAOECWLhe4iMVSQfihiezYooSzpr0q3F9esVAzQwmh3qAQ==
X-Received: by 2002:a05:6808:3a0a:b0:3e6:22ce:d1c4 with SMTP id 5614622812f47-3e7b66c64e1mr4790001b6e.12.1731690897961;
        Fri, 15 Nov 2024 09:14:57 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a780feccasm592983a34.28.2024.11.15.09.14.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 09:14:57 -0800 (PST)
Message-ID: <a1852540-eeb4-4d92-a381-185014c828ac@baylibre.com>
Date: Fri, 15 Nov 2024 11:14:56 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] iio: adc: ad4000: Add support for PulSAR devices
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1731626099.git.marcelo.schmitt@analog.com>
 <a2a1bb929a83f5906a9c1fd9ba76889a3682cf95.1731626099.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <a2a1bb929a83f5906a9c1fd9ba76889a3682cf95.1731626099.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/14/24 5:51 PM, Marcelo Schmitt wrote:
> The AD4000 series and the single-channel PulSAR series of devices have
> similar SPI transfer specifications and wiring configurations.
> Single-channel PulSAR devices are slower than AD4000, and don't have a
> configuration register. That taken into account, single-channel PulSARs can
> be supported by the ad4000 driver without any increase in code complexity.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  drivers/iio/adc/ad4000.c | 163 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 163 insertions(+)
> 
> diff --git a/drivers/iio/adc/ad4000.c b/drivers/iio/adc/ad4000.c
> index 68ac77494263..8e31b42534f5 100644
> --- a/drivers/iio/adc/ad4000.c
> +++ b/drivers/iio/adc/ad4000.c
> @@ -137,6 +137,41 @@ static const struct ad4000_time_spec ad4020_t_spec = {
>  	.t_quiet2_ns = 60,
>  };
>  
> +/* AD7983, AD7984 */
> +static const struct ad4000_time_spec ad7983_t_spec = {
> +	.t_conv_ns = 500,

I'm sure there are diffing opinions on this but I would prefer
an explicit .t_quiet2_ns = 0, so we know that it wasn't omitted
on accident. Or a group comment to say that these chips don't need
any quite time.

In any case...

Reviewed-by: David Lechner <dlechner@baylibre.com>



