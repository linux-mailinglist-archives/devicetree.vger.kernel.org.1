Return-Path: <devicetree+bounces-242176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E24C878B0
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:03:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A78203B17A8
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F3312AE90;
	Wed, 26 Nov 2025 00:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="FKaxL67t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C3E1643B
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764115376; cv=none; b=XJNXKhM0dOFtVWb6+ed7zqpiZYflDH1Uirw+YWyJMBJMiOaaDMl105aOzgATX0QWlItjOpMLjee2aUih7WlRgk+YjStZ97ZFI/ePwmcGMzvdbagkKN9EwobREx/TQBFpEFRsz4MN6j1wmmdiMaHSZPS4nz948QI3jvcKF998Nfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764115376; c=relaxed/simple;
	bh=NqlXoSZZihO70FxCdncHZZzKas0CMSSbGdpFS9BtrlU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rkMJFAVnQJv3Hv4Si1pwSFrzmDiNveO9hFwbWI2R+sdzgEaqsSSn1gz+ew/e2sDs7AHJfD6sOrzJwCphCwPfKAt9cF2TBmjcHLI8oRIsb3xJ1J6gWNlDxpbzbFT17SV6p8Gkk8mgLfkmH9SfeBtpkgx16I8ZVeIBuLMnqNxCq3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=FKaxL67t; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-3418ac74bffso4084782a91.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 16:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764115374; x=1764720174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ozYgqGZxyZiXYU0b8aZzmoqKbBY3lnwpPB9f4ygIxc=;
        b=FKaxL67t1NTEdfJ2QXhzagkftN3w55W73P0RWMXR18iGN0OvqYbdyQen/60bSfbSmn
         53bi/Gw4U3Xn/gpM1dDQGi/hBnpqNADtCsJsG0eUB51JJlaN8uhlHQYxGBwn9CT/tKYb
         svrhj3atsWksruKrH7hTZPMmzrP1t8dCBQR/BSEg0cATDtr+uG+peiAS4mVrXlDKbZGw
         IliQB7ZeFC9XkGS2kYmG4cFzPIMCVGateypt11lz7K6QGSDJ4lI2eKJmaGsVzwf/VeOL
         zet/tII+th+uGuXvGr8SM5l8mAMkV9c6O+mLv2h/zUAFC10+oCpKhXEi7480YBe4XAgO
         HimQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764115374; x=1764720174;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ozYgqGZxyZiXYU0b8aZzmoqKbBY3lnwpPB9f4ygIxc=;
        b=rHtIIAgtdL0dlHDDyOGpvlb0ZR9QmcbH+bhrvyDv3GV2o6yUdhkmd8CY/6z8As/uVP
         sbp/2njCPkZcsz/1aShD6FFHr48JdABzSH3YDVYtrnWAYweLveUN5mmNYeLXGmhq3bKa
         WKA58ekYfztPEnMwnUtKT+FZVQ9haEmK2JVW4+xiZS7YcTbbFRqBk11lS6sCOfg6IzcU
         /MDDXvyrnnXbJ75nMHUig2fQMeNWRo5B1tvpNQtG5Bya+RkOhr9jRFG9wrm9By+DXMc8
         m5gdI5O3HiKq67wC5hpeb8dOuG1owMVQFg97V4mFXK0+KepI/zNUp3LyL+qPEOV3sOKA
         AG+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWZLaXj+UDbW8MFmf7O2z67bCUnQ2EjEC5wn5Q+3X03HuvuVAoV81uMImaFJt55nrgHNiyDl+q7SxMN@vger.kernel.org
X-Gm-Message-State: AOJu0YwADmQU7mzgBpGILF7psFF0QHWVlTkeO++B5bLC1/Qffd9KrutP
	rUwd5ma6CW1SYxjxluFm6wr6xti2VNVVLwFMELJrfju9XklUFPEovceQ/FB8soDTKA==
X-Gm-Gg: ASbGnctdlnl80AWZR5CuHk2voFRtmIiMcJUWOT71Q8mmvDBeD2WL5zePw44TnBQNhok
	6azhHelsjDtNfAiyOYTUj0WAZVDSwf9SwClNltHbMPDQrUhmQwjCaucJU389y8fNpypPPEJfkyc
	MPD6NStYOlU18PnJzWgR1fzbbjuJwIkqB8z95vhtxgX9s18GSyNHFG9gs2YnSgxHxA/HiqvOn8W
	DQ+DA7tU/ShTdFczPZK87ZihleeN1KtmZUacGhS3cn2IAwYXE7S87FQLKayxDHsx3TIkILlPq+7
	r4aZPbhlcNF90AI4iJsfBBtHr2tWN+xe66HcEOIl2xUNDcMOljt5hHpcM2y7RxKvrypR0YuG6bS
	u+LncNaH+QEbyiy1AfDNfpVwNKxsHSB4Lvxlll7mO3cuRDz8ok8xs8RURZ0vHBtO0KYqn8f2qlh
	kZkYDW1EE99d5oNdCXI/UsChL9x71Tv5Iel73E28eXVnMREdwsO1kpjGKbwM9BOYJLGUxyInMXK
	Iog7O5k3FuWSQ==
X-Google-Smtp-Source: AGHT+IGHFeP0ZRaD8eMJaVnA9S33kn4uRxwfNfGJ0BWnjB5I6ToaBVqHt4IPtOo9tOmXe7tjjGRiww==
X-Received: by 2002:a17:90b:180f:b0:340:66f9:381 with SMTP id 98e67ed59e1d1-3475ebf9b16mr4130129a91.10.1764115373195;
        Tue, 25 Nov 2025 16:02:53 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30? ([2a00:79e0:2e7c:8:c98d:9e96:d0be:bc30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3476a7a6105sm514375a91.10.2025.11.25.16.02.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 16:02:52 -0800 (PST)
Message-ID: <4cb88319-6514-4145-8309-01051547b851@google.com>
Date: Tue, 25 Nov 2025 16:02:50 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] dt-bindings: mfd: maxim,max77759: add charger child
 node
To: Krzysztof Kozlowski <krzk@kernel.org>, Sebastian Reichel
 <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
References: <20251123-max77759-charger-v1-0-6b2e4b8f7f54@google.com>
 <20251123-max77759-charger-v1-2-6b2e4b8f7f54@google.com>
 <699d4476-aaaa-4cec-9e2c-240348950e4c@kernel.org>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <699d4476-aaaa-4cec-9e2c-240348950e4c@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/23/25 1:30 AM, Krzysztof Kozlowski wrote:
> On 23/11/2025 09:35, Amit Sunil Dhamne via B4 Relay wrote:
>> From: Amit Sunil Dhamne <amitsd@google.com>
>>
>> The Maxim MAX77759 MFD includes a charger function, hence add its
>> binding as a property. Also, update the example to include charger.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>>   Documentation/devicetree/bindings/mfd/maxim,max77759.yaml | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
>> index 525de9ab3c2b..29132f73f2c8 100644
>> --- a/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
>> @@ -37,6 +37,9 @@ properties:
>>     nvmem-0:
>>       $ref: /schemas/nvmem/maxim,max77759-nvmem.yaml
>>   
>> +  charger:
>> +    $ref: /schemas/power/supply/maxim,max77759-charger.yaml
> You need to explain dependencies/merging in the cover letter. This patch
> now cannot be merged alone through MFD.
>
> Or just decouple the dependency and list here only compatible, assuming
> this child node even stays.

Would it be okay if I drop this patch from this series and re-send it 
while mentioning the dependency?


>> +
>>   required:
>>     - compatible
>>     - interrupts
>> @@ -95,5 +98,14 @@ examples:
>>                       };
>>                   };
>>               };
>> +
>> +            charger {
>> +                compatible = "maxim,max77759-charger";
>> +                power-supplies = <&maxtcpc>;
> Feels like you miss here battery.

I have added the example in [1]. We can discuss there in case there are 
further concerns.

[1] 
https://lore.kernel.org/all/7ad91325-e881-461d-b39e-6ff15d98b3c5@google.com/T/#u


BR,

Amit

>
>
> Best regards,
> Krzysztof

