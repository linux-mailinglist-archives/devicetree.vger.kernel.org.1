Return-Path: <devicetree+bounces-181619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5329AAC8158
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 18:58:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADE739E402C
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 16:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A6D22F75E;
	Thu, 29 May 2025 16:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lQn+W4+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386A122DA1B
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748537917; cv=none; b=Sa1bJ+1FZASJpjpCCgQFiUHLkuUNzm2sjOiSWt+xi8TB9OGMmdG11OQu0PlyFOY6rnyAYTrDlAi/4hIENdgA4TOiwjZvNwQmuiC7u4xeObmOGqXpWIU8GK8AHrvRyMoKTYD1HZEB/p2azyVTEb1P8U1YofcUs8oWipSZA4Lt4qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748537917; c=relaxed/simple;
	bh=Mn25szTLd+/7UcIsObRFVnR0C+rGXhS/mFuBtkp1HBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VAFSIhNPbaVpUpvCAYCRrfzRfTrD6z1M44CrMIaxIMN/T2zid67Ordd0WD5ZjYqt/dRbaq4MC+OrVs00IYo+VhQgelQzL92UhrJ4mXLeSVagok9fh4UF+kYogcJT/ytpi/UnJ9qh4FPM7M+9PsGihsSeaLV9rcRjn6NdGml8sNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lQn+W4+P; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-adb2bd27d8bso7664866b.1
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 09:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748537912; x=1749142712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=pt49z1zm5clp6OpH3KRmjYQBNRZSX8mdh4YUkX5ELQo=;
        b=lQn+W4+P64Qsr3HHsueRl2uxrVJr+1yIP2j32v+o3/ffoBcwpJD31Oy1pUFxi873Hz
         ElpQaugpspk+RVBgvx44Upuj8DHDqVK0Uk7MirnURYND8ZUzmKL/VZYy6JMy1lJ+6r6z
         0JlenKIhupoTFjYCjZ/S23v96c6Fc4V8SXWgk2M0dKkJLgiw1+MiSdu6vp/QrLWTdwfm
         O+xtp4Fr8udJa7gKi99z4cSlPoenCLeN0mSVJbdRMxq4Z+bJMXVdz9OLmiiKBQ53qYsm
         C+z0X62WKJkUWtPZf/rnDdenCvCIk37ZMHDt+3fg9k7p5GXuj2TwznuFJaRI8XYVHtLa
         qWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748537912; x=1749142712;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pt49z1zm5clp6OpH3KRmjYQBNRZSX8mdh4YUkX5ELQo=;
        b=RNEuafv8TWHXFenEmI4m75ScEluQlYMi1X7FBlYtTzOoSLqsEo0HRudug0mcZNnybA
         Uh7gystKswiOqg/jqiMXy/0UVLzwu/f2WqPy4EgFiSAlBq6c5PiZ1eondCO02k85UKro
         VXYP8rOZDseXOscZbhpUsEL5e/VP2l5A3eu5RdtaFFjQGR2uf+C7GwA3SZ3JFnhHPJ2C
         LK4p/oIpPrMUK4yuQsIori6SxCEYKWWyDq7p6Dy5C2lDBEQyRNQjt/W13Hko2+yS/tGB
         3jxWJnjY4XLg/+TMqrmCf1H0flUsZxgisZGjcpaxgdru03m0GROQ63o3b8kddOSyzNzX
         JxyA==
X-Forwarded-Encrypted: i=1; AJvYcCU+rfWaaTu/hcIy2HLUwwrZf+JWFQ1sSkFqg3wsbhZnbeYormFjC7naP+v9TlrMoDpEs+YCuIZdNBKK@vger.kernel.org
X-Gm-Message-State: AOJu0YzEgcW5W2J+vSKLI4Um/ZvJnjXrDGMdrQa9LTpo8dSSF9qM6RA+
	RwFCZPM7yufuLoq90ElfgorRPMT3sxDcbQ+NCVGbn0ESUZmAyexj6rI8cBzvhoP2/fo=
X-Gm-Gg: ASbGncs9CffPA6h0sX8cyx00heWI/pWVCp8hDFlOCT56h0xpeYTt9Fo7bx+pE10a4NE
	VxjyRskl8McF8EFGwTVEkt7FYSWFH8tGW6zBZrx9u3CJ+Me+N7ZfpM2vBkVbm9iJMVQWFQUyaaR
	qkQuQIOBsqDzH+ygdv9z+r01SXedSQe2CyDYBFATf+E6ESRC7mH5Sk9Vh2X/GB9GRJ12Ezq6a0p
	10Nhykl5jbg3QCZUhmaUaLf1/X0aakFUQPgf//KKgJoafDdfGnsR8ZRk5f6IhwobJf0e63bL9lQ
	OSE6Cczgrgc2WInWMYWxvL4PqNR6/dj/SHtK9Wg/51HYy1h6QXoKhB9R4zWuyrNfh463hiIUPfR
	GS717DA==
X-Google-Smtp-Source: AGHT+IHIk6xC/xP8CBZL2DsvKzsHlfRWJIaERxSwR/Iy1mqo3hR+EdBJCTlwv0dYBzOfKzEp91vyCQ==
X-Received: by 2002:a17:907:3d42:b0:ad8:a43f:2ff with SMTP id a640c23a62f3a-adb32263a71mr7460266b.6.1748537912471;
        Thu, 29 May 2025 09:58:32 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5dd045c8sm171769366b.103.2025.05.29.09.58.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 May 2025 09:58:31 -0700 (PDT)
Message-ID: <a0b381ac-3280-42df-bff1-1998e0b9c154@linaro.org>
Date: Thu, 29 May 2025 18:58:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/12] dt-bindings: arm: qcom-soc: ignore "wsa" from
 being selected as SoC component
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Alexey Klimov <alexey.klimov@linaro.org>
Cc: Srinivas Kandagatla <srini@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-sound@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-2-9eeb08cab9dc@linaro.org>
 <20250523-fancy-upbeat-stoat-e9ecbd@kuoka>
 <DA7VC87A0OMF.1X5XEWVCHFLE5@linaro.org>
 <7938374e-85fb-42b9-893c-ec3f7274f9c0@oss.qualcomm.com>
 <9c8fe115-97e8-4966-b332-6de94015f832@kernel.org>
 <b4235317-97c0-4225-b6af-f79358cbf508@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <b4235317-97c0-4225-b6af-f79358cbf508@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/05/2025 18:34, Konrad Dybcio wrote:
> On 5/29/25 8:58 AM, Krzysztof Kozlowski wrote:
>> On 28/05/2025 18:58, Konrad Dybcio wrote:
>>> On 5/28/25 4:37 PM, Alexey Klimov wrote:
>>>> On Fri May 23, 2025 at 9:12 AM BST, Krzysztof Kozlowski wrote:
>>>>> On Thu, May 22, 2025 at 06:40:52PM GMT, Alexey Klimov wrote:
>>>>>> The pattern matching incorrectly selects "wsa" because of "sa" substring
>>>>>> and evaluates it as a SoC component or block.
>>>>>>
>>>>>> Wsa88xx are family of amplifiers and should not be evaluated here.
>>>>>>
>>>>>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
>>>>>> ---
>>>>>>  Documentation/devicetree/bindings/arm/qcom-soc.yaml | 2 +-
>>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/arm/qcom-soc.yaml b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>>> index a77d68dcad4e52e4fee43729ac8dc1caf957262e..99521813a04ca416fe90454a811c4a13143efce3 100644
>>>>>> --- a/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/arm/qcom-soc.yaml
>>>>>> @@ -23,7 +23,7 @@ description: |
>>>>>>  select:
>>>>>>    properties:
>>>>>>      compatible:
>>>>>> -      pattern: "^qcom,.*(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|sm|x1[ep])[0-9]+.*$"
>>>>>> +      pattern: "^qcom,(?!.*wsa)(apq|ipq|mdm|msm|qcm|qcs|q[dr]u|sa|sar|sc|sd[amx]|smx1[ep])[0-9]+.*$"
>>>>>
>>>>> Why dropping front .*? Are you sure this matches what we want - so
>>>>> incorrect compatibles? To me it breaks the entire point of this select,
>>>>> so I am sure you did not test whether it still works. To remind: this is
>>>>> to select incorrect compatibles.
>>>>
>>>> Thanks, great point. I tested it with regular dtbs checks with different
>>>> dtb files but I didn't check if it selects incorrect compatibles.
>>>
>>> Maybe we can introduce a '-' before or after the socname, to also officially
>>> disallow using other connecting characters
>>
>> It is already there.
> 
> Pardon, but I don't see it, only in the 0-9 group

Then maybe we talk about different things? Because the one to fulfill
your request - to officially disallow using other characters, which is
part of the goal of this binding - is here:

"^qcom,(apq| <snip>  |sc|sd[amx]|sm|x1[ep])[0-9]+(pro)?-.*$
                                            -----------^

That's the hyphen after soc name.


Best regards,
Krzysztof

