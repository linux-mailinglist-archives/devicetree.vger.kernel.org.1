Return-Path: <devicetree+bounces-50247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB42387A742
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:50:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89D591F23D53
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 11:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49DC73F9C8;
	Wed, 13 Mar 2024 11:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zJNhE/2J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D492E648
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 11:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710330605; cv=none; b=mFgWTp5HCfkXX06DXFV9PbdD43SxEjYMQK17RWUl+hzFlVdh+o6Naqld3PMniQlq9Yb8yck5FTWhE3saVFxZxuyPXnwP9/NhGSZiyupJ+jxUr9Oh2Xkv8DEdVybmbuEL8yvkwmHESzInxUAkJsN86suxBC9bYxr9r52SZj9NlXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710330605; c=relaxed/simple;
	bh=tFrNbZ7FHLDExT9n90Pi+XfxZp2IjutqqWj4GK+GGJg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qA26kpQocDfMMyIbv70PYiniuZY5IbqaHIvA9wuiwSGy1A6iFMbTIuORLyjKIcL1hPHYpC831Ar7DSw4//Zp6oQ1LpvXBrZw5rVHV953amF8LptYtK1P7279kaDYueJf5MWj5W3HPmSvzvxH5oBdGvIfRBXD80Hz1uEd9/ExhNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zJNhE/2J; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5688eaf1165so40346a12.1
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 04:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710330602; x=1710935402; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DMQYHJ1drEUFGEcNqIFJaU7NBezdzfTQPEh5GziAJaU=;
        b=zJNhE/2JRC5IINeBvhPHxh8Akw1CBP4MMX4lQCoGNyK3FUXhRuoRD6kDJZoEsA0MRS
         +PXFJA1N53/uhWbHe51A6Jr6NhHV/OcskeLd5YIgb91B/MsXQdeSNjJRRg3sHCrvOef1
         RYgkSmLWDaPZ8GnzlQVY1oxRnOJq2VxgK0mR/OtpjpUs+Iub1aRD7J7FMKfesD0hLlWn
         a4Ad+eWJB2CjQwGQ3+fffn57PioKw7cNfCHKYMDaSyUgO9vCPw0yZ67VwJQtHJ9zymKt
         enhhsNW0a4wG4saIPjj64+dSjSHXGsVOtIB0SRJI+qfxst4OczDoG0XPnc9Hns0gmmJs
         3+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710330602; x=1710935402;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DMQYHJ1drEUFGEcNqIFJaU7NBezdzfTQPEh5GziAJaU=;
        b=JN72Uu3iFSSfKFp9EJ4pDzg6l8QW70dIbZ0rMaw/vp1FKRsWstOcQVq5sKPiWT4jZK
         iQk8BoGpUDLDbGyp3ZXs1sc/zhcjxbzPKmg30cj7V02sZmCxkmS+/oLdZ8a3/lvQBM0a
         xfGFCTy1Rn8UWnxfz4jQFjjdF8g87CTX/MZBg7Biii8SyV/pqis0uqalEoq08iKPkMfi
         pi5uZJbMo9/p7HqmiXoOzdXPRw4f3EgcSDq6OZ+n+Tnfcd1XHyBhFpGzvovs/u/w1L3B
         wJcmlWJwJPkXo1UNuivAGcqi1wEBxlKyACWN54/jhNyM+hworiszzA++XmX3vbI1PACn
         ZXCg==
X-Forwarded-Encrypted: i=1; AJvYcCU2L4cw7bU7TcBTEZsIuuGqKvO6zkYWqpPSq3nLx90oGQfKpCnleEUppTsnJmiw/fsGtQ/B20NbXx8d3g4OYIzPVF6zG1i0Iq5O7w==
X-Gm-Message-State: AOJu0YzkWonL4pbxGvBAy84HbqyTsmTor8i5JEYL44pJ/DXGQ0wpgQ03
	m7502CON7oVkwoWANQlUosmOAo+c43COeKLE4n3BGsoA5zZy+6gQH3F5F+8iJVo=
X-Google-Smtp-Source: AGHT+IHwzICsxan+5IM07rDJXXSKsxcSlddgtWBQxGPH/gj/P/FyXGgEeqrdsi8DKfKl7V4cejTD+A==
X-Received: by 2002:a50:ccde:0:b0:565:7116:d533 with SMTP id b30-20020a50ccde000000b005657116d533mr9559072edj.6.1710330601786;
        Wed, 13 Mar 2024 04:50:01 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id k21-20020a056402049500b005688e5a7168sm35138edv.43.2024.03.13.04.50.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 04:50:01 -0700 (PDT)
Message-ID: <bc1c7152-e46a-47f0-9bad-d524fb624ae8@linaro.org>
Date: Wed, 13 Mar 2024 11:49:59 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Trilok Soni <quic_tsoni@quicinc.com>, Nikunj Kela
 <quic_nkela@quicinc.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <989dee90-9c44-09b9-6940-687082109ae7@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 12/03/2024 17:25, Trilok Soni wrote:
> On 3/12/2024 10:21 AM, Srinivas Kandagatla wrote:
>>
>>> Basically, I would prefer better than "qcom, fw-managed" since this is not
>>> a qcom specific problem.
>>
>>
>> We already have something like this in mainline where the BAM DMA controller is remotely powered.
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml?h=v6.8
>>
> 
> As you can see it is already fragmented. Why we need to create one more approach
> which is not scalable and specific to SOC vendor?

The whole issue around this new checks is that the driver/binding is not 
designed to expect same set of resources from different TYPES of providers.
If the driver was designed to support opp's and power domains and make 
the resources handle in a unified way then some/all of these changes 
will naturally fit in.


> 
> SCMI or RPMI based firmware is not a QC specific. I also have allergic reaction

I agree this are not QC specific, am fine with generic dt-binding like 
firmware-managed-resources or something on those lines if DT-maintainers 
are happy with.

What is your suggestion?


> when I see drivers modified w/ if (fw_managed) {..} but that is a discussion

I don't think we have a choice here, either we do this check at 
compatible level or dt-property level or resource level in every drivers.

--srini

> for some other day.
> 
> 

