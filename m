Return-Path: <devicetree+bounces-244126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA485CA18B6
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 21:23:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CF30C3005681
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 20:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F9472FF657;
	Wed,  3 Dec 2025 20:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nLWE2uSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A61312810
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 20:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764793395; cv=none; b=MGd13U9BnWlB0Junkzu0PbgDyuUlTRxbmgFr+/b39QEGxi0JV43TZKOTpNxkf0SQYkAe/EHG/eCXQPEee/sO+EmHKDj0030Jfhc3BeiFHBIK/vf++3AP0S47I3CHcjFvSTEhOrqvti5ChF+F+WvVCuF0Fme4DZHJKQZPelzSafc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764793395; c=relaxed/simple;
	bh=io2SxxGF8RuQGVJttfCZrQUaiyFjgniVx2tyjXRcN1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ldtQni1HXWe6a29nxU92/LfTtrbkI2q4VQGuyRjdveFBJwPYGzeFjrjxD/dZVKqYxr02k3TSBDvPAZ7iiyTRLWi8LryvhR9hSW6KnIaJO4n4idCIXYdDvGXcX/WtCRpHyZ1t9OYoO9mQ7f8qhF0vf9AzlAQ5+wBn+LpCMXvSqfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nLWE2uSs; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso2240445e9.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 12:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764793391; x=1765398191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=la5DY+nye5Y4WsEMXBxzYTG6S0M/hvXAkvJ3L0NdBQ8=;
        b=nLWE2uSshFXL6ovI9cd5G4crvnsigqxpDExkT7wiPxgAZpAh4whP2+KhyTGX0S0UbA
         k+5So+F1qIIUOMRfcJwdTjjwTFzY2d2D9HcV0s11Kew96ofwx/E1cipODsstbQrHg1xm
         3Wbk7cwiRThF92rLUUcWG0zk4BDqraTBQwVttBQ3jEGluu9SNIzGdWg9Gs/QzL6Lbspd
         q1sqcj/mnbeTw/579/WxELAmiWRn8dzdRL37BKuy5OeA/IWxwxG40YgrIfKGHEeXWDo5
         +gqsCt8CrWKyXjVsccg+kJSfqv2E6KiNVx+iwKVwHi88nA1BJoAw6RqaxH5VCIxCQp5A
         taIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764793391; x=1765398191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=la5DY+nye5Y4WsEMXBxzYTG6S0M/hvXAkvJ3L0NdBQ8=;
        b=tK9ZBKJmjUk2wUTC7M9qO6DVnDV3iqctgd+arbolkh40h3Z0MRNyp9mL1chv04oqXP
         W4k7rdqHJ1RnYGgyY9g5y4BvsMMZS4iSFDne9tu3nlOZCvcHxNzkNxGYHLETpXIpFKnZ
         XbSJ5VsRA5RWsOezrEQ//fDTZccNCVaijHh5wMRcmiZHTxaErmKoTprX5mzG6tnNzNcI
         WXW7dW5kQcn4lLpoAcsTDoEWD06XHji+tjtw/TfT5sLWDNZSRIwpxCDDPsKbZVhxUaEI
         Rb1RfzfEyAo3rCVlKEB4dgBi0HKM7KL9G8gPnIa14W1SrCjXfJElEqtaj7Aa8xXBXZ6d
         QauQ==
X-Forwarded-Encrypted: i=1; AJvYcCWy50Ncs0LveCqPX0iw10Wy2uU1o15iNVZsO0xDVWbHSUM3jDImOBjyKLN0WPnosAGnH+OMx19r7msZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyiKPvAlYbvVvEcIqs5ySE4o0q5rgjt5TFv3xOSgdMRFga6pLUI
	dYkB565LsfUWiYryHMy5yzRIQal8XbhedYieXcYAQJy8G9hcuYqK1tw=
X-Gm-Gg: ASbGncsNTjQeyKCPVvnJh+MqsLeUQ3fndmB5iaC5Tb3be7i4foKjcoygVOU7TQY8Giy
	p+cL/QPwNZ/FKzLNXnKT9SLMGn7NzSfqwfd+EFkqN3vuG+BHNyaOwW09akb0a5+sgnq3iZRt/Zx
	UmwYnhhxWWYhHxy9U9oG8nrHFe+5eRC6JQVJGD/rd7N9hk6RUqtSAf9iFok3xcp/eK5Yoz6PMhV
	V8jxMBUzwgi3XYRn6HgRCl2JHmIXbfdQJ67vBdNmWG+daLvXlLiHAPFvskegIgGwQMprmeCFQUH
	84fb8HJ5iJ4StWDK+DSiLr6SgKUNoH6bdM7KqB5El8/yAqVkfE4xPoRZSTGX4u3O3UjcLhdPdDc
	E7G5GEGOqErQjmd3RBJm6V7Nf/a6L/qrUZg8NsRAjCUDS4l2ZGgIigYWT49TKMmxqRsqjm0mWJH
	u8WGYtUAXvLIFBvUMW+NmBEkr7OM8ERYuR5E+sTvXioyJlrz36ti5HdQuAzu9yiclZTCU=
X-Google-Smtp-Source: AGHT+IEpGSW/EFraUJRRr3A4U1L8grZ6drN7sy7XuL6+qwvpsW1qlvzAiO5Upxd981TrT5V2Ub2FOw==
X-Received: by 2002:a05:600c:4443:b0:477:9b35:3e36 with SMTP id 5b1f17b1804b1-4792aedfbf4mr38189915e9.2.1764793391265;
        Wed, 03 Dec 2025 12:23:11 -0800 (PST)
Received: from ?IPV6:2a02:810b:f13:8500:3079:1d24:47d4:553a? ([2a02:810b:f13:8500:3079:1d24:47d4:553a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792a7971c7sm68875275e9.2.2025.12.03.12.23.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 12:23:10 -0800 (PST)
Message-ID: <f0df035f-3c3d-4649-9f48-3e8e2e69d17b@gmail.com>
Date: Wed, 3 Dec 2025 21:23:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add SPDIF audio to Beelink A1
To: Robin Murphy <robin.murphy@arm.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250828164300.3829488-1-christianshewitt@gmail.com>
 <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Robin,

Am 03.12.25 um 17:21 schrieb Robin Murphy:
> [ Just noticed this... ]
>
> On 2025-08-28 5:43 pm, Christian Hewitt wrote:
>> From: Alex Bee <knaerzche@gmail.com>
>>
>> Add the required nodes to enable SPDIF audio output on
>> the Beelink A1 set-top-box.
>
> But the A1 doesn't have S/PDIF? Only HDMI plus a 3.5mm jack connected 
> to the analog audio codec (and possibly the composite TV out) :/
>
Yeah, sorry - this patch wasn't supposed to be submitted upstream.

Regards,

Alex

> Thanks,
> Robin.
>
>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 23 ++++++++++++++++++++++
>>   1 file changed, 23 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>> index f7c4578865c5..b276a29bdd85 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
>> @@ -58,6 +58,24 @@ ir-receiver {
>>           gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
>>           linux,rc-map-name = "rc-beelink-gs1";
>>       };
>> +
>> +    spdif_sound: spdif-sound {
>> +        compatible = "simple-audio-card";
>> +        simple-audio-card,name = "SPDIF";
>> +
>> +        simple-audio-card,cpu {
>> +            sound-dai = <&spdif>;
>> +        };
>> +
>> +        simple-audio-card,codec {
>> +            sound-dai = <&spdif_dit>;
>> +        };
>> +    };
>> +
>> +    spdif_dit: spdif-dit {
>> +        compatible = "linux,spdif-dit";
>> +        #sound-dai-cells = <0>;
>> +    };
>>   };
>>     &analog_sound {
>> @@ -325,6 +343,11 @@ &sdmmc {
>>       status = "okay";
>>   };
>>   +&spdif {
>> +    pinctrl-0 = <&spdifm0_tx>;
>> +    status = "okay";
>> +};
>> +
>>   &tsadc {
>>       rockchip,hw-tshut-mode = <0>;
>>       rockchip,hw-tshut-polarity = <0>;

