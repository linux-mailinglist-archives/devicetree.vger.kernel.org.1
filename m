Return-Path: <devicetree+bounces-71869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 096818D8460
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 15:50:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5FF228126D
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 13:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2574612DDAD;
	Mon,  3 Jun 2024 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LY23QUHX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63ADF1E4A2;
	Mon,  3 Jun 2024 13:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717422634; cv=none; b=MHwtZ62vtkinJF65iqPj70Apx9xmBHG4PDsummOgQNBCrXS7OkYGlEAVLofR2WtWljcGaPTN9/GOr00gXba5H7QENi4/xkDEhRRvFcdlRjxz5RxRSm0kfCl1MlhSrh1v/pL8/cmg4GJz4hMyAmzyUCRHSYZGPqPo9/hzOnWhkA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717422634; c=relaxed/simple;
	bh=LCJNSFqEq3dz62hlfokIOnLsynVSe7kHYefXH0ET6cg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E1NtxO7f/uWx27EeqORWlZN45ho5UIl4yl3Pui16SC0UTXnr7oivjfFpvvwWrlEAEIYQ5PvPhqUfQFjTR+6wa1Gb0R9kDeoV8kmTS+tT4kVymCCntQ1HJnmnwfgu5qSBtnAGsg0ykA80bL0FOoLtRyi+szzP/r5wwCxolBb7lqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LY23QUHX; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-6818e31e5baso3506580a12.1;
        Mon, 03 Jun 2024 06:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717422631; x=1718027431; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Vw5HzUSP019YCBVB6sJncB2VAMcHIKn0f7kIhdN9Esw=;
        b=LY23QUHXDhnM4sRn9ocmFq9GID66c4Mfv4Zoc0QZ2tYbjlCEkd48E7nOZw049RdvIo
         iG+ugYtBXsCwLBXuLhYXKU0w7Ge8+WSYhmHXo9CM6imQVKMooYM46ncbKpcY4xmJCsB9
         +OiVEYpCvOTEZzMbkRKD3mW94uDkrmTvLOC5FRfrXDLOdydBFxpjddIqPNHpF6aOkxAe
         bRfLz+5d+KYwS1drqLQ8KE8SDlvBG/e0xmE7QPY0+p+VX/nw3hxWdotlKq6izIlIfI6m
         wM42TrdrhhHeHBBRIxWJS6YW8bnXiMIP1Y7iQdJewaIr4y04i+YwTd7ppiuVN4i/Pxe+
         K7jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717422631; x=1718027431;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vw5HzUSP019YCBVB6sJncB2VAMcHIKn0f7kIhdN9Esw=;
        b=tKagfsWJQKqOQGsFczXH1BcSaHZTQS2M1oOPxzvbr8OwCLtqhDBVvBPbtwtHO62IgA
         8GUob9SyZC/TbQBbj8Noc05A3rHPnnezBo1b4xlKQ14sd0BX2IVYrEUS02JJeY6SlpTr
         78pTrcwSJoJHIUQAyt88+OR5XjJQSeDJV5QaBHs42rajsyNn64bbettV6jYRaywYgYrD
         2u7NVQSLk0WgPve9FQZTlucJvkLZ1pRlEs68VRkfl1IOEgTBy+zSNDhnAy0PNUVELgJn
         GojDN7fGk/IKgCpx6REqaW5Rp4A+rk8HW7pEOltmyH4t0nhgCRTmKrMvWMTcXQ8BCd0t
         QKew==
X-Forwarded-Encrypted: i=1; AJvYcCWT/O9tUuDq1ofK68Pn5CrXM90j6OC/kPAc/mNfIw0+7P+2XDRx+qsbknZxtqEhfqvPbksIPpNM6Mc+ZGXQJiQwk7WQY6aBoMMiavinx1JONM0Ayt7haqKdkdvZhpIi4byJ+3crAc2+tsc=
X-Gm-Message-State: AOJu0Yx8nkYV11z8dhnPACJ7HmzFIoJxbzNMmvZBZhnzYYCwivsBWVbt
	IAqJQlY/pg5xgVDYz7HFBfmROw/0BQ8PDNFPgwvv3FRtN7AHC+QT
X-Google-Smtp-Source: AGHT+IEHDTjxE4DQTJ3GWjCF734j0Xlo8Op8cInHbQTaQa34LVGXnFBZzb5xHIxYbOL6Aur/w/o2dA==
X-Received: by 2002:a05:6a20:7284:b0:1b2:1de2:7dfa with SMTP id adf61e73a8af0-1b26f1b5be1mr10914111637.22.1717422631415;
        Mon, 03 Jun 2024 06:50:31 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f63232ddabsm64701325ad.28.2024.06.03.06.50.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 06:50:30 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <caa69460-f515-4b61-9289-4169fa14396f@roeck-us.net>
Date: Mon, 3 Jun 2024 06:50:28 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 3/4] hwmon: (spd5118) Add suspend/resume support
To: Stephen Horvath <s.horvath@outlook.com.au>, linux-hwmon@vger.kernel.org
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Armin Wolf <W_Armin@gmx.de>, =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?=
 <linux@weissschuh.net>, =?UTF-8?Q?Ren=C3=A9_Rebe?= <rene@exactcode.de>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20240531230556.1409532-1-linux@roeck-us.net>
 <20240531230556.1409532-4-linux@roeck-us.net>
 <SY4P282MB30638F9B99B76CB33DB6C115C5FF2@SY4P282MB3063.AUSP282.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <SY4P282MB30638F9B99B76CB33DB6C115C5FF2@SY4P282MB3063.AUSP282.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 6/3/24 05:31, Stephen Horvath wrote:
> Hi,
> 
> On 1/6/24 09:05, Guenter Roeck wrote:
>> Add suspend/resume support to ensure that limit and configuration
>> registers are updated and synchronized after a suspend/resume cycle.
>>
>> Cc: Armin Wolf <W_Armin@gmx.de>
>> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
>> ---
>> v3: No change
>>
>> v2: New patch
>>
>> RFT: I tested the patch through a suspend/resume cycle, and it seems
>>       to work, but I am not sure if that had any effect because,
>>       after all, the memory is still active during suspend/resume.
>>       I was unable to test a hibernation cycle with my system.
>>
> 
> For me, the driver just reports 0°C after suspend/resume, but works fine beforehand, tested on both my desktop and laptop, with kernel 6.9.3 and 6.10.0-rc2 (on the laptop only).
> 
> Hibernation does seem to work fine though (at least on 6.9.3).
> 

Thanks a lot for the report. I can confirm that this happens if the enable
attribute was not touched before the suspend/resume cycle. I'll send another
version with the fix.

Guenter



