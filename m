Return-Path: <devicetree+bounces-62692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 244BC8B1FEE
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 13:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF1D32868A1
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 11:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CDCB84DEE;
	Thu, 25 Apr 2024 11:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ijSiRGLH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4BAB2B9CE
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 11:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714043363; cv=none; b=FuzvUKMkUBdhIR4d653zTwfXcdSiccNG1+4cp0aKdYB+CUOEV230adU2qQBD7mVK7XT1k43lPLFBkbXL0YU9LPwfgt1EkQyD3LV5Zn/lsAGxrjzCCsjFk5LHVgbz289oGhCs1XjI+cDuYF9c2TtKc2ZtQpBRFO8unUe9gQBPDss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714043363; c=relaxed/simple;
	bh=Mbw+9z5w45yy8Q8t3780a67tdya1wvVokCnzj5gYSjM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mxQ1zNP/sh4EFIXrTOJ5d4d4Gyp19s8vGVHRvNFxgNz555vAtNY7YMeOuchVzzemGHFC14Fv415R3LHZkJwGJqydK1684vBIHJd6zFzt3wL2ZP+YGaGVjMXAaQiu52v/FyW8zB+MceR94PT2qoM0vo8GKdS3O2iPjnzc/TWcexM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ijSiRGLH; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-56e47843cc7so737825a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 04:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714043360; x=1714648160; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=c9UdWDP072YhVmMmy+gx/lGuyE5W1DiNfysfjQaT5Sk=;
        b=ijSiRGLHxsbOoMJSXRuUSw05o+5AANnaE+B8g1jtwAO0XYYYrRRzdoJVNDdGuxXax+
         V+uPThpk6NowPT0nxc9EVyb4JebS+W5SC0d6e+S9V1LmZACyEBq7VTbLVrXhebN31QVQ
         4Qhq9111Z8E8VOkGV0sdp77XC5fVR5dhxlR7OKjoWoOfVUzrEof22rWPgNMNZcj4YpIl
         4suYr0ThIWwPEvQeQMsypJ1br9IQS/Yv6nX6k9eEnnnHwbGXffzVLIBuO3IVJWGGqC2c
         ffubftF5sVA6ykh4YFk+xEHtxnkOsfj3j6RGSfRla7KLd7VeVvAqvsQuOJEaiELMX3JE
         W3uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714043360; x=1714648160;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c9UdWDP072YhVmMmy+gx/lGuyE5W1DiNfysfjQaT5Sk=;
        b=o3Y+Yg888YorxKqZQWN+Sen+gXMMuHgWMEbypunRdO9+33dvY83xpXJi/5x1xq5xgc
         us6JIgoLyHrZxHdbETZ6m+IwvEkcpnqIIkzqOZLwats3+5z4d3SJa+HTCVlcxTiOz9M7
         PqjY6pjpzQtey0uiDBbtAjuWTmGOMboXcMZKjzvC1L3o70h95vx/0aHzrFx2/RZNiy/V
         JT9fef1BBQS531+2lzX12rl3ZFPZWgufDDISDf99T6fe123Bp4tW1iVZtzWkbvTxsX69
         G/6xvF39XuNRV5/QLIs8FgFA9oHb0epQoYaZTtADhvKJec3IYQ0tkuqemTG+fARwCZjO
         CmWA==
X-Gm-Message-State: AOJu0YzGAVNW2PBPqiZs6lz6aaodZkc3yi4che/4tWE3UIOqgJZ89RO2
	JQTwXqtW2IiWEj93vkERfF+cyB3WK9gn6rsOG8HDEd1Qpb+U69YCqUvN0B4Cv+Y=
X-Google-Smtp-Source: AGHT+IFezEl/F6F981YJi8PxBZQHnfeZfnyLNuh/b1BJVkMDy6YyT2AAEwZ93xnCyVlAnO2MWKBxNg==
X-Received: by 2002:a17:906:11c4:b0:a55:33a5:911c with SMTP id o4-20020a17090611c400b00a5533a5911cmr3308962eja.25.1714043360000;
        Thu, 25 Apr 2024 04:09:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id cd19-20020a170906b35300b00a4673706b4dsm9398364ejb.78.2024.04.25.04.09.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Apr 2024 04:09:19 -0700 (PDT)
Message-ID: <57698077-d09d-4ada-90a3-69ddd10bbb55@linaro.org>
Date: Thu, 25 Apr 2024 13:09:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] arm64: Add initial support for Blaize BLZP1600 CB2
To: Nikolaos Pasaloukos <nikolaos.pasaloukos@blaize.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "olof@lixom.net" <olof@lixom.net>, Neil Jones <neil.jones@blaize.com>,
 Matt Redfearn <matthew.redfearn@blaize.com>,
 James Cowgill <james.cowgill@blaize.com>,
 "heiko.stuebner@cherry.de" <heiko.stuebner@cherry.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "macromorgan@hotmail.com" <macromorgan@hotmail.com>,
 "sre@kernel.org" <sre@kernel.org>,
 "hvilleneuve@dimonoff.com" <hvilleneuve@dimonoff.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "rafal@milecki.pl" <rafal@milecki.pl>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "andersson@kernel.org" <andersson@kernel.org>,
 "konrad.dybcio@linaro.org" <konrad.dybcio@linaro.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>,
 "nfraprado@collabora.com" <nfraprado@collabora.com>,
 "u-kumar1@ti.com" <u-kumar1@ti.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20240425091403.17483-1-nikolaos.pasaloukos@blaize.com>
 <20240425091403.17483-5-nikolaos.pasaloukos@blaize.com>
 <9b24ffdf-1247-4164-9841-6063106d76ea@linaro.org>
 <a5282012-d38c-4a02-9292-8eab156ddb98@blaize.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <a5282012-d38c-4a02-9292-8eab156ddb98@blaize.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/04/2024 12:41, Nikolaos Pasaloukos wrote:
>>> +
>>> +	soc {
>>
>> This does not cause dtbs_check W=1 warnings? Surprising a bit... This
>> should cause big fat warning, so I have doubts patchset was tested.
>>
>>
>> Best regards,
>> Krzysztof
>>
> 
> No it doesn't cause any warnings. I did:
> make arch=arm64 dt_binding_check
> make arch=arm64 dtbs_check W=1
> I don't get any warnings. Could you please let me know what kind of
> warning I should get? Am I doing something wrong and I don't get
> the warning?

I was expecting one for missing soc unit address, but you are right -
your ranges are empty, so "soc" is ok. I keep forgetting that
distinction. Looks fine then.

Best regards,
Krzysztof


