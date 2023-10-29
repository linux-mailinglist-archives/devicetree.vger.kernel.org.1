Return-Path: <devicetree+bounces-12647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE717DAB95
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 08:43:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 214342816ED
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 07:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B7E1870;
	Sun, 29 Oct 2023 07:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DItgk7pG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D42A6FD9
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 07:42:57 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83D61F7
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 00:42:54 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507c91582fdso4996099e87.2
        for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 00:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698565372; x=1699170172; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yjBOdlYGvhEcDW6xRq1FrzATl01dGcKVg1V762k/xiQ=;
        b=DItgk7pGqFyVcyyoCV+ELoV1vXcb9kWylh98iuuCbnN7CK2KgMQb9L60Njv/98IaPZ
         l5DFvfxU1tukTijJ3qcHEwrsedNXBu3pWVnnpqu6zoDGgpsrERCW08pJ0ym+Ta3HXVo/
         WY9tkJnDOGavw9DBK+Wo/6o0smpYH8m7m1WNTZ827HSTz7x+0c6UiCtLea4aaJyl3Iwg
         q8gsjQxl7Q4am1MxQQLZkn3wIVh4GGG/OLiGFpWV+3U7vILK0wA/K3E1hNhcecU5dmat
         Msw3iHWsUyZihaHuebIuzY4h291FInPqRCdCEU9F2MKic3GsaANhuTibk4SNMRTc9cjf
         1g4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698565372; x=1699170172;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yjBOdlYGvhEcDW6xRq1FrzATl01dGcKVg1V762k/xiQ=;
        b=CO5MkWHLxGYSapzV1ECiPQy4Y1qgNWDV70ZRFWyQHV6h6D7XUHtdjMlI1fQhE9xb0G
         osdqMjxXrbca0nuBMycSS3MFon49eDaK6jjp8LKgAvFn0TSTvPPsKdHxF1Jmeek1ahmY
         sR0qbKRO1mFoH1uFIyDO4qMVbr+fUnlX4rVfXeCl7EbLRhqi3aYSNOHjghy8VHlvbAAQ
         DqD1k6jS8F886VCO5ylB5f3k8Im57ZV98I/DX+90LTOV0OlZ4NW/6SlXQ9wDBDPls48q
         FqA55bduEKDmDEZIqsodm0dKeu/brfnGOy8XP+Ejc/VThl2/WEXwLaeTdI+I2HX5sVUd
         IT9Q==
X-Gm-Message-State: AOJu0YxA5RdvQkMQrQLJtpyjWode08ZgokSA0T1irNLBCwXd81zxpOiK
	EEn1EJkKXIKjZuNyrOPtLCNLQg==
X-Google-Smtp-Source: AGHT+IFSxLZ7Nig4K22Yf+gJsHRfL5dKhp8Fg81KWCjLI/yp493ViLKuALllEGy4UskZpC7+pdOGwg==
X-Received: by 2002:ac2:47fa:0:b0:506:899d:1994 with SMTP id b26-20020ac247fa000000b00506899d1994mr4635086lfp.52.1698565372573;
        Sun, 29 Oct 2023 00:42:52 -0700 (PDT)
Received: from [192.168.0.22] ([78.10.206.168])
        by smtp.gmail.com with ESMTPSA id br16-20020a056512401000b005008c11ca78sm939169lfb.142.2023.10.29.00.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Oct 2023 00:42:52 -0700 (PDT)
Message-ID: <34c33fc5-7b54-4f5e-8af8-2dce062a7968@linaro.org>
Date: Sun, 29 Oct 2023 08:42:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: loongson,liointc:
 Fix warnings about liointc-2.0
Content-Language: en-US
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, Jiaxun Yang
 <jiaxun.yang@flygoat.com>, Binbin Zhou <zhoubinbin@loongson.cn>,
 Huacai Chen <chenhuacai@loongson.cn>, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, loongson-kernel@lists.loongnix.cn,
 devicetree@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-mips@vger.kernel.org, diasyzhang@tencent.com,
 linux-kernel@vger.kernel.org, frowand.list@gmail.com
References: <20230821061315.3416836-1-zhoubinbin@loongson.cn>
 <CAMpQs4+GiExt9uMmV1pf8gg8rFwWxbLkx9mdW7hY9xxXDOza3Q@mail.gmail.com>
 <d11873a1-b552-71f5-1100-7464687f8bb4@linaro.org>
 <a084e6e9-46b0-42ef-b500-69c114ae11b2@flygoat.com>
 <86wmxcejav.wl-maz@kernel.org>
 <c7898abf-34ca-d0b4-fd0c-935100dcd3f2@flygoat.com>
 <86pm2ye2si.wl-maz@kernel.org>
 <CAMpQs4LjePLy5RFMz2S=1sa9Zme_UrJmKKRog0LAg_ZhA07TMA@mail.gmail.com>
 <CAOiHx=mq3hw-LFerb9UzU7VSnLypnvPuo1GomCnN=p0u3xN1Ug@mail.gmail.com>
 <CAMpQs4+neiaJKp93UcemJbPPbhmf1B7WYNqKh=qx0avrbwW2cQ@mail.gmail.com>
 <CAOiHx==uSQrO6+Ob1qe3NaRdXoGTwLYSS8S7YYMwQ4zhSbX75g@mail.gmail.com>
 <CAAhV-H4yZ7DKx865M1RN+0L8CZjua=wBMsuXT0ekNANRN+RWAg@mail.gmail.com>
 <CAMpQs4Kug8dOWHD+nqAbGkmqkWU=y=k6+VwojETn8PEwf+MSPA@mail.gmail.com>
 <87wmvh5vyb.wl-maz@kernel.org>
 <CAAhV-H6g+eCj6B2S6HWhv-9AqWZkf9gaN-=TUmhHDe3Qx9_o+A@mail.gmail.com>
 <d0ab3e30-0b19-4a96-8fd5-c6937af1658f@linaro.org>
 <CAAhV-H7Kwb9xT8R0TTbqEhrLUEcnxkTcEy=RhAxD3basBvWxKA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAAhV-H7Kwb9xT8R0TTbqEhrLUEcnxkTcEy=RhAxD3basBvWxKA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 26/10/2023 09:19, Huacai Chen wrote:
> Hi, Krzysztof
> 
> On Wed, Oct 25, 2023 at 3:16 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 25/10/2023 03:56, Huacai Chen wrote:
>>> Hi, Krzysztof,
>>>
>>> On Fri, Oct 20, 2023 at 8:18 PM Marc Zyngier <maz@kernel.org> wrote:
>>>>
>>>> On Fri, 20 Oct 2023 10:51:35 +0100,
>>>> Binbin Zhou <zhoubb.aaron@gmail.com> wrote:
>>>>>
>>>>> Hi Krzysztof & Marc:
>>>>>
>>>>> Sorry for the interruption.
>>>>> As said before, we tried to use the 'interrupt-map attribute' in our
>>>>> Loongson liointc dts(i), but there are some unfriendly points.
>>>>> Do you have any other different suggestions?
>>>>
>>>> I don't have any suggestion, but if you are still thinking of adding
>>>> some extra crap to the of_irq_imap_abusers[] array, the answer is a
>>>> firm 'NO'.
>>> Excuse me, but as described before, 'interrupt-map' cannot be used for
>>> liointc unless adding it to of_irq_imap_abusers[], can we still use
>>> 'parent_int_map' in this case? Or just change it to 'parent-int-map'
>>> to satisfy the naming style?
>>
>> Why do you respond to me? You received firm 'NO' about
>> of_irq_imap_abusers, so how adhering to naming style or violating naming
>> style has anything to do with it?
> I'm sorry but of_irq_imap_abusers is to make 'interrupt-map' to work,
> without of_irq_imap_abusers we can only use the existing
> 'parent_int_map'. We need your response because we want to know
> whether you can accept the existing method since the other approach
> has received 'NO'. And, changing 'parent_int_map' to 'parent-int-map'
> can be a little better, at least it satisfies the naming style.

Indeed, interrupt-map might not fit here. I don't know whether your
custom property - purely for runtime performance purpose - will be
accepted. Initial description of this field suggested that it is OS
policy, not hardware choice. But sure, propose something with
justification, so we can review it. The proposal must not break ABI, so
you must support both parent_int_map and parent-int-map (or whatever we
call it) properties. The first we will probably deprecate.

The way this property was sneaked into kernel bypassing review is still
disappointing.

Best regards,
Krzysztof


