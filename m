Return-Path: <devicetree+bounces-50245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAE687A706
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:22:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7FC15B23051
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 11:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AD043B798;
	Wed, 13 Mar 2024 11:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V1b3SZ1Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0AB3224FD
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 11:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710328920; cv=none; b=QHuJlHdyNG2kGq6fFsVfcrRcr71w6drSTqNhs13zFAmMbenxuS3TNSMYgWSFeMhgdiDfh1TEDRP3u3HsKKEvGhFgiw0nFMrupIbAoyPwGTmf8UUEfQzBVDfsPxOgTcd+oKV8Ln2ir8k8jNwNidH2CfBI2Ydrpae3lA5yTk0lna0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710328920; c=relaxed/simple;
	bh=HJQR6XxbEdgjPdYUithoi27TR+iqoQEKpzz5NQ1mfhk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MAg0n2xkDTem7RiBUu1uliS+gzTbO7j68J8hwYbXw22fXG1SR/RJQ9ylnhgAAIO5owLmrzFZ7//+AoyWJ36xQHL0I9drwjTcQjrCzlFMlarEbuFU1leJzJxQizmcwGgX2uptCa8+I+9t9ak49YyuoyqJG02rU5lEq2vWplRYTcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V1b3SZ1Z; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a4644bde1d4so238072566b.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 04:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710328917; x=1710933717; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UC8pXavlGWnOwTaNDAsxb2TGWhfM3XW2C7TqyFq/77M=;
        b=V1b3SZ1ZuIBOsFJlpqQg6BAUPJKrMVYSLEjB9VFuEZDqv/Hrv7MkmVMMWgemz/xm38
         OrKWu3Jb+TCVN8UNhfcysHfPetNnwx66deBLNBRTK1XnN+4zzDazibYZNYVkxmT4Oi3Y
         KFZv+cdMqlCByHMJltY34lPZthqCkH0mq/ES1WsI8Q+pmEpik2ZM8LBnQW5CVfn+LJ33
         IJPysb156okkzOLcNNTRNxF1TLnDgvFsN7RM3qIApEMdc10C1qwmFPeUeutC4VQeqXnL
         A1gqHqgMjys0XdgQzLPCF7C2zrs3EzsfBO9f6oxt/bp9BzhO6jf/K3BIQtSijESdngPg
         a8bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710328917; x=1710933717;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UC8pXavlGWnOwTaNDAsxb2TGWhfM3XW2C7TqyFq/77M=;
        b=h/5fM4xnPXhqlz7lRC3DaA9zJblvLYY3i8minJwRdexCsNlpWPqzbkOVuUggS3+aEz
         /X81WxKP2X7+AJ/sGnF9ZcDAEbiI2+Vvi2ilixgYwRuN7qdN6OpSjs5Wh4IvNKznE0AU
         6c7ufjPuTRPtjL7tzRwe1rhbPuQblPnd71ZxTKRkuwYEKwI9JckR77wvDHltr4ROeX4c
         mw721lm7xTVpp2aHxBcII6CBwQTpTxkEu1wJITECLQTwip8HeWDEPMSDszzZvCKu0MI6
         97ou0ofIPhgVyC7hfRQFyj5v385b1nJCrU5eFRsOcNfAhlO2WnOLoiJOlFZgMfb95Nq7
         4lUA==
X-Forwarded-Encrypted: i=1; AJvYcCWHwIoO/k5yjGJa1GjeeJnCqnsz0v2srB+EfP/PgoImMq9E/BJws0BP1wC4jMSl+OB2Ln8PGtmrNhyDMt0ysiGMc+CPWUDJFAEZsA==
X-Gm-Message-State: AOJu0YzgV3D9Y+Tutcoy5s+51QEuALxFFBc+oK2GTHSQ6TOEoFo4ZkjH
	eVzQhYOcdCfg02dCWV56TYO8Xj5uDEvQVuP91g+axzP6kn3Yh05lQ0NVKozvdOU=
X-Google-Smtp-Source: AGHT+IExW55dnU4JGWjrrSdI4oAKnLvqbDR9q823z7vuRgVEafOqhV2ARyjM2PEkLXXJO29wYyrsCw==
X-Received: by 2002:a17:906:8407:b0:a3e:9def:5c8d with SMTP id n7-20020a170906840700b00a3e9def5c8dmr7662870ejx.28.1710328916941;
        Wed, 13 Mar 2024 04:21:56 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id bf13-20020a170907098d00b00a460019b770sm4727980ejc.173.2024.03.13.04.21.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 04:21:56 -0700 (PDT)
Message-ID: <a6156e7d-e550-4b0f-992d-be0a7b39ac56@linaro.org>
Date: Wed, 13 Mar 2024 11:21:54 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Ulf Hansson <ulf.hansson@linaro.org>, Trilok Soni
 <quic_tsoni@quicinc.com>, Nikunj Kela <quic_nkela@quicinc.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org,
 Vincent Guittot <vincent.guittot@linaro.org>, robh+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>
References: <ZbFH0UE9zZQFWm8Z@bogus>
 <32092ee9-018f-4cfb-950e-26c69764f35a@quicinc.com>
 <94a62a78-961a-4286-804c-fc0b9098b8a1@quicinc.com>
 <CAPDyKFrL2QcB-YbE25smGgJjf3iBEsSSB4ui3V98zJKghNNhKA@mail.gmail.com>
 <20240228140239.gkzcytw6cmb4opja@bogus>
 <799268ac-7ffb-4b99-b037-d5bb93d37f13@linaro.org>
 <20240228160925.fcitj2yz7hisidsl@bogus>
 <CAPDyKFqEDu1KRsT2YWv7MhoosCSj_bgV4xE=-2hDaS1ZP7AkvQ@mail.gmail.com>
 <2b0a11f4-f54e-461c-91e7-8f313d91abe8@linaro.org>
 <CAPDyKFoo+-2AF096Sbn8EHP1H4Zw2+2sFnSyuq65sWGmMmXU0A@mail.gmail.com>
 <ZeWp_UjYfWsnEB-K@bogus> <321069a8-2c46-4871-b85a-5e9cbdda5b5d@quicinc.com>
 <3aad2e6b-88fd-06ab-95c5-d07f012e8306@quicinc.com>
 <bd2dde74-e4b9-4cf8-b1f1-9bc52f3b83da@linaro.org>
 <989dee90-9c44-09b9-6940-687082109ae7@quicinc.com>
 <CAPDyKFpNo1g9j-JojzN3sbq==mnaKsamrd9EyskDUDZS=AB3mg@mail.gmail.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <CAPDyKFpNo1g9j-JojzN3sbq==mnaKsamrd9EyskDUDZS=AB3mg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 13/03/2024 09:19, Ulf Hansson wrote:
> On Tue, 12 Mar 2024 at 18:25, Trilok Soni <quic_tsoni@quicinc.com> wrote:
>>
>> On 3/12/2024 10:21 AM, Srinivas Kandagatla wrote:
>>>
>>>> Basically, I would prefer better than "qcom, fw-managed" since this is not
>>>> a qcom specific problem.
>>>
>>>
>>> We already have something like this in mainline where the BAM DMA controller is remotely powered.
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml?h=v6.8
>>>
>>
>> As you can see it is already fragmented. Why we need to create one more approach
>> which is not scalable and specific to SOC vendor?
>>
>> SCMI or RPMI based firmware is not a QC specific. I also have allergic reaction
>> when I see drivers modified w/ if (fw_managed) {..} but that is a discussion
>> for some other day.
>>
>>
> 
> For the record, I fully agree with Trilok here.
> 
> More importantly, why is the other suggested approach(es) a problem? I
> don't get it.

Are we going to do this with each driver on every new board that will be 
added?



thanks,
Srini
> 

> Kind regards
> Uffe

