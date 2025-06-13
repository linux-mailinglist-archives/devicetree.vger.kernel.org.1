Return-Path: <devicetree+bounces-185550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A543AD8539
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 10:06:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3472C168D35
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 08:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D84B2DA772;
	Fri, 13 Jun 2025 08:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EsU2OSJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A932DA76C
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 08:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749802004; cv=none; b=P8KoDXJ3fauwvSemRg3pyxIUPjWPYNwJthBfSbZLpKb4Ns3p7k+f3x8JdmQNMu4acA2WMM5RbSan5KkUoG/WwRs9qpzdNdA5bddf0DW3o8o31bxvnVED9x2KJunEr5Hyr6q541+nADLWnYfBwnjXlrz8RZjWW4o8inNsi38cW88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749802004; c=relaxed/simple;
	bh=SS6GUy7+iSGrMAI8Lio5hdVZyVEhieiGp9O0m4ddPPQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K9U5Olgt/P5MxWs6FYD/vrE/T5qTCd2Nd5GlDkTNOIs/TyAm9DTh4nxBoDdIDIvPLuiqErYj25jCQSGBYmDcHrqmUoLxLHfSKDbRb/eXKlWAD23psIgdylqJRJKveAmS4SPYCK0zIqRBcqaQo6Pvm7qa8dIpZoshk/YYRRl5xCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EsU2OSJH; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a5123c1533so1184677f8f.2
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 01:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749802000; x=1750406800; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qkqDFUZXCEB8bR8DaJ2XDhGAG8e6Iv9Jz4tCnxztU5U=;
        b=EsU2OSJH8aW92PaxpbLI9nQ0uktIgs64bW6Q/7YE+yj5YTwjEP5wr/44RSb4s4PT9Z
         i0JrxeE95LjFUAm84dOodnUN2O47ha1oJV5BDUm7TboIxCel4kdWE1AZ148oqQYVNV0X
         V35e42BUX38VqqzxxlLSAsxopnYvwsHKlyWO8Uy9D1KkE6c95rJLKjqLwZbnyFyBpqWT
         XCA0PbRQz0tnDtigC25LeOxgVoCmZ5Es11wBvWvH5W+finrYiZA7fqCSsKsQzzpU4rF/
         qcs3DgYtWDqR0j2Ec+HTfRTHI7+gjxzs5CItLEYzeFuhX3pVXiTR4EOo2BFh8lcu7H3v
         25/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749802000; x=1750406800;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qkqDFUZXCEB8bR8DaJ2XDhGAG8e6Iv9Jz4tCnxztU5U=;
        b=GoV5BPI4j11L0FNh2F4xjMplTYFADGluU9sL7cSaMC1perOlbN/zSpAj/njH/m3m0h
         8m5g9/jAndhOS9WYpde4eZMlgDhcvoyBGzL9r3paGohkYFGrZ7ZSJFaQHV5ZRmrD4scM
         F1mxn85Po4TEv+Yfee460EFhuTGYk0giUJ2XIXhl8pcV+mQJEHNIL0V8cgm5UMDuxvFT
         AzveRUnhyImeu0d4W+RQuIflonSZy2jiJPnCo1Q3Vx1LmLBYt1jyUoCWgVB+Kl6eGktI
         n9pTXVSZaujFg/jdNEDMD891uQfLrfOjVNoyZONcKkpNIyrAq/+SusP9XzlSV0MT4k7h
         09Kw==
X-Forwarded-Encrypted: i=1; AJvYcCXtQvcSBhgcVfV3xx8pj2Sbj4hZl7BIggdlAGEM0AIG0+vHk+z/AkoYeLjEBHxWQWaqyUgRxTLnTEFs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7yaC7Gj5M7Za2cp6fg0vOfV5pyITLpBHv4FF6vWi9KGwQ8AKJ
	WYyLIGs3VvdYBnTwCfBVjukWNjl2gGHJ7vXvvM/A9h7eLTzoUQ42WCn6As+5jItnp0k=
X-Gm-Gg: ASbGncs312HxidVvO0CHxQenwsh1hqhFiw9eWsrRQL2wbBkX8AYwHDrjOfJs1REFP+T
	vacKYq9QxZK2OGX1y9xJXdu19zBaE98qGEf3+kfz2EfYXMHPDRpU8JbjKm0R/t6S1a8faOKjWeo
	ckiU1q9bUd7jKjcO52uAOPOPfEUl2CcyL601hb3BNdSnS3r7RwPoscNB/WX5byrV2+hOfpZksJU
	a/DcoV/q2OAjHaIUPq44lDchFzf/N5MS8z9Z4TF6+gP1NrPfi1yTusRTMKJkQrNi1LszZKgbFWv
	6YE1vjM0MIBePD0m+ngp09Nu+5Qk/VOMJ5SOYqqYSHMuUByGj7O2lnX8nhIkiKTuREhRjLOu7jC
	ZZcOyMYf1uFzNd5Cn4CnZNWSTElI=
X-Google-Smtp-Source: AGHT+IG/O5UhDJVykXf2VjbwfD0QSNx5aG0GPegjXalhCDoQfY+0ubOtvsqOybm9J5xA3EHEjqAziQ==
X-Received: by 2002:a05:6000:3103:b0:3a4:eb80:762d with SMTP id ffacd0b85a97d-3a56871e167mr1902935f8f.56.1749801999608;
        Fri, 13 Jun 2025 01:06:39 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568b4ba58sm1540669f8f.84.2025.06.13.01.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 01:06:39 -0700 (PDT)
Message-ID: <03f54bb4-ddbb-4be8-9f9b-8328fdb98443@linaro.org>
Date: Fri, 13 Jun 2025 09:06:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] media: qcom: camss: Add support for MSM8939
To: Vincent Knecht <vincent.knecht@mailoo.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250602-camss-8x39-vbif-v4-0-32c277d8f9bf@mailoo.org>
 <20250602-camss-8x39-vbif-v4-2-32c277d8f9bf@mailoo.org>
 <877a72fa-cdae-4a66-9991-5ea86ef76aac@linaro.org>
 <e73d676ba1901437d471a2a633e94a07b19a3e05.camel@mailoo.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <e73d676ba1901437d471a2a633e94a07b19a3e05.camel@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/06/2025 22:43, Vincent Knecht wrote:
> Le vendredi 06 juin 2025 à 13:59 +0300, Vladimir Zapolskiy a écrit :
>> Hello Vincent.
>>
>> On 6/2/25 20:27, Vincent Knecht via B4 Relay wrote:
>>> From: Vincent Knecht <vincent.knecht@mailoo.org>
>>>
>>> The camera subsystem for the MSM8939 is the same as MSM8916 except with
>>> 3 CSID instead of 2, and some higher clock rates.
>>>
>>> As a quirk, this SoC needs writing values to 2 VFE VBIF registers
>>> (see downstream msm8939-camera.dtsi vbif-{regs,settings} properties).
>>> This fixes black stripes across sensor and garbage in CSID TPG outputs.
>>>
>>> Add support for the MSM8939 camera subsystem.
>>>
>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
>>
>> There was a preceding and partially reviewed changeset published on
>> linux-media [1] before v1 of the MSM8939 platform support in CAMSS,
>> due to a merge conflict this platform changeset should be rebased IMHO.
>>
>> [1] https://lore.kernel.org/all/20250513142353.2572563-4-vladimir.zapolskiy@linaro.org/
>>
>> --
>> Best wishes,
>> Vladimir
> 
> Thank you, I'll look into it
> 
> 

I think I will take 8939, plus any of the other now 3 SoCs waiting to be 
merged with RBs.

Bindings consistent with the last 10 years can go ahead. Its not 
reasonable or in the interests of the community and developers to gate 
any further.

---
bod

