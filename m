Return-Path: <devicetree+bounces-277014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGSGCzVhumnFUgIAu9opvQ
	(envelope-from <devicetree+bounces-277014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:24:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 356A52B7DBA
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:24:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CC0AB303999F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210A737AA97;
	Wed, 18 Mar 2026 08:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FqIcieVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B99737AA90
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773822133; cv=none; b=Uj1tYg/OvzXkjt3qv1q7jUJVGVmPGTS9JUfEdoiWr7P7I6V280/p1atFN4yPvXWWpHLx2cD+Ew2AAFxLFeTVwaIPIC4dnvcKVK1m/iIt56Ddr5jo7JKENz1Oav5RdvDkLOn1KVvCXMtx5cE8kQLGHl90yaCHzzIcJ9scvJaMQGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773822133; c=relaxed/simple;
	bh=oJSoMi3V8/F61rssIwlhY44NtZXSZpuIJGKYgzPj99E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fmo4vIQBni7HZwmqmlEaG0v5mB59dni9ABecnCTFAF9GlGKwQdMImUc1wEUTCwS19DwWdkv+on6dRNgAxGNqBN2BMgvpc689VLtnmOEsCshpABJ7/G57cFLROzj2I+Riv/9Hun5b3m2jCFVldQGB1hmiSFfNWPe7gtME86F5al0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FqIcieVh; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b97905516faso542945466b.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773822129; x=1774426929; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MllRuJ1dEVjv0be6UtMae3kHWnAqjx2IN2CP9qVrdfM=;
        b=FqIcieVhPG5VZQS2ogWmt3owUIHy0fRnD01aUXbzWF5dXIlnrb1j33hjvtk97WZd9K
         FBBJp1XFgthfRkHk0ma1Ur+Oaj42Bh26B+wTROsxZ41Luk9BQbXYXRHooiFdjESb7OXi
         mpcsND0clEgAGBQHZNjZQETc7JOKBunlFxL6274dZX3k2aEYxLqSs5zZycPh++5X4n1D
         7NMnpqAB36tuBfJmwANPc5K7S0T29IQIJZ1ukVECc1DMBqDupowb4XpP6ddgbzvpOsse
         kKF7gMPuPd1yfCEdqsqeSHC0H5aokaJXZqlP59v4IW72Wq8VkZBLvkg+S7athcDfS6he
         hfUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773822129; x=1774426929;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MllRuJ1dEVjv0be6UtMae3kHWnAqjx2IN2CP9qVrdfM=;
        b=oP7nbl5hSwvAZ7QJsUuxllV/pQDwBwSlJ/8t+9sNLhJnD226Qe++CXze4OtdL7g8Xi
         CAtgFCvoFYJOskaMrcy5zgS7Zrh3TP8oUTPe+K174dqNxmISW7O+yVx959XiSui9d694
         QdyfWpMjC6vPj3PTydGuDO+fDpESybCkDgkN1nezYsS0+OEJyso/i4RmyU853ipNJPlY
         8SziIaeTTu9qRjuDR5gnSUQYSd3TNH66wGMH08yZtViOTr9deE2D1PVy1jDLhiq1T5Ms
         K91Xk0uAJuX2nywvgxMeK2OIVcHrOTIosLYOobGMUUQCePTZmX9O/VaX68AcPqyUAa6z
         RDYw==
X-Forwarded-Encrypted: i=1; AJvYcCWwtxXVL3HIHAVUTtaIAN5D9Z0NP0I8IA/nD7dAjmb5aiWpqypTHfrRwgSd69kygdaL6zXI7IqC2ASv@vger.kernel.org
X-Gm-Message-State: AOJu0YzZRQ4dRWcEiXqAHN3iUcnAMk+D4xS9ZJ0y/WezDwseIDKeRjKl
	Qg6uqxh13LmfjOrY0PpFM5levt8TqD5lnvxqEzCsApsxlvwS9W4+dVNzxtTy1mGf
X-Gm-Gg: ATEYQzydMYRQ3uLtubHBKM8IxbHG0zGxKCPLjTcPJeJRhAL4KLkw0cq+xL2abxLhGgh
	xp684EkvDubaP0YcPKj0p0nflnIijTa72NbUPfpnHNOEU+HKHkiDvJ3+Y7bFEiKkzoxGFchXoYu
	UrSqebsEZsG1PRK42Zm7A7mjU81Z4wogc7HKJ7XwsGNXRdZjLKjpfFUGyz1Fsx3g+A+LUg3r9L7
	8A4OOaDKWKGcX1KY6SJBdxD2shanaOy+O4435Ub7pEgZMEZ9/PCi8AWChlKJaajXrWxIe0luN7I
	Nu2o4ZsSyX1Jyx5Rqwo8pgazNd85PvlqaM2fyhQjoC/y6IljOga/RYmHh73+zYc0ScCMXTRHttN
	S89dB82X6sZsibEPvITMPvXn6xy77EhWBletsXRd4K6ST/DMxW0yOlkDTph1NjFRIiiGZTMErd/
	68Q26ZtLVMi9lQ8n8ZBNdh9Jza4xHcXes5O5Vv
X-Received: by 2002:a17:906:fe02:b0:b97:810a:1a8e with SMTP id a640c23a62f3a-b97f49b4725mr140830966b.24.1773822128278;
        Wed, 18 Mar 2026 01:22:08 -0700 (PDT)
Received: from [192.168.1.31] ([178.227.200.173])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f142a785sm160656266b.14.2026.03.18.01.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 01:22:07 -0700 (PDT)
Message-ID: <da1efced-189f-4480-84f5-168233a79b55@gmail.com>
Date: Wed, 18 Mar 2026 09:22:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao)
 DTS
To: Val Packett <val@packett.cool>, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260305093941.305122-1-zstaseg@gmail.com>
 <20260305093941.305122-3-zstaseg@gmail.com>
 <356110cc-699b-4a6d-973c-403d2e29630e@packett.cool>
 <168615a6-615f-46cc-b126-4780fec34ecd@gmail.com>
 <4b91b06c-2a88-4e6d-81db-0a7bb4972e1e@packett.cool>
Content-Language: en-US
From: Stanislav Zaikin <zstaseg@gmail.com>
In-Reply-To: <4b91b06c-2a88-4e6d-81db-0a7bb4972e1e@packett.cool>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-277014-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 356A52B7DBA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/16/26 9:47 PM, Val Packett wrote:
>
> On 3/16/26 8:57 AM, Stanislav Zaikin wrote:
>> On 3/16/26 5:05 AM, Val Packett wrote:
>>> On 3/5/26 6:39 AM, Stanislav Zaikin wrote:
>>>
>>>> Xiaomi 12 Lite 5G is a handset released in 2022
>>>>
>>>> This commit has the following features working:
>>>> - Display (with simple fb)
>>>> - Touchscreen
>>>> - UFS
>>>> - Power and volume buttons
>>>> - Pinctrl
>>>> - RPM Regulators
>>>> - Remoteprocs - wifi, bluetooth
>>>> - USB (Device Mode)
>>>> […]
>>>> +        vreg_l7b_2p96: ldo7 {
>>>> +            regulator-name = "vreg_l7b_2p96";
>>>> +            /* Constrained for UFS VCC, at least until UFS driver 
>>>> scales voltage */
>>>> +            regulator-min-microvolt = <2952000>;
>>>> +            regulator-max-microvolt = <2952000>;
>>>> +            regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>>>> +        };
>>>> […]
>>>> +&ufs_mem_hc {
>>>> +    reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
>>>> +
>>>> +    vcc-supply = <&vreg_l7b_2p96>;
>>>> +    vcc-max-microamp = <800000>;
>>>> +    /*
>>>> +     * Technically l9b enables an eLDO (supplied by s1b) which 
>>>> then powers
>>>> +     * VCCQ2 of the UFS.
>>>> +     */
>>>> +    vccq-supply = <&vreg_l9b_1p2>;
>>>> +    vccq-max-microamp = <900000>;
>>>
>>> If this device has UFS 3.x flash, which it most likely does, the 
>>> copy-pasted eLDO comment does not apply.. and VCC range is 
>>> 2.4V-2.7V, 2.95 is overvoltage! 
>>
>> Hello Val,
>>
>> Thank you for the review.
>>
>> Though you're right that this comment is a copy-paste, taoyao has 
>> ufs2. This is the explaining comment from the downstream sources:
>>
>>> /*
>>> * Yupik target supports both UFS2.2 & UFS3.1, here
>>> * vccq2 is supplied via eLDO, [..]
>>
>> So I thought it's better to keep a small comment regarding eLDO.
>
> That's a comment from the qcom reference sources! I've literally seen 
> it already in the downstream DTS for the device I'm currently working 
> on (motorola-dubai) which definitely has UFS 3, hehe.
>
> You can read 
> /sys/bus/platform/devices/1d84000.ufshc/device_descriptor/specification_version 
> to see which UFS spec version your flash is (0x310 == 3.1 etc.)
/home/user # cat 
/sys/bus/platform/devices/1d84000.ufshc/device_descriptor/specification_version 


0x0220

> (Lots of interesting stuff around there, there's also 
> health_descriptor that shows your flash's wear estimation..)
>
> Also if you have the schematics, you can check for whether an LDO is 
> actually present there and whether VCCQ or VCCQ2 is connected :)
Unfortunately, I wasn't able to find schematics. It also a bummer that I 
don't know panel's name because I have a (semi-generated) driver for it.
>>> If it's actually UFS 2 after all, it would be better to rename the 
>>> property to vccq2-supply.
>> Could you elaborate please? Do you mean l9b? 
>
> No, the "vccq-supply". If you look at 
> Documentation/devicetree/bindings/ufs/ufs-common.yaml you can see it 
> supports both `vccq-supply` and `vccq2-supply`, the former is used for 
> UFS3 and the latter for UFS2.

Will fix it in v5. Thanks a lot for so many inputs!

Best regards,
Stanislav




