Return-Path: <devicetree+bounces-199277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 368DFB102F5
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 10:10:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D78C7BB894
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 08:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 291EF273D98;
	Thu, 24 Jul 2025 08:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bvj8CXAr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3206A274672
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 08:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753344526; cv=none; b=cEkdSroEomNxof0X+NcssQvXqsv73Z91PUM8jXBRyArZ/39XzSHhQoXzBY4L84Cj5d3nBEiF4bbUh89wN/MB7GQNMrLgQQ+nSBlMDlXNVKR6js33+RLpTHkFVxyR8nfuVaqj7QulmUkSVbzROdstsnCkN/IzZX2h0JvMcP5ekj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753344526; c=relaxed/simple;
	bh=FCUZqDD6J0JS8ls1i9soYcA/RpHR7beqpYXfAk3fdUk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=AbtC3sT+vUXVVlXtA+Ty2YG3efirTrX/dv1OADEkO6sQfPO6WxnRnNkQHxcEbrS+v6bAdv5qoDiFoLhnjxDWZEat1D8RuIyYzYpK4in5LnmORED2SI2U+7RtUb9/Cna5unUh+sb5K072eOvYcpuv4veRdICIaTaN580J3rahtxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bvj8CXAr; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a4e749d7b2so113603f8f.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 01:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753344521; x=1753949321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X6feK6OFgHACtKacI1BI+FbR93W3Tq/Mf7RC2mQiLrc=;
        b=bvj8CXAre/DPCbHw8xCq5dUoTaEIIWGUPwPc02wouerJZqzsbG8Gu0hn6J5yfpLsuD
         4x1qTiCZef1IDTZitdGD6R8mG4NdWuKnYog+dtSI4cVGZf/QCQySTdezhHdfOojK/jfh
         CkNb2rbsSAQd65+DluY22y6zj2s/8qrk8+ELP+3S8zDy3VkvXkc8Z8b7HPk+ul3gA2FL
         BBjRmHLHGnYGBhD7UmJYRs2cR3Q3xR/E4ZeX7s84aeg/KNlOyGx3/WH8/kczVnkaVecV
         ce7uUijyQJoB3AHIoIASNxBWaApZ3Y+1YHPgjIS7JM0MvpnIKjVtxrUqqJY2T4pvWCOa
         1Vow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753344521; x=1753949321;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X6feK6OFgHACtKacI1BI+FbR93W3Tq/Mf7RC2mQiLrc=;
        b=aNK6YB1DzDPCiCLFEYg0Qr8U4nTpPmjtOuqolje4l3ShbYqeujyUImc/b/uqeYN0/b
         bxC+3LuCN8AdKspiURtOfRBgBfF7ANP6eFRmoupOqjZrvJCeQWZ/upmUiDpBWpFmBjLp
         0SfEAK0Acp00MwxnrxXdgQHKXZzo99DmvFWWTSQScCSA+cDNQ2k+rU4cxF+p4jS/cDNB
         yDZhIaN1ZYJIlC+G9jIBjB1Jo3BgNTJxu1LNImdYI8ZrfF956+CMoejZ2pfWpWmShQCr
         omKIlQnQ7RUvAE+yOjollrjI0yB2nElHtfFUVMCaNjf95De+CdvvE/3zty3gDRZ7RIee
         hO6g==
X-Forwarded-Encrypted: i=1; AJvYcCWs0/ECfdtaA5wxcAiKMaOmDrS1ngUvW4hP7hhnSJBOQ7Tb0o7Oy1EoMPsX/P2rY4jYUBZRF0qQ5Q++@vger.kernel.org
X-Gm-Message-State: AOJu0YyoHd2L7tX0Duh4V06sV4hH4O8GoBezrQjCmT81Nc6G/QjELCtv
	vz5d8Wpv+LqU9lpzpUgkRJut7ghPu2YP5LU8US1XV/50HegtgLPB34FCxEO1u9sVkJE=
X-Gm-Gg: ASbGnctJwPCRAT7anuog/9boli63XQlVW+fMfs2ft5/9jPkapF7Y5SwTydQogGkce4R
	PHMUenxpVfyjxETrKBRdeEy/AvlC2RQTlH5hx6RtJndbJH0+PY5+hEDROKMWiQ/OQ+qBmXd/qNg
	maeMBlvAiK/dFLEuQJ54gUPa2WfuaVO0IR0xCKnGo82ktA3zDgkhW/BVDcJWKvHHelw1WKUMGPh
	x+X0iaSaRpt8WYVRc3ChqFPbLp7bSnDcArzkoCtWW700FBBSwzAMv7SNKzO/L/1pW+XWHyppKzj
	rNhY4FDJTkvqDxbyprY/WlM1qktVNyN9C+j/9hM2MvKRNygmWQeTuZA7LCYpkzK8FxaM+HU+DIo
	tBKrEXTTNgpzflxvopge9OEIEKbb1a9SAVruM7hPF9A==
X-Google-Smtp-Source: AGHT+IGNvZ9ZfabdgNPRQVULYvd6vF+PtGhm7iC6xOezk4H3zJPBVtSBlI43GvHwQ4wXtxX/owN69w==
X-Received: by 2002:a05:6000:310d:b0:3a4:dc42:a0c2 with SMTP id ffacd0b85a97d-3b768edf03emr1779405f8f.1.1753344521209;
        Thu, 24 Jul 2025 01:08:41 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.203.90])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45870568fb1sm10289275e9.27.2025.07.24.01.08.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 01:08:40 -0700 (PDT)
Message-ID: <ab0294da-1ae3-434c-aa37-75532e538e56@linaro.org>
Date: Thu, 24 Jul 2025 10:08:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: crypto: Add node for True Random
 Number Generator
To: "Jain, Harsh (AECG-SSW)" <h.jain@amd.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "Botcha, Mounika" <Mounika.Botcha@amd.com>,
 "Savitala, Sarat Chand" <sarat.chand.savitala@amd.com>,
 "Dhanawade, Mohan" <mohan.dhanawade@amd.com>,
 "Simek, Michal" <michal.simek@amd.com>,
 "smueller@chronox.de" <smueller@chronox.de>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>
References: <20250723182110.249547-1-h.jain@amd.com>
 <20250723182110.249547-2-h.jain@amd.com>
 <a350e9b6-9bbe-4045-8d9c-e3886b758a99@kernel.org>
 <DS0PR12MB9345EDA907BB0438C32EF12F975EA@DS0PR12MB9345.namprd12.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <DS0PR12MB9345EDA907BB0438C32EF12F975EA@DS0PR12MB9345.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 24/07/2025 10:04, Jain, Harsh (AECG-SSW) wrote:
> [AMD Official Use Only - AMD Internal Distribution Only]
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzk@kernel.org>
>> Sent: Thursday, July 24, 2025 12:52 PM
>> To: Jain, Harsh (AECG-SSW) <h.jain@amd.com>; herbert@gondor.apana.org.au;
>> davem@davemloft.net; linux-crypto@vger.kernel.org; devicetree@vger.kernel.org;
>> Botcha, Mounika <Mounika.Botcha@amd.com>; Savitala, Sarat Chand
>> <sarat.chand.savitala@amd.com>; Dhanawade, Mohan
>> <mohan.dhanawade@amd.com>; Simek, Michal <michal.simek@amd.com>;
>> smueller@chronox.de; robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Subject: Re: [PATCH v4 1/3] dt-bindings: crypto: Add node for True Random
>> Number Generator
>>
>> Caution: This message originated from an External Source. Use proper caution
>> when opening attachments, clicking links, or responding.
>>
>>
>> On 23/07/2025 20:21, Harsh Jain wrote:
>>> From: Mounika Botcha <mounika.botcha@amd.com>
>>>
>>> Add TRNG node compatible string and reg properities.
>>>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> Why did you placed my tag here?
> 
> You shared Reviewed-by on v3. It’s the same patch. Isn't I am supposed to add it in subsequent patches if there is not change?
> 
> https://lore.kernel.org/linux-crypto/20250617-rational-benign-woodpecker-6ee31a@kuoka/

And who sent the patch? Who received the tag? Why the tag is above
existing SoB chain?

> 
>>
>>> Signed-off-by: Mounika Botcha <mounika.botcha@amd.com>
>>> Signed-off-by: Harsh Jain <h.jain@amd.com>
>>
>> Who received the tag? When was the patch prepared?
> 
> Did I missed something here?

Yes, using standard tools for the job - b4 -  or following the process
if you do not want to use the tools.

Best regards,
Krzysztof

