Return-Path: <devicetree+bounces-10933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F37727D38B5
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:00:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C320BB20C7D
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D071B265;
	Mon, 23 Oct 2023 14:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EjXdKug6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E28C1A583
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:00:07 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 902F5D7F
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:00:04 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507b18cf2e1so4573776e87.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698069603; x=1698674403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=joifu3LEve1vM1OBDiP/ssq3Acb5MrmoAobzst77V3U=;
        b=EjXdKug6vvtqLxTgjZM+oPE7gSVOtxEzNM24OlV5u8py5CVxcAoxoVnxbkuWMR3KbA
         YCEWTdcMd7o1IT09Ffy3TrMig52AILYTEWE3ViWwMDnhndSkzG+nBCBwmuqvdklGUvW2
         5Cx1WIECOUNafg/Uze1Ef9nlvzD9vTHthQkqQhwTw2uHRsAJ9iBEXXAErm3gz7OCys6U
         QRN3f+6BuSYvd6WSf/6U24c6RbFAgAdlOPNEzbP3zvreirWBXdx1Rsvwp0q3nsxYCGWj
         No+LEvqNEKEZAHh5nuTU35JevnLSh5b4yXtrOZ8qCQM89qdebP8XrnlQo4mao6LM+Adr
         D2Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698069603; x=1698674403;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=joifu3LEve1vM1OBDiP/ssq3Acb5MrmoAobzst77V3U=;
        b=HWKvgmI25DxmapTH+2tdBlTGjEAz4GpVDpgZDEPHGNh3OVGqdWm4u4vpUrMDf5ScqK
         YOILghQDhgWnQbpJbRWZdfIhMAy0gTNfxdhERBC8/K5ITSalxS/haUtT6x7iT0hMdfmU
         spb0tPAqKSTe9jE3ze3ONIvcJoxqk3TucZ2294OKUNgj0tNSJOdbb6ZfBUWec0UVPU1M
         pHKSfXQ2otq3DZeh0Im4H+zhgQXinANAJ0g1CzXAF+mDu94QMx7KiBkg6WVm4m42QCBh
         zNhLgoOGXLZeY9sJhRl6DR86AZsLjTEIbm0FyjIAzIuj+o4dXc6PC7j2JWaBKt/L2D+L
         vEwg==
X-Gm-Message-State: AOJu0YylYGKxALufZWNEc9e+RqcD8duvcvw1WX8p08CprtGdMe0SZ1Rj
	G4Sr7oj20JGHCbUVwgAuZxSNgg==
X-Google-Smtp-Source: AGHT+IFrtb9YbLiCDkqk99kjeOsRB8xIvp4vEoFUl9MZx1Q2cWGyBOpKkCWxHIYFbkNpCrk8OZjHtg==
X-Received: by 2002:ac2:42c1:0:b0:503:3644:4a98 with SMTP id n1-20020ac242c1000000b0050336444a98mr6478074lfl.2.1698069602632;
        Mon, 23 Oct 2023 07:00:02 -0700 (PDT)
Received: from [192.168.204.110] (178235177080.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.80])
        by smtp.gmail.com with ESMTPSA id s16-20020a056512215000b0050300e013f3sm1711680lfr.254.2023.10.23.06.59.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 07:00:02 -0700 (PDT)
Message-ID: <efecb4cf-e42b-40fb-aa68-37433529604b@linaro.org>
Date: Mon, 23 Oct 2023 15:59:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: sm8350: Fix remoteproc interrupt
 type
Content-Language: en-US
To: Luca Weiss <luca@z3ntu.xyz>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 ~postmarketos/upstreaming@lists.sr.ht
Cc: Nia Espera <nespera@igalia.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli"
 <gpiccoli@igalia.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob <Me@orbit.sh>,
 Clayton Craft <clayton@igalia.com>,
 Caleb Connolly <caleb.connolly@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>
References: <20231018-nia-sm8350-for-upstream-v2-0-7b243126cb77@igalia.com>
 <20231019040623.GA5142@thinkpad>
 <ca42af11-7b92-4d07-9b93-367f92c886fe@linaro.org>
 <6985565.DvuYhMxLoT@z3ntu.xyz>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <6985565.DvuYhMxLoT@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21.10.2023 21:34, Luca Weiss wrote:
> On Samstag, 21. Oktober 2023 19:44:20 CEST Konrad Dybcio wrote:
>> On 10/19/23 06:06, Manivannan Sadhasivam wrote:
>>> On Wed, Oct 18, 2023 at 10:17:15PM +0200, Konrad Dybcio wrote:
>>>> On 10/18/23 16:25, Nia Espera wrote:
>>>>> In a similar vein to
>>>>> https://lore.kernel.org/lkml/20220530080842.37024-3-manivannan.sadhasiva
>>>>> m@linaro.org/, the remote processors on sm8350 fail to initialize with
>>>>> the 'correct' (i.e., specified in downstream) IRQ type. Change this to
>>>>> EDGE_RISING.
>>>>>
>>>>> Signed-off-by: Nia Espera <nespera@igalia.com>
>>>>> ---
>>>>
>>>> Hm, apparently 8250 and 7180 have the same thing.
>>>>
>>>> Mani, could you elaborate on this?
>>>
>>> So the remoteproc driver expects the wdog interrupts to be edge triggered
>>> as the rest of the interrupts, but DT specifies them as level triggered.
>>> This won't cause any issue during the first instance of the probe as the
>>> driver requested trigger will be given precedence. But if the probe
>>> defers for some reason and during the next try, request_irq() will fail
>>> with error similar to below:
>>>
>>> irq: type mismatch, failed to map hwirq-x for interrupt-controller@xxxxxx!
>>>
>>> This error is often confusing and I tried to fix it. But Maz didn't agree
>>> with me, so I just ended up fixing the DTs for some platform I have
>>> access to.
>>>
>>> So ideally, DTs of all platforms should be fixed to pass correct trigger
>>> type.
>> So, this should be edge for all platforms, correct?
> 
> I'd believe so, iirc when I looked at the driver it always requests that
> interrupt type.
> 
> For reference, these are my patches:
> 
> sm6350:
> https://github.com/z3ntu/linux/commit/0522b7a1b981d80884a785c7e654bb5094ea1bc2
> 
> sc7280:
> https://github.com/z3ntu/linux/commit/ead1d7b8f5648535b857cfa9250aac2480f00ed3
Can you send those, as well as fix up other outliers? Probably won't get in
for this cycle, but still very much worth to get them upstream..

Konrad

