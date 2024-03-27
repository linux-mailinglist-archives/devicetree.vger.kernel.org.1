Return-Path: <devicetree+bounces-53823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D83588DAFD
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 11:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCC501F29B95
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 10:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7680D481BE;
	Wed, 27 Mar 2024 10:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fc6CUmTL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC274481AD
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 10:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711534268; cv=none; b=Sdqc9Ia41dvOR3znPBd1NW25pv9zWOB3qd0MN1MJiBgvA7LL0h+dntPnRNFH6IkHq88zRUP3PWOzklVFD0vXPbBij/R9873K2BNmfoDze4SKjzTm/X70l1ZWFC8mbxCyjyflOjUv6ziWHYqyqw5yfIQd9tii5vvEsi7+e43dt5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711534268; c=relaxed/simple;
	bh=w+GSYOt34sLsWLiLH3uksk/VcYxLSedCzt3sOt88Hzk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KwP51FykVjTPAm94cx3vQ7FIRHohTAOa5+Lk1wHcTzWXD1N2KFyXwc8ltCex9NbIKDbMbPW7tKzVqec27TxjLnN/1pKOmlK3dMAo/m62aEsF0X4wwSpA/5NSpKlCnddtCYv8tgM5V10pIiCxFOKe8ZZiG7H1Tt6SlzT0AjvEV88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fc6CUmTL; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a46cd9e7fcaso786249266b.1
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 03:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711534265; x=1712139065; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=SwF133WUJ71gyiqo+7x/7zeyh8wZgFn/KTOlw97caNM=;
        b=Fc6CUmTL12XZuNyeIdWK7xGBxtXCx1dUgvGwOUwIGvrArKxwOKhVShLrxIUsyitXCM
         4CMQaKAKsNnnJ09kdTC9UAAGg/ZxGkwLI8UBRnW5mAXd1Wn+/zThd/C27QLDRvLylqvI
         P4yZ211p/tNSPqM8Ppe4VHAh8NBd4TC2JUvuyk1ylHO/TK19slCgcnkPHWI5kUo4h8vF
         hpkgNsJuSuZ+OP5WmTVp2Guw9Hwk2JiwiExDHaQRrOZMwFjtS2H5wEE8YouKkGNwRVHI
         a2NxJeG77ralM/7wGbwMaAAw+Ur+lBvhvkBaayiNZw0jRGTlv1NaZMhF2XvaeqqZYg2t
         TyYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711534265; x=1712139065;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwF133WUJ71gyiqo+7x/7zeyh8wZgFn/KTOlw97caNM=;
        b=SVK98fmT5o2jipGVuoT8j+mesGtlo2xYvKa/GjghTD2NE1LGNTTEARLSN1+1y+hK8h
         KLoeCDJU1VpyoAR0oDCF7COFLYbH3z5V9Dfc/PnhFYVUccmKrl7E3Fl+lNP0x2l/yGNF
         6lHNrBbOLYg5QzaHMM20jP7tS5/Qs7Kl5YN6X1lC3wrZh6QuKj5WyMNVKFMgKXN+uufu
         ENSjGRW78lTYMjmbOORdABdFV74FVAIzkY1k9W5ya4abqBboDsizG0+sPMFIIeUwvT/M
         cmTGX3USgI8URGD5u5Fx5MimFgNR8QggkI2EcP5J2YefI6OhgXiHBOoYrNRoxSRbFPrH
         jTAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsDcHfBfnN94Zz6RXV3IJfS85SH/wIbyQ6UEtegpPFhB2gepqBaMHWUpA3KaZpu9Sb/mDsXugtp9RA72wPQjsiMvi2RlQkLx+9Eg==
X-Gm-Message-State: AOJu0YxENJ+dQy+d4tJFgM3AwHOXIzmSFOQ5DRoYoyMOJdP7rGqQ5B60
	86yaePunl0WoD6bd1rPIqIc9hbTGyT1qKKnEREx7CCXRULWzzUyYY+7Mf3U/tV8=
X-Google-Smtp-Source: AGHT+IFHveECrXypugtorFtwkHqVLw2sQ5qq5ULpCetmfKStGGUn73D2m9cK/B610utLrFqBNfRT5A==
X-Received: by 2002:a17:906:69d0:b0:a46:fb17:8871 with SMTP id g16-20020a17090669d000b00a46fb178871mr566923ejs.76.1711534264902;
        Wed, 27 Mar 2024 03:11:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.205])
        by smtp.gmail.com with ESMTPSA id se16-20020a170906ce5000b00a468be342bfsm5231916ejb.136.2024.03.27.03.11.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Mar 2024 03:11:04 -0700 (PDT)
Message-ID: <9e984b5e-dc10-4fc1-aa53-f854bd3560d0@linaro.org>
Date: Wed, 27 Mar 2024 11:11:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: display/msm: sm8150-mdss: add DP node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20240326-fd-fix-schema-v1-0-4475d6d6d633@linaro.org>
 <20240326-fd-fix-schema-v1-1-4475d6d6d633@linaro.org>
 <e9ce004a-952a-4a94-abe9-2a8dd96b37fb@linaro.org>
 <CAA8EJprg55BkRL5KUZ+6gNniq9TZjEem8MLqQdMZcXntvttEVg@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAA8EJprg55BkRL5KUZ+6gNniq9TZjEem8MLqQdMZcXntvttEVg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/03/2024 09:52, Dmitry Baryshkov wrote:
> On Wed, 27 Mar 2024 at 10:45, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 26/03/2024 21:02, Dmitry Baryshkov wrote:
>>> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
>>> index c0d6a4fdff97..40b077fb20aa 100644
>>> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
>>> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
>>> @@ -53,6 +53,16 @@ patternProperties:
>>>        compatible:
>>>          const: qcom,sm8150-dpu
>>>
>>> +  "^displayport-controller@[0-9a-f]+$":
>>> +    type: object
>>> +    additionalProperties: true
>>> +
>>> +    properties:
>>> +      compatible:
>>> +        items:
>>> +          - const: qcom,sm8150-dp
>>> +          - const: qcom,sm8350-dp
>>
>> This does not look right. sm8350 has its own mdss binding file.
> 
> So just a single entry here, even though SM8150 uses fallback compat string?

Ah, wait, I misread, I thought it is enum.

Best regards,
Krzysztof


