Return-Path: <devicetree+bounces-165067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5CDA8342C
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 00:47:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAF053B20FE
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7F021B90B;
	Wed,  9 Apr 2025 22:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="lYh6Jot7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C1C11E5203
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 22:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744238854; cv=none; b=jUvuOeVPI9SaMevC0vEl1QejTTinUSDN27qcTI7Z7REU6TJexmcjynrgTNMgtNwfyO4CGszhvDSYytJcZtZRT/oWzQdyVpavZiMiasB2r/lCjtDhupXeWWswfh8/5RE3YauW/AsZ1jEn+X01EpPAZQ+GCd/rprVPRFrAqdepTu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744238854; c=relaxed/simple;
	bh=oNLYs8RldHGiV+Ttyc4FGdeq7MI4/Y2X5VhBOa6M9dA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FFXQ+Ta9Vc7tXuNoxHvkyKGTHxmOGSJNM+m1qo8/4Hr3Yj4Jlwjl348srb8wLvnsNn5+zyoUOSqZAfEnA6nDOR0gp8kX+RSlA793Nu+VKB4aV2gA14NxovFwM9kCIC1R769G7XaXtBEfnJ/cAQpVEIw5pxcCK5vXQMCUzNElKSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=lYh6Jot7; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-855bd88ee2cso7570239f.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 15:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744238851; x=1744843651; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yVcdr20nWkY3wqDgMeVyQ5I/xgJY//hgFMEqnYMOHQU=;
        b=lYh6Jot7xtAEYFEk/Nm3AxH6qmrDKvDY3NKQ0163dIBVDhTzyWQOMRsfrxZ4YXzm41
         vv6DlFupb33ssqLgOG3D6Sq1OvceFcnnUzLGOz2HYywQWQy6LzfAMticsQvPC3F31PrX
         cazy7KBywB73bNXza1vQr72mU11nCIneCAISxtkjs9SNySrIVOvpHxcm6brRqYonqLSG
         Qc2q9l8MYq4hht9hNiynrvCJi5E2JZtJDEgR4MBZMVU1aNagiUGdtVLiTVAe4tFwQhck
         fFPx8lLie4MbmEkXyTWybS9icCKJMK9TobjGUSlWutO1lu0ZZ6I0I3Xusy82bH1RJ/zx
         Eevw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744238851; x=1744843651;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yVcdr20nWkY3wqDgMeVyQ5I/xgJY//hgFMEqnYMOHQU=;
        b=EHBK/MMoG+dmyV72VatMXQaDujKMPGYwVE6Pak+QH8EuQBPw41j7wcsqjdDPQbHTQv
         VkGjOgufx2kwXAFSdd7h8whUO+1xNn8M5Fbpc+pAfByIFHr4TX8GuHKBVeIht1/J98+q
         rGP8l/cO5a4EWelI9tOtOOq3ed7PsI34SKoiBXo9Fjp4HZFjolVBX+0QskxjUFKFScF2
         ug0fEwqij8vmW2/W41FzdnJQoJgNqhXmhb/QqtV7eJ+dEwEv+tQP4tipMm3e9Jlzd3EB
         Y26Aat883mO9BVKRQtnQTgKF5AnsZb9KTRNpD5nUiC/Pxu7eLUX359QBln13zlVGoTqq
         GuXQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6RLjObXvvjhKLRQrwSTiAhNQ8Lp8XBEt8VnvtbC/SLLXxrSP7dZ+6WswTVGgp4TZT5pWB1WvirVZH@vger.kernel.org
X-Gm-Message-State: AOJu0YyaL/jnQlCD3w4zwf0i2xw/z5FxSDQ6GlziIOfL+CxkRKh728Df
	MCCoN/NoGooyIvQZ23Pv0qmH7XueGbNGy4i6Q1W/a7VeZTkk+wRrUTqF2K7I8AQ=
X-Gm-Gg: ASbGncs56Wv0Fl0PK5zgppgkqD4uM9IeRB+zV/cdlhhzNojnY7hQlko3v8XUhDaSnpW
	UbQlqyk+FwM05q+1CzhDYDzmwoP0gqv03H8FCCMz2TEMhm+ojpZYMPFDFEmwyxVULMPjFjjxwKp
	PjIN7Qt3M1Pc23NoZ4orYzOv2gGCOS2tPaZ7z9jsscDdXskA//HhiRxHXShCR+ylIX6SAnINGAz
	4EIMVjmbRwMEf51zhW7F7mTu1yH8eC8SxKT8Hw5kZStBxDbBWoV+DnTUjxNmSt0llk11370kUwe
	zDZOhCRAfkYkXZMmtHAFp14eC5AnUuri20pIqZUp5yFgeZb9sC74xGV38M+U789aVic0s1lnFGJ
	AyGzG
X-Google-Smtp-Source: AGHT+IG6GzcOAqS71lWGBgliY3BflDHFXTzjPUW02nvTUPuHcgKnnG0i35pjn6+lhawWiv/PEkLKdw==
X-Received: by 2002:a05:6602:481b:b0:85d:a173:323c with SMTP id ca18e2360f4ac-8616ed25521mr77175039f.8.1744238851471;
        Wed, 09 Apr 2025 15:47:31 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e7da54sm448971173.140.2025.04.09.15.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 15:47:31 -0700 (PDT)
Message-ID: <04facbe3-cd40-4d79-a204-2b91880da331@riscstar.com>
Date: Wed, 9 Apr 2025 17:47:30 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] serial: 8250_of: add support for an optional bus
 clock
To: Yixun Lan <dlan@gentoo.org>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, benjamin.larsson@genexis.eu,
 bastien.curutchet@bootlin.com, andriy.shevchenko@linux.intel.com,
 u.kleine-koenig@baylibre.com, lkundrak@v3.sk, devicetree@vger.kernel.org,
 linux-serial@vger.kernel.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250409192213.1130181-1-elder@riscstar.com>
 <20250409192213.1130181-3-elder@riscstar.com>
 <20250409214345-GYA19066@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250409214345-GYA19066@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/9/25 4:43 PM, Yixun Lan wrote:
> Hi Alex,
> 
> On 14:22 Wed 09 Apr     , Alex Elder wrote:
>> The SpacemiT UART requires a bus clock to be enabled, in addition to
>> it's "normal" core clock.  Look up the optional bus clock by name,
>> and if that's found, look up the core clock using the name "core".
>>
>> Supplying a bus clock is optional.  If no bus clock is needed, the
>> the first/only clock is used for the core clock.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>> v2: Update logic to more check for the optional bus clock first
>>
>>   drivers/tty/serial/8250/8250_of.c | 11 ++++++++++-
>>   1 file changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/tty/serial/8250/8250_of.c b/drivers/tty/serial/8250/8250_of.c
>> index 11c860ea80f60..a90a5462aa72a 100644
>> --- a/drivers/tty/serial/8250/8250_of.c
>> +++ b/drivers/tty/serial/8250/8250_of.c
>> @@ -123,7 +123,16 @@ static int of_platform_serial_setup(struct platform_device *ofdev,
>>   
>>   	/* Get clk rate through clk driver if present */
>>   	if (!port->uartclk) {
>> -		info->clk = devm_clk_get_enabled(dev, NULL);
>> +		struct clk *bus_clk;
> we also need to handle clk in suspend/resume procedure, so
> I think you need to put bus_clk inside struct of_serial_info..

OK, I didn't do anything for that in previous versions of the
series.

I think that means we'd call clk_disable_unprepare() on
the bus clock after doing so for the function clock.  And
clk_prepare_enable() on the bus clock before doing that for
the function clock in of_serial_resume().  That's easy.

Is there anything further you think is required?  There is
no clock rate associated with the bus clock that I know of,
so even if the function clock rate changes, the bus clock
can remain as-is.

> 
>> +
>> +		bus_clk = devm_clk_get_optional_enabled(dev, "bus");
> for the 'optional', we can interpret it's optional for other vendor
> UART, but a must required clk for SpacemiT's k1 UART controller
> 
> would it better to guard this inside a compatible test or even introduce
> a flag in compatible data?

I don't personally think so. We could, but the DT binding is going
out of its way to define when the bus clock is required.  This is
simpler, and generic.

					-Alex

> 	if (of_device_is_compatible(pdev->dev.of_node, "spacemit,k1-uart")) {
> 		bus_clk = devm_clk_get_enabled(dev, "bus");
> 		..
> 	}
> 
> }
>> +		if (IS_ERR(bus_clk)) {
>> +			ret = dev_err_probe(dev, PTR_ERR(bus_clk), "failed to get bus clock\n");
>> +			goto err_pmruntime;
>> +		}
>> +
>> +		/* If the bus clock is required, core clock must be named */
>> +		info->clk = devm_clk_get_enabled(dev, bus_clk ? "core" : NULL);
>>   		if (IS_ERR(info->clk)) {
>>   			ret = dev_err_probe(dev, PTR_ERR(info->clk), "failed to get clock\n");
>>   			goto err_pmruntime;
>> -- 
>> 2.45.2
>>
> 


