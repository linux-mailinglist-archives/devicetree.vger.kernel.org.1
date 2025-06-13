Return-Path: <devicetree+bounces-185555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6796CAD85A2
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 10:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D35E166E8B
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 08:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2196F272811;
	Fri, 13 Jun 2025 08:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K/RR1W6w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A054A2727E8
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 08:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749803394; cv=none; b=sRMwiFrsEU8zIVyfZraJan4Ilh9g1vR26bUWM78sz7r00jrmXlyJKDNTaXWjVpw+ll3MZxUqxwUpq208/j+Ag+IpHhB3kucB3UwjEzjf0ynXWlHuEZ/AxlQSmzGrbbI4Qohq2Lm9T18YGGeDWqzpHrm7Pz4cy646k6T+4bm6efk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749803394; c=relaxed/simple;
	bh=Ndaw6E/1DT8mCCAKumeuIusQOrCN2MR3mwrjjMC25I0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HX4Q5IW+M454VIGO0j5EGF8OvehxsTZyz8tgxefGt+WZnf5vCeZHj55zF4AhKCIkUvDiVmGwBPJh8JvGOEGvcjojhPw2BnQMs30fRUDdopyXQBwog/9r07n4Oe28TsHAS+QyRDT3uh/9rvH53+scErbVQHWS4T2p7SerB+lKGe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K/RR1W6w; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3a510432236so1614697f8f.0
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 01:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749803390; x=1750408190; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2vw2wbUJHDF5FJbkrTPFuUAQyWojwex3GcPQ3V01XJY=;
        b=K/RR1W6wc7ua4gF1hPXz1JMJNx1efcS69FStc5UtEmq5PYKLMvaPybNxeNUuGj6C/Q
         u+h1Fm547CaIS7uU6uwFG6NSJDr+HA7YHCcs3kWuWKsNWrHiw3B7HijYCSennnQ6uGx2
         nKlSMNU9BuS+n1N/YdLZC80YENNsNKqQjVLJ412cL6B/whMSaaCL2yJj1ZmL3e1YOKPg
         VcqP+r4UXOqCNJf3qg3OU7ShlCrxmkhdOVN8vPrCK7gNASJlS69OLrOeUNGWn+gaB/e4
         zsH28MD7RbpBa87BcjO0NfjeYA6TTxrCWzAZzXjI32w//heweHrZT9zS4lc0fBNYkO2l
         cxeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749803390; x=1750408190;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2vw2wbUJHDF5FJbkrTPFuUAQyWojwex3GcPQ3V01XJY=;
        b=EG1m2NdDza68PHw8pOw+M8TBMRRyklpkXTNcigW5OfuCJggSou42MLQ7Am5ACJWdLu
         a1ssIriV9g2W5ZnkCcL39Xv5xJpuHH16IO7xBicmxTXXs0AMWTHFBjqqw7R2Cl8LalZv
         PW6g0bU0P5GdMo8IyUtXHx0ASrOYJV0jQIkSWO/06alyyEwTz3bybq2lZkarOIv5UXwq
         DyZ4agO8BVjPGH0RGHDjpQJvWqhoqS2Z1WOBmqS473C16pdrmF8pdR6PBASQGQDWYaou
         SStg5ZomV2g0QSoU3ysc2NYnuIqAbDCpC+r7A/dlJ6c5AmwOsiihul9sAv+w+AMuNrM7
         LsRw==
X-Forwarded-Encrypted: i=1; AJvYcCUVJgR7UlHBLu5KG3P6HtYu+v6Gl8LQ9Iiwnf4onmFj6OdJ2nJ9MfPTDPYElfCy/FyswM6jXKh6sB/s@vger.kernel.org
X-Gm-Message-State: AOJu0YyHq4j3YTDWlKyEweNYJHQ3hbjpzfzCKyDPkHRse/Y8Em/TeSaq
	iUtB7qBpnKwz9dCTLOO2xuI7EhuXHB/dpXD+aL7OcB3R2n3Ga95mrbuPM9iu+dVON3c=
X-Gm-Gg: ASbGncty/kJ2T5E/74OKMmLe45ED08avb+d7kxQUfC1OvXToFpogzR56q52nRf5UkQn
	N0yPDNPkCcnhfzQfBXHUJUoxc8Y1Gr/4bCshwrLib6Xc4hrXC3++i64oqGwugf/R0DEQt3lgllS
	zXJ9bKRvYFVu1Mx8QexV0iMU0S4bJ0W6m9lA00N4bcXKNGCzP3ryXh+a1rIJwUlh4T8LlAfuA7I
	k7ZUmGtub7EKI7fU2003BCoAqJUvcFnxv2dvQ8ruZSv/Wijc8ZMdo2GIMPRmyZczzHLKvIi/nxj
	ZLXpUx7mmlWza8tYbDceKcrqFlpYg8pOD13xiLpr/S4NgX5btK3qp8sthlaKx8GWl7rSbx3Hqxl
	5WEnNm9XVnTnguNKxjgDvjz07zeg=
X-Google-Smtp-Source: AGHT+IHi6SlBwjFJOsMDJVRnIHSeQtix9HOeS66GL6NI2gk448DXiXM8fUugtFC2s4okglYnJjCwFQ==
X-Received: by 2002:a05:6000:178b:b0:3a4:f72a:b18a with SMTP id ffacd0b85a97d-3a5686da23dmr2067256f8f.26.1749803390030;
        Fri, 13 Jun 2025 01:29:50 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e244392sm44568325e9.22.2025.06.13.01.29.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 01:29:49 -0700 (PDT)
Message-ID: <7f76c2df-24bb-486f-b68c-6ca61e7acc8b@linaro.org>
Date: Fri, 13 Jun 2025 09:29:47 +0100
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
 <03f54bb4-ddbb-4be8-9f9b-8328fdb98443@linaro.org>
 <67022a6de185740fa482183f29d574298048d54f.camel@mailoo.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <67022a6de185740fa482183f29d574298048d54f.camel@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/06/2025 09:28, Vincent Knecht wrote:
> Le vendredi 13 juin 2025 à 09:06 +0100, Bryan O'Donoghue a écrit :
>> On 07/06/2025 22:43, Vincent Knecht wrote:
>>> Le vendredi 06 juin 2025 à 13:59 +0300, Vladimir Zapolskiy a écrit :
>>>> Hello Vincent.
>>>>
>>>> On 6/2/25 20:27, Vincent Knecht via B4 Relay wrote:
>>>>> From: Vincent Knecht <vincent.knecht@mailoo.org>
>>>>>
>>>>> The camera subsystem for the MSM8939 is the same as MSM8916 except with
>>>>> 3 CSID instead of 2, and some higher clock rates.
>>>>>
>>>>> As a quirk, this SoC needs writing values to 2 VFE VBIF registers
>>>>> (see downstream msm8939-camera.dtsi vbif-{regs,settings} properties).
>>>>> This fixes black stripes across sensor and garbage in CSID TPG outputs.
>>>>>
>>>>> Add support for the MSM8939 camera subsystem.
>>>>>
>>>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>>>> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
>>>>
>>>> There was a preceding and partially reviewed changeset published on
>>>> linux-media [1] before v1 of the MSM8939 platform support in CAMSS,
>>>> due to a merge conflict this platform changeset should be rebased IMHO.
>>>>
>>>> [1] https://lore.kernel.org/all/20250513142353.2572563-4-vladimir.zapolskiy@linaro.org/
>>>>
>>>> --
>>>> Best wishes,
>>>> Vladimir
>>>
>>> Thank you, I'll look into it
>>>
>>>
>>
>> I think I will take 8939, plus any of the other now 3 SoCs waiting to be
>> merged with RBs.
>>
>> Bindings consistent with the last 10 years can go ahead. Its not
>> reasonable or in the interests of the community and developers to gate
>> any further.
>>
>> ---
>> bod
> 
> Hi Bryan,
> 
> I've locally made the requested changes for bindings
> (ordering, vdda voltage, style, clock-lanes removal),
> just not gotten around to rebase on Vladimir series.
> 
> So I can still send a new version with just these changes today.
> 
> 
> 

That sounds fine.

---
bod

