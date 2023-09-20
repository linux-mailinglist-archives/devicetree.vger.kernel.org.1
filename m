Return-Path: <devicetree+bounces-1645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF047A73D0
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:17:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57A251C20A39
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8BD78472;
	Wed, 20 Sep 2023 07:17:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD62F28
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:16:58 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 182F893
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:16:57 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9adb9fa7200so130107966b.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695194215; x=1695799015; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q2eQVdoUT9SBA1b8M5ykPkKlAeuNJeFmhFlc8MCDqTU=;
        b=oQBC5J5Vh97nxtE389DqY7yqQHPoHfnktkMg2IqdJ6BSitANYGT2pvkv9KkfxLt5Up
         Rxy3et6EfDJU82MtrNrVEVL8l3A4hZ/jWY4TdTKY/X5SkOp3/4f+veUoQ0hw+fOt8J2D
         VfYUVLJpaH88C2o+JOdwoNBo8eskfU+C6fPNQGzwNV8y9NNC91OQNK49Wld2wqd2Eopk
         ApQKexLKCJeUttv2gnHJCo7F5Psl0rwozhiY2NvAQp8lcLzn5JwL3peKG5p/1CtXWxXf
         SpxDMJhXHCX6xcGkvKC72F94xM0ccG/2xqE3E3rNik0KafL1dFSugLWnWCH4hwei2rpF
         d1MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695194215; x=1695799015;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q2eQVdoUT9SBA1b8M5ykPkKlAeuNJeFmhFlc8MCDqTU=;
        b=h+5S+YQMP56PzAYCNrKmNVqbg2Pqg+K89dD5sTddRaLtLVqqfJhaylMQn2+D3B2GTa
         bwPwBHG0gzHEhM+ZGbg3uU64skfys+BY21m2uYHZh+7067RhyEpTdZcHaOVJCNwKLfJe
         rvTTUREsgW82f11Hzj3kkfUiC7w1QNn5SFq7O12I7GbT+GTSdY3y2IAJIYHuOMAVycWV
         DLYJ3uZ/GM8vR5Y4knbU/rrF2B9uj+tRD1iPn4Rb3ilEKIxQiHgS9rQ58yE/BIwv/E5g
         +NY4O8safoWrV9hsS5pd5k7aVMP37zHPQe+qwBBFXPKSQzp/joiy/oHipkGqSKNPQ6GX
         LMEA==
X-Gm-Message-State: AOJu0YyZ1TkYm4qmpeIq/RzgNODTKqRrWWrWz7WTVSP11BGGlg1EnnS6
	z4G3rgzzNCb8yoGsKFvOE2dJrQ==
X-Google-Smtp-Source: AGHT+IHhkthx7La4ES4fm9zVIeF/hC42jbQNxbARKR3kkYPQQKu6/fzEtLxK3AGfYDSmQri0prplFQ==
X-Received: by 2002:a17:907:760a:b0:9ae:513f:b837 with SMTP id jx10-20020a170907760a00b009ae513fb837mr192908ejc.5.1695194215478;
        Wed, 20 Sep 2023 00:16:55 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id w18-20020a170906481200b0099329b3ab67sm8914549ejq.71.2023.09.20.00.16.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 00:16:55 -0700 (PDT)
Message-ID: <263d0059-d0d9-9eaa-d3c9-90b5a16a8025@linaro.org>
Date: Wed, 20 Sep 2023 09:16:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH AUTOSEL 6.5 30/36] arm64: dts: qcom: sc8280xp-x13s: Add
 camera activity LED
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>, Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, agross@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230908192848.3462476-1-sashal@kernel.org>
 <20230908192848.3462476-30-sashal@kernel.org>
 <ZP60ngCV3hhNZiX5@hovoldconsulting.com> <ZQjEEt7sB2M5EO53@sashalap>
 <ZQk8aJx268Soy4yH@hovoldconsulting.com> <ZQmc7hznPpIh6iwP@sashalap>
 <ZQmh-DaBTwMuOLHe@hovoldconsulting.com> <ZQm5woD5zwRIG9cf@sashalap>
 <ZQnA4o7G4A3YC-pe@hovoldconsulting.com>
 <ZQnFj6g4pbwMz69C@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZQnFj6g4pbwMz69C@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 19/09/2023 18:00, Johan Hovold wrote:
> On Tue, Sep 19, 2023 at 05:40:18PM +0200, Johan Hovold wrote:
>> On Tue, Sep 19, 2023 at 11:09:54AM -0400, Sasha Levin wrote:
>>> On Tue, Sep 19, 2023 at 03:28:24PM +0200, Johan Hovold wrote:
>>>> On Tue, Sep 19, 2023 at 09:06:54AM -0400, Sasha Levin wrote:
>>>>> On Tue, Sep 19, 2023 at 08:15:04AM +0200, Johan Hovold wrote:
>>
>>>>>> Call it what you will, but please drop it. Otherwise by that logic you'd
>>>>>> need to backport all devicetree patches (as well as most driver changes)
>>>>>> since they ultimately aim at enabling hardware.
>>>>>
>>>>> Not all, only ones that re-use existing kernel driver but enable it for
>>>>> new hardware (i.e. adding a new pci-id/usb-id/dts entries).
>>>>
>>>> Again, that's basically all our device-tree patches. And that can break
>>>> in all sorts of ways. So again, please drop. This does not belong in
>>>> stable.
>>>
>>> This is part of the criteria we use to select patches, yes? If you have
>>> an objection around this particular patch then please let me know, or if
>>> you have an objection around hardware enablement patches in stable then
>>> we can have a bigger discussion around that one.
>>>
>>> However, just dropping this one for no particular reasonisn't the right
>>> approach: we've been using this selection criteria for quite a few years
>>> now.
>>
>> This patch makes zero sense to backport. It's a place holder for a
>> camera led that we may one day need. No one marked it for stable, no
>> one wants it in stable, no one needs it in stable, yet you repeatedly
>> refuse to drop it and keep wasting my time.
>>
>> Backports, and especially your autosel ones, always come with a risk.
>> And here there is ZERO upsides to that. Next time the feature you try to
>> retroactively enable may not be as trivial and could cause real
>> regressions.
>>
>> We're on our knees dealing with development and review of stuff that
>> people do want and need. And you keep pushing silly things like and
>> spamming us with backports that no one asked for. I'm just baffled.
> 
> You also seem to have made up new stable kernel rules as adding device
> tree nodes clearly doesn't fit the description in
> stable-kernel-rules.rst:
> 
> 	It must either fix a real bug that bothers people or just add a
> 	device ID.
> 
> (This used to say "New device IDs and quirks are also accepted.")

I agree here with Johan. This is not a new device ID, not a quirk, not
minor stuff for hardware enablement. DTS describes the hardware for the
OS. The original commit is such new hardware description for previously
undescribed hardware. Such description might rely on changes in OS
drivers and might not work without driver patches, even if compatible
looks documented. Because this is not a quirk.

Such DTS patches should not be backported to stable kernels.

Best regards,
Krzysztof


