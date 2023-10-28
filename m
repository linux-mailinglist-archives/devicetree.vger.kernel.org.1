Return-Path: <devicetree+bounces-12625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C587DA939
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 22:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 86081B20E02
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 20:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E0318030;
	Sat, 28 Oct 2023 20:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uN+cBuwF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8DAD295
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 20:17:19 +0000 (UTC)
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F5D7CC
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 13:17:18 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c509f2c46cso44801121fa.1
        for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 13:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698524236; x=1699129036; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=y6LOkRpG6W1hRoUcQeGmxLGo8P527niQeswx0pnBGFY=;
        b=uN+cBuwFxCcv8oMBj4JwXk7ZikMGEd9jBmBmziPPlQV4NpCPiYhytmZaf6etZEZa8s
         mfBiS2xj9As81fzEyRg0ozxKqspGLwyMxG07hEbcnIZjzQWjN5p51WpE5mUIxE8idZ6W
         CFd6L4Wm3b+Ol495OejmHhQNCGIFuElEHjxPUGxCyF2jcMhF+3O6fk9lopLYmTUeziKb
         Bnq55BQJH+YF9i9ivn9WSCqafvZVJNpauMV+kd4+q7h7N04FYfyZqHMwWMLBs4bnE4ql
         OMSZAL1gCe82UKPc0dE/roNpg+2P4wpMo/r9XlykqhsyWpbrc5gzZnzd7TK3kawGXNWh
         DUog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698524236; x=1699129036;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y6LOkRpG6W1hRoUcQeGmxLGo8P527niQeswx0pnBGFY=;
        b=vRkcgk+kAwOkaumAVXnDe8Pr08iVT2ghjBa2SazrF7WTtZNFkN7n9iKhukf4e4U9mm
         6gDWklWpO3jFKXiHQSfvQDIAEoUybbr8z1sQP+ROuXSXcY6Blb2cB5qA4s8pYnuMPDpb
         G9Or8S4gRa2irK+wmMHiyGjP123A8mkyTMUQ1QhsAPQfhrauaMMAMwFiRW77+bQ42btu
         t1BRng2m00pdSYiYR5/W3jDsmcX7e7AmN/yWcVHQkpL8yTvhb7EtUJjdjFi1sc8D/zeo
         qxdnRbvQGS4qLWiAJ7c446rzp/8D3fKhGdQEgA2u8kuxq4FBeQYoaRpH8uW5TRo4AMuu
         E4Kw==
X-Gm-Message-State: AOJu0Yx/ynko5lFJFpoTKvJYGK/jehtZIWI4HG93WsIV2xWQ1jcqWGSa
	dezGT+tIDrHERVwYDZGMyaiTqw==
X-Google-Smtp-Source: AGHT+IETCs0kg8gUDKDKKyS5ZorTg10UbQs5S2PEUJ9O/PBTcJimaEPsl5Ddr4O5t+dsaFbKWyvXnA==
X-Received: by 2002:a05:6512:2506:b0:509:11bf:340c with SMTP id be6-20020a056512250600b0050911bf340cmr1884205lfb.47.1698524236413;
        Sat, 28 Oct 2023 13:17:16 -0700 (PDT)
Received: from [192.168.0.22] ([78.10.206.168])
        by smtp.gmail.com with ESMTPSA id q25-20020a19a419000000b00507d0a0366esm761495lfc.100.2023.10.28.13.17.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 13:17:15 -0700 (PDT)
Message-ID: <dd889d4b-fb76-4862-9756-110cec04927f@linaro.org>
Date: Sat, 28 Oct 2023 22:17:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: regulator: add Samsung s2dos05 pmic
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20231024154338.407191-1-dsankouski@gmail.com>
 <20231024154338.407191-2-dsankouski@gmail.com>
 <5c126f13-d199-4e09-bb58-fbf281947115@linaro.org>
 <CABTCjFAkjw+EO2ZgPcbKP+dX8d-Rem+ceoNUVGahFM8zUhKbMQ@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CABTCjFAkjw+EO2ZgPcbKP+dX8d-Rem+ceoNUVGahFM8zUhKbMQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 28/10/2023 18:01, Dzmitry Sankouski wrote:
> вт, 24 окт. 2023 г. в 18:59, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org>:
> ....
>>> +title: Samsung s2dos05 regulator
>>
>> Not a PMIC/MFD device? If not, then:
>> Samsung S2DOS05 Power Management IC
>>
>> Otherwise, if this is only for regulators:
>> Samsung S2DOS05 Power Management IC Regulators
>>
> AFAIU, PMIC/MFD would be a device, with more than one function.
> Analysing s2dos05 vendor code it's capable of generating interrupts
> and measure current(which I'm planning to implement as a hwmon module).
> There're regulators with interrupt functionality in linux. Since
> current measurement
> feature would be in hwmon subsystem, can we consider s2dos05 NOT a PMIC/MFD
> device?

These PMICs often have also RTC, USB connector, battery charger and/or
fuel-gauge. If the main function is PMIC, keeping it in regulators seem
fine. The bindings should be complete though (or at least ready for more
features), so you should investigate hwmon or fuel-gauge now.

Best regards,
Krzysztof


