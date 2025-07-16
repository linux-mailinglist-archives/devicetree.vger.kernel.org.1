Return-Path: <devicetree+bounces-196855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9D6B074CD
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 13:30:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB16F1C25E57
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 11:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900FE2D7810;
	Wed, 16 Jul 2025 11:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QKsyTiP9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4131C8616
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 11:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752665440; cv=none; b=j5pR6iSHM43ch6TnSu4HD3uWKvYobLwmQxnuChdXAsM2FCLDoBrfGf5tuSGQH/pGOdsUfBb+ALNPDkm1JW+JvHOcj3TGPwqH5Jn0FRh5SgY1ye6VGD2pPORUe5grgz1prpjNmdRfICT3IPyydj9Z8vDfPTpcXEmR0oBUoAI4+oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752665440; c=relaxed/simple;
	bh=+ECop3VKmF5vBzMl7LnvNjLQmkqlhgXLNF0rFI01PpI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b4iOR2I1iocSRLI4ozWiGE4zBgOZyspHyl4cnLNTLppqB44lb63ZCXbnZaFRea0attCksdC0eodQqjMO0ZDpgKvnHFKnls1xKX34B6w4KcEfo56UU+b5HzqKwsOnPOnGZed6+D8c7lKYdjHkLtagAllhVtvNyaSBFKKWFbqwvFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QKsyTiP9; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-607fbf8acb6so783059a12.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 04:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752665437; x=1753270237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=wxt2TkBp//2+Tyvblq5rA5SGBeO4yjsxI6SfU9mxpsM=;
        b=QKsyTiP9c/VRdL886wRva3NvDLET7hBD5Y3snoJVp6htHWEvWMoVjdHZQubcRC5Ags
         CvH9+CRyPKgBckwm1iZR4iGlNAzUhrQuR83mbz/JA97cFji19r9JZ5Z0XpD1mwwAYJWC
         puODNmFZJTCNd6W8TBW6JoWIOdamimnm8Npdd7rqKG1Z0bFRCwXqp+j39XfSkuKXIt8q
         MfGJ0Fg/48C69vJ5IDtzOUWerka2XEPX7NY8ocpKcxbzwPSCYelWZqxArkP7eKENCD9B
         n95iA3/ae4axjdC7udb7NI/cWlaQRNzFy3Ojf35vVUny0LWhorwaLQ94q2uLTtw+selB
         EA+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752665437; x=1753270237;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wxt2TkBp//2+Tyvblq5rA5SGBeO4yjsxI6SfU9mxpsM=;
        b=CspeLoO3pSVFOm8I9tnIF/STtVCp3UsCTOjpOIopgyT8qlDS7R55ryZ+umVwhz7Yrw
         C13xb3puyLGalNwcvF6jY7NC4kWUv115KqqKyY2yQr2fDaht+rrPs7kVdxLtIc9BCQQC
         3Xqg8AUvTP9VgtKlQvSmGuV3tjMqG3KYBO40avzyujE6vgvYRWZWCMcYpKh8s9ma+lke
         QQ+9hd8+wCTfUUcETH4ixXLh+rfh4orK6D73RhME0fzLPMyGpxXZsa2p8TrolQ458syd
         0JDHHrLJNyCAhBWGdVMJLaNWlyjnrqDjKc1OuWI+cZ6aHFjsgPQ4qklvN/29ZWSmtjwc
         VOcg==
X-Forwarded-Encrypted: i=1; AJvYcCX8bVQkeawCi5/CpEHn4hirMKFmg5YHuCOCpuYevJ/fiox6kc21RgAZoZLukCANsaDQ3LW0imN2cCFM@vger.kernel.org
X-Gm-Message-State: AOJu0YxYY7OQBFI87NnrrDyhLb4C26NeGw42ih7ZpPvT57nkc634YzA/
	zfyhKLXYlNoRQx9taq5h4Dnfu8WGtU/+wQS4L3IW0tLv6O3O09TPxyJ2ec9pzHEUZfwjQrmPOXT
	NIdrp
X-Gm-Gg: ASbGncuWIkW0zi6SsCbpcfRxOJvSt6swW+HrofMb8C2qhDwXsK+8OaXxp05D8jbNvx/
	W6FdpC2JINopbq+MWKZ1eSANHtoVePtV62KkRg22f/lNmfjN4nyyvd2iOw9+6DYmMGS55UUT+ik
	iucns8E8RfP5x2rBAMiyMTk/tgj9pEOgg70UQayAZ8XUd/juwdyT8CbN5+nCcF3Zybn0FgCfeST
	5yPS89wUj21Jh1nP9z8jQ1JJFWTBUYFAcF1fXjlSwz5A2a4KwD/toXfutCe2y5NnjBpx4q+J1r8
	XBTlW5u2OTQX+n12R++QP7Q87w8Xa/g6VoKHgIt/oVXqXIKc5WiG7H7KsQFIqV1lOmHAWoQF6DD
	LQbVGSREuHddjmApqeS0CnrJumKONabuyZLQOzFnjqQ==
X-Google-Smtp-Source: AGHT+IGKb/yMmo+6HqAi38Y/JYq4pgPKYjhxTqfALfSBgriOhZiBnQk9t+lWqsa4UOBxEFVK4YE0eQ==
X-Received: by 2002:a17:907:971e:b0:add:fc26:bef7 with SMTP id a640c23a62f3a-ae9c9ae8531mr105371866b.10.1752665436954;
        Wed, 16 Jul 2025 04:30:36 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e826469asm1161311966b.85.2025.07.16.04.30.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 04:30:36 -0700 (PDT)
Message-ID: <0debb9a2-2687-4622-ab05-0a3c276f2482@linaro.org>
Date: Wed, 16 Jul 2025 13:30:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] arm64: dts: qcom: sm8750: Add Iris VPU v3.5
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250714-b4-sm8750-iris-dts-v1-0-93629b246d2e@linaro.org>
 <20250714-b4-sm8750-iris-dts-v1-1-93629b246d2e@linaro.org>
 <5dd36649-821c-450e-bdcc-871735d10059@linaro.org>
 <15b8b9e0-a211-4102-9b68-994c8ab50a7a@linaro.org>
 <b5a68138-4eca-4bdd-8f72-d80236b02c0a@oss.qualcomm.com>
 <ec0f64c3-bd08-4944-817e-f5f67c317b94@linaro.org>
 <4be1ebb7-1dc7-49e0-aa5d-621f023b3853@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <4be1ebb7-1dc7-49e0-aa5d-621f023b3853@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/07/2025 12:50, Konrad Dybcio wrote:
>>>>>> +				 <&gcc GCC_VIDEO_AHB_CLK>;
>>>>>> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
>>>>>
>>>>> This is incomplete, need second power domain and I did not check against
>>>>> qcom,sm8750-videocc schema before sending. I will send a v2 a bit later
>>>>> (maybe some reviews pop up).
>>>>
>>>> Heh, no. The DTS here is correct. The videocc bindings are not correct
>>>> (and that's not my patch).
>>>
>>> Well, you want two power domains here in either case..
>> Are you sure? My point was one is correct and downstream confirms that
>> in their bindings (which is a poor argument, I know). Which one would be
>> the second? MM? We don't have such...
> 
> Historically clock controllers used a pair of CX/MX, with CX powering
> the "meat" and MX powering the PLLs (& retention logic, IIUC).
> Over time, CX was split into multiple usecase-specific domains (like
> GFX), and we now have MMCX (or MM_CX - multimedia CX) for multimedia
> hw specifically
> 
> In the downstream tree you're looking at, sun-regulators.dtsi aliases
> VDD_MMCX_LEVEL as VDD_MM_LEVEL for $reasons, which is admittedly a
> little confusing
> 
> MX has similarly been split into MXA (MX-Always [on]) and MXC
> (MX-Collapsible). For Venus, you want the latter, as the hardware is
> not crucial to the functioning of the SoC (the connection is of course


OK, so the binding is correct - the second entry is the MXC power
domain. I'll fix this in v2. Thanks.


Best regards,
Krzysztof

