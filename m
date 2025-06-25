Return-Path: <devicetree+bounces-189538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F4AAE82A5
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 14:25:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F05A116EA46
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 12:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE14925DAFF;
	Wed, 25 Jun 2025 12:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zCxHVwCk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77BB3595D
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 12:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750854341; cv=none; b=My4td3rN6k1A1OD2d4zlRF8PFZjtv6dGLQDGsu2qRpmMpm+uBsnyk5wNZ6hrH9F9EUyBGGIoz+xiTNbZnW8aV5BnIPlY11VhcX4deabNcfhpBI933h4bgZh3fZeT2FNgCamRNPMEvdT7+vvG5ECrqsLHRBMHceNALTP6agJqPJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750854341; c=relaxed/simple;
	bh=//cJ1R+qXYIOQavXZE+0EfDVpn3NcjvwbOGFUZ2/Vwg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bgHJLTQDMmvzF+tOPbq7yGvGPzKIwiA0jKtvT9G9htyxtJhxIhO4apEcL0kAq/5dbJzirLxBWkOdvc//dwUUrle1ZkmSo3ODCK2kGszD+YeelH5thR7wTW7cJC9aYPXdGzXFiTycuT0oMGB7KobS9TJFkMkCq7n6vsoOpSajJdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zCxHVwCk; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-453398e90e9so44039985e9.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 05:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750854338; x=1751459138; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0jvdYN44TiNs68JwW8S/yVlosf8CSUIVEdttnuRdhms=;
        b=zCxHVwCkfaQ4LHLv/3m74JXelo22PY+sC7dDVAXFHMHi1jCqWTrOazh3mDuUo0WLdi
         VDA+OMfjFf0yFpkS7qy8R0XmLME78CjlPIqS0b+mD8BjOukDLADEj9xg3WhWJlrIwNFq
         zfWMDKtpwn48ui6gBlIHDVTZmdkaVR3HD8ESjAxZsuNWpOeeWhiJTjqLGi0d7ouHsncu
         ubVT6+xrJxEp+ztXLPD6HxxxNGcj3sJh6ZSmuCX8QMCIXtEoZXXbNwnef6g4Mh57rF2i
         iMgerkqPi6NPV6ZDXB8vjzALmL+495xt6ZBF7UdkfNuftyrIAPwkQJGcdZRZ0cJWwjF9
         1qIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750854338; x=1751459138;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0jvdYN44TiNs68JwW8S/yVlosf8CSUIVEdttnuRdhms=;
        b=Mgl7rIaZCzZgPoJWEynTvORGim3q+kUHU2cy0lIAI82rwTbR8Es/e3ZEQ/ZkweI03l
         JEKCTrG+p1dYaOB7P6/yDIlxA/27ciYiimkbCqsGmymCHVTRv8hSpO9bGcHs+IQ0Bq9u
         Qzn4IP0nAiaJPMquwMHeBJ4gLAhrPM1N9lsSSQGd1+zvZQ7gGlvGhAQVKTzgynAPr1fY
         SX0MOHX8zA2dCX02GKNhZL9EozPlGVYiwbXJKYXqwMEAHGh5EDA5TqQQ0XvaSSMeZHv1
         AGmXOvfeEx9s4hwY6CSgtq2i8jZ7VpyZFT0cHoGrzTUTJW4Y6u90K6oYFRI98IZJ8yPy
         FDXg==
X-Forwarded-Encrypted: i=1; AJvYcCWrmMzg80BdIVYoUbRb3QtDqQkd8aMgm3yUB4vy3V25UG6vwtWp7EZzKj0T70try7c7EYprfo5WGll4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0xzeFyLr/LBwXALGOOSu8IpmwoK0rU/OkFyqvFwIORuhkOWmZ
	z92PuNJ7UwqYA/WWY9ovlf6uUoorxIAB2eHi/FhHoVuL5lgiNEj9YbrxsQcBUZFqk94=
X-Gm-Gg: ASbGncuonPabovUulBcAsuHg4gFztEd9ES8Quit+Y+bTwOG6pxIS+Sx7z/kop1zPNSY
	G80SXkma5bW/N1MKZpjZwAXn4ytiprf/IZfZAYvl4N9jSqcJHmlh95KM+Nky0ofM9cu8jp8ZmlY
	6t+9Ul012Hgy6SEvDezLqoCs3ssWPsm6z4GOFVFBh19SvbvjcilpsHrbsa+7TOfN1Veg8G70Fdi
	EjmyNanNT5B2fuFBKWnq8fZbRzwgiKNwncdhvX0Qhduw8zMU51Fj2OfOAE2BvEdHpDAzfYXWlPb
	FCy1Nt2s9QCfEA57Jt+4Rc6BmzKOQRQ2YoU+I2IeVF8CVMA9dEZm+SjwIeakLomgHtT7/oD8ba9
	fSRmlHRgcYZ9a5z1edZroJUtZKQ==
X-Google-Smtp-Source: AGHT+IFext7dCx/qknWBCJpjQqXsjhcdgrzm4hickPzaUez5YIOyJ1vzQGCH42r2f1t3xxF9+iiC0w==
X-Received: by 2002:a05:6000:4615:b0:3a4:ef30:a4c8 with SMTP id ffacd0b85a97d-3a6ed5e9bf6mr2043160f8f.10.1750854338131;
        Wed, 25 Jun 2025 05:25:38 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45382373c6esm19046175e9.34.2025.06.25.05.25.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 05:25:37 -0700 (PDT)
Message-ID: <44062b00-8903-49e5-922e-aed68c377c70@linaro.org>
Date: Wed, 25 Jun 2025 14:25:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC] timer: of: Create a platform_device before the
 framework is initialized
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, lorenzo.pieralisi@linaro.org,
 Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Rob Herring <robh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Arnd Bergmann <arnd@arndb.de>, John Stultz <jstultz@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Saravana Kannan <saravanak@google.com>,
 "open list:GENERIC INCLUDE/ASM HEADER FILES" <linux-arch@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>
References: <20250625085715.889837-1-daniel.lezcano@linaro.org>
 <e557503b-ccd5-46e2-b0b6-e8db30ad0ac4@linaro.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <e557503b-ccd5-46e2-b0b6-e8db30ad0ac4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Bryan,

thanks for your review

On 25/06/2025 12:20, Bryan O'Donoghue wrote:

[ ... ]

>> +
>> +    for_each_matching_node_and_match(np, __timer_pdev_of_table, 
>> &match) {
>> +        if (!of_device_is_available(np))
>> +            continue;
>> +
>> +        init_func = match->data;
>> +
>> +        pdev = platform_device_alloc(of_node_full_name(np), -1);
>> +        if (!pdev)
>> +            continue;
> 
> Shouldn't this be return -ENOMEM;
> 
>> +
>> +        ret = device_add_of_node(&pdev->dev, np);
>> +        if (ret) {
>> +            platform_device_put(pdev);
>> +            continue;
> 
> Why is this a continue ? you can get -EINVAL and -EBUSY from 
> device_add_of_node() - can/should you really continue this loop after an 
> -EINVAL ?
> 
> Understood for architected you want to keep going and get the system up 
> at the very least I'd add a noisy message about it.

Yes, that's correct. If we bail out on failure, the system will hang. 
The platform can have more timers which will work allowing the system to 
boot.

It is expected to have the driver probe function to print a message on 
error, so adding one message seems to be redundant.

If timer_probe() fails to initialize a timer (the number of initialized 
driver is zero) then an error will be emitted.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

