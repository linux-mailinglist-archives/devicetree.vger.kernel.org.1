Return-Path: <devicetree+bounces-103564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3768097B5D6
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 00:40:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 019DD28A7A0
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 22:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABD6A166F1A;
	Tue, 17 Sep 2024 22:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qptWSB0R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82F2158522
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 22:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726612830; cv=none; b=LSE64W1dssknPusG2JhqkIGp0yEib/p6KeDkarmTOegtFbyOe3ENc86MNyHmBXOfkBz8fDGKCkZiQSRg9FWq9GUkptJg01JcyCt3AjewRNcQpdlW6pD/fCde1IUQxykA03erAII4vgt1RpHUHt1aj3/BjgP3wRprG5V3hj9uJD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726612830; c=relaxed/simple;
	bh=swxROHGBOQwTMcDCgjqL8DLK48S6IR6xf/yufIyqLkk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dNJ8IPDSEt+Sf2oaxw76wbvCjeTPQAFQ/wvvebpLtzBUW56r7lQKdZM/AWTXTns1G0wpXNbCVe9qnHN+BCwBi7buRtOo22Ah31U85mZ0J5BHN9nBJyTe7kAAptq0J5yTnt+MX2syupxnMDmW2J/pvNEDoEncyAA+qr+J2Po49sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qptWSB0R; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a8ce5db8668so1056187666b.1
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 15:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726612827; x=1727217627; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CjZpdfv4P2hHCjsU7XxJ4hyGhQ9pjUlUIY0HPHLeOyM=;
        b=qptWSB0RZg4DA9a3/WkJXoNv6PLloq34qNiwNhTlcyOD5vRjGiMW8qoPMDeDjrvYal
         ZU9Qx5UfCKcQm8bR8dB+b+992fQ9NDwhyA9/5fAgjN7IXVUr2sLcq8p57SvbacUtvkQF
         G6axkrTztrlNTrmLDdSElMFhu5kF39UaKDwKp/VBqjk9J0kO6UMCdRXMXvF8rc2TcFAG
         v70jW0c3BJYLQztidLlP4l1h0du+NqN35xQOoOlyXokGENIXsYxBwDU+dU6/ThK6GNob
         W/irvfUKYnEMqttEo2MBeM6QSDYMHrVTGzQv3E003FZHBI8umsQyK0HEN8zMKS2HliTD
         ZJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726612827; x=1727217627;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CjZpdfv4P2hHCjsU7XxJ4hyGhQ9pjUlUIY0HPHLeOyM=;
        b=Su0uXYqotxza3v0XvMijOG8fcNDVLYPSiYLJ9klqB2Dzwo2LTFsXialMpjS/Tqmpcb
         y1XjH7fsBt2uk3l/P51a5QIi5SvZEyJ5T0Gqvlcj6y2wLgnAW5xDB1n7UMKw0NXwIXbz
         IJj64t7tXte/kZWonUryGWSZvtK0OdoLLo/oeWQDjr2uGcVlFrP9RdXg1wjtsPBplCDk
         ER0vZr9N17sKGv7n1kxSU+QfMkXjyyItXNp/wmJgD9fyv4MdaUV31XWMaA4KdrKsBDRP
         W/djU/KEhO73SrMF7LuDIX42G003/XixMYarIza4US0d1Le2sGu3lmu1ygH6PRKZMG3j
         zLAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSUmu1Y1yDa+DQp0vyLGJq6i4moJjhpipCR+EWlBM9UehtwgP9h82Oxtx5KqAUzXwNXaFG4glBHdx3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+lg61ecZwZjt5p73E+4gO6NaN4SjtHB+VrCriGenTyZaz8ObF
	Cz8g3eQz81+a2sx5+1kXE6oOKnWnj55OcgpOYadSz+NbRw8MYQoidsBaGqNZ2LI=
X-Google-Smtp-Source: AGHT+IEuuG5BzCGQ7pmXlfxdxtwrWJds6DmXr7d1iwy2Tum8R8ba0KsEaDFGlJgE3NUk3rVYWit7wQ==
X-Received: by 2002:a17:907:60d4:b0:a8a:794b:9891 with SMTP id a640c23a62f3a-a9029620387mr2219746866b.51.1726612827072;
        Tue, 17 Sep 2024 15:40:27 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90612b3eb6sm502564666b.105.2024.09.17.15.40.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2024 15:40:26 -0700 (PDT)
Message-ID: <4e94106d-5ca9-485b-8c51-c18dcd4e64b0@linaro.org>
Date: Tue, 17 Sep 2024 23:40:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/13] dt-bindings: media: camss: Add qcom,sm8550-camss
 binding
To: Vladimir Zapolskiy <vz@mleia.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-8-quic_depengs@quicinc.com>
 <b1b4a866-fa64-4844-a49b-dfdcfca536df@linaro.org>
 <82dd61ab-83c0-4f9c-a2ee-e00473f4ff23@linaro.org>
 <da60cf71-13a4-465d-a0ee-ca2ad3775262@linaro.org>
 <97e4f888-1ed7-4d82-b972-3e0b95610198@linaro.org>
 <6eadc285-f413-4bf0-8795-59ff19c734da@linaro.org>
 <6562a958-47e9-4a49-b235-fe8deba3c051@linaro.org>
 <cab95caa-9ffb-446a-858b-342939e80811@mleia.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <cab95caa-9ffb-446a-858b-342939e80811@mleia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/09/2024 06:06, Vladimir Zapolskiy wrote:
> On 9/13/24 01:41, Bryan O'Donoghue wrote:
>> On 12/09/2024 21:57, Vladimir Zapolskiy wrote:
>>>> 3. Required not optional in the yaml
>>>>
>>>>       => You can't use the PHY without its regulators
>>>
>>> No, the supplies shall be optional, since it's absolutely possible to 
>>> have
>>> such a board, where supplies are merely not connected to the SoC.
>>
>> For any _used_ PHY both supplies are certainly required.
>>
>> That's what the yaml/dts check for this should achieve.
> 
> I believe it is technically possible by writing an enormously complex
> scheme, when all possible "port" cases and combinations are listed.
> 
> Do you see any simpler way? Do you insist that it is utterly needed?

I asked Krzysztof about this offline.

He said something like

Quote:
This is possible, but I think not between child nodes.
https://elixir.bootlin.com/linux/v6.11-rc7/source/Documentation/devicetree/bindings/example-schema.yaml#L194

You could require something in children, but not in parent node. For
children something around:
https://elixir.bootlin.com/linux/v6.4-rc7/source/Documentation/devicetree/bindings/net/qcom,ipa.yaml#L174

allOf:
   - if:
       required:
         - something-in-parent
     then:
       properties:
         child-node:
           required:
             - something-in-child

I will see if I can turn that into a workable proposal/patch.

---
bod

