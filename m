Return-Path: <devicetree+bounces-220596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D42B980E8
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 04:11:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EAC919C7CB5
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 02:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889DD21ADA7;
	Wed, 24 Sep 2025 02:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c/0F5IW2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE0B218AB4
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 02:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758679870; cv=none; b=fB5m0X2hZvRHR5Suxkyc+gTNKkWp3ocisEu7uVJtKpY1zA2RiEDH5rTVWIRXRV7pymT0NwvT7aOoCT75qpAE2IDgSTJg4x9pfCuu1vfzA/j4fJiL+mfpNupMGatGgENKVX5lxBT8vjMec6rflmx0l2GimeS3uj6/Wyz8XzUDqyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758679870; c=relaxed/simple;
	bh=OYiasxquy8Ze2zIJBLJFSCiZmNRsfanuS7kvIdTNk3Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UxbzUPRKPyEg7wXtRK7bhOS+QDPZdlebmj9f6+hNv8HZ/nmhiB/csxEUWZTuLoFAF4B73sCQnl2SgFar1I3YE614udpav3tWx1YKFGftBRzMZLoqAfcrVYwLx/xob5PIZYN2qtKa0qi/EelkBTWrs0AbYZz0ZC+DZmHvX8bQVNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c/0F5IW2; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-76e6cbb991aso5224079b3a.1
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 19:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758679868; x=1759284668; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jp4tyt8gueRX0+NdIoVvSA3V+6xnYgJd59pm1XSI/N4=;
        b=c/0F5IW29tYvc1Su84TjDWmLCHdK2cYqtVfsrKDA09RkwIfEjUTJY4/95hQGxUiOI5
         7XA4+EKQ0ymhDN7WsfrfunZrg0OCNpmoQpOg7MEq9AI52+CAhQSXFkpVPc0d3BBfyS7b
         LZZRj54xIGZ7u5v2KU1C3QaorYrajPAvgGDgW2+zAm6r2a+o+7BiMhda/TiYJGfEDABY
         2k0GX+hQNG/t+ibDNGUxfdRxgz++e4EjaxrUv/jAJna918PDXWFSwGpO7dKckv0BgpDR
         9llcpk8EyZWgmZbe1c1WBjZH+U71ZAveiqKMPJFO5d/7zPOuZkjMi3RNgL5rwXPu5CXL
         lCog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758679868; x=1759284668;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jp4tyt8gueRX0+NdIoVvSA3V+6xnYgJd59pm1XSI/N4=;
        b=gwrDGf57pA8r5ldH+FSgY6Jw0mwZXEV0k65r+1Q3ouqUUHTko5ZgaC9rehPD18MzHA
         FI2o5x5vQO8zO+y/9w3ydrUx87TK4nf6VfLnH9sVJpm4h+FUF23RUcGX+a4OF+toAnwm
         ZagPMxdjc/xIx1W9h1zBMmMxX+lBvjQC+cyPGXx2H4NoK+T5war0sGbrSsNSIGTyV2YJ
         uBe9KBXpa/KXi2rRftLRqf2094rC5AsXplmLNutt8hylhbEkYBB8tiz/WCNxine/XvXC
         r8GcL5EAIrV19Z3E3qjUoWb6L06YfyaH6hNHQhWOyK73TzPJ2ZbqbEXapRS1SYDTJKqI
         PFpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVW1fUa+tkYF3hCT66535O8PVYmW72S2hGGflm40MC+o2qKhoiMrM2HP3THxREVQJQ2inSstDWIILAR@vger.kernel.org
X-Gm-Message-State: AOJu0YwKan9xCVcwq9YyEmYqQzqVs7i6DvUKbXkRtF76IDas/PHiG2kG
	NqOeXO/J1gzS9zzLUr0m8b90ZsdBF8cpfLL2DjeQ9Ul5qou+vKwdjWG+VHb1WhYu4W4=
X-Gm-Gg: ASbGncsDR9NoCWERGgqFqtiv5PTI/+dgCrUnl+HmawijwJnLBg1wV3sw5f/6QAZe0As
	IxhABAzu1h50lRvK/z6XGlOQ0tY5jI9ADWEK8JrLgSudOpewq3U6+Dzda4LKTl1jQD2xByABwDz
	vSijhHWMW+AD5fT3lMMls5YFc3xfgDPSC/25nrz2PKQR9Q4vhAomBQBzhu1/vQUtQFWwdClE8Fu
	nxdDUlKPwXe5XKGVeNEe0FPEVa4dvNwLx1cnG9CFf0TnJexOD1MD3WHgKpvhbs+denSSpos9y+f
	zHm6RcUnDkdd6Azieu/Hf7ydtAfgHwegn5WZetuIr4zZY74FjdDKTIAsg7kVkJWwO0eYnu6d+aC
	e6xZX54PEADcTyjQUDVbvBDuhbTZRLxvRoQLdxhBHJ4JNmk27q9PoEYJP04Htofv+PJ68Klg=
X-Google-Smtp-Source: AGHT+IEdFXMgXTqkh1Xek0/P5pNvl6O05dXWKTzDiYECiFGYEuAs7Qzt3hnDwDnBc6w/OXNClh2Gug==
X-Received: by 2002:a05:6a20:e291:b0:24d:6501:b49c with SMTP id adf61e73a8af0-2cff367b751mr6975746637.29.1758679868125;
        Tue, 23 Sep 2025 19:11:08 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b554aa612e7sm7168822a12.8.2025.09.23.19.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Sep 2025 19:11:07 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <a97486df-9f15-4280-8cb3-d77f4cf223df@roeck-us.net>
Date: Tue, 23 Sep 2025 19:11:05 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for Microchip EMC1812
To: Jonathan Cameron <jic23@kernel.org>,
 Marius Cristea <marius.cristea@microchip.com>
Cc: David Lechner <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, jdelvare@suse.com,
 linux-hwmon@vger.kernel.org
References: <20250917-iio-emc1812-v1-0-0b1f74cea7ab@microchip.com>
 <20250920123340.1b1d03be@jic23-huawei>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20250920123340.1b1d03be@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/20/25 04:33, Jonathan Cameron wrote:
> On Wed, 17 Sep 2025 15:21:56 +0300
> Marius Cristea <marius.cristea@microchip.com> wrote:
> 
>> This is the iio driver for EMC1812/13/14/15/33 multichannel Low-Voltage
>> Remote Diode Sensor Family. The chips in the family have one internal
>> and different numbers of external channels, ranging from 1 (EMC1812) to
>> 4 channels (EMC1815).
>> Reading diodes in anti-parallel connection is supported by EMC1814, EMC1815
>> and EMC1833.
>>
>> Current version of driver does not support interrupts, events and data
>> buffering.
> Hi Marius,
> 
> For a temperature monitoring device like this, the opening question is
> always why not HWMON?
> 
> There are various reasons we have temp sensors in IIO but mostly they are not
> described as being monitors and this one is.
> 
> IIO may well be the right choice for this part, but good to lay out your
> reasoning and +CC the hwmon list and maintainers.  There is an emc1403
> driver already in hwmon, so perhaps compare and contrast with that.
> 
> I've +CC Jean, Guenter and list to save sending a v2 just to do that.
> 

At first glance it looks like the series is (mostly ?) register compatible
to the chips supported by the emc1403 driver, so it should be straightforward
to add support for the emc180x series to that driver.

Guenter


