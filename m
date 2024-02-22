Return-Path: <devicetree+bounces-44641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4106985F2D2
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 328861C21ABA
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D1FA24A11;
	Thu, 22 Feb 2024 08:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tPygj7H0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32893288D8
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708590172; cv=none; b=YMt9Ejt4ywVCAE9bXqxZY4ao2xmDjY7L2vEfGdqbOM+Fc9kNQEqJo6DXLleFKpj7nTzioSNxFotuMAPTn/8HLbHczx7TkRT3hQXrh1P5cdulog4eNh+96rPAPz4Aaoixg40Ubt6oH5hKbCIQH926Nv9uGoy82CZ+G4ihEDniFDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708590172; c=relaxed/simple;
	bh=5AwRT2JiBUOX1R4X6gwPJgsvgWHGje63JXijzd0e5wM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BjG2AYmu6/FRCQqnvP4+VyS9p4CWVqi1ZJjQaxSQLg4i1hqtZoZadGL9mmGykt19vS+EM5q1roX2kJ1+8cKpNil7d2bMU4lF7Nm2hSUT/IFZcYcAMdXKpj0vuD3vwrn6/4D8WhIam2N03JmRYtbwA4z0uCjDWrllf6vwAO4GKHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tPygj7H0; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a3ed9cae56fso108211366b.1
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 00:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708590168; x=1709194968; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+M3CyaaG1xIHzvuviy561bx8YjydfGJdpAphxFJAYmw=;
        b=tPygj7H0nZG2kNEXzkcrxdoxRuv25e3DmY3opG3CA/3SNNDpuXyFWVa7swloNhAw7V
         0gCAql74oLBBKA3EJUpOJzDAF5Cz05m939FdHPeIHhvyNUda8OaB78XM9ISmkrOr1UXV
         VeC7k6bLC7bilBnrxZ/M+Emc74MjgxkgsGx+OOtDVwXdfq2O4sTtLuIpJ2fYxEPJ3lvh
         nuztB1fepvRuCLoXuuBvhdWqLqRROnSXQim0xW7Jq+htu0/Fl8Xypjuyzvto9ZxpjUWA
         0/nmGSLmDFcTJMmbzfCnPinUNeLp/HvmNTK0YshR6Td2AnAwIo5rPVyVVkM0fB5V3cfp
         JP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708590168; x=1709194968;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+M3CyaaG1xIHzvuviy561bx8YjydfGJdpAphxFJAYmw=;
        b=uL9ryxMYDS6ezM9FCATfoH/Rm9UyyMllM0ovdvJ81ygS+U5IALSgK5GCwYlVNuGJ3z
         Wn40GgtPs33Eeb6hv0cWsk/1FaIssGZQjyds4zh+H6vUFQbnu1JK9y7haXUu2LVRvoNv
         RL5U8Y80i9cAV1dYAXcop+5ir1cQV6uJln7Z5hfNw+UP0Sn0otsGKSOoYo0jhRnWN4y7
         wBrS/KoCVNt/IJL4rO6KUe253IKkGgKF2mYs5DEJpg4rZGBNtVN2iVgK1VgtZgk3G3wn
         X7fnzwrPcCcRfnVxV9A1wSWK2XG33Be+9ukqEmuR1E+Un2jM4gNAuB60lYYXGawhMPza
         kDsw==
X-Forwarded-Encrypted: i=1; AJvYcCU1zSDexEEMlr6fT7meNL1dzDqJI3SH4rdpdjoS/uBYt65zm2Q2fgiH7xlLpsWqyFLV6+K7ypIbFQikRJAHqk/ab8MUV1Gi1C/Yhw==
X-Gm-Message-State: AOJu0Yw2/RAfhuKpp2E1i3Zhum9d8IX+12yLP1ESG6vXcudadz9Lv+wP
	0UETj0x6DkBhPZ1Dv1tkhwl5Jd06DsEHDaYn37hQtlZRf6feHLM39jP21g4J3OQ=
X-Google-Smtp-Source: AGHT+IF5OC0QqKhk9LNEYX4omFlszV8iBYt7ftIu+xTbn+bVyPx+r56gJuPGFmmkRmCiz9fVHcs+9Q==
X-Received: by 2002:a17:906:b812:b0:a3f:664e:e484 with SMTP id dv18-20020a170906b81200b00a3f664ee484mr1545973ejb.25.1708590168488;
        Thu, 22 Feb 2024 00:22:48 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id j10-20020a170906474a00b00a3e50e01612sm4738948ejs.62.2024.02.22.00.22.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Feb 2024 00:22:48 -0800 (PST)
Message-ID: <c2bba1fd-bda3-4dc1-a62a-b3d1039926b3@linaro.org>
Date: Thu, 22 Feb 2024 09:22:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: usb: typec: anx7688: start a binding
 document
Content-Language: en-US
To: Pavel Machek <pavel@ucw.cz>
Cc: phone-devel@vger.kernel.org, kernel list <linux-kernel@vger.kernel.org>,
 fiona.klute@gmx.de, martijn@brixit.nl, samuel@sholland.org,
 heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, megi@xff.cz
References: <ZcaCXYOf6o4VNneu@duo.ucw.cz>
 <3a662ef2-1888-4f24-bebe-3ce32da9d277@linaro.org>
 <ZdZ8+vwoILO3pf0h@duo.ucw.cz>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZdZ8+vwoILO3pf0h@duo.ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/02/2024 23:45, Pavel Machek wrote:
>>> +    properties:
>>> +      compatible:
>>> +        const: usb-c-connector
>>> +
>>> +      power-role: true
>>> +
>>> +      data-role: true
>>> +
>>> +      try-power-role: true
>>
>> I don't understand why do you have here properties. Do you see any
>> binding like this?
> 
> Well, it looks like I copied these mistakes from analogix,anx7411.yaml .
> 
>>> +
>>> +    required:
>>> +      - compatible
>>
>> Drop, why is it needed?
> 
> Again, copy from analogix,anx7411.yaml .
> 
> Should I try to fix up analogix,anx7411.yaml , and submit that, first,
> or is it easier if you do that?

I'll fix it up, thanks.

Best regards,
Krzysztof


