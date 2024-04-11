Return-Path: <devicetree+bounces-58434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AAE8A1F83
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 21:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C40491C222F1
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 19:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE194134D1;
	Thu, 11 Apr 2024 19:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LOwlXLvv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D1E17582
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 19:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712863763; cv=none; b=G/48dhT7+NGnx0fHBpPw9IQ7741fxnleN+x0MDeYarJImtLJqVPsmfHp/mHFabmz1LUuMP/4dfi/cojzSzRMze54L4rINHDqyGzbYl0XaZKixKVlL3f8etN+1/oPTa2JLU5h3YgKnQT1mk+68we8BcEC0XOX6Cd4GO8c4j+EePI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712863763; c=relaxed/simple;
	bh=rdB8erZX9sa4fsi/UXgrUqfGvP15ya3fOypHNMKwK3A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iHe0XeBCf4IgfLwwDhKXSj3fDcqmCv9FKVEnvDABUq2QTe6TKoPlWnbSJA2oxxWps/axJOrT5LG6Yf+C110qSL9e4ZyRyIAfNxrtnTiacAR8ugpU3aIPAJoXa7RoZJTmstZYut/d1IjmtEwV1aEnGlAokXiEyEChJWNDVx61zuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LOwlXLvv; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2da01cb187cso1658651fa.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 12:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712863760; x=1713468560; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jrHksB1/8JbBXVLe1WVUV2+ojYk8baVrBxWg4qLmeFA=;
        b=LOwlXLvvmOaSzLaOcngTKE513y02vE8O/qf52FgOtk7o79+0j+gz1nTRCNrCrVT2qh
         Xh2JOot+w1JphdV2eioUVARvfPldGtyVvEH2HZnnfMMoaxMNqSNNp4iAlMvzrDwMmWWB
         DGqCQv3nduybb52zB/u7LfTiJQ1eULj1owpmVkbkdSoL7ObvO2Jb9snzAFqCWgKFUVP9
         Wg6C+wVBCdXqYWddA0jIdXNpiOQuGuVlBy/2P3TfX2rAx+D3ZoRxW1nLifEUdexqHCDM
         0FErpIjXJ2yKMb1gAl/Mm+TMV8s4orUTZoTHj5pHpYGuBL6pQSAhydiRWPH6r+5vAIML
         Uwqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712863760; x=1713468560;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jrHksB1/8JbBXVLe1WVUV2+ojYk8baVrBxWg4qLmeFA=;
        b=YdUg8+aK6/jVBndmpwxdv9eeuvzMFBXPEpu7R0j6MN6hnhEizsLIRtpBqR+vivNLwM
         E3mFzma5jPvCZP/M9oZwPiyf9Cn7qvQoxYAUZvbJcRYCxySwJXTGfIpVS5BFAlJrxOpP
         g+D98Mo/64REB5L8OGurU9+ApdhH9uVJ6EWJ1OE+bNKRongoxdGwXYEobLCPSNuoxVQc
         Bn4S9e0NKZDQ74QsW/CKdfpV1+XDwIHXtxQpUT1yZVsH7PPJTraJq1S9dcD0UMQuVkVl
         XQL967GNVibYxTfFxzrAeRlJ1knQWsX1IxhBdTucZzXueKnGrgxBnW4LijQhc1S8ZuiY
         1LVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaUK7OO1DhlBExvATbqYZENEQJaFWq5siuGMVLEswsWLRTXku0uCODsNcyRte6SUKmCkSKLB+847jZiHw8F/iBxHwjsGkQuiiK0w==
X-Gm-Message-State: AOJu0YwDaob7TdPpg/uorUkguqeMgWQqQ0bTdJIX9PAsstjnj4W6d+7U
	zoLxoqNF/R4HD8TqcLT1AaHLdxDrCs82EP50/ZmatOHdDpE+MiBvFvGMs+rontg=
X-Google-Smtp-Source: AGHT+IHw/BoMtmJ+gHom/EaNAXDzYJnDh9YCAWdS+B+i2B80a88t0yYCT/SlygCgXc/YyP3jG2yrJQ==
X-Received: by 2002:a2e:a312:0:b0:2d8:8fb6:a53d with SMTP id l18-20020a2ea312000000b002d88fb6a53dmr400616lje.42.1712863760021;
        Thu, 11 Apr 2024 12:29:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id q23-20020a170906a09700b00a519ec0a965sm1015640ejy.49.2024.04.11.12.29.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 12:29:19 -0700 (PDT)
Message-ID: <7ed6da09-936d-4142-ad90-a9e90435ebbb@linaro.org>
Date: Thu, 11 Apr 2024 21:29:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Nikunj Kela <quic_nkela@quicinc.com>, Conor Dooley <conor@kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Trilok Soni <quic_tsoni@quicinc.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org,
 Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
References: <0411f99d-231a-af4b-d681-7f7748361aa3@quicinc.com>
 <904978d8-eab4-4936-86dc-b0b1e7c40256@linaro.org> <Zfl-Z3vm-3sQ5TN5@bogus>
 <d51ef79a-012e-4701-ac8c-4d1da1827dd8@linaro.org> <Zfmsjg2rb_ZMc4tA@bogus>
 <33783999-227b-4837-9924-2fd99b210cbb@linaro.org> <Zfm5m2zp4A06ZunW@bogus>
 <c66f280b-aa29-4b18-98f1-701f60cbc63d@quicinc.com>
 <afc07c5d-640b-4eaf-94a2-086a6d43d712@linaro.org>
 <ae74fd28-9658-4461-9b4d-e31443e7d377@quicinc.com>
 <20240411-platinum-phonics-864bb08dab8d@spud>
 <5293ec04-917d-4df5-8ff9-58b12cf01bf0@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <5293ec04-917d-4df5-8ff9-58b12cf01bf0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/04/2024 17:55, Nikunj Kela wrote:
> 
> On 4/11/2024 8:44 AM, Conor Dooley wrote:
>> On Wed, Apr 10, 2024 at 10:24:02AM -0700, Nikunj Kela wrote:
>>> On 4/10/2024 10:13 AM, Krzysztof Kozlowski wrote:
>>>> On 10/04/2024 18:55, Nikunj Kela wrote:
>>>>> If there are no more questions on this and everyone is on the same page,
>>>>> I would like to conclude this thread in favor of using a new DT property
>>>>> 'qcom,firmware-managed-resources'.
>>>> Just to recap my earlier statement, because I am not sure if I got the
>>>> answer (if answer was provided, then I don't forgot... sorry):
>>>>
>>>> This is a new hardware, so you have a new compatible, therefore any
>>>> additional property is not needed.
>>> This is not a new HW, this is the same HW with different FW and interface to
>>> FW is different too. As you can see earlier discussion on this thread, new
>>> compatible was ruled out since it is the same HW IP.
>> Can you link me to the post that ruled it out please?
> 
> Hi, There was difference of opinion. While Ulf was in favor of new 
> compatible however Srini was against it since it is the same HW IP. 
> Please check the link [1] in the same thread and subsequent discussion 
> on the same.  To resolve this difference, Qualcomm and Linaro had a 
> discussion and it was decided to go with vendor specific DT property.
> 
> [1]: 
> https://lore.kernel.org/all/CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com/

Just to clarify: Ulf agreed on compatible way for proof of concept and
asked to send a code so everyone can understand better what you are
making. I don't recall any Linaro policy or answer.

After above email, other people proposed other solutions and disagreed
with that statement, so no, you do not have a consensus.

Trying to present this as a consensus if way exaggerated.

You have no conclusion, because talk is cheap and this thread is way too
big. It's also way to vague, like we had to poke you for several emails
to get hardware description. I still don't recall it, but TBH, I am not
going to look at 50 email thread for one email.

Therefore, feel free to propose something, but if you call it "that was
the consensus from community" then please already add there my
Nacked-by, because there was no consensus.

In your proposal finally describe your hardware, firmware and problem
which you are solving (because no one will be going back to this thread).

Best regards,
Krzysztof


