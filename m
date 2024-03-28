Return-Path: <devicetree+bounces-49518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD76B876C4E
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 22:16:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4208B1F21E7D
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 21:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A1005FB87;
	Fri,  8 Mar 2024 21:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SNUu59Rd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0925F564
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 21:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709932553; cv=none; b=H0oqzi6LqSgVwGaoV6RBU5w21xZCY3Sc4AMBTRilLyXYJIsUU2XXfaT8/FgWh7znY34+ANL8xu74hcPbK8Yn8hC4Jq6hb8oqQ1BNbcrsYCpB9ApjKA1PeUC8lx55LEqjzg2t2lwux6APWMhZaNV9Z2QKTph9lufcLRpGG3KK2Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709932553; c=relaxed/simple;
	bh=TeTFL8k++CGdOhlfe3T5SrVkXeRyBgWcTBx+E/fu2wc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KiV1kPWWwN9W1GjhS0uaze6GFtWCWW+tQbcGhzHkOMohKVHC4uhCVjAFJyHN4egtmCcwmA7gpQJvZEB7ZRbZ4jMi+785n6BsaAOIdfqLAF0SbWVauqvb49GNtqepOOxNxBtWCeRUHYMJIWJP5GejwuWCz/zIdc9FsnmpcrtAvJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SNUu59Rd; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5683247fd0fso1235640a12.3
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 13:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709932549; x=1710537349; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N4W64r4suULTbZbM2VCCq3KkVsIO3TU/J/8FcbisdEU=;
        b=SNUu59RdOaatj1yMAXyGuK9fNoLmX8pKIcg9EhO98ujGfxbnnZ5QvVvr7GkWJNIf4M
         MlF6loPr860Mf/X9dF3q9B5UrDDk5cPCmmTlv+PlDq0VPRKxQWEq0DPVvqgmkbR/3NWS
         ep5pKpVyYb7VOelajs/AiLe9xD4q8NJrUT+iRnAuUUFo00cnUj6YhYdE9ayUNCm6H49j
         vncrx9C4UYNze3Osx/JFtov9y05r4aA9w/LecZs16tLCEc+LG4NzbU709ADn0ttk4xHu
         1u1GRVsauYO/97BdOG20YRchjTupulavpWH8wAa8CaaQdsCUeHYaZ7q02rywfc0Nh0wO
         XIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709932549; x=1710537349;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N4W64r4suULTbZbM2VCCq3KkVsIO3TU/J/8FcbisdEU=;
        b=gi3/VCthNao7+WQMbxScYW/nwAVwTJH3I6t/s7v8cmBY/xM/W7Ek2+ELU9Lt0WJPzF
         inCRZ5V72mPpbi9ZFTmEJaQsPbcK0p6f2qMVTg0lyOx+Ed6JeEjz9fX19iU3SqPTRFG1
         +rCnSc0QF6J86Kt7PW0qm3TObQ1pkLBfk7ePHpnuYwKruRAJd1pG7iFFdGIpjATwHgo6
         VN8mSeYbVYaYkv9OXbyPwdhcmX2Geb74fAKGkBXkHKvb1upqCIyVrEC5AjnwCyXv5oJd
         v33s1HGssb6rFpHrbrduPBVzCbguonFgjSfF69hSLy85czNXUHbpk+T4sDEmh2z5IwcY
         +vGw==
X-Forwarded-Encrypted: i=1; AJvYcCVV6d0v2SqW+6o4y8HfmmbLq66VWi40w8DvyknPiVeaRuOonWAaBUiE7Sja0dxOx3ioExlVqHg6n0B4IrNAekBt++qLIlhQ/I6O0g==
X-Gm-Message-State: AOJu0YwukesclEp+hpWBezO7dhZmYqvFVHQb+yxo8RIJ6vJc2TkCcz5b
	WRLIAIVLt03+ZclqhDWwapV2wNqqJrdmIr26OKU1IfKprgm9TlVFnAQoqGyxGSs=
X-Google-Smtp-Source: AGHT+IFX6YErZc4X0azI//lUIKC3QskpMA6Zrb31XzAcPoKGq1xhjZhrKiVd7ScDBHlZMmLWlzS4cw==
X-Received: by 2002:a50:cd03:0:b0:568:335d:a95d with SMTP id z3-20020a50cd03000000b00568335da95dmr309733edi.18.1709932549023;
        Fri, 08 Mar 2024 13:15:49 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id fd23-20020a056402389700b005683b3a471asm61050edb.72.2024.03.08.13.15.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Mar 2024 13:15:48 -0800 (PST)
Message-ID: <2749c144-4606-49c5-a9e1-3b9547e5978a@linaro.org>
Date: Fri, 8 Mar 2024 22:15:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] ASoC: dt-bindings: fsl,imx-asrc: update max
 interrupt numbers
Content-Language: en-US
To: Frank Li <Frank.li@nxp.com>, Rob Herring <robh@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@nxp.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20240308-asrc_8qxp-v6-0-e08f6d030e09@nxp.com>
 <20240308-asrc_8qxp-v6-2-e08f6d030e09@nxp.com>
 <20240308181103.GA855753-robh@kernel.org>
 <ZetgiaZ1+wt5lCkB@lizhi-Precision-Tower-5810>
 <Zeti5mFUUh9UedAx@lizhi-Precision-Tower-5810>
 <ZetmXE4YooDYJgSM@lizhi-Precision-Tower-5810>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZetmXE4YooDYJgSM@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/03/2024 20:26, Frank Li wrote:
> On Fri, Mar 08, 2024 at 02:11:34PM -0500, Frank Li wrote:
>> On Fri, Mar 08, 2024 at 02:01:29PM -0500, Frank Li wrote:
>>> On Fri, Mar 08, 2024 at 12:11:03PM -0600, Rob Herring wrote:
>>>> On Fri, Mar 08, 2024 at 10:30:51AM -0500, Frank Li wrote:
>>>>> fsl,imx8qxp-spdif and fsl,imx8qm-spdif have 2 interrupts. Other platforms
>>>>> have 1 interrupt.
>>>>>
>>>>> Increase max interrupt number to 2 and add restriction for platforms except
>>>>> i.MX8QXP and i.MX8QM.
>>>>>
>>>>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>>>>> Signed-off-by: Frank Li <Frank.Li@nxp.com>
>>>>> ---
>>>>>  .../devicetree/bindings/sound/fsl,spdif.yaml        | 21 ++++++++++++++++++++-
>>>>>  1 file changed, 20 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/sound/fsl,spdif.yaml b/Documentation/devicetree/bindings/sound/fsl,spdif.yaml
>>>>> index 56f8c0c8afdea..a242f68f99f18 100644
>>>>> --- a/Documentation/devicetree/bindings/sound/fsl,spdif.yaml
>>>>> +++ b/Documentation/devicetree/bindings/sound/fsl,spdif.yaml
>>>>> @@ -31,7 +31,11 @@ properties:
>>>>>      maxItems: 1
>>>>>  
>>>>>    interrupts:
>>>>> -    maxItems: 1
>>>>> +    minItems: 1
>>>>> +    maxItems: 2
>>>>> +    items:
>>>>> +      - description: Combined or receive interrupt
>>>>> +      - description: Transmit interrupt
>>>>
>>>> Test your patches please because this will have warnings. Or, you can 
>>>> put in *exactly* what I provided because this is not it.
>>>>
>>>> If you continue to just toss crap at us at the rate you are, the DT 
>>>> maintainers will either just start ignoring your patches or require some 
>>>> trusted review by another NXP colleague first (offhand, not sure who 
>>>> that would be which is part of the problem).
>>>
>>> Sorry, I run wrong command to check another dtb file. So have not catch
>>> this problem.
>>
>> Strange when I run second time, spdif warning disappeared.
>>
>> make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j8  CHECK_DTBS=y freescale/imx8dxl-evk.dtb
>>   DTC_CHK arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: /: fixedregulator@101: 'anyOf' conditional failed, one must be fixed:
>> 	'reg' is a required property
>> 	'ranges' is a required property
>> 	from schema $id: http://devicetree.org/schemas/root-node.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: bus@34000000: clock-cm40-ipg: {'compatible': ['fixed-clock'], '#clock-cells': [[0]], 'clock-frequency': [[132000000]], 'clock-output-names': ['cm40_ipg_clk'], 'phandle': [[15]]} should not be valid under {'type': 'object'}
>> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: intmux@37400000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
>> 	from schema $id: http://devicetree.org/schemas/interrupt-controller/fsl,intmux.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-controller@591f0000: 'clocks' is a required property
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,edma.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-controller@591f0000: Unevaluated properties are not allowed ('power-domains' was unexpected)
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,edma.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-controller@599f0000: 'clocks' is a required property
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,edma.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-controller@599f0000: Unevaluated properties are not allowed ('power-domains' was unexpected)
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,edma.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: serial@5a070000: Unevaluated properties are not allowed ('resets' was unexpected)
>> 	from schema $id: http://devicetree.org/schemas/serial/fsl-lpuart.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-controller@5a1f0000: 'clocks' is a required property
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,edma.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-controller@5a1f0000: Unevaluated properties are not allowed ('power-domains' was unexpected)
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,edma.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-controller@5a9f0000: 'clocks' is a required property
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,edma.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-controller@5a9f0000: Unevaluated properties are not allowed ('power-domains' was unexpected)
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,edma.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: bus@5b000000: clock-conn-bch: {'compatible': ['fixed-clock'], '#clock-cells': [[0]], 'clock-frequency': [[400000000]], 'clock-output-names': ['conn_bch_clk']} should not be valid under {'type': 'object'}
>> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-apbh@5b810000: $nodename:0: 'dma-apbh@5b810000' does not match '^dma-controller(@.*)?$'
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,mxs-dma.yaml#
>> /home/lizhi/source/linux-upstream-dts/arch/arm64/boot/dts/freescale/imx8dxl-evk.dtb: dma-apbh@5b810000: 'clock-names', 'interrupt-names', 'power-domains' do not match any of the regexes: 'pinctrl-[0-9]+'
>> 	from schema $id: http://devicetree.org/schemas/dma/fsl,mxs-dma.yaml#
>>
> 
> I figured out what's happen. CHECK_DTB will check binding doc except
> example part. So I skip run dt_binding_check when I have not touch example
> part in dt-binding doc.
> 
> The problem is
> step 1. run make CHECK_DTB=y freescale/imx8ulp-evk.dtb
>         Then I get some sai error, I found use wrong 8ulp-evk.dtb
> 
> step 2. run make CHECK_DTBS=y freescale/imx8dxl-evk.dtb
>         Then tools not check dt_binding file again even there are warning.
> 
> Do you have option let CHECK_DTBS to force check binding doc every time.

CHECK_DTB is for checking dtbs, not binding. You must run
dt_bindings_check, as asked by every damn document and guide.

Best regards,
Krzysztof


