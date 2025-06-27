Return-Path: <devicetree+bounces-190376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B9DAEB913
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:36:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B44D51C42720
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D404E2D97B5;
	Fri, 27 Jun 2025 13:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rboZDMuW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3182D9798
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751031404; cv=none; b=Ewrmubjt7Kza+xMoSjPmrvs5T3XaP/6kWg/2cAKI439dzqoUkepe6oKmDhalZOu+yzVAcwfKNKCQCx3KmGP3L2RokIWgDU8lkSxFyZ0XJF+D4pab6M3Jnw6QLeLVK8PCHkEwlaB8PAhJG6VwFFrpGbjQz+1gYLqUZ/jlmLCn+ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751031404; c=relaxed/simple;
	bh=fk+HBAiRPVdgGsHsF5qNIsiflq+XoguW2NtWdyg8cgg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LNQkD9rF4GPEynWGJtnU8xOVdQ1KDYpTQurBuvyjTJ8ptim9MVW7moN/5sqz3rPwILm0LIefvYvDv5Z2HF95IHZ2fKBnLQx5+m+J95KQfRco1Cz3bBIL0vTY0KxJZpxKRctvJ1WWJXjKNdxsRsJ00Fi8OuWQClNSMUM9tQQzU6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rboZDMuW; arc=none smtp.client-ip=209.85.166.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-87611ac3456so68374739f.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751031402; x=1751636202; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XfiJnZdQRFrCAW+w9heCSHyeWa3Z+YlU9j/j6ABGxx8=;
        b=rboZDMuWGH1edkinpn1mbrXlNFB4mh1CE6QzDJ8PMsXs2KPxFKTkkmgi7HdVQPEArs
         EEZ3ekcWmdawzlOllhGppgtWfHyjsE5r3T6jthdHHO7hoGCVK/db6B+629tho8zUpTOK
         hT7949ZMamxuejP0P3OnjmWF/7gjOfDlzcONKP3hCzd+bn2l6qgAHOWxdxMlM+Rk4+gy
         xh6ZfWhqLxNIgntS4Kxy1SsBzBDGoUDzWnK39FIuxmLSsyPx1VdP8j/q0MutQQQA8Rmc
         Phsf5eUIyqQ8r8DiwE7Cm5WQ0e5o0V5k0Dm3WHZV3Wcp/jbZInux7yU3CLQ0JM19svoR
         2vwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751031402; x=1751636202;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XfiJnZdQRFrCAW+w9heCSHyeWa3Z+YlU9j/j6ABGxx8=;
        b=rCw7VscSfia+jVfio15EG1k10O0LF9OHqV9iw5Ha6plYsDNZ43qMm/2OAKqae2aeHg
         CAcqdFDkII1JQ4UaiupCLhFmGse/aMHkTJBUEm4OgwKzpttDIqXth48tPIRRVFFo/ZCl
         1pjvPauY/1pdM19QGEk/Tv1bOc12ElkK3bJxZRdiotNSI4qVNkSYP6SmX81lVjkeTkU0
         MbtP0biO6FHU5Uf2JQhJX+QefphLtjEz6UEeViIZrEDA9pgMiwe8eaEbC6dXh0uQTPd7
         glZVm6PvZTKbZ1M2l+WNehZYR/XFn6bYaiojLB821Ii5fKO+kSn3XKjyglzaBd+fdB+s
         4K/g==
X-Forwarded-Encrypted: i=1; AJvYcCUBDw08GS+1GdLu2XXb28Ob5ANII+vwYXYQHwr8WNwkbJvVrwOIFx2N/7lrNEGEP9L8yYN28ByuIJ2y@vger.kernel.org
X-Gm-Message-State: AOJu0YxvgYQqOg8jZLnauqF+aqot8iWuIguKZkxUw/hOjdhRZlfl/6jA
	DbMZRdW+at8i0rMyHJpvCQm3sRbAxTqRpCpQqvyVgO/r/y1DFmqIp1X7ogp+JVFhqbA=
X-Gm-Gg: ASbGncsbZi6SPiX3LM0gmKGbNUKvVxvOP+ZyZY5z/MlJA3dxmIfASBP8zEocwKC38rU
	etL9Q7KDnfry8D/Q5KB9drd2QeMCyT0NeK5Jbt2pnA8WfXN7Srqr6Hab18y/2PIE3ajSxT8Z5Ez
	IsrHDqGrFxppJKm/1SBCUMqGRPYBCePUDjMBlTe2rUXJMUPTtiBHnQxC+tLdSjyvGJk4FUIH+lt
	JSzk4sHhAnskjIYsOd2HfQIy5KGKxxakv12t2/9Cmnt8JH7B1DX91xAxYBrU6OaG5aO9GMjLHP8
	Pbc8+RWIEx2SB2eXMtX4BtWrJja4+F9kLHNjA5yVgVn/8OWoD/DI5vk35GSOX9SVuClnpoylt/7
	3LXiaMAg/I7MdhBC8FD4hCaBFHQ==
X-Google-Smtp-Source: AGHT+IF1O8tzv2KWCzSl21OTyig59TTY0gf7CGovzXL+B16wQcpv5kKezeVDaVnpkiTgGZ9wCICGDQ==
X-Received: by 2002:a05:6602:2dcc:b0:873:3691:6fb8 with SMTP id ca18e2360f4ac-876882cb88dmr404639839f.8.1751031401882;
        Fri, 27 Jun 2025 06:36:41 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-876879f3584sm46791339f.9.2025.06.27.06.36.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 06:36:41 -0700 (PDT)
Message-ID: <0eda5bf4-ce63-43da-9c2f-7d4ec902758c@riscstar.com>
Date: Fri, 27 Jun 2025 08:36:39 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] mfd: simple-mfd-i2c: add SpacemiT P1 support
To: Lee Jones <lee@kernel.org>
Cc: lgirdwood@gmail.com, broonie@kernel.org, alexandre.belloni@bootlin.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, mat.jonczyk@o2.pl,
 dlan@gentoo.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, troymitchell988@gmail.com,
 linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250625164119.1068842-1-elder@riscstar.com>
 <20250625164119.1068842-3-elder@riscstar.com>
 <20250627125119.GF10134@google.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250627125119.GF10134@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/27/25 7:51 AM, Lee Jones wrote:
>> @@ -93,12 +93,30 @@ static const struct simple_mfd_data maxim_mon_max77705 = {
>>   	.mfd_cell_size = ARRAY_SIZE(max77705_sensor_cells),
>>   };
>>   
>> +static const struct regmap_config spacemit_p1_regmap_config = {
>> +	.reg_bits = 8,
>> +	.val_bits = 8,
>> +	.max_register = 0xaa,
>> +};
> Suggest making this more widely useful by adding the 'max_register'
> attribute to 'struct simple_mfd' and conditionally overriding
> regmap_config_8r_8v's value during probe.

So you're suggesting I make a general improvement to
"simple-mfd-i2c.c", because everybody else just uses
the generic fallback regmap config?

(I'm asking because at first I didn't understand your
statement, and the "more widely useful" comment).

I would be happy to do this, and it's not that hard.
Can I do it as a follow-on patch though?  It's adding
scope (again), beyond what I anticipated and honestly
I'm ready to be done with this...

Anyway, if you say "no" I'll send another version of
this series today.

					-Alex


> 
>> +static const struct mfd_cell spacemit_p1_cells[] = {
>> +	{ .name = "spacemit-p1-regulator", },
>> +	{ .name = "spacemit-p1-rtc", },
>> +};
>> +


