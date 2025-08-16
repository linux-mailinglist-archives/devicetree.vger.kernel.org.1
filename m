Return-Path: <devicetree+bounces-205430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4CDB29026
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 20:55:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C8A8D4E0EC7
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 18:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29A82066CF;
	Sat, 16 Aug 2025 18:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="S1igk2Qo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E4520102B
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 18:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755370536; cv=none; b=ZhoElKHRCTkTRPx8KOH/AXtRjRHlEDrmQxeF8HF0W+o+a6Cxp+jnBJFfb1WHGq5VPKdbfwEhqiJZBi06b7sgHTi2BFHDng1XdZbzfiIn7XrMn5f30p/33zmtfD07HIpDsIdCmQ1a+prA6NhtRbZwsckiewUE9IzmhrXCqO7TiAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755370536; c=relaxed/simple;
	bh=e7uChWhGMvZHa6Mpyo4vNChVMnVBmFr56RHl7o6kiq8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KXSKyUDOSrFl9l0+4qTdXwJDAtauS3O2TeJQya+DnuvZrF9rhcSPOXYSXI8/VKUUPnMpLCBpi7rMUWC7WKLGR7Z/xEX3bwYVjj8j9xhEA6baTxWxj9yBjnffs2D92iY3DiUos9ovdcJAvOxmxgZkSxzCWAXLZAmqwZPyKLwVx98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=S1igk2Qo; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-74381fdbdbeso1605690a34.2
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 11:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755370534; x=1755975334; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ffPmnzaqLO3di+HvejIJSUJDzn9TWvgequfo9PXfSM0=;
        b=S1igk2Qoa9bDBOAF/e5k3FdjHD1V2HTomiRHp40QZE0MPI3d92UOrh22x7QsJlZIz5
         uKaTMObYlBAiLh52RXauM/3mpg1x1A8lNz/UxUgLw/JoKiXeeEF87axSVbip7bg40IKH
         LqNsft42EzC7NKB6vhfpfYwp7Hi3P31dviBnmQzoni9pp1zPwmuuWGf7E6Gf+4aoEgtc
         H1mFKNCGllFy04RF2g0qW5MqrgYWphclRO/EX67pYUd/2+SUB9w41hpMFIDlJ3Dsd0kc
         CW8KIiCyORqODQSrwQJ1oHub2DrYhP8OK0T4iTSgCPVzMegokvMd5/tw1M8wwj7naVE4
         FLKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755370534; x=1755975334;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ffPmnzaqLO3di+HvejIJSUJDzn9TWvgequfo9PXfSM0=;
        b=rLHCzwr6gcagL8il0WY7uL57ye1u0LwCNupmphjlrYHJaIq9duC0I2Hx8u6skFEHWc
         qUTPlVJgewkadKHMkvsd58PTx/ckUE5Ajp0g6UEfWtuOFxgbsCAiNib8we8NGe8LeU9N
         ZEclwO0qhbC+07zDT8qARR0qvzuz/hvpjPnmV5JLnzeIUyRTUmllRPo9uo6bIVV0pRb9
         EmI3sf6d+79A0fEQOAbYw/w2Yot0n8x2/edzAjv5gsEdJ0ZjafkQZFBdZscpWfqiGJn+
         +pViV/UiV2akT/61ZO8VKAZvos9wTb3aiqdk3D6RRyYpPVcnQhTJlpLtd2XPouc5Attt
         PkFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWv+WLv3F6OyDYgfZJ+JQ40uuDMyGDUMLPmAPfAgSMlRKiHdAefVlakeZ4rhwt9kJE4Fx5ooEH/F7MB@vger.kernel.org
X-Gm-Message-State: AOJu0YyWi/SqEAg1XagdoRfnwpoz4fvrkgxpsEZTcr9twUFHhRge4ovM
	/CIGq7iCCUo04mUjrabO9e4QBYjvccyfhG6ngrx+Jc68nokfexAzy5zB/ksqyaYtw0c=
X-Gm-Gg: ASbGncvF+E8RjvJyGbUJcEr7LKVW1CrooOZGfky3b6KeNu+I4Lu3DxmdqkpC9Lq/PDB
	RkRPTNMEml4Ol2t4Tt9J3U4arQ+oeO2i/5uH7QD8FNgcvkgHsIIcr5kf5aTHUt2ItNadHJaXwtA
	UlS0fQGpiBc6arphBehnMIfxeLsBJyFdK7JCyIW0Op3o3cMZ+JsuYL5KB9CgIN+wAH9TKpJBLfA
	/aIP12iRE3mDcYrVRPIKCWbHYyEvHS0SvOCprGh5tnHoreiqZsEPtKHbkKCswuyYQUIZSt+tsFt
	bpqKd56MfTDpCcEtVNnPI9IU4bB5SfGbv36mPMAdWMIIua3VOdNkBIs4MVzyjcUbm5gcbIkdWVx
	fEHglwfqVLXYONHH5HWA1dFTgvMBrrrAhUlS+0139R6vsst+4wUosLDHAfdGF2/etb2+zMJD6
X-Google-Smtp-Source: AGHT+IEo6Cd9FfYudnBVmWWkFVcb8dBQtaWN3pYM49rfwJr5rFglXZnKGElmuA2TlxnPrLBE2fctyw==
X-Received: by 2002:a05:6830:6f8c:b0:741:a842:18a8 with SMTP id 46e09a7af769-7439bae80a5mr1909896a34.22.1755370533643;
        Sat, 16 Aug 2025 11:55:33 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:fcf8:116:11db:fbac? ([2600:8803:e7e4:1d00:fcf8:116:11db:fbac])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61bebfb34f2sm488110eaf.10.2025.08.16.11.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Aug 2025 11:55:32 -0700 (PDT)
Message-ID: <66063382-78c6-4d93-be25-46e972e390f4@baylibre.com>
Date: Sat, 16 Aug 2025 13:55:31 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: iio: mcp9600: Add compatible for
 microchip,mcp9601
To: Jonathan Cameron <jic23@kernel.org>, Ben Collins <bcollins@watter.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andrew Hepp <andrew.hepp@ahepp.dev>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250815164627.22002-1-bcollins@watter.com>
 <20250815164627.22002-2-bcollins@watter.com>
 <20250816105825.35e69652@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250816105825.35e69652@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/16/25 4:58 AM, Jonathan Cameron wrote:
> On Fri, 15 Aug 2025 16:46:03 +0000
> Ben Collins <bcollins@watter.com> wrote:
> 
>> The mcp9600 driver supports the mcp9601 chip, but complains about not
>> recognizing the device id on probe. A separate patch...
>>
>> 	iio: mcp9600: Recognize chip id for mcp9601
>>
>> ...addresses this. This patch updates the dt-bindings for this chip to
>> reflect the change to allow explicitly setting microchip,mcp9601 as
>> the expected chip type.
>>
>> The mcp9601 also supports features not found on the mcp9600, so this
>> will also allow the driver to differentiate the support of these
>> features.
> 
> If it's additional features only then you can still use a fallback
> compatible.  Intent being that a new DT vs old kernel still 'works'.
> 
> Then for the driver on new kernels we match on the new compatible and
> support those new features.  Old kernel users get to keep the ID
> mismatch warning - they can upgrade if they want that to go away ;)
> 
> Krzysztof raised the same point on v2 but I'm not seeing it addressed
> in that discussion.

One could make the argument that these are not entirely fallback
compatible since bit 4 of the STATUS register has a different
meaning depending on if the chip is MCP9601/L01/RL01 or not.

Interestingly, the existing bindings include interrupts for
open circuit and short circuit alert pins. But these pins
also only exist on MCP9601/L01/RL01. If we decide these aren't
fallback compatible, then those properties should have the
proper constraints added as well.

> 
> Jonathan
> 
>>
>> Signed-off-by: Ben Collins <bcollins@watter.com>
>> ---
>>  .../bindings/iio/temperature/microchip,mcp9600.yaml         | 6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
>> index d2cafa38a5442..d8af0912ce886 100644
>> --- a/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
>> +++ b/Documentation/devicetree/bindings/iio/temperature/microchip,mcp9600.yaml
>> @@ -4,7 +4,7 @@
>>  $id: http://devicetree.org/schemas/iio/temperature/microchip,mcp9600.yaml#
>>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>>  
>> -title: Microchip MCP9600 thermocouple EMF converter
>> +title: Microchip MCP9600 and similar thermocouple EMF converters
>>  
>>  maintainers:
>>    - Andrew Hepp <andrew.hepp@ahepp.dev>
>> @@ -14,7 +14,9 @@ description:
>>  
>>  properties:
>>    compatible:
>> -    const: microchip,mcp9600
>> +    enum:
>> +      - microchip,mcp9600
>> +      - microchip,mcp9601
>>  
>>    reg:
>>      maxItems: 1
> 


