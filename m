Return-Path: <devicetree+bounces-171440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEE9A9EAD6
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 10:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5403B177569
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 08:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E724C253F02;
	Mon, 28 Apr 2025 08:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="EsQk/SKZ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10059D530
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 08:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745829202; cv=none; b=EFP5kXrN4WBZu36DS1u13ln96ouRAH8lhiEbyOguufbEHIT4gNauAHd8sfAVDrnKSy8/0E9l2qBtaP0KX4dkoH6TVydHMA+wDh8sVuKrEFBm7r27p4bFtTzh11oEKH5MZ2HDTF86PihrvF9hjh9dQKsEJDIaUaF9SIfie2f6EXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745829202; c=relaxed/simple;
	bh=pJ8O7gTrYUeWwxuWTIvgNyTjTeTs5VMSdWV0Q7CbJaY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dym3OhgDoSQFqRkzzRJE4DHbZwd/DgL1Jbqo89ZY37cIOvbbbAq4UwqQz9As8A7oUoGS0VWmVquQLFx473lS8H7Tf4VyhfmmNh/o1yFxjHdz6Xu4C71M8Qr/Ai1Xp3n1Mg//UZFh+yXzB4dxZc/XrvlDfB6GluXcHAZHULm83o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=EsQk/SKZ; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745829199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LGcvqcUvkm2g9wzS683vHLZvM4pUfmU6Vbf587HsfpE=;
	b=EsQk/SKZ38k00dPOn5NLYISR3yv8FK0FmKsqbJIyB2AKRyAzOf+AzquIpYVw2zkwJQPDwJ
	sJR3RoHVsLr3Rh4/OYLQfrQzmMD5ZcC6aT+1pRuuPl//3aop4tcNNt2KNSrM+zFXKgtQlR
	Y/f8ZVscnahdNiY2TSKQWwffgx+Cvqw=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-652-wEpSifScNfO9y4NhXDeZ0g-1; Mon, 28 Apr 2025 04:33:18 -0400
X-MC-Unique: wEpSifScNfO9y4NhXDeZ0g-1
X-Mimecast-MFC-AGG-ID: wEpSifScNfO9y4NhXDeZ0g_1745829197
Received: by mail-ed1-f70.google.com with SMTP id 4fb4d7f45d1cf-5f525f190adso2843794a12.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 01:33:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745829197; x=1746433997;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LGcvqcUvkm2g9wzS683vHLZvM4pUfmU6Vbf587HsfpE=;
        b=wZTtuV0xcG9CWtSng8kQVrdIzk7WJ/gt4mb6W60BoXjltqP4nQ3S72dmHQDoo6Qv4f
         sJiYGx5+F75cOYJbCstQWUj5NVf2QuuC6jgei4N5y93GM0JM8LIYNdJWMG6Jv0fZ9ER2
         f5V85+I1mwx/Rtqd8zth1sXXJfHgYJf2lOJOdony4a7CFWjXwakZ6fDgkSpqQCrvxBWn
         WNwuhkLVDv3H7Dpb/BN43COIrOnPEVooAySuDzncS0kMOiAVy3am4R/evQxYHIHrndnC
         o7/2wDRZFQcK/d9uqgftEDpN1EaxY28HbwbVFuyFw6Bq7+5Qe59nWs/lj7GU2vRCIlqv
         egpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfKHqBuzRxg9z7wfHT0ZbOi8eJ1iaBGbyCa5waptWZGNTKBSJrUWrC4+rOjZ7eBrp91SyqUAFOFoEx@vger.kernel.org
X-Gm-Message-State: AOJu0YzCcixLwRKh58ftJopBY7gdjHmcPTyestkYFJQXAaJlVMrdqYCr
	2lFSnMOEBTo7h3Tq0q6kjfl6WOaSzPJXXXpLu0g1TZD6XVu7tui9a9qJBaYBNpJzJ5Q6ZflKvHG
	Dy6PU/NG6jcoLbg3l3S0O82gZTJ4Qdkv5RpbkPs0sVT+0nxySm0DW8BG62fg=
X-Gm-Gg: ASbGncsM8hWtRJR/MxQATsyS+325hwqzE4nU9IylMnk3RItOJ6bJZkYz4pB/VzxjgFX
	7b/45fw1SdOD7UUz7SE4BR/SvKbC9gzJUVQ2GMvqZxOYKeu9YI0GG7NtfChCHkVbyKDqwcIAINT
	Oy9Ptis1+kE0tzi/+EAiygPLRjENLzuhZlTLmzVK+r7/M/yGqPc1pHb2S/K8EGXZM8+ZDo2DbNg
	bZniUsT6xkperFwd4C78qwRF9XfTIWbmdYDLxYYa7OnMK0YRr+W3bcEhRpOwV9gOlREw5YyK7L5
	phhSJMRNJBTwbts=
X-Received: by 2002:a05:6402:1ed0:b0:5e7:b015:ad42 with SMTP id 4fb4d7f45d1cf-5f7398433aemr7803773a12.28.1745829196878;
        Mon, 28 Apr 2025 01:33:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnQGf5p3Imb0SlRCtdMs61uLPDDIs2q+uuHYQl1CCgJCkHHSa0Rk4MkuYWgz4wW7ho0OyaDA==
X-Received: by 2002:a05:6402:1ed0:b0:5e7:b015:ad42 with SMTP id 4fb4d7f45d1cf-5f7398433aemr7803759a12.28.1745829196464;
        Mon, 28 Apr 2025 01:33:16 -0700 (PDT)
Received: from [10.40.98.122] ([78.108.130.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f703833c66sm5480374a12.75.2025.04.28.01.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Apr 2025 01:33:15 -0700 (PDT)
Message-ID: <e9bafdd2-d84a-49e3-a221-36088f3c753b@redhat.com>
Date: Mon, 28 Apr 2025 10:33:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] Input: goodix - Allow DT specification of missing
 reset pull-up
To: Esben Haabendal <esben@geanix.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250422-goodix-no-reset-pull-up-v1-0-3983bb65a1bf@geanix.com>
 <20250422-goodix-no-reset-pull-up-v1-2-3983bb65a1bf@geanix.com>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20250422-goodix-no-reset-pull-up-v1-2-3983bb65a1bf@geanix.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 22-Apr-25 17:15, Esben Haabendal wrote:
> In commit a2fd46cd3dbb ("Input: goodix - try not to touch the reset-pin on x86/ACPI devices")
> a fix for problems on various x86/ACPI devices where external
> pull-up is missing were added. The same type of problem can exist on
> device-tree platforms, and the fix can be activated by adding the
> no-reset-pull-up device-tree property.
> 
> Signed-off-by: Esben Haabendal <esben@geanix.com>

Thank you for your patch.

> ---
>  drivers/input/touchscreen/goodix.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/input/touchscreen/goodix.c b/drivers/input/touchscreen/goodix.c
> index a3e8a51c91449533b4d5185746df6b98676053dd..3a55b0f8e5132a5e1fe77bd27de74e058a4afdaf 100644
> --- a/drivers/input/touchscreen/goodix.c
> +++ b/drivers/input/touchscreen/goodix.c
> @@ -775,7 +775,8 @@ int goodix_reset_no_int_sync(struct goodix_ts_data *ts)
>  	 * power. Only do this in the non ACPI case since some ACPI boards
>  	 * don't have a pull-up, so there the reset pin must stay active-high.
>  	 */
> -	if (ts->irq_pin_access_method == IRQ_PIN_ACCESS_GPIO) {
> +	if (ts->irq_pin_access_method == IRQ_PIN_ACCESS_GPIO &&
> +	    ts->gpiod_rst_flags == GPIOD_IN) {

You can simplify the check to just:

	if (ts->gpiod_rst_flags == GPIOD_IN) {

that will work for the IRQ_PIN_ACCESS_ACPI* access_methods too and
nicely lines up with the gpiod_direction_input() on the next line.

Please also update the comment above the check to reflect the new
situation.

With this fixed, this looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans





>  		error = gpiod_direction_input(ts->gpiod_rst);
>  		if (error)
>  			goto error;
> @@ -969,6 +970,13 @@ static int goodix_get_gpio_config(struct goodix_ts_data *ts)
>  	 */
>  	ts->gpiod_rst_flags = GPIOD_IN;
>  
> +	/*
> +	 * Devices that does not have pull-up on reset signal should not be
> +	 * changed to input
> +	 */
> +	if (device_property_read_bool(dev, "no-reset-pull-up"))
> +		ts->gpiod_rst_flags = GPIOD_ASIS;
> +
>  	ts->avdd28 = devm_regulator_get(dev, "AVDD28");
>  	if (IS_ERR(ts->avdd28))
>  		return dev_err_probe(dev, PTR_ERR(ts->avdd28), "Failed to get AVDD28 regulator\n");
> 


