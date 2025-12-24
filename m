Return-Path: <devicetree+bounces-249582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E88CDD052
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 20:07:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 92DAE3001C0D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 19:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E95C3358A2;
	Wed, 24 Dec 2025 19:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="jt48wwVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E912E6CDE
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 19:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766603264; cv=none; b=sNcS+x18KGJbWQRO0axagOP/hzFWYVyDqR3vWnKHX7xp0pIxPjUnhRnLuuzMaYMJsvXXiyf87TND9+ccXSkdaX8ST3LM0FnMROWZchjRXV4LjI2zR064D3MIxcaKpd9ZPDVSoFSBctQFDtbRYneLZHBMZY3Efi0x5wn7RYhm0Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766603264; c=relaxed/simple;
	bh=xGMey4A7iFVHAmrVZuSavckmgLulJhGs63Zh3metjjY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sAAGnT2VHMypMYEmw/AiL8B2QvNiQZpbuCfvwlVYG5Nk8wDQAFHQIoiKJzVhRSbXGvA9tOEtopx4BshjsBbHBAtq2AO5GMb0twcAkNacpjU63gAwA9qJXkZ2qIeWPziT3jbe66G485Qxy0fsvyr1abd4Lv3TOol20yUb8O5kHsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=jt48wwVz; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-78ab039ddb4so58965567b3.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 11:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766603261; x=1767208061; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NzIVnDZpOLjchy2wgbEcpJaoavN6zFZmqhSGhoRwcq0=;
        b=jt48wwVzAY30EJsCgsBi7TrUZHYIH4B7dENfIKwBOgf+orFGCMZ9TbGni6VSrbHmdI
         LPK3rS9lwcDDXS6PnM9tsNqrFgZ7p2KuWtrjQMcqMm//eCk9BKnUomcvLXovIP2xunU2
         B6SbxvRopOesHK+AkV3hoIJG//jR3l+5+m301qKjGd44VvSJfsthjTX2uhcGj/bSFdIv
         /RNSYyo8UUlEjlTDCeM13EDgRLXa1Am1Xyvy1AR6PHvQqG9BJn9aCjzvQPJrv6iWzFDk
         EGY1aznIp1KannV8iZph+snCe15e2bn28pj/gkm5t81hhSPQDlAsc8A5HMnv1mP/5xq9
         uSfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766603261; x=1767208061;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NzIVnDZpOLjchy2wgbEcpJaoavN6zFZmqhSGhoRwcq0=;
        b=cG3lF+LzHzxClhWmncfXhk+1bilIljej7TxM6m/VmQkOMmOj81d/nHjga8gaOhu1Li
         yamvpd4Ru3opo9d6TiN4Wj2gU6bN222HhcEO7hVU5/PNOG91hOVjBWGbYuhZoZ7VvSqb
         zkrQuM3Rc+GPn+QXZetEzzuU5HIssglPjeiTaZWrP1AWVzBR1K2V/EdpXeb/gvzooyqi
         +ElDdc97ZzgL3Ac5sVu/75L4GVCvLdGsNoH8JR0HJDf16J/wbPhbnxq9zmtmwx6htuk0
         euW0Vm8leatit9NRxhXMk4PRY4AcFGArrPMLx5YMMCr+AypPV0PAx9lOGdOTq8ReUdWO
         4Evw==
X-Forwarded-Encrypted: i=1; AJvYcCXIhHLWjEsHwHmx3ZSU5niDQxEn6OBQOrwjnF8OPMDm1ifESy9G1f7RmoIEXHa/57N30+IrrSTrstcU@vger.kernel.org
X-Gm-Message-State: AOJu0Yys1Se32GR40Ox3zLZ9I85x7zBkPeXSjaC6mkg5KhtKsmXcyyqx
	0cRsKt3s5h3CZZfohaJBvS1IVmvQo4gNfbuHs872d2aZWOwd1A7MhpcIBBaXAkNx2g==
X-Gm-Gg: AY/fxX6lgITLQ1OrKaQnJ8jVXo15c8G9bPe7dloLldbacjs5bmbrr2GyWgXfLYmXZxk
	VbkzYMWF9b4qAZY8hOAzwDM7Qd01hkz87UZs1jq5ZV/+hddgE70U4qDDx/g2n1No8m0tlFW07mZ
	yfuYqdgW7E9Inshx0wQrM98yyLM1l0r8eiBr8hDsUuvjJ9B/dT0wHMcfl102Vew51EFgM79MUze
	s17zJ27f1UeinkjSpiUe50M//3GFOIcjDg40nCZGBiSHn1ODTakStg13UzR0pRCPZW1o1cTUkMs
	iD27rzUrZb8ve526Z2XixzYle0whGyGsaei4ugA7OdEAnkKDGo2CQ1VelQVsfEeCvbnw9yFDjXa
	A+h7SfoEkOCbgWk4cv8Ekb78rmOA4CzVjSl8OrGWrN9J5blDJ6kjGyQ8RhhKqoz2wqGIxH3MayH
	iVz39u+zL9XVBf6sVBIaxEMEA3OHA03vJQDtOn4DGNU8euDsR5ohd0ZjbIYZg=
X-Google-Smtp-Source: AGHT+IEY4Bkjt/yYbrhofiHe25t6FYtL51Cgg0/pcmheFBExP5e5Z7qmADlL5vL1uqS/fVBKeLgjpg==
X-Received: by 2002:a53:bdc5:0:b0:63f:2bc7:7074 with SMTP id 956f58d0204a3-6466a8aba62mr11525267d50.60.1766603261316;
        Wed, 24 Dec 2025 11:07:41 -0800 (PST)
Received: from ?IPV6:2600:1700:4570:89a0:6872:f79a:c2ff:4f4f? ([2600:1700:4570:89a0:6872:f79a:c2ff:4f4f])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6466a8b16e2sm8621687d50.2.2025.12.24.11.07.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Dec 2025 11:07:40 -0800 (PST)
Message-ID: <c3599851-6e19-4ed9-9ce7-703746b978e7@google.com>
Date: Wed, 24 Dec 2025 11:07:38 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: mfd: maxim,max77759: add charger
 child node
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
References: <20251218-max77759-charger-v2-0-2b259980a686@google.com>
 <20251218-max77759-charger-v2-1-2b259980a686@google.com>
 <411802b6-517d-497e-bf7b-183e6e6d7a64@kernel.org>
From: Amit Sunil Dhamne <amitsd@google.com>
Content-Language: en-US
In-Reply-To: <411802b6-517d-497e-bf7b-183e6e6d7a64@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 12/19/25 12:17 AM, Krzysztof Kozlowski wrote:
> On 18/12/2025 23:49, Amit Sunil Dhamne via B4 Relay wrote:
>> From: Amit Sunil Dhamne <amitsd@google.com>
>>
>> The Maxim MAX77759 MFD includes a charger function. Extend the max77759
>> binding to include the charger. Also, update the example to include
>> charger.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>>  .../devicetree/bindings/mfd/maxim,max77759.yaml    | 33 ++++++++++++++++++++++
>>  1 file changed, 33 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
>> index 525de9ab3c2b..1cffdf2e5776 100644
>> --- a/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/maxim,max77759.yaml
>> @@ -37,6 +37,30 @@ properties:
>>    nvmem-0:
>>      $ref: /schemas/nvmem/maxim,max77759-nvmem.yaml
>>  
>> +  charger:
>> +    type: object
>> +    description: This is a dual input switch mode battery charger for portable
>> +      applications. It supports wired and wireless charging and can operate in
>> +      buck and boost mode.
>> +
>
> I do not see any improvements, so same comment: this should be folded
> into the parent.

I misunderstood the folding comment for merging the charger binding into
mfd.


> Please read DTS 101 slides or writing bindings or any other talks...

This gives a lot more context. Thanks for the pointer. I also reviewed a
few recently merged mfd (with charger being a cell) patches as well.

I realize that you're asking me to remove the charger node and re-anchor
its properties to the pmic mfd device. I will update it in the next
revision.


BR,

Amit

>
> Best regards,
> Krzysztof

