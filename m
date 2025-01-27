Return-Path: <devicetree+bounces-141227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 263BEA200D6
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 23:46:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77737165CFA
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 22:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811FD1DC9B3;
	Mon, 27 Jan 2025 22:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="M/IK30QO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A13F1990B7
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 22:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738017983; cv=none; b=GHLiafOtleHdtMYK1Bw0Dcy0nJgHVDQqwTNFc7SGe4c22iQXsOPkk8eVerXLkEuHoXPPsgGrGy/Y75FXAghAic1Gvtj24EXie9UsH5ZVTG2X2F+qQJwcSC+JPBXsYPeofVJox27WJMailDImkjmXyq2zQqyv4btgBrk4v2InptE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738017983; c=relaxed/simple;
	bh=TL6ix5Jd4YZkMFQZJvrHPcvBCtELUKRUX9Ewr+Ak6zc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JxhwnhflgxUAahUxcvPkNUylGr1VIe8GBblwkK2CtA47PkAjnx2bYiGoCcfl3DAKEgR38Fgo6RAoOuGf5iTxYjcFCZh35q5LfJkWYgHtOvwXbPVP0N/quw/RK+oq1snioCihJrTc7TVI6CTzhixzKfrEhFZzb3NMwOshnpdlL90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=M/IK30QO; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5fa2a2bdde9so1119096eaf.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 14:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738017979; x=1738622779; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GN7epJb6kPL5GnwOif+YIvik/vnwU971oO3M9RsRo28=;
        b=M/IK30QOj7z88rvufHTpstDsCio2cnCI2xbOHcq4YsiJetrbZOtROCbOwefObDxCus
         EAcdXQn43omWrJafbzEyuBukbWh2w94OpRyj1PHHuBkd77mbRsQ0GDz5Ud/yQ6W7dL/+
         GkrTYFnopMtgGZI/ZPs/NnJg/BakXj0x9SJDDmI3k52vqPBTANoD3WPJzMeDn6kXxoAK
         0gWdt0eddetYyqaHlI3AamatNOU8RzvvBPv4xbXAdOlXq85adQVK/82qDCGWHAh35P/+
         0Ie9nMP38XdFylPlyqmhOkZJ5qS2pIT/1eAZAzbCNrjJj3zGNdv3QR/1raql5B3v+SlG
         7YLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738017979; x=1738622779;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GN7epJb6kPL5GnwOif+YIvik/vnwU971oO3M9RsRo28=;
        b=Zv6JnwbV2TfIJA0XfSalslu/KKHdAZABw5jwyzBX5rjeyyRHTz5Tk71mbYZTtQmkNF
         eXvtqnK50fqPTGpb/D+QBoEriNPPUUh19Kh5R6SWJlEs/WbAvKcVEzmTvV4lClbbCFsy
         EtjNfkpkMN37RSq99SNdOrsodpCPtsdgwnp9sr0GChTlRorDviYzOFddKRv7t25uZX0k
         vnQmg3TrnYwt6vJO+FNdqWmoM5geKHuQ9eOqwadY0t7e8MhbYTM5SNTWrBYVIyZkqUua
         PVabFPyR5uyxhnqejrdaqx9EDX44jUiG9WkGC4syt+b+tZK4d7ytQ5acQA/71fkc4TyC
         LVkg==
X-Forwarded-Encrypted: i=1; AJvYcCX8ZCBleYA+9qg402INtB34xJJzgFagVCQSDLkhv+tsuJDesiTi+hu9nUNeEwD/qpDg2KZDZ/n3ph/V@vger.kernel.org
X-Gm-Message-State: AOJu0YyJcs8LNu92IHqtBXqPjBpCYg/Rvq9HRBD+4cFEIzmVutuR/sCf
	p2GbrXSXry8hd43CghMK9MFICKqLjzNgoVRZPHxFDbxns2mJmkdXqjAKungcmTWZYO6rpMwLNub
	L
X-Gm-Gg: ASbGncvEZPaUNUnR/qYaiuV5sDx+aKFpg6Rqiiy+xd0Y3S4PY0SMpmaAERGsxVw0oPu
	JjDy5db7pPP65d+IdMJkftsS3AqLMz7DBdBZJ8czlj8JZeODkk8l+/mLhHSrMPcT0ToeFUxZQP5
	Wu1hJK9RVgOdhP3EdJSNHlu4BCfU/eISQ0Anbf4gLmTpd9xtfrRbYf9NxpV3/GhEVXrdnt2/pWi
	TyHR+DiiQluebQ17iCuqvZ+0JzvC4CCZW5jL/hLTepgXniuQicd3h+foHhQlEUX2dNz3gbKOEmo
	qewcpXqvfCLTNHjWsMUFClVdj0fZtaAO62aorEx+6g==
X-Google-Smtp-Source: AGHT+IF8Ge5d9gQ9QysqTcZJLOBCMrr0ch/XmoPITtji0GkXQNbkP8LBAT3amNh6s/yyDouhPUb+Sw==
X-Received: by 2002:a05:6820:1e0b:b0:5fa:2e20:a371 with SMTP id 006d021491bc7-5fa3876111emr24438260eaf.1.1738017979415;
        Mon, 27 Jan 2025 14:46:19 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fa8b9b8fd3sm2519790eaf.40.2025.01.27.14.46.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 14:46:19 -0800 (PST)
Message-ID: <b8c68fef-3427-4617-989d-20529d9293dc@baylibre.com>
Date: Mon, 27 Jan 2025 16:46:17 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/16] iio: adc: ad7768-1: remove unnecessary locking
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <df331cd681feb756d06df4173f67f75ec655bfb2.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <df331cd681feb756d06df4173f67f75ec655bfb2.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 9:13 AM, Jonathan Santos wrote:
> The current locking is only preventing a triggered buffer Transfer and a
> debugfs register access from happening at the same time. If a register
> access happens during a buffered read, the action is doomed to fail anyway,
> since we need to write a magic value to exit continuous read mode.
> 
> Remove locking from the trigger handler and use
> iio_device_claim_direct_mode() instead in the register access function.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v2 Changes:
> * New patch in v2. It replaces the guard(mutex) patch. 
> ---
>  drivers/iio/adc/ad7768-1.c | 23 ++++++++++-------------
>  1 file changed, 10 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index 17a49bf74637..5e2093be9b92 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -271,16 +271,16 @@ static int ad7768_reg_access(struct iio_dev *indio_dev,
>  	struct ad7768_state *st = iio_priv(indio_dev);
>  	int ret;
>  
> -	mutex_lock(&st->lock);
> -	if (readval) {
> +	ret = iio_device_claim_direct_mode(indio_dev);
> +	if (ret)
> +		return ret;
> +
> +	if (readval)
>  		ret = regmap_read(st->regmap, reg, readval);
> -		if (ret)
> -			goto err_unlock;
> -	} else {
> +	else
>  		ret = regmap_write(st->regmap, reg, writeval);
> -	}
> -err_unlock:
> -	mutex_unlock(&st->lock);
> +
> +	iio_device_release_direct_mode(indio_dev);
>  
>  	return ret;
>  }
> @@ -495,18 +495,15 @@ static irqreturn_t ad7768_trigger_handler(int irq, void *p)
>  	struct ad7768_state *st = iio_priv(indio_dev);
>  	int ret;
>  
> -	mutex_lock(&st->lock);
> -
>  	ret = spi_read(st->spi, &st->data.scan.chan, 3);
>  	if (ret < 0)
> -		goto err_unlock;
> +		goto out;
>  
>  	iio_push_to_buffers_with_timestamp(indio_dev, &st->data.scan,
>  					   iio_get_time_ns(indio_dev));
>  
> -err_unlock:
> +out:
>  	iio_trigger_notify_done(indio_dev->trig);
> -	mutex_unlock(&st->lock);
>  
>  	return IRQ_HANDLED;
>  }

I think the lock can be fully removed from struct ad7768_state  if it isn't
being used anymore (and remove mutex_init() in probe()).

