Return-Path: <devicetree+bounces-16356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FC27EE5DD
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 18:24:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCCB3B20C6B
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 17:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9950239FF5;
	Thu, 16 Nov 2023 17:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MhvgL7X8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E71E1A7
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 09:24:12 -0800 (PST)
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-778a20df8c3so63560185a.3
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 09:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700155451; x=1700760251; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=41B+9Id080E/lA30UzcHBu/af+VTyRdDHO4WCg6iwZQ=;
        b=MhvgL7X8zLqG4TXziaO5qvKJ5mC98dugqkArUfRykNgNc78EtSBRAt0dXsTFRywnPI
         Q+WmWm5sisKRAO/i61GaefZNBDXYm8G4Poth72yCihl5ckvj0rNFhuVNWIWPXSuLqe3m
         7owFZDe50bV4nRCJz+3PjnILRyWDCBO97ZCESGTu5IR6otu7oUMYgpnxf0ZUWbvHcUl4
         0bIsIfZnDDUd/spQ4JKWLz1KPoSHg5KiN3xM50Gsd/ZW10eZrDAN3vB7fQunb+aqT0Kx
         4daNuO0hQRdimO9HfFe15WbShIRInojm8WDLXyVn8eciMvPvmSSwjCwTaKgX7DmAIIF4
         vEXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700155451; x=1700760251;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=41B+9Id080E/lA30UzcHBu/af+VTyRdDHO4WCg6iwZQ=;
        b=BKCtmmaZPsittwe2SMr0PIFyu0G24fvaujiPa6HvoEl5l9wr6/6cBVKVrg3t99cRTF
         NkQt5uMBCXAGiAYnLxGG0oRy0+bXUIX4tWnD3ZqgIH246Ev3f6VVSTsQx9ddIsB3J/Qm
         PmlJRzH7fynd5D978oHlLVeFA33nc8ORJSeZGx2+hdbZo0blmJMOeWdPWJkuDtGhYzh7
         5lvobWQ5PAClvtSnPyZHZQp4ZqeVmn7xvUNbonMxDTe2NQmxEN3Lil68zP9QrkLAIjUZ
         lz9XAbyOyhlJIFCHsL5E5PZ6X9+Vy3lQKdvfy81yEj5u7L9cHDbkSZi/G4j4U3x0WJSL
         D2+A==
X-Gm-Message-State: AOJu0YzaRjg8nZD6USIRg3XJ/Zk8EAqS7hFj7uPQgIIIBieBHmgyjTyR
	+br+y03wN6k2X0GVVCOS4dTeioF+GgmwhdLjrl8=
X-Google-Smtp-Source: AGHT+IGtipLrEGlJDumuhAyuw6PFydwkIrhAl4mhxOzkY8FotDBONNunJ6YOeC+SL41x6k2AHAJzXg==
X-Received: by 2002:a05:6214:c62:b0:671:3493:61e8 with SMTP id t2-20020a0562140c6200b00671349361e8mr12240400qvj.26.1700155451364;
        Thu, 16 Nov 2023 09:24:11 -0800 (PST)
Received: from [10.44.189.251] ([12.161.6.169])
        by smtp.gmail.com with ESMTPSA id k9-20020a05621414e900b00671ab3da5d0sm1488706qvw.105.2023.11.16.09.24.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 09:24:10 -0800 (PST)
Message-ID: <5b526a71-0f49-4c20-8ef6-8abf1eba06d2@linaro.org>
Date: Thu, 16 Nov 2023 18:24:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] dt-bindings: input: microchip,cap11xx: add
 advanced sensitivity settings
Content-Language: en-US
To: Jiri Valek - 2N <jiriv@axis.com>, krzysztof.kozlowski+dt@linaro.org,
 dmitry.torokhov@gmail.com
Cc: devicetree@vger.kernel.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 u.kleine-koenig@pengutronix.de
References: <20231108155647.1812835-1-jiriv@axis.com>
 <20231108155647.1812835-2-jiriv@axis.com>
 <eede2e04-45e5-46fb-ba00-fec0a7862711@linaro.org>
 <368eea0d-0445-4286-8489-9a4a109606db@axis.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <368eea0d-0445-4286-8489-9a4a109606db@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/11/2023 17:00, Jiri Valek - 2N wrote:

>>> +      The number of entries must correspond to the number of channels.
>>> +
>>>  patternProperties:
>>>    "^led@[0-7]$":
>>
>>
>> Best regards,
>> Krzysztof
>>
> 
> So are these changes fine for you?
> If yes I prepare new patch revision.


Yes

Best regards,
Krzysztof


