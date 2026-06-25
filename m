Return-Path: <devicetree+bounces-315502-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lEuQLnzTPGrPswgAu9opvQ
	(envelope-from <devicetree+bounces-315502-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:06:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6313E6C3406
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:06:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="kjGa/KDT";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315502-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315502-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD53D303ADE7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 07:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C0573C343C;
	Thu, 25 Jun 2026 07:05:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30513C279B
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 07:05:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782371145; cv=none; b=cwN0ar9JX793dl+HQ6TkIQmOVV7f0odSNxPNcb7NxDWcElcWEv39jwiCJCxAR9E4zgbQKjzHiaG+UT6nF42HCAopnukYfQDnlBFbTbYrKRpRfcHTp05KFDSybbnqUvCe/WOw4BoE4T7Xpe397Zn1Omxs2ZxHePgyHtNpiar5nM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782371145; c=relaxed/simple;
	bh=hMwm8OC6yMV7o6k5gEjXCIGVhLhyVKJEh/qwAVYMJDs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GlXnj+oq8GjTeEh0Q5WrSehZXPyQRWSpV9xu6mDjAuIwCUKEmrSFFGoZwBKZGvgz9AefqEjAEy5o15DT8ctMG5AYSM7Q+P2SPVlkWaVK2YYmBomeH9NndmK5bt2koujK09RpcR553tci2FPmlGvPeO8IvCP1wUXPKpl4/Z0WAHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kjGa/KDT; arc=none smtp.client-ip=209.85.167.43
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5ad578c49afso2018042e87.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 00:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782371141; x=1782975941; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lpu3IC4RSA2zDkdsuH0CS1/1RfLLmW5/oNEdfMnmxUI=;
        b=kjGa/KDTab7ZHSnmJiwCEfT9thordCzwXAsK6WjDJ6nO8gQJtu7E3aMtdgw9grXakZ
         bqHhoAQs9BKoAdFB9bdnnQ0rFphHeXshPfRmZx07hBXT3dw1tVRoHYfw5fDAYrJytNNb
         K965hKhwDQzh2G9bHsbTfIA9sDDU+2/qEAfR3dVSRmsFQ/mfRDBrayq46jQFhRV7VIXI
         6rXt4hqMbsxY6altS3ptbYrKqZoMvIPFY5SxNjyiLU4RI4pfc86alkqSsmdyF4KlZRA3
         t1+F+8B91m42b6s5zg0FE0eZAGvlxMpWk4ij3bMOCPCn67AJm2mYFyCabNjcpkdDGRuX
         vwrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782371141; x=1782975941;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lpu3IC4RSA2zDkdsuH0CS1/1RfLLmW5/oNEdfMnmxUI=;
        b=Prj0tatMtfMOwUPq9LtspW5oDo0BgAk6CVPXYBjGA9uA0P0b1S0R652NTw1ljOnUxc
         K8Dkulh/xys3zNs3seGgu7dJgb4c74mmd0+PuALZw8loNDhlxy/ZZiBo386/sSwD88uv
         cfSJwTorXvZ7u4WvSN2arsPtHp4D0kk0xDUzJtUM/PVpzCUWrOBiyQ5uEFHPJmV3GEuX
         hAExbi2bW9caFoEouoYCcmhLvVMSWR2JA/L0HbPD82SKVgh6hYMbqkZ9g0u8Ll2U1kCi
         yrtQgHDJcJcxklKOgpH1zTA7+5jy1JuD/EvvXtS9BPUMojnV8LAMUIxINTUy3c+PBYoe
         3L9Q==
X-Forwarded-Encrypted: i=1; AHgh+RpPoT44BNEOdWQPlj/4U2IBBCSA7AFeU51FFGlTdlAV1qSEO2X9INDI1cNmSncHY0yRnl6GLEYpe7fS@vger.kernel.org
X-Gm-Message-State: AOJu0YwI2thrZ/JSUNRFgFJvdqsYPsX+jkiYP+vQmFs8QPdxGHRHflrd
	v/+cu7P2niMzch0fM8cNOuEPWiyJAsv8NbIjRybASWPwyAD1e2CahPdH
X-Gm-Gg: AfdE7cn+jDnAo3Gj0bymuWGmQh2S9sDvlV7frFNFOcG7IvO8iEs4Owk+hHgU1WufStQ
	woF45nePQmM7P5wWuZh7KdsARMjcw1QV8/k1UQpIQPCreWrfNShsJ0rk0IhoXNO3Yd5wzIhOkPG
	JDAGcwGIGnujHdPbsiJ0hXHCTaSb3uCE4gLMAszOTs+HJxl0qNE1MPzIub8JY3VyHoUcIaje1Ay
	pM2siiMGMhD4WIoQwKTPHCj9ZtFd3WaU0qgE8oY1KeXYUBTKw+be9zb/HPkDgjV7eFry3uD0hCE
	HMItBZSi7ldupBSCIINhK17z3+36zwv6WDtjZfRwtY0nfU2oOAZuTbcxEh6wtl4/Z74jvxm5l92
	qHaW/xFDHEAxAtJQ/muOz++VRJjCvJWmKJC9lrD8522aT3HxScOo6faYtLkSJInwRSBsMsekjsm
	UBG9cAprV4I3XmvdbvjxH2Ng==
X-Received: by 2002:a05:6512:4405:b0:5aa:7779:803b with SMTP id 2adb3069b0e04-5aea1f2a590mr336006e87.5.1782371139184;
        Thu, 25 Jun 2026 00:05:39 -0700 (PDT)
Received: from [10.38.18.54] ([213.255.186.37])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad6954a538sm2433685e87.7.2026.06.25.00.05.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2026 00:05:36 -0700 (PDT)
Message-ID: <bd9419aa-1a21-4ca2-990b-ad1bebf5c9c8@gmail.com>
Date: Thu, 25 Jun 2026 10:05:35 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: adm1275: ROHM BD12780 hot-swap
 controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Matti Vaittinen <matti.vaittinen@linux.dev>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Wensheng Wang <wenswang@yeah.net>,
 Ashish Yadav <ashish.yadav@infineon.com>,
 Kim Seer Paller <kimseer.paller@analog.com>,
 Cedric Encarnacion <cedricjustine.encarnacion@analog.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Yuxi Wang <Yuxi.Wang@monolithicpower.com>,
 Charles Hsu <hsu.yungteng@gmail.com>, ChiShih Tsai <tomtsai764@gmail.com>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
References: <cover.1781591132.git.mazziesaccount@gmail.com>
 <d63c4df5e9df845bc4f94b4abdcd068a23929974.1781591132.git.mazziesaccount@gmail.com>
 <20260617-uptight-sexy-hippo-f4bc62@quoll>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20260617-uptight-sexy-hippo-f4bc62@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-315502-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:matti.vaittinen@fi.rohmeurope.com,m:matti.vaittinen@linux.dev,m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:wenswang@yeah.net,m:ashish.yadav@infineon.com,m:kimseer.paller@analog.com,m:cedricjustine.encarnacion@analog.com,m:chris.packham@alliedtelesis.co.nz,m:Yuxi.Wang@monolithicpower.com,m:hsu.yungteng@gmail.com,m:tomtsai764@gmail.com,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:conor@kernel.org,m:hsuyungteng@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[mazziesaccount@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[fi.rohmeurope.com,linux.dev,roeck-us.net,kernel.org,lwn.net,linuxfoundation.org,yeah.net,infineon.com,analog.com,alliedtelesis.co.nz,monolithicpower.com,gmail.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mazziesaccount@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6313E6C3406

I think I (almost) missed this review... Sorry for the belated reply.

On 17/06/2026 13:28, Krzysztof Kozlowski wrote:
> On Tue, Jun 16, 2026 at 09:35:35AM +0300, Matti Vaittinen wrote:
>   +
>> +  Datasheets:
>> +    https://fscdn.rohm.com/en/products/databook/datasheet/ic/power/power_switch/bd12780muv-lb-e.pdf
>> +    https://fscdn.rohm.com/en/products/databook/datasheet/ic/power/power_switch/bd12780amuv-lb-e.pdf
>> +
>>   properties:
>>     compatible:
>> -    enum:
>> -      - adi,adm1075
>> -      - adi,adm1272
>> -      - adi,adm1273
>> -      - adi,adm1275
>> -      - adi,adm1276
>> -      - adi,adm1278
>> -      - adi,adm1281
>> -      - adi,adm1293
>> -      - adi,adm1294
>> -      - silergy,mc09c
>> +    oneOf:
>> +      - items:
>> +          enum:
> 
> 
> s/items/enum/, so:
> 
> oneOf:
>    - enum:
>    ....

Thanks Krzysztof. I am always so lost with these bindings. Giving the 
concrete suggestion(s) helps a lot!

> 
>> +            - adi,adm1075
>> +            - adi,adm1272
>> +            - adi,adm1273
>> +            - adi,adm1275
>> +            - adi,adm1276
>> +            - adi,adm1278
>> +            - adi,adm1281
>> +            - adi,adm1293
>> +            - adi,adm1294
>> +            - rohm,bd12780
>> +            - silergy,mc09c
>> +
>> +# Require BD12780 as a fall-back for BD12780A.
> 
> No need for the comment, schema is quite explicit.

Eh... I know it is explicit for one who fluently reads yaml. Not all of 
us do that :| (See my reply to the previous comment...) I am not sure 
the comment hurts - while I am sure it helps occasional binding reader 
like me. Can you please reconsider keeping the comment?

Although, I am not sure if Guenter suggested me to drop the compatible 
for the bd12780a and only use the bd12780 - or if his comment only 
applied to the i2c IDs.

https://lore.kernel.org/all/751cd5eb-104f-4445-a6d2-8119ad5d5660@roeck-us.net/

Well, I will keep the bd12780a compatible and drop the I2C ID unless 
something else is suggested. Again, the BD12780 and BD12780A do have 
different hardware properties (at least in I2C slave address selection 
pins), and while it doesn't really matter for the Linux drivers, the DT 
bindings should ideally be generic and not Linux specific.

Yours,
	-- Matti.

-- 
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

