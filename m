Return-Path: <devicetree+bounces-50449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BECA87BBD6
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 12:21:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9049D1C22030
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 11:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07DA16EB5C;
	Thu, 14 Mar 2024 11:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I8qBC3Xa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293FF5B1E8
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 11:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710415257; cv=none; b=B6Mvp9/uiE7s0f5AfFwo+5+0nJzm2Capu1XwEOtsJI/hz9AnWxlGIsP/ncDf6EM9hp8rkMMmDOZayPzT2rgQXSYf/K051ROMbdR1tuwC2wUaOpdlCJVJ527Xs3D4XAyif69V5gopRaf7VjU3KdoCRZEAsnfTPidNWnnbz+hXyFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710415257; c=relaxed/simple;
	bh=d0lHKvuwt0DqJicbUYV4oeRWf99uSfWi7oUxAihw+k4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YT99Y9mg4YDMtp74gHsTOl2EelMDR2DzB1Jiq8hluuw8v6lhXviM1cG0HoVZVU2S0bqknpSSmKEGllf5EoktDQj/yvKPaf36bV24e4V7HiW+bO+zSckNCl8dwvSVCXtsBkpxcTYQXqw6CUAe5lKvraafIYgGIct1Nw2GizeiAhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I8qBC3Xa; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-413f1c0edb6so3077185e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 04:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710415254; x=1711020054; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q5CqXWJRHRFkXhCgu6WjqlpPc2HaoZgLyUGHV9Pumfc=;
        b=I8qBC3XaWkRa+VfRw9j5sL/BxDlx1Gzf3Yi2+OrGHHw6iyhHMBQpLkpPmPohJsos4y
         z0hyhHYDIDTxjjqfkfB1Ttbt3+ZeVfCfEjWhrEWGeFGy30POq93+IfG3gUqO0Osu7PjA
         fWjLgRn+ajMq/HziOmv3FpPkeQJ93nMhuA1D1hQm3Pv28e18n9lkg2R62O/flZoBTiA5
         2AtVsbdaTW3yD+5Cxc6KOlzp8GNMF+E6CiwV+EmzOk6sQHE1Pahsys93+dvleQOheR/1
         0tbMltE1tn1mishX90n5wnjvpHUMciaqSCYku2FZXIdM5+xKaoufmdbWEutHGNE+vwSC
         CyOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710415254; x=1711020054;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5CqXWJRHRFkXhCgu6WjqlpPc2HaoZgLyUGHV9Pumfc=;
        b=J4UuEaI36s2kNsA+VKRiD67vzihDkFiZmJg+6t7mR0tqn9KeEEOHqNM4mVqYQ/EYfc
         Vigwulc6n28dGWib36SwFAvxKCMOURBl2bl9VUVDEQiSuuQ3DuU7RllXDrtKnfm9OjDS
         bSNCEtc722zo+XhqLbFIczN0+mLWtjhveX3GfjvtY093ctLQo2boWKjbyAKcQl7ezelz
         1HNNntUAQgVW8kX60TG7Q/7Cat/SjHUoma8udxSEUsUDWw3sk0hGaVfxjJQNW5aiKn3T
         AJSPXpPOzbH2BVzwE5DoJ/5X/BSgRvxnyu5EQjkpJzQceHztDJTOcJUzHZbXZCBNFHdP
         hu9A==
X-Forwarded-Encrypted: i=1; AJvYcCW5NN1KCLMohN4GI9DK+GKM8oum5EMvkgfkR7fwP30Nb3sLXnykkCTfhDk8ceymdAcSkG9h3OqDV36SNuTm7FWCTdAE61fzW/2Ulw==
X-Gm-Message-State: AOJu0YxN1tyGaIX0lvxq3KihumggQh+CFdpjYgjeCrMYxYHJolanuGUE
	whGNR166kckh6zu9sne7c53fJ0eB45OMEaQzbDHPfIlGyCdX3Ht8Z6JSEhWHVWE=
X-Google-Smtp-Source: AGHT+IEAHffegUMAOdeVrinGTUzp+fTXJm8l+bq80KxTcU84HPuaJ+2VVPnBbsXAgpdvJBTI30tAFg==
X-Received: by 2002:a05:600c:444e:b0:413:15f2:21bf with SMTP id v14-20020a05600c444e00b0041315f221bfmr1122021wmn.5.1710415254259;
        Thu, 14 Mar 2024 04:20:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id i9-20020a05600c354900b00413ef6826desm2162816wmq.4.2024.03.14.04.20.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 04:20:53 -0700 (PDT)
Message-ID: <54b820ca-3674-4376-8386-464afcf8c50f@linaro.org>
Date: Thu, 14 Mar 2024 12:20:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC
 board DTS
Content-Language: en-US
To: Sumit Garg <sumit.garg@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, stephan@gerhold.net,
 caleb.connolly@linaro.org, neil.armstrong@linaro.org,
 laetitia.mariottini@se.com, pascal.eberhard@se.com, abdou.saker@se.com,
 jimmy.lalande@se.com, benjamin.missey@non.se.com,
 daniel.thompson@linaro.org, linux-kernel@vger.kernel.org,
 Jagdish Gediya <jagdish.gediya@linaro.org>
References: <20240313123017.362570-1-sumit.garg@linaro.org>
 <20240313123017.362570-4-sumit.garg@linaro.org>
 <4a0a8db7-a2bc-4c99-94b2-c13facbd1bef@linaro.org>
 <CAFA6WYPh5BS_Fpi6ksAC7bwoFEyqjj1Y3EahyQxCG9Pp=KDw=Q@mail.gmail.com>
 <9dc0415c-4138-4867-861a-38b45b636182@linaro.org>
 <CAFA6WYPFfL18acdZt6O-_=LWnH7J2MooDuf9cA3JCaQZdoLhVA@mail.gmail.com>
 <CAFA6WYNo73S5ROHCMK0ZQSiU0DDbuDadptmaPL+GPCocE0h-mA@mail.gmail.com>
 <f03c7979-79f3-4894-98b0-1e5a2dc18ba6@linaro.org>
 <CAFA6WYNRwF7GqhBk2B7i-deT3aLxNQckhnOasjip2TYm4HZgAw@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAFA6WYNRwF7GqhBk2B7i-deT3aLxNQckhnOasjip2TYm4HZgAw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/03/2024 11:26, Sumit Garg wrote:
> On Thu, 14 Mar 2024 at 15:36, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 14/03/2024 10:36, Sumit Garg wrote:
>>>>
>>>> But it then broke dtbs_check.
>>>
>>> See following breakage afterwards:
>>>
>>> $ make qcom/apq8016-schneider-hmibsc.dtb dtbs_check
>>> <snip>
>>> /home/sumit/build/upstream/linux/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dtb:
>>> leds: led@5: Unevaluated properties are not allowed ('reg' was
>>> unexpected)
>>> from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
>>> /home/sumit/build/upstream/linux/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dtb:
>>> leds: led@6: Unevaluated properties are not allowed ('reg' was
>>> unexpected)
>>> from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
>>> /home/sumit/build/upstream/linux/arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dtb:
>>> leds: '#address-cells', '#size-cells' do not match any of the regexes:
>>> '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
>>
>> That's obvious, I don't get what is the question. Adding not correct
>> properties is not a solution and dtbs_check correctly tells you that.
>>
>> If you only opened absolutely any existing upstream source, you would
>> see how the gpio leds are represented in DTS.
>>
> 
> It looks like my reference example:
> arch/arm64/boot/dts/qcom/apq8016-sbc.dts wasn't correct then. I will
> drop unit addresses then.

Oops, unlucky for you, that is one of old DTS which was not yet fixed. I
am surprised that I missed it, I'll fix it now.

Best regards,
Krzysztof


