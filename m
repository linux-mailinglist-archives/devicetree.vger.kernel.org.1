Return-Path: <devicetree+bounces-22449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D82A38076EC
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 18:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64D2C1F2115F
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65FA06ABB6;
	Wed,  6 Dec 2023 17:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nv4Ah053"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AEC9D46
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 09:48:45 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-54c74b3cd4cso153629a12.1
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 09:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701884924; x=1702489724; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tdRKal4iXJGJXBB9UAZsI4xJD6pHumAooabO1AayRHs=;
        b=nv4Ah053jPTJ/MziboIooMIbNheUdyz6T+SbS+QTY9Z2z8qSQv/ChGFA0NyIAD+Tst
         lszTf12SHy6nRlSEFv4uwH6491dILjx3uJGGHQFIh6NbOgdQ1URypmqgW74RPK2bj4CN
         GFukIggX+PSpnUZKTEi96watGB95v9rj3Rwv5q+rmtJAR8Iiy3JP2IvaSbOkihFzNUNd
         JBv9gblU9daKIW4/D7CO910xH8Czh2dIIhpjZ89y42BED9SEfBhvNML/lBZr7rC5CfwK
         5GVJmxoNrXfFr7qi9ERajzp9K0RNmeWtC2RLcGpsvBexLAe5+APPI5PrZiktE1f2T+lx
         5JDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701884924; x=1702489724;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tdRKal4iXJGJXBB9UAZsI4xJD6pHumAooabO1AayRHs=;
        b=uMqN3dMoKhj4sDibNfXNg+34ZU9wIUf4f0dveG1/IFDwQeL/aa3RVqCnqAzTHEqkfa
         VyBROquNttHuJmNGYfhu9QCvVOOnV/2su+Bm5g253U4vmGUZEE5IcjqYlSf5aHUVECLo
         7Di/ZRmrRNbKfKykJ0VkYUXzPiT3Kdh1edh4exrYMTnBUY1YL8tQWKN8lGmVQit3QlBN
         6v9p+xwNoABp4rWtWRJFWecbJuxvCtKXtxh6bN6LURE7kRc66iCnt7B2aixqcIIH19lN
         ItmHNAuQzlYQlvQEDtpQQD4tHIaiPWuxLdUoUflNGgkN+FL5ruf13WsjdQhV3ZQvyBkG
         rrwg==
X-Gm-Message-State: AOJu0YwZFm8fBuCNAx4X6qEKWywnBL/DdaBw6iKD4L57hjCCNYUBoIPR
	rFO8G4/RnBloIxcVBd+dw2HRhLzhKdleYZ/Jnmk=
X-Google-Smtp-Source: AGHT+IG1QLm0QkVQ1Gug7T2zhpQ2tzqMYFyzhDpKE6lVCtAK/f83XPwm21bIrf7kxKZW+3kEpYogWg==
X-Received: by 2002:a50:9ec3:0:b0:54a:f1db:c2b6 with SMTP id a61-20020a509ec3000000b0054af1dbc2b6mr1546554edf.20.1701884924018;
        Wed, 06 Dec 2023 09:48:44 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id u13-20020a056402064d00b0054bde4df7f0sm218309edx.66.2023.12.06.09.48.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 09:48:43 -0800 (PST)
Message-ID: <7f0c906c-9b36-4b29-bb8a-d65621e9e08b@linaro.org>
Date: Wed, 6 Dec 2023 18:48:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: interrupt-controller: Add support for
 Realtek DHC SoCs
Content-Language: en-US
To: =?UTF-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20231117162709.1096585-1-james.tai@realtek.com>
 <20231117162709.1096585-2-james.tai@realtek.com>
 <c3a98e2c-ba62-4798-a0d0-a8bc1fe5bb6b@linaro.org>
 <7959920acf004f3cb8072de1e17439fa@realtek.com>
 <e1490203387d4c48a5f8c4040ece038a@realtek.com>
 <6250c57b-6d38-4085-9a79-58e4e5ed1e3d@linaro.org>
 <cf2f9fd124514cb9832e942e16b8fa6e@realtek.com>
 <5134d2c7-b499-400d-bec8-ae0de1eff7db@linaro.org>
 <f27cb5d8943e44b597a13d7655edf4d0@realtek.com>
 <3356a35c-0c50-4539-a955-01d2e67b4eca@linaro.org>
 <612d61f5fae0415f9c8eb93b12f49645@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <612d61f5fae0415f9c8eb93b12f49645@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 06/12/2023 16:07, James Tai [戴志峰] wrote:
> 
>     misc_irq_mux: misc_irq_mux@80 {
>       compatible = "realtek,rtd1619b-intc-misc";
>       reg = <0x00 0x80>;
>       interrupts-extended = <&gic GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
>                         <&gic GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>,
>                         <&gic GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>,
>       interrupt-controller;
>       #address-cells = <0>;
>       #interrupt-cells = <1>;
>     };

So you have strictly defined number of interrupts and the actual
interrupts per variant.

> 
>>
>> Look at all other bindings covering multiple devices and their
>> clocks/interrupts/interconnects/reg etc.
> 
> May I adopt the approach used in this YAML for my case?
> https://www.kernel.org/doc/Documentation/devicetree/bindings/timer/allwinner%2Csun4i-a10-timer.yaml


I am asking for this since few emails.

Look:
"Anyway, you must describe the items. Why this is not fixed but flexible?
Hardware has different number of pins? That's unlikely."


Best regards,
Krzysztof


