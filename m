Return-Path: <devicetree+bounces-46897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C679786B18A
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 15:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C2AE289EF0
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01042157E9C;
	Wed, 28 Feb 2024 14:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WEnm2bP1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DDF21379
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 14:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709130050; cv=none; b=DAVF/nFEkaOuLdS7sd6w2mVaghoPPMZtzxpSJAeU+W4d0miVILl+D5EJGH1zo6PrFtMbaKWof0p2RS6kQRA7IOlbxBWaEB8dYrEnBXUap1DEeDDCVXKH9qzbuvqo9csE/0grqgrde/I2jQr120Mw4WqgHOmgGjlw3uWR/pKWiVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709130050; c=relaxed/simple;
	bh=SF669/16YJLLVi/06Tb0/eIg2kR8t5vsF1OuUV5JGxU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fJSAyghwnZxYewQ2tQtKQOPjArveO6Ua/yhU9M/glfsDXOgLZNqoXLB0yv+RKHkiDAKmyo9vQDdTpP0VaFUOVQYId8a09FoNbb2Jo+NtvK5Roio67qtZyl9+Ysn+718yr1lhupjWiA//C4XkyFWqM+a5zjoLxbaQMqa+TZFRdmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WEnm2bP1; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55f50cf2021so8528300a12.1
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 06:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709130047; x=1709734847; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BN4+X7T8/WrMsKGv/3Kb7WMWZ3t5jxkfP9CpORFmk94=;
        b=WEnm2bP14hZHH3LuIHzTSAiFYBUAcZ71c8cs4HvBcT7ryMooIPbGmmmJ6xGl1RxehF
         4gVMpDDcGA0FLVl4WbHAe6FxoNmSNEgup/bsvVt9+9gcnZh0I9AQRI120TlvaiZYel14
         Mfmq/0kQouJ0Yo0xo3t+hKUIQD6903iBiEpOqPp5NZrmVTeeRvRVxzV7UdFsdgWJAzKD
         096TUnUGxJjQlJxgAGYs9DItBrMZsq8owqR+KTmz1CSq99+LCAu6+b/mCfwNcSO1mI+Q
         FkrRvMAaei4YjdewKoXuyOsUvxOlJ/wThoeAeh+9orj0SPj+dbg/3uuu0qZTnfopYdX4
         2JJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709130047; x=1709734847;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BN4+X7T8/WrMsKGv/3Kb7WMWZ3t5jxkfP9CpORFmk94=;
        b=WrajDaMQVBM4oG9v5CSss1MiR8ze/ptzEjZJc1X4CuSfXlw4k7rMwzqhMBMtSLSgXv
         W95vnon8RLImWie0v+Ywezl8M95hXdPYFCQKO5QU/qbUGTqBruEH0Jjf/vJ44MjnX0oM
         7xts+vfQSPoCGEAVsbeNHn6Xi4OLBnqegGmnag/DmBael7yciJzhg8P6P6HMWuU6nVwB
         6BMxqA+X3zc2shOcevgMIvxdh3/uflyna0aIBuoQplzjXCzq0/OoMPtfuJSuVKvCJaGk
         7cAArQXyW5V51YW82P7rHTZCgAcDh7dcmL6t7nHsTFwQ4rMm4uiPif2ehpyD2EtkmNrG
         b6mQ==
X-Forwarded-Encrypted: i=1; AJvYcCVna1hhzQspli8//BrvbinvNiKuhtQLbXv8TjcVen0mpsBvF5m4RCFkPm7Wq+wwsA46oBEi8B9bEEvKnbxEorZv/9B+pfqlrLPiMQ==
X-Gm-Message-State: AOJu0Yy4+yndY1ip9imEdf5MWwueHnClmZG7MLHfz/uNkVMRFyqNrQo2
	Fin9v6s6OoaOjYalhEzvD9iba7YnTpxAHGg3FkSQXDprmEtC6LQO7IJr4aeAj2M=
X-Google-Smtp-Source: AGHT+IHWulgakCQ/MgPETMge3DicD5AFnVYMF8mYlfjazU+2M++4GUjtWmSB/eqnuYowjoCJH/sdHw==
X-Received: by 2002:a17:906:1307:b0:a43:553c:ea4f with SMTP id w7-20020a170906130700b00a43553cea4fmr5842478ejb.23.1709130047397;
        Wed, 28 Feb 2024 06:20:47 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id j20-20020a1709066dd400b00a3d665c6778sm1926092ejt.12.2024.02.28.06.20.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 06:20:46 -0800 (PST)
Message-ID: <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
Date: Wed, 28 Feb 2024 15:20:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Sudeep Holla <sudeep.holla@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: Nikunj Kela <quic_nkela@quicinc.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org,
 Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
 srinivas.kandagatla@linaro.org
References: <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>
 <ZbEHNyLE8bQlZHSZ@bogus> <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
 <CAKfTPtCjR_MBO9Lh7=CU+dcFaigkbeKc27rVgCa-aEJyHyfK9A@mail.gmail.com>
 <ZbEY2X8CfOc-vPbe@bogus> <16db3da8-dfdd-4e06-b348-33e9197fe18d@quicinc.com>
 <ZbFH0UE9zZQFWm8Z@bogus> <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240228140239.gkzcytw6cmb4opja@bogus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 15:02, Sudeep Holla wrote:
> On Wed, Feb 28, 2024 at 02:27:30PM +0100, Ulf Hansson wrote:
>> On Mon, 26 Feb 2024 at 15:24, Nikunj Kela <quic_nkela@quicinc.com> wrote:
>>>
>>> Hi Sudeep,
>>>
>>> I would like to conclude on this thread. I was discussing this with Ulf.
>>> He thinks that using the domain names to identify if platform is
>>> abstracting clocks etc. are not scalable and sufficient. Instead he
>>> thinks that the change in the interface to OS(and FW) is a good
>>> candidate for a new compatible(even though HW is same).  Even for SCMI,
>>> we do change phandle in DT to SCMI protocol phandle so that is like a
>>> different platform altogether. Could you please let me know if you still
>>> think that using a different compatible in this case is not warranted.
>>
>> My apologies for joining this discussion at this late state. Yet, I
>> just wanted to confirm what Nikunj said above.
>>
>> In the end we are indeed talking about adding a new platform, as
>> changing the FW interface from a QCOM proprietary one into SCMI,
>> simply requires updates to a DTS file(s) that is platform specific.
>>
> 
> The way I read this sounds like all this are platform specific and need
> new compatible.
> 
>> That said, it also seems reasonable to me to use a compatible string,
>> to allow us to describe the update of HW for various affected devices.
>>
> 
> While I agree with the above statement, it depends on what you refer as
> update of HW above. It is all Qcom specific and there is so much turn
> between SoCs that this shouldn't matter but I would like to take example
> and describe what I initially mentioned/argued against.
> 
> Lets us assume 2 SoCs: A and B. A is old and didn't use SCMI while B is
> new and migrated to use SCMI. Now let us assume both A and B SoCs have
> exact same version/revision of an IP: X. Now just because B uses SCMI,
> should X have one compatible to be used in A and another in B. That
> doesn't sound right IMO.

That's trivial to answer, because these are different SoCs. Compatibles
are SoC specific and every SoC-IP-block needs its compatible. Rob was
repeating this many times that versioned compatibles are discouraged.

> 
> If X on A has to manage clocks and voltage separately while the same X
> on B uses SCMI to manage them together as performance domain, then the
> presence(or absence) of those properties must indicate the difference and
> not a change in compaible for the IP X. But it is upto Qcom platform
> maintainer, IP driver maintainer and DT maintainers to decide, I will
> leave that them. I just wanted to express my opinion on the matter.




Best regards,
Krzysztof


