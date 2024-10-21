Return-Path: <devicetree+bounces-113796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 122079A70E8
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 19:19:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4360B22DC0
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 17:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F52C1EBA1E;
	Mon, 21 Oct 2024 17:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="l8ZXMYaq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070DF1C461A
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 17:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729531186; cv=none; b=HrUgD25Re0ykrfIN2MMWBTmvBUSQzowPPJsT3XrH6sU24WXUI7EPN/gBGuiwWXU0hJ+uCiqhtTJ1c4EddzA+9lRGb0YGRKhwp+y6ZLnEwlJhfhj6vi0TjkJoUvTsx2F5AwfTwuHc5oiCmW4NtdESLtd4CvmUe6UbcNw0XfDtZkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729531186; c=relaxed/simple;
	bh=VT8mmAKrwqeCy2RkDHrrEva2qPRp2pxEkmo9EA7vyzY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nSwX7VTiwflQrmt/V+wCF7FqAVYdhmo4/e9F5Qk4UfhWNMU0PwnAsXkARDti84QUHyYebyrTJDqB5gJcFuAMNzy+Sna2hIyjqFlhYPrU0EL/G8S/SSAUiickZoFakxHa+Lh42Qr6s8nV8bkHSvObu3ObUA/q58HpenBJzriS2cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=l8ZXMYaq; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-718065d6364so2136049a34.3
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729531182; x=1730135982; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hOFL7ofhLfrgIiFV4c6NydCiKi/kbPEnGF3mniiUaXo=;
        b=l8ZXMYaqPVQ9EhZi425gIUsTd/DYF0O1PJjYegy/RVXncrzXiO8BS1Ebe06ZTxcqH7
         mOru4y0HzNdAvkikS72N0acHWGAZovmhuntWtISE5fcuMLjkYk1n+bobm50UgNE9XemC
         BMsTKUVJAgXJnfbNMiGiBjpYh84Oc/IM1ZMEwLswgwr5qDU6/W46XzVVqi3vIEDdfY2u
         CAzEQa7xQ6GSs7UMxP5V79MPhtidJzyXY5HN3DpFibJ5zEXij3bdoM9mWBAeg8mJ4z74
         FHVjDZLbQ92NbfNWzpuZn9avWKFGIVeW4ayn+hXfLk3q/eY1kj++Nw9tkWX0PHA4c7yd
         u3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729531182; x=1730135982;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hOFL7ofhLfrgIiFV4c6NydCiKi/kbPEnGF3mniiUaXo=;
        b=rPXZymPiFt2evLCnTKJDcpbaIurvV6j/jKdKRI7KX4rJl0/xYH8mYihNtaXaj3Pigp
         hRdGOmawU60zGRLlUgaSgDa94AOquTcpOUhBc6SxVjQvgFqHTPZvpNTir4V8zUwN0qQd
         SLdCtF4Z4AhH2NjRmPo226LB5RrQBW9EDkYgbIy5dPPN9EZFd0w6vzAMKcoG11Mc0hSE
         5u5EZy/rkqL7MemY4WZ1c/43gk+jSwwwkeEiQUJL/cmFOecUVtxIchRUA7KGZNoa7WAu
         eaCBr5yIvNclqic1nbCONh7L/p3OLNXrRcwrF+0729Q88YFJX+2qZyva8eDd2BMG7Qby
         qUWg==
X-Forwarded-Encrypted: i=1; AJvYcCUhOeaNnQnyeCKnMMJ8+neJ+7c2hktQsoC4qNOlh+eH6qcdIj+lEMk0lJjSS9liVnJSzN8J02iEO8u3@vger.kernel.org
X-Gm-Message-State: AOJu0YwI34MqnOJ71ORFb4hF4VlH6aw3IAm/cQnJ09sVHVBFnqj7tmj2
	CT/vCSA2DMh7tcTEEokHg4qgb+sR/9QkULoF8xDr8ySVetRLGFvEOsONdmPOz18=
X-Google-Smtp-Source: AGHT+IHfZS4g8MTE1WLtwwQiDfsSzfQjcyzq8KaqPIPnfPd3Ox0b4I0TLEYr65leOuEDGiV0yu8G0w==
X-Received: by 2002:a05:6830:3155:b0:718:186a:497d with SMTP id 46e09a7af769-7181a5dc591mr9990344a34.5.1729531182096;
        Mon, 21 Oct 2024 10:19:42 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7182ec03211sm836933a34.67.2024.10.21.10.19.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 10:19:41 -0700 (PDT)
Message-ID: <f319c8bd-1edc-451b-aeb2-27ec529267a3@baylibre.com>
Date: Mon, 21 Oct 2024 12:19:40 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] iio: adc: ad7606: use realbits for sign-extending in
 scan_direct
To: Alexandru Ardelean <aardelean@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: jic23@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lars@metafoo.de,
 michael.hennerich@analog.com, gstols@baylibre.com
References: <20241021130221.1469099-1-aardelean@baylibre.com>
 <20241021130221.1469099-4-aardelean@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241021130221.1469099-4-aardelean@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/21/24 8:02 AM, Alexandru Ardelean wrote:
> Currently the 'ad7606' driver supports parts with 18 and 16 bits
> resolutions.
> But when adding support for AD7607 (which has a 14-bit resolution) we
> should check for the 'realbits' field, to be able to sign-extend correctly.
> 
> Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> ---
>  drivers/iio/adc/ad7606.c | 24 +++++++++++++++++++-----
>  1 file changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
> index d0fe9fd65f3f..a1f0c2feb04a 100644
> --- a/drivers/iio/adc/ad7606.c
> +++ b/drivers/iio/adc/ad7606.c
> @@ -568,7 +568,7 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
>  			      int *val)
>  {
>  	struct ad7606_state *st = iio_priv(indio_dev);
> -	unsigned int storagebits = st->chip_info->channels[1].scan_type.storagebits;
> +	unsigned int realbits = st->chip_info->channels[1].scan_type.realbits;
>  	const struct iio_chan_spec *chan;
>  	int ret;
>  
> @@ -603,15 +603,29 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
>  
>  	chan = &indio_dev->channels[ch + 1];
>  	if (chan->scan_type.sign == 'u') {
> -		if (storagebits > 16)

I think it would be simpler to keep this if statement for choosing
which data.bufXX to use since there are only 2 choices.


> +		switch (realbits) {
> +		case 18:
>  			*val = st->data.buf32[ch];
> -		else
> +			break;
> +		case 16:
>  			*val = st->data.buf16[ch];
> +			break;
> +		default:
> +			ret = -EINVAL;
> +			break;
> +		}
>  	} else {
> -		if (storagebits > 16)
> +		switch (realbits) {
> +		case 18:
>  			*val = sign_extend32(st->data.buf32[ch], 17);
> -		else
> +			break;
> +		case 16:
>  			*val = sign_extend32(st->data.buf16[ch], 15);
> +			break;
> +		default:
> +			ret = -EINVAL;
> +			break;
> +		}

We can change this to:

	*val = sign_extend32(st->data.buf16[ch], reablbits - 1);

Then no additional changes should be needed to support 14-bit chips.

And similarly, we could avoid the need to use the more verbose
switch statement.

>  	}
>  
>  error_ret:



