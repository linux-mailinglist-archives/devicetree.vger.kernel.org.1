Return-Path: <devicetree+bounces-13132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0D57DCA60
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 11:07:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA21B28112C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10780DF58;
	Tue, 31 Oct 2023 10:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pcB7fw22"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A63120EE
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 10:07:12 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64AA4109
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 03:07:10 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507d7b73b74so7511157e87.3
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 03:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698746828; x=1699351628; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=frB5O4f+1jmhgXg9FZz+gua4r9L65Q4rQrld4sMEitY=;
        b=pcB7fw22FJaSLyx03eVAUuvWrlyrQyyiHyfCgki06y8nIZwnr1cQsgbyVXTM079hs6
         xrLw9fFSvf0m34ni36hqHh5Fxji7GrmxypDHaT95LOrtM02r9SXCm5xGv/cFOZqFOMT9
         Gxg51TzYR1FQr+qNuztLDs95UPjJkAwx9Rk/RBIwNa6xtcbsXSTUTqwy9q7YYlmnuNcb
         WivqmD6VaHROfkIMBNsEqYxAoTqzPnWS3odSzA6c1m+mFKAbzwvrwq1F1mSadKxarao5
         cXPh5BjRDb/V+vNK/XWdRqrP5rEoMbgVQgQ4+5daUWfCuVXFjL1PEXZYheta3BKslY6C
         f/dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698746828; x=1699351628;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=frB5O4f+1jmhgXg9FZz+gua4r9L65Q4rQrld4sMEitY=;
        b=Ik7ZO7vYGy+xWF0hdq3/l7VrCgIQjGKRvt5vPSVnHrzf2gxwKFm25ZdvNCsavrDViR
         ZigfrMJ1sx8WKWMORR2BfgqBHuTyM90mJ6Vp9YEnz5FGACerpnrwahHWIaXx0UPHraD5
         /crxvosvZfjvh206EKhkfGhPxyJaxd4fH9mVdNmk00iktFHSJIK7bgEyPDmNTlh+47C6
         DoTXHy+tNf8cIrUO7ze9n8qm/2rTfO0myBPF6bUpLAFbcZD2d9K7uGW/VFSusnkPXAgZ
         xJGjYgy8rcW3kEWJ96YAWVxe7+qOhXXSI/E0LCFhI73PZjVBGcRLxpIYt7RXdjSGHcQ1
         SY2Q==
X-Gm-Message-State: AOJu0Yx1B8rbz/Uj1iUmahS9BBKohwettA9Gz8wSYf9q/VLL/JYcrNBE
	VgjBOfMqSFdvrn9xo4X962xoIQ==
X-Google-Smtp-Source: AGHT+IFJIfZHmdJoZZSuYGIOVo3i11fy4J+qIsHqkuYJObXFihYc7LKxcPSeCgn0p+xklx1OhU1QBA==
X-Received: by 2002:a05:6512:618:b0:507:b15d:2ff1 with SMTP id b24-20020a056512061800b00507b15d2ff1mr7502828lfe.38.1698746828460;
        Tue, 31 Oct 2023 03:07:08 -0700 (PDT)
Received: from [192.168.143.96] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id i21-20020a056512341500b00507a0098421sm165357lfr.181.2023.10.31.03.07.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 03:07:08 -0700 (PDT)
Message-ID: <6048a2a3-cf0a-4f20-b96a-1855d69648ef@linaro.org>
Date: Tue, 31 Oct 2023 11:07:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: acer-aspire1: Add sound
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>
Cc: cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231027-aspire1-sound-v1-0-5ff3cf8b5701@trvn.ru>
 <20231027-aspire1-sound-v1-3-5ff3cf8b5701@trvn.ru>
 <c2ad06fd-805f-44b9-bf4d-806ef20f272a@linaro.org>
 <db624c01-a48c-4a8f-b9ea-548b25aa3091@linaro.org>
 <8b13ec027d960a09aee9434055a12e15@trvn.ru>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <8b13ec027d960a09aee9434055a12e15@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 31.10.2023 08:26, Nikita Travkin wrote:
> Konrad Dybcio писал(а) 31.10.2023 02:51:
>> On 30.10.2023 22:50, Konrad Dybcio wrote:
>>> On 27.10.2023 16:42, Nikita Travkin wrote:
>>>> This laptop has two i2s speakers; an i2s audio codec for the headset
>>>> jack; two DMIC microphones in the lid and the displayport audio channel.
>>>>
>>>> This commit adds the audio node that describes all of the above with the
>>>> exception of the DMICs that require in-SoC digital codec to be brought
>>>> up, which will be done later.
>>>>
>>>> Note that the displayport channel is connected here for completeness,
>>>> but the displayport can't be used yet since the HPD signal is created by
>>>> the embedded controller, which will be added later.
>>>>
>>>> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>>>> ---
>>> [...]
>>>
>>>
>>>> +		primary-tx-dai-link {
>>>> +			link-name = "Primary MI2S Capture";
>>>> +
>>>> +			cpu {
>>>> +				sound-dai = <&q6afedai PRIMARY_MI2S_TX>;
>>>> +			};
>>>> +
>>>> +			platform {
>>>> +				sound-dai = <&q6routing>;
>>>> +			};
>>>> +
>>>> +			codec {
>>>> +				sound-dai = <&alc5682 0>;
>>> Both RX and TX going to 5862 interface?
>> interface1*
> 
> Yes, indeed. The codec has a single i2s with rx and tx, and
> shared i2s clocks. They are connected to the prim i2s.
> 
> Codec playback is headphone jack, and capture is headset
> mic. It could have also been the lid dmics, like on trogdor
> but 2/3 describes that sad story...
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

