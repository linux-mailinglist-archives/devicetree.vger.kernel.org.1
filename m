Return-Path: <devicetree+bounces-40671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C281E85127B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 12:41:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 389411F2261A
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 11:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5219539859;
	Mon, 12 Feb 2024 11:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HiQ81yYz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E92B3984D
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 11:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707738081; cv=none; b=rwSm6GpiImwKuGeXSiWuby45CdWk1bubqk7yJ/U4UK4Up38I0gvWEF9R0HpPXDkNn/9HvC5X2ZR8LPUB+5wpgsTtDn17fIWo8JeqZQtm70orK+m8Is5kFGprFhAk/S29J/JU9lY+QhDiJ05srSy+a4V0MrKe7p6J13L4gvDRfvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707738081; c=relaxed/simple;
	bh=KuXlmSfpNmX4fpfoouPCQWNnqbnzHqGvhmWdl9ZEb7c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cMiF6KEcfn5YICWhVFdCUxEHFrek0q0sDxXhKb419vyq6/qyxOFv04m0KYLzR7s7tNQbjrNuIFZEsTGelhje4hLWyiw42he7igq/2vOzeNJSZSSOntVQfcJLgkcHn8njXcSJJD1fjZdq9mlBDDzh3vjSZdVwtvbsugzKmDHkNTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HiQ81yYz; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5118d65cf9cso1005849e87.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 03:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707738077; x=1708342877; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1FzBBu2xEcTRGExM7mOli/YMO72agTbUU8XKmUNtMeg=;
        b=HiQ81yYzsokXKjSDn9k3Zwu6aWU/asKnRjOdAJ3BIVx1QU5fg/5+7xR1r0QpGuQ59W
         C0MOj6wvY+fyn/2oFF2Anka2tHjK4xYk2H7Y9Q2wGDOgCRy8vVqAArIJprDvoBXHI2KY
         pYITVrRa6VEgW7xt3Au1OpeGye8K+/OTRCRlAfvv0fvU+idb2SNr+xhxTAObXtFDAuF5
         gBMwEpzXV8o2nRlBd9KklqGhtdOFD/1GnreoE17RetHkhSrKTHSQA+0ORNFgZzj/uOFG
         vPBRCyfDDTckmrUV0oXcTRtoB5yidpB4cMGUvLlgvJKr2Dh6AFT9FRcgdY/c0Xk/oIpd
         sQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707738077; x=1708342877;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1FzBBu2xEcTRGExM7mOli/YMO72agTbUU8XKmUNtMeg=;
        b=e6MVTZkEc5z/jAeuI+fVLD1D0OlwI1ar/yd7CGjM+lzrTZ9nQ53B84sLaFzEwnzMwr
         Qp8KxDnaUCz+Ld3IfGUd8/VGDMvBbmuBgtX4fKCqaLekpzDJiTGf8NlvsVgQgHbuS9w/
         PJ+LLVv5ZgasjsDmgPafq+t2WDpRPiUuBjbD8lXGcKMzb4yGT9oRAusTNY2qH+vNE1oE
         UweI+h/nlH7t3fjtZ+hjnHdbz7VPTbB4JfROYkaBSo88Y8YW04vlyMp9kIynjOfuXf4X
         EIuFUl6iHh/Wii77dh/quxTLQnsGeO65GtWoKRK52GyYJ00Srb7uU/5V5KMI69yVeVmZ
         2NJw==
X-Gm-Message-State: AOJu0YzgvZOortK7tcgitjewKltBC5Atj67i/38JXfIfz1+HzsiqYxg1
	HcnYkZ6bRL1auQvqyHbVbDwNprF2v5VdpfO+4lKxWx6XmkVsBCRQGG85gxaTFHI=
X-Google-Smtp-Source: AGHT+IFzcAyQ8LhcstbeQTzbFP1rwTXKXSr/dloUyzSyigmRDllCADW5hqxjVZoTcJjK5VWSx2jPgg==
X-Received: by 2002:a05:6512:2821:b0:511:80b2:ed55 with SMTP id cf33-20020a056512282100b0051180b2ed55mr4253792lfb.59.1707738077464;
        Mon, 12 Feb 2024 03:41:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW4xlfP8hZAShA1QDDbp0XeiNl0CuyaCOIpmbYusQG6U4McIZ3T0RoL3RhhACQ2oTUXcr6Zlj1y0MbQXit6gtB3oxZbQRSmI68Oe06p92fwNgNLN4QC27G00jPuWSYBcnQbwHGqZ2d1BhLW/BwN79ThScdTC8seinXBaXjG+YJMi4oJDm/lstpP0iVtT1DHGLMrG+8dJfZswM8QIiYI7Fn/j2yHR7tExzuRsUszb7hyNDAKbEOfq1mmR5rr1Ybz7o0DvH8fG4LDvBKdJZ1hIIfj4LtZ+X1YCuuWD3hVBKmHjTTHpGeOKVnyRoDtjhya4e5fxwA85FZJYW0oP02eFWNQ7OQ70zxk4gVL26K5/MZFqpp5hPOWERX+7IjQeZvUOLje0Bod5GDx865Y+nK9phKaHWdgYHgCG0lo0pALorbDq+KAMCcJP1nyIRmC0MorTa7w37CiZjnuSa4nTmu+16/Tc7NVU5eo
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id az10-20020adfe18a000000b0033b4f82b301sm6664027wrb.3.2024.02.12.03.41.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 03:41:17 -0800 (PST)
Message-ID: <ed9bf914-8b3e-401e-93c0-77eae97e2ab8@linaro.org>
Date: Mon, 12 Feb 2024 12:41:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8650: Add dma-coherent property
Content-Language: en-US
To: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: quic_kuiw@quicinc.com, quic_ekangupt@quicinc.com, kernel@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Aiqun Yu (Maria)" <quic_aiquny@quicinc.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20240125102413.3016-1-quic_lxu5@quicinc.com>
 <20240125102413.3016-3-quic_lxu5@quicinc.com>
 <069b82ac-b59c-4665-8a77-6c11a2463faa@linaro.org>
 <690e64d6-8888-4f99-9ee0-c731aeea7762@linaro.org>
 <7edfed88-d84f-41e1-8c10-4af6efe53c4c@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <7edfed88-d84f-41e1-8c10-4af6efe53c4c@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/02/2024 12:31, Ling Xu wrote:
> 在 2024/2/12 19:10, Krzysztof Kozlowski 写道:
>> On 12/02/2024 12:00, Krzysztof Kozlowski wrote:
>>> On 25/01/2024 11:24, Ling Xu wrote:
>>>> Add dma-coherent property to fastRPC context bank nodes to pass dma
>>>> sequence test in fastrpc sanity test, ensure that data integrity is
>>>> maintained during DMA operations.
>>>>
>>>> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 13 +++++++++++++
>>>
>>> This wasn't ever tested:
>>>
>>> sm8650-qrd.dtb: remoteproc@32300000: glink-edge:fastrpc:compute-cb@1:
>>> 'dma-coherent' does not match any of the regexes: 'pinctrl-[0-9]+'
>>>
>>> Ling,
>>> How is this testing-patches-before-sending work in different teams? Do
>>> you have such requirement?
>>
>> No clue if the original DTS change should be reverted or these are in
>> fact DMA coherent, but let's choose one path...
>>
>> https://lore.kernel.org/linux-devicetree/254c1d14-25e3-4f4c-9e79-4ef7cec4d22f@linaro.org/T/#t
>>
>> Best regards,
>> Krzysztof
>>
> Hi Krzysztof,
> Add dma-coherent: true in this file: Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml at line number 89 can pass the DTcheck.

I don't understand your comment. Did you read the link above?

Anyway, I was asking: are you testing the patches before sending?

Best regards,
Krzysztof


