Return-Path: <devicetree+bounces-95089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD25795807D
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:05:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AA472854B4
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 08:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FAE617C988;
	Tue, 20 Aug 2024 08:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n3DlwWdz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006B3189BA1
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724141143; cv=none; b=cmukIcTfMYE6U9Kc4cJhRz4eMXqV7DCEq8aEF1PonaXMfAWT9iQPeYGT6gaq0OOWBzoHWQwmWMMDKvJT4zlQO7lThjW2HcM02IqIOPSXSk5Hx+9AryPhv0ijD/BJ7sUV830zyPp41erjZPaq1UlQo/b6vI3Ql5p4IJEYK5EUWPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724141143; c=relaxed/simple;
	bh=EHd8RNwJxQFBJ9k25QBZN2pksAWvbgMik6YMrlwPCX8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eyjWEBfRE+MArB4oyLy0+JQEUfBqVCbbYYuOg/vcFR+IeVjfWDkG4CibAp4FHAqCShyfT8QpRKrQGJS0cltFnPjfHGUHS2/MbiItsJ9grAc0L2OaMQmF2CzhVDNtHFz6zYqMZNPXpuNPz7zFDXgUQHvF+nuROaSdQw/Zhl1/yNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n3DlwWdz; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-428e0d18666so40811335e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 01:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724141139; x=1724745939; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YUrBtVd9BLV5NodOKrgO2/cphE/4UyWw8eXELeGJ9WA=;
        b=n3DlwWdz3P2dwFKrVCNdJLPUEBVM1uVvF5qfAfv6El0k5hlw3elS7dRlTAm5ZYLyLf
         uI5b7s60V3ZIugCkZF17zXd0t+iC0+8bm7LX49XJMI6TB0uRofLlJTYS5/cEZ8jzDJcs
         nSBTI7+sMoOuTDntb0roPiFd+IzHcucFOUMw3ELmKvdF3NtxvMg4s86GJaBHkELC4mzc
         WBWqUYwiRo1qTHp4LiX+c8ptoJclgohAkjoDk0k9zPcbUgL1V8P/UnzRdHuj89/a4Zxr
         +Nsf3hc7A2erInmwXwRaHapeLlSOXGejRZQngHx8bVdq9/lrQq/vYNdmoTbfN1XuEaQ1
         I4sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724141139; x=1724745939;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YUrBtVd9BLV5NodOKrgO2/cphE/4UyWw8eXELeGJ9WA=;
        b=ku4aaA+7dlFp1E2fZS3IMMMSBUHu9+TEz1cLkiQzXoCrEYk8U1v1MCkIzCHNEJFpgu
         Rm/GOozpHsS2YrC6kzy3uAe8Hd1L1C0QH5lXxJ9PBa2Bioa8QkoQwn4lsuYAeFjZAGxY
         UA+UGkliQnuK4uJzwuBSKBUPKAyUKErzdxxcvFp9D24DqxLQtgNKXcvap86G5+VlDG/7
         YRppnrMcg368BPg5fcR7HNPJKpsByItADzNFURP4t9ckYfqvxA+LCvEw9aIXOQBiIDSj
         m/2dLWyPAO+FC8jfwU8W0nLkvR/cLvdb7s2y5BnpvAHU8vfjMlqzdDZYFWMmKTQ/O6L2
         1jTA==
X-Forwarded-Encrypted: i=1; AJvYcCU1XoDe3LUsfIy+YUxU4ULqXKCZ+m1Dwc9ayQcg2Dkj5ICUxBJbz2HXDy8L+25uvnUj3IrZJ9c9fPZ3fjDySAKcRd5x0Qc010IDOg==
X-Gm-Message-State: AOJu0Yw1x6OW5p/zlwvFaCFB1VK6Zf0rkSgX7wpY2ZXxBfhgDJjfraoV
	tyj2Lnu8OJ+BTZpZzfkDHj7VOriMPYahrSpjWj2Ijktz4rVYVHgp28c2486JBz0=
X-Google-Smtp-Source: AGHT+IEeE1ef7g/ycQmCjSQj8MBpZAH2kJ9KOcQsu0ftfibRwdYkeus8X/03YczgKnaOrugc4fW/bg==
X-Received: by 2002:a05:600c:138a:b0:428:f41:d467 with SMTP id 5b1f17b1804b1-429ed78900cmr93821075e9.10.1724141138716;
        Tue, 20 Aug 2024 01:05:38 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-429eeadfafbsm131877645e9.47.2024.08.20.01.05.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 01:05:38 -0700 (PDT)
Message-ID: <c1722b7e-9378-454d-84f6-3f9399224cf8@linaro.org>
Date: Tue, 20 Aug 2024 10:05:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Add thermal management support for STi platform
To: =?UTF-8?Q?Rapha=C3=ABl_Gallais-Pou?= <rgallaispou@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Patrice Chotard <patrice.chotard@foss.st.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20240716-thermal-v4-0-947b327e165c@gmail.com>
 <85eedb28-c02f-40ef-9d65-e8689b3f7dbd@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <85eedb28-c02f-40ef-9d65-e8689b3f7dbd@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 19/08/2024 22:21, Raphaël Gallais-Pou wrote:
> Hello,
> 
> Le 16/07/2024 à 19:34, Raphael Gallais-Pou a écrit :
>> This patch series enhances the st_thermal driver in order to enable
>> support for thermal zones. The changes include:
>>
>> 1. Replace deprecated PM runtime macros with their updated counterparts.
>> 2. Implementing devm_* based thermal of zone functions within the driver.
>> 3. Updating the stih418 device-tree.
>>
>> The device-tree patch depends on an earlier patch sent to the mailing
>> list [1].
>>
>> As it is currently implemented, an alert threshold of 85°C is set to
>> trigger the CPU throttling, and when the temperature exceeds the
>> critical threshold of 95°C, the system shuts down. There is for now no
>> active cooling device on the platform, which explains the use of the
>> cpufreq framework.
>>
>> [1] https://lore.kernel.org/lkml/20240320-thermal- 
>> v3-2-700296694c4a@gmail.com
>>
>> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
>> ---
>> Changes in v4:
>> - [2/2] optimize dependencies
>> - [2/2] do not return devm_* exit code
>> - Link to v3: https://lore.kernel.org/r/20240714-thermal- 
>> v3-0-88f2489ef7d5@gmail.com
> 
> Gentle ping on this serie :)
> 
> Thanks for your time,

Applied, thanks

Thanks for the patch 2/2 ;)

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

