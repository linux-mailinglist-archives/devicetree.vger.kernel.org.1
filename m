Return-Path: <devicetree+bounces-11537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E2A7D623C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:16:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D0E0281777
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93EB5156DF;
	Wed, 25 Oct 2023 07:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MOmMFLFE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9DF125CC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:16:53 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89E4CBB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:16:51 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9c5b313b3ffso750698166b.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698218210; x=1698823010; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r33juuDhxpRv3fs4picW8W/vWVmFXWxdVuweemqS2vM=;
        b=MOmMFLFEYUAiwcnj1L9ZyRwKC7OfyvhFlm4UnyI7IkUw6awtZGGUftFBdRs+SRqwyO
         JG6Nqq8s2255IC9p22ljcd7OsWWG5Ru2NCFbKghlX7BUtmX4JIMWC7ILGpux019lJMup
         3fAgR3szQ4IfmllWOqFqZjOTiYd2WsZjnfp5A+sJJa7eg2GRIhE3myWOjqP7vqi013ni
         4N1312G4oYwgXwI/zZl4sK97j0+87nCpTaSBCLLeu6U0Rhehq7twlhUZOZoHZCxr5cMc
         QX9Xm1XiwPQ4BfzFzzM84v8aJ5dFfwgRLj1dgcZs/LQbfloK3Pn+iCbmALWkrX6rbCHS
         0Y6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218210; x=1698823010;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r33juuDhxpRv3fs4picW8W/vWVmFXWxdVuweemqS2vM=;
        b=wnKqmk8jyGxL083LE5xbph8wQzj+gsSfOubvdC1aglhIOKFSrc7Lk4JlmTD73o3v6w
         5ZXhMjs1KlDdRWJIWoza+C5OORMcTVZG9V/WHcGFhiVAG8RfQ9XsWy0gbKiWLRsWxt2E
         a9+QvjNk3l8Q9zB0hQzSL+86sYvH9fsilqo97c1R3eeg5Tqz/fAlx62I0JG2hKxqtJPF
         e1hL49pQT50qDcpkg+jOvTyH9MY+Z7VtlU0GMTfRE/PiJrbSd3dQ21Pqo8PX4RGlAIF8
         wJK2N2w9RGHty1Wrog0uPdtAao05SOxuYeUp9HeuoVVqLBPJ5soD8EkcJ4lWNfOXJd9s
         0AlA==
X-Gm-Message-State: AOJu0YxXdWlK0jAjqdq1MvRnWvQe1+NRLdnOSz7O7Ltpb95nMwXhxC/W
	xY3cu98dbrrkFCWe2CHvxQZivA==
X-Google-Smtp-Source: AGHT+IG2G5zks4s4CMfO5hLj05daZ1JwOS1hDPw3pcGVQyu3CwwVvVX7VPgkaAEl1gP5Tt1obv+Wjg==
X-Received: by 2002:a17:906:fd8b:b0:9bd:e017:370e with SMTP id xa11-20020a170906fd8b00b009bde017370emr11319701ejb.54.1698218209991;
        Wed, 25 Oct 2023 00:16:49 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id la5-20020a170906ad8500b009adce1c97ccsm9280236ejb.53.2023.10.25.00.16.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 00:16:49 -0700 (PDT)
Message-ID: <d0ab3e30-0b19-4a96-8fd5-c6937af1658f@linaro.org>
Date: Wed, 25 Oct 2023 09:16:47 +0200
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
To: Huacai Chen <chenhuacai@kernel.org>, Marc Zyngier <maz@kernel.org>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>,
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
 <CAMpQs4JhfuB4=s9VFc+xmw_+8h5u2EwPdM_0x2vO_=SYabAAxw@mail.gmail.com>
 <6ba31912-6738-6156-d5f4-3c8d3a3ca7bc@linaro.org>
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAAhV-H6g+eCj6B2S6HWhv-9AqWZkf9gaN-=TUmhHDe3Qx9_o+A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 25/10/2023 03:56, Huacai Chen wrote:
> Hi, Krzysztof,
> 
> On Fri, Oct 20, 2023 at 8:18 PM Marc Zyngier <maz@kernel.org> wrote:
>>
>> On Fri, 20 Oct 2023 10:51:35 +0100,
>> Binbin Zhou <zhoubb.aaron@gmail.com> wrote:
>>>
>>> Hi Krzysztof & Marc:
>>>
>>> Sorry for the interruption.
>>> As said before, we tried to use the 'interrupt-map attribute' in our
>>> Loongson liointc dts(i), but there are some unfriendly points.
>>> Do you have any other different suggestions?
>>
>> I don't have any suggestion, but if you are still thinking of adding
>> some extra crap to the of_irq_imap_abusers[] array, the answer is a
>> firm 'NO'.
> Excuse me, but as described before, 'interrupt-map' cannot be used for
> liointc unless adding it to of_irq_imap_abusers[], can we still use
> 'parent_int_map' in this case? Or just change it to 'parent-int-map'
> to satisfy the naming style?

Why do you respond to me? You received firm 'NO' about
of_irq_imap_abusers, so how adhering to naming style or violating naming
style has anything to do with it?

Best regards,
Krzysztof


