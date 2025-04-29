Return-Path: <devicetree+bounces-172045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1693AA10C5
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 17:43:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D5481BA174C
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 15:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147ED22A1EF;
	Tue, 29 Apr 2025 15:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="W52nqEIZ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6AF22839A
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 15:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745941374; cv=none; b=tuDVpv5wQyZH7dgHs5qjgo3nXLCuTavjZ9UJQVbO8TZUffgCNn76os38rGLXaQVWvV4wyHL/+/cqtBD2z43WxplmZ6ai0eHnxmW27NYQMJeERwaBl/3OMBcPuoF1VmVoXXAukdP/c0HBSW46e3EvHjr8lj76nFxRv1v4A2s28eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745941374; c=relaxed/simple;
	bh=oh3lGHnfxIaGYpsahYhO0cIoVjRi9G3OXpSZP1EDW0M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q0Iu/YGQRzuTlfYDvMV2ZDylewNEJq2cOXvmL7nSCscFT4m12lTvm/QOwBkWx7sQrG/9FOhhaJshmjCvD3YTwUlbzsPZg7TVhiLL3iAuuAJJv/WP57fV+/PXG0kUZ4UfMXlTWIwrbzBJnTaIrsgqhwZuNO6668TBQlLKt2qvyRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=W52nqEIZ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745941371;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S7ryve8rTEMKbXeLpNAkgCd/B515QSjLpqJy/LG9vjA=;
	b=W52nqEIZtWWBbZ2PijK0N/abkwFONvliy0GztV2m7CdPthXoADsH53Vbq2qhrAg+xHFBQU
	Vo78Xj6EviwL+rm8k2QpHJ4PK61gq0NBLpsRbYTPzVgnK/QBm6UgiZDM9YmGF5hXR2jVaW
	HUIkkPLoUYe9fTVkzi9W214KAk9X3qQ=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-475-uQ4vmK4kP9CLHk8M7uuVSw-1; Tue, 29 Apr 2025 11:42:49 -0400
X-MC-Unique: uQ4vmK4kP9CLHk8M7uuVSw-1
X-Mimecast-MFC-AGG-ID: uQ4vmK4kP9CLHk8M7uuVSw_1745941368
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-ac6ce5fe9bfso614423666b.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 08:42:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745941368; x=1746546168;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S7ryve8rTEMKbXeLpNAkgCd/B515QSjLpqJy/LG9vjA=;
        b=IXf8NyNDNd4vD2eYkUV/afCa5KmKkWC2BgumEy5F17hvoegp3SPa8JzRG392C+FZz4
         rxsFxeueOqA6MRMpgHnQhFYn1PVrKd1FisrvdFbCfD+A2CrTEiZZyJG4810ZRvmfjRae
         P6ZJUp3s+65m2HVccW5LDG6qayhpCSwqzbQ+Kz+uKBYf3PGWqRSU7ZuKHUW+kjzfWrJ6
         YTKyWBr00TNXgELmao/suWZRw/ALbvpvNdlvEnLMfrjvY1SW34mmcbmKb6BBR/MAQmr5
         ra5zNYBdxgpAEiG1Jt0n9d3S9D3Pt8Lfj1IYunjQTbBpLB1OCy6MuRYqhLtHZV2JwmDe
         viCA==
X-Forwarded-Encrypted: i=1; AJvYcCXiUTMHN1VWI6iho2XhNTSDauhTvU1C4kTc7sz31uX+4luvuYH8dsqdE5jwRDwUwi/5wQr9aQZjIU7y@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd7z/RVIh1SqlcRmHzjlV1CAErZWigItcNns+bejkmx92eFXRy
	jjl4oTC1WT/DAu/avfbKmSNqZxbx/JP8rEwKuw4zD9FhIxVH8SliKn0zkiw02k1cMkj/GnpiAF2
	Ocg3yZGTz7v8L6R9U7F2D/aOHxq4vA5UkWud1BNYawkvwryDutWx+l2Dx/nY=
X-Gm-Gg: ASbGncsAszrS59+N8WAE4+LYYGKBIMJW48/K+D+m+uQ2HfVst/insFM0oqmTQiXjvRk
	Aleq6XlvPY1ukSOVUWX3NEatdNkTF0Ew3YyLJeeHDQK06Tsq204aZwnmA1eo+1BSzoDGXrzIlkP
	H0jEIDJKbMW6nCFSmTTntT1ZcUKdjtl/YFuRtB5hJexgY+6HVSTZaTFLocIjzQpNsZ+ZCmu47M4
	iJp8LuDpFMr6k83HuMJw9f4dOMttDzKZDV3hZM5nt1Wjra516WbLqvvpa7HucoS23clwQqcl9u/
	lPD5NQprpizHeyr5RhJT4chhVRf0G6LCCd8zRap6ZSKu4ywLCSLUpMJf3HaLpNDYPZyw0nPHKPg
	wtNMDgFdOaGLeCN2S5xvCOOC3D6tqgOX8jb2o6T5oJ/bqxbSbT2UbH1dXOFWxD81f
X-Received: by 2002:a17:907:9706:b0:ac3:4487:6a99 with SMTP id a640c23a62f3a-acec6ab33e8mr329705766b.47.1745941368358;
        Tue, 29 Apr 2025 08:42:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFubXpfW+kmfgKJfs0fMd64miCv7/wDMCUb2jCA1Md4rCnEWoTksuSovTaTvJNXVE8SKU/8Kw==
X-Received: by 2002:a17:907:9706:b0:ac3:4487:6a99 with SMTP id a640c23a62f3a-acec6ab33e8mr329702866b.47.1745941367987;
        Tue, 29 Apr 2025 08:42:47 -0700 (PDT)
Received: from ?IPV6:2001:1c00:2a07:3a01:f271:322f:26b0:6eb5? (2001-1c00-2a07-3a01-f271-322f-26b0-6eb5.cable.dynamic.v6.ziggo.nl. [2001:1c00:2a07:3a01:f271:322f:26b0:6eb5])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ed64fc5sm794100366b.129.2025.04.29.08.42.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 08:42:47 -0700 (PDT)
Message-ID: <67e9e989-b3e2-4a2c-9332-760b79f4fb15@redhat.com>
Date: Tue, 29 Apr 2025 17:42:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: input: touchscreen: goodix: Add
 no-reset-pull-up property
To: Conor Dooley <conor@kernel.org>, Esben Haabendal <esben@geanix.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250429-goodix-no-reset-pull-up-v2-0-0687a4ad5a04@geanix.com>
 <20250429-goodix-no-reset-pull-up-v2-1-0687a4ad5a04@geanix.com>
 <20250429-effects-subscript-58eb41737816@spud>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20250429-effects-subscript-58eb41737816@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 29-Apr-25 17:31, Conor Dooley wrote:
> On Tue, Apr 29, 2025 at 11:56:11AM +0200, Esben Haabendal wrote:
>> This should be added for boards where there is no pull-up on the reset pin,
>> as the driver will otherwise switch the reset signal to high-impedance to
>> save power, which obviously not safe without pull-up.
>>
>> Signed-off-by: Esben Haabendal <esben@geanix.com>
>> ---
>>  Documentation/devicetree/bindings/input/touchscreen/goodix.yaml | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
>> index eb4992f708b70fef93bd4b59b9565123f7c6ad5d..21ac13046b6e021eeb403d854aabc945801dd29f 100644
>> --- a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
>> +++ b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
>> @@ -45,6 +45,10 @@ properties:
>>    reset-gpios:
>>      maxItems: 1
>>  
>> +  goodix,no-reset-pull-up:
>> +    type: boolean
>> +    description: There is no pull-up on reset pin
> 
> I have to wonder, why are these system using the reset property if the
> reset is not usable? Shouldn't the property be omitted?

The reset is usable, but it lacks an external pull-up resistor, so
the driver cannot switch the gpio output on the CPU going to
the touchscreen controller to input to save power as it does by default.

Regards,

Hans




> 
>> +
>>    AVDD28-supply:
>>      description: Analog power supply regulator on AVDD28 pin
>>  
>>
>> -- 
>> 2.49.0
>>


