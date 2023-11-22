Return-Path: <devicetree+bounces-17865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B548B7F4546
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:01:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0F4CEB21277
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E250A5647B;
	Wed, 22 Nov 2023 12:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vM/GKcgf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BD731A8
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 04:00:54 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c875207626so51257831fa.1
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 04:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700654452; x=1701259252; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QT8MyelSxHYRQiToCy09U/tLdWe22C7FstDGwRxECu4=;
        b=vM/GKcgf3nI4usNcu66qef1XkFU45mV8UUNVOSgnhaxwATwVAZofzTX9GPiYqVwNyI
         arjngPb/vo0uJQTJogcrZug6ZluAP3dEOzl4d8r4F96E80EzfwbXRt06+J368guicsZg
         NjZgn/7mJNVnMZHiCnCqxEJSTPfSPmWGOpfw9tHwsl0QNIaHPPDJoH/S9Mmxv4tZ64JR
         HXHMJy0QCyWStwXXJzlyO1PHmYcIY5EmFBqGcbbzLgHxzarR8bAcdyt9frWzUCO1F/am
         nmW3NxR2KoAXJp3uIbSwKzpVK0gannOzf+OaSAOCzTc75ZaVEbvkZLkA1cZldQIEVeHZ
         VAXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700654452; x=1701259252;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QT8MyelSxHYRQiToCy09U/tLdWe22C7FstDGwRxECu4=;
        b=C5m2Lq9x/IYG/TJf0gv8T/vcY2hb+GodL4ehaOaZyi0C1nqironZ+MpBHej6nkPgYv
         sDEbSx/lCPrevrTJ+ILWpAZSt0iCiI4/EeF74RPv65NH9TxrYFs03iRPZfnPihnxjioJ
         qxMick/J6OtRufnOOrQyWgfaPFogH2IpRSc/z7pO/0NYUtVwYeIZa2Ar8BIwslfTNdI7
         eIH1JYRZbzA9xeP8Wp2SKFPodnQNAkwLvFbY2VfuI2lG+sBKzRMZaCNPJNT+1graFYiK
         I3kqUzbBun7VDst0Y4ZzxGxiE6eUHyskeJwzeyc4gg0rsfynrfD56Jsie1IRllsolJBF
         Am/Q==
X-Gm-Message-State: AOJu0YwokvtwJzZjrN+8r+heRiup/1Nsp0y+wQtgBD6n/cECyU6635dD
	YGW9brxM0hDbSOk3B7ywj3OFPIe5sGRvM+logRs=
X-Google-Smtp-Source: AGHT+IH4QxrWe3sdXVlKXzT9N600+s6al0su0XPhSnT6SPx+S4qznfyMQOc0Glysg5S/CC8kJVNoew==
X-Received: by 2002:a05:651c:1424:b0:2c2:8f22:d9c2 with SMTP id u36-20020a05651c142400b002c28f22d9c2mr1605866lje.22.1700654452500;
        Wed, 22 Nov 2023 04:00:52 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id s5-20020adfdb05000000b0032d8eecf901sm17204549wri.3.2023.11.22.04.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 04:00:51 -0800 (PST)
Message-ID: <e91c2fa3-2cb4-44be-953f-2bfa26db2b4f@linaro.org>
Date: Wed, 22 Nov 2023 13:00:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: usb: ti,j721e-usb: add ti,j7200-usb
 compatible
Content-Language: en-US
To: =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Roger Quadros <rogerq@kernel.org>,
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20231120-j7200-usb-suspend-v2-0-038c7e4a3df4@bootlin.com>
 <20231120-j7200-usb-suspend-v2-1-038c7e4a3df4@bootlin.com>
 <6f0da181-717c-4b14-ba3f-d287efe4105b@linaro.org>
 <CX4NADEZZEO1.3TXPVNOONKBCF@tleb-bootlin-xps13-01>
 <d0cc33d4-2b1a-43cd-8cd9-6b58d6c71c85@linaro.org>
 <CX5A3OSPKM1Q.1CPN17KI0PD7A@tleb-bootlin-xps13-01>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CX5A3OSPKM1Q.1CPN17KI0PD7A@tleb-bootlin-xps13-01>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 22/11/2023 11:46, Théo Lebrun wrote:

>>
>> How ti,j721e-usb can be and cannot be compatible with am64 in the same time?
> 
> The code tells us that there is no difference between ti,j721e-usb &
> ti,am64-usb. And the commit adding the of_device_id entry agrees, see
> 4f30b9d2315f (usb: cdns3: Add support for TI's AM64 SoC, 2021-01-19).
> Here is the entire patch because it is so small:
> 
>    diff --git a/drivers/usb/cdns3/cdns3-ti.c b/drivers/usb/cdns3/cdns3-ti.c
>    index 90e246601537..eccb1c766bba 100644
>    --- a/drivers/usb/cdns3/cdns3-ti.c
>    +++ b/drivers/usb/cdns3/cdns3-ti.c
>    @@ -214,6 +214,7 @@ static int cdns_ti_remove(struct platform_device *pdev)
> 
>     static const struct of_device_id cdns_ti_of_match[] = {
>       { .compatible = "ti,j721e-usb", },
>    +  { .compatible = "ti,am64-usb", },
>       {},
>     };
>     MODULE_DEVICE_TABLE(of, cdns_ti_of_match);
> 
>>> I've followed the same scheme & added both of those:
>>>
>>>    compatible = "ti,j7200-usb";
>>>    compatible = "ti,j7200-usb", "ti,j721e-usb";
>>>
>>> I messed up the ordering in the added 'items' options, but the logic
>>> seems right to me. And dtbs_check agrees. Am I missing something?
>>
>> Logic is wrong. Device either is or is not compatible with something. At
>> least usually. We have some exceptions like SMMU for Adreno. Is this the
>> case? Why the device is and is not compatible with some other variant?
> 
> My understanding is this: j721e & am64 are strictly equivalent. On our

Then this should be expressed in the bindings. Currently and in your
patch, you express that they are not compatible.


...

> 
>  - properties:
>    compatible:
>      oneOf:
>        - const: ti,j7200-usb
>        - items:
>            - const: ti,j721e-usb
>            - const: ti,am64-usb
> 
>    J721E & AM64 are compatible, express that & update devicetrees.
> 
> Option one is simpler & doesn't change devicetrees so I'd lean in that
> direction. What's your opinion?


This one should be for am64.

For your j7200, it depends whether the fallback to j721e makes sense,
IOW, if the Linux can use j721e compatible solely to use j7200 device.

Best regards,
Krzysztof


