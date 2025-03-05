Return-Path: <devicetree+bounces-154291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8F6A4F957
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 09:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3289816B011
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 08:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D8601FECD9;
	Wed,  5 Mar 2025 08:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gvgGLMrv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945A21FDA89
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 08:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741165116; cv=none; b=SDFKfDhdV4Z231k+wIVIk9v/biUFo4Pfcxa5QHfKHbHRO1EKpkHee4UwkHoCcHZM6O5fQUhNZyiAVVKdRnHUtloo1fcJeGlK39Ul9JbWotKmo87lftj6D8FvWbsyH5fC9FVuzVgL04y3NUfxHMEwVQIEtuqvgq+fsSm5B6TBv9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741165116; c=relaxed/simple;
	bh=PNhskAE8Hw6NT1lxJLEmtkJRKWfn63/vyOBjmtkEi6M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=noizosIcKDbx7LkoVwCg2vu1RubvzekQytoG2HpyHsbeP/5BQwXEgOKf/Tr8MG3DGyxzoVSnBYqViFSi1vh9sBOq+ihIML7sp7va59pe6/FYBkpRdYwDyETtwTET7+MAxfLpbGQN7mf3Vcti1X5yhmeyKzM8+hNmeJ+JcvkSr5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gvgGLMrv; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54953b2c112so457484e87.0
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 00:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741165111; x=1741769911; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WY5vuVhs6pBFMntJgEjYvG2DSltfmIip5HvFcUhCgso=;
        b=gvgGLMrvm4TezDWk4WPh00LMkMgv/qGmfku7r0kO6LqQiZqWPlyIG1HL5zzfOpH8Qb
         UQe0Zo5b+MQxTqNi2iwhhDhlwxKuzFxb7pbgLCljcBxWUN1pTUjGJeqqpRSDgsFx53bC
         r7tdyVQX81dkU63de67cAeOd0xYv/6byQfxrUWul98bU4eHCCHIV/usl9IRUpH1COY6m
         UiRvQlmoBc9T7Hsp8UTOiCUPqY2XJnv781QrF0wD2Fs5eE7mkKnd61VZTa1iqYL1ytZZ
         wm5/PMgqi4mKgANWsLzQSrhWmX478c3tqxfXYLWUzKNiCv7IiOAvtlD5z92sX8cHY+ij
         +dEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741165111; x=1741769911;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WY5vuVhs6pBFMntJgEjYvG2DSltfmIip5HvFcUhCgso=;
        b=w+2a+0zuzwNk8cOOG0YDEQZ0nDf7jg/axI5zlVTuOPpnJxaNrI3oUZ4RBEtN1oHqNs
         YHg9Ghb5LJj5+ueEY/VD1A4bE2SxETlt5PjUmNS4xF/Pa/0o33FmcuWYUPtbKO88GNRY
         NxxYE91qETV+GmK5lI1bU0OSSy89WYI07PAmx8MmnZYmp4J1L6z3BD1Kw6DagLdhfO2V
         Bxrioy0LdEJdf0K2i/zXBfGSIFKqGT2tcVjKAPgsMabDdLsY0rR12C+fdQ942bErGB9u
         brEyJXyiiQIF9//VRWOpCWya6UVLnSc24BQ6ADzkT+IiJaM1sgAgeJUVwA5Vn94ym5mO
         KqoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHtMwPw3g9PhQabQo9s0+Z4wG3d/3kR61K6krVyVfe3N1/8O9YZKfQ0//K9gygKaWaKShT4HKFIN5R@vger.kernel.org
X-Gm-Message-State: AOJu0Yw247I2WjN/Q0Qz301VAGWdZzn8XYkbb3ApjiMaWU3bn2nHFvoc
	NRlp8U8suiZs862Ba1VHiJoGEVt8xsesWrBJ+iJmCCMTrJYDas9BCA+66CH5RPA=
X-Gm-Gg: ASbGncs8zKY1z9mjcY9ZQrCTuwVhtze0obPWbHzCCva+I0Ky1tm2wHOKHMxkONS1eUZ
	eeTHxZGJ3YSdCr7x1r9OrbyUamPJWyHQ2qnYhcFxVQkINwgqGhE8jFlSciaweRZwXmORS2UbTtl
	CsOODnhkZ3ECN59o3VhqkJTgHxmZooVZCDqWmKagkmk1LIhqM18lCPtL/g9bljKwf8T5ux455p6
	gewcbRMSZuCDgUzFKOwUohzNny5Lu4dBpsb7YFIKtq8zDnUw2TL6YFLwl5TbHHLp1rYQI+WsP+x
	dGEMD4g6mycj4k+T8GxEvxfbxJQ6H+4MoF1R8aMQLu+cSpj8R6Idz8lezq1EZfXR9o6MR26qzPn
	7gI6Vvys/Gl9EJeGCsM1rDpE=
X-Google-Smtp-Source: AGHT+IFru+CnoO/K8BouBY87L2tjCxv0I44B8TgnGQhueATpKA6i0oswVIJN7d54HfLg412IUkDTmA==
X-Received: by 2002:a05:6512:6cd:b0:546:2ea9:665e with SMTP id 2adb3069b0e04-5497d336cffmr332895e87.5.1741165110566;
        Wed, 05 Mar 2025 00:58:30 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5495ba676a7sm1137946e87.39.2025.03.05.00.58.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 00:58:28 -0800 (PST)
Message-ID: <19393198-75ad-48bf-b21a-3d9cc1848499@linaro.org>
Date: Wed, 5 Mar 2025 10:58:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: clock: qcom,x1e80100-camcc: Fix the list of
 required-opps
Content-Language: ru-RU
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250304143152.1799966-1-vladimir.zapolskiy@linaro.org>
 <20250305-little-frigatebird-of-calibration-244f79@krzk-bin>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250305-little-frigatebird-of-calibration-244f79@krzk-bin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/5/25 09:56, Krzysztof Kozlowski wrote:
> On Tue, Mar 04, 2025 at 04:31:52PM +0200, Vladimir Zapolskiy wrote:
>> The switch to multiple power domains implies that the required-opps
>> property shall be updated accordingly, a record in one property
>> corresponds to a record in another one.
>>
>> Fixes: 7ec95ff9abf4 ("dt-bindings: clock: move qcom,x1e80100-camcc to its own file")
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   .../devicetree/bindings/clock/qcom,x1e80100-camcc.yaml   | 9 +++++----
>>   1 file changed, 5 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
>> index 5bbbaa15a260..938a2f1ff3fc 100644
>> --- a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
>> +++ b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
>> @@ -40,9 +40,9 @@ properties:
>>         - description: A phandle to the MMCX power-domain
>>   
>>     required-opps:
>> -    maxItems: 1
>> -    description:
>> -      A phandle to an OPP node describing MMCX performance points.
>> +    items:
>> +      - description: A phandle to an OPP node describing MXC performance points
>> +      - description: A phandle to an OPP node describing MMCX performance points
> 
> If rewriting this, then:
> s/A phandle to an OPP node describing//
> because it is redundant (this cannot be anything else).
> 
> But more important is that you introduced ABI break, without actual
> reason. Switch to multiple power domains does not look like fix so
> neither should this be. Reverse the items to keep the ABI intact...

To the best of my knowledge there is no users of this compatible in the
Linux kernel, so likely there is no ABI break.

> unless ABI was broken earlier and this just keeps doing it to make code
> consistent. But then please explain it in commit msg why we need to
> break it second time.
> 

https://lore.kernel.org/all/CAA8EJprP9Z181VDCT=xfyrBipzgiB0tfb8M_XZ4H=yOrvEnB0w@mail.gmail.com/

--
Best wishes,
Vladimir

