Return-Path: <devicetree+bounces-10302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA29E7D0B38
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 11:13:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B94DB2138B
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 09:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8A2B10A20;
	Fri, 20 Oct 2023 09:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uQJE5Cyu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C38110A14
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 09:12:55 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08A1AD53
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 02:12:53 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32d9d8284abso408690f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 02:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697793171; x=1698397971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HN2I5nh+oC2ndVXRmDeD0vH83PJI24dhJj907LkvOWw=;
        b=uQJE5CyuTG7m/Hspv6ds6MdKFf1z2dND8vLE3nxTZhF/UyGc+hdgWmZ/wg+agHsQRh
         n/MSIu1rejmaXkvUfnP3bkd7uUju02mTL5t5S1WZ4QiOBzJd/sHzhWQc09HkbVAbgbC/
         1Uhshq1x7fZIrmpz5cipDF3F6CnfEZRaHDq1TvzFv6UhqQGZhF4c87P2L9sw3xUzH7U6
         QmRtIyjpFHZG8BKnhd0S+we4OrIRD09HD5vQ5/rZZLhvrZ9LqqpS02v0pS3bztED+6BZ
         JAHu4ZtHkvC7rSwVZLUReakhnec5CvmXNT3/39dJLRK7vBx/lgTSTwo7RY83ZHowPJ0o
         FrNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697793171; x=1698397971;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HN2I5nh+oC2ndVXRmDeD0vH83PJI24dhJj907LkvOWw=;
        b=xTU2j6HcLHlbnYL8JA+7tM8fAh107kaylV45Wn2DiA1ThZEwx4xxDHhJeA4T/o5pCt
         Vou7snl8M3sNP4URCPYIFk26cDL+XEhmE+5WtWFk2wljTmSrWgYwp8aIouLjYWLQuQWM
         LplbGItAE76gMgmXEuY24aaJ33VyYGoCCdUaCDrFzRtDQliiTEpVxdUf2Qdj2ZoPKqdR
         l+JEcEGI20FF4iwg6TmlbrEyg9iGhAuwY+6p0rWaz8flHFq9sQXBnvrUhOF/DDew2nDa
         wPN40d6SeB86VmkY9d+GdXPcYs+snU6NVZ9k8VOUoJMl0PjlN5tRJsD+wZsQexHoKsha
         L/8g==
X-Gm-Message-State: AOJu0YxX/5yf9W1TlzfEodlt0CnFiuLCdrb+39d8lTmK/1YMhxYqxdj7
	gMLub4aXuR4UtA8kIEcYYC8fWA==
X-Google-Smtp-Source: AGHT+IFrVuKPZhg0zJdZexCqaj7pqlOmDrWzjoDPWGv0gcDBn9w4Ij8iPuihVcJZ3HcNx4v4d4BZ0Q==
X-Received: by 2002:a05:6000:11c7:b0:31f:b120:143 with SMTP id i7-20020a05600011c700b0031fb1200143mr852303wrx.59.1697793171074;
        Fri, 20 Oct 2023 02:12:51 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id n10-20020adffe0a000000b003200c918c81sm1237195wrr.112.2023.10.20.02.12.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Oct 2023 02:12:50 -0700 (PDT)
Message-ID: <00a64eaa-0e6d-419a-a54f-d67fe2b60a7b@linaro.org>
Date: Fri, 20 Oct 2023 11:12:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] dt-bindings: arm: mediatek: Add MT8186 Tentacruel /
 Tentacool Chromebooks
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231012230237.2676469-1-wenst@chromium.org>
 <20231012230237.2676469-3-wenst@chromium.org>
 <20231013-washer-mortally-b27c196ac50f@spud>
 <CAGXv+5GF7HfQSOg9c=G+c4DPUW24Ax7LX4raTynDbE3xc8iCdg@mail.gmail.com>
 <20231013-panic-vaseline-350c10e7d585@spud>
 <CAGXv+5EmLDWi3Lnca1vPft=9z9Cp2L2ee08in_b_21hipf9ieQ@mail.gmail.com>
 <20231014-proud-levers-eb03f30a0a9a@spud>
 <CAGXv+5F-x9m2WYZm-YLaxqio=VnfKkL26gLFbayJctBEJrSM6A@mail.gmail.com>
 <20231018-earpiece-dimmed-81c0f728d0b6@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231018-earpiece-dimmed-81c0f728d0b6@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/10/2023 17:07, Conor Dooley wrote:
>>> Then it seems like what you need is something like
>>> oneOf:
>>>   - items:
>>>       - const: google,tentacruel-sku262144
>>>       - const: google,tentacruel
>>>       - const: mediatek,mt8186
>>>   - items:
>>>       - enum:
>>>           - google,tentacruel-sku262145
>>>           - google,tentacruel-sku262146
>>>           - google,tentacruel-sku262147
>>>       - const: google,tentacruel-sku262144
>>>       - const: google,tentacruel
>>>       - const: mediatek,mt8186
>>>
>>> What you have at the moment just seems like a hack because you want to
>>> stuff all of these compatible strings into a single dts.
>>
>> It is. And it works OK downstream. The reason we want to stuff them in
>> one dts is because the firmware will not generate the fallback to
>> sku262144 as the scheme above suggests.
> 
> I'm not going to ack the hack that you have here, sorry. Maybe Rob or
> Krzysztof will. The list your firmware generates above doesn't even
> match the contents of this patch, with the extra "rev-4" compatibles.

No Acks from me either... Chromebooks board compatibles are a long
standing confusion for me and every time I forget why this is so
counter-intuitively. My comments for changing this were rather receiving
feedback "but our firmware likes it that way".
OTOH, board compatibles just have to be unique, so we could accept some
weird, counter-intuitive combinations... but it does not mean I should
be happy with them.

Best regards,
Krzysztof


