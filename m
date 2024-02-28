Return-Path: <devicetree+bounces-46747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EED5786AC18
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 11:23:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 798991F248BD
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 10:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6812554659;
	Wed, 28 Feb 2024 10:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p+TRnYaM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8780E53E2C
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 10:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709115819; cv=none; b=HAQ1WjT3BL2PRNpwhlQQDOi/9jSbagWF0rpLqhxVc3IkzARNWPCn0VPXWzckeyw6OAqBqXvPQmoPM/Oc+kcybbCdyodCY4+pMC+PTtNhX8conahDCl5M6U8amv1NQDJITiQotAIzsfBd2F2YZtyyNOFjpV8FyyomdEhzGphLh1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709115819; c=relaxed/simple;
	bh=Mc4b/AR/nSRZ39KDeo6kgXY+Bvu8x/GEIKHZZ6+iYNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TX4F6R0RzDsCQMerD9pvTUZNXrpLsRJuLLCIpRnGjXJ7XxnKtvn+r3tXKfChvb0+pkhWx3syRUW0kH8Fkbu8xQiCIZD3Mv2+EsoBPig8vrS70TU5NusTsl6g+v5RM3Cit1cp80mfSaSS+96NSkM3Kw1etSBcRj6M8L5l6DKeoek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p+TRnYaM; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-513173e8191so1386229e87.1
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 02:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709115816; x=1709720616; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dVcUvvXZrBFdTpa2aLeHCeaL3QuL+vTylsLEbLtu/l4=;
        b=p+TRnYaMm+5PdzaSsf/fEsyRw+c+DSFGwG3ryL2pc5Pi5hkMgNbx+AGavDwM8pzlOo
         jQGQQIyg6QqRFNTdiFvz5Wbl8rRj51vVm/XCYoMksnc3dB6Ejx5HfK0/Ky8GI+4D+W9X
         lqVJgGvvsTAjz+sml25dQWED6SOfLESpN6eVbduj8RlKRpTp8IWIKUWrXYZb/A2olpg/
         kk1BKJnL68aWDZ7GnPaYCSDkFM0v2aDjLz20QcKjZotz6Uc2uSE0y2lwyXJqYYu37bUS
         xgO/Utz6GbBa+e/SMtOepYIpqqpdb+h312r5iFmTEKwGmSoMF91hyNX1qWBT1KANOAdI
         NtLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709115816; x=1709720616;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dVcUvvXZrBFdTpa2aLeHCeaL3QuL+vTylsLEbLtu/l4=;
        b=OmnOA7pl5/jETwV/AV9BDAESffQNQyv1TFs4luzmsNo6P5ouG3WZNmqLTXRYFtOird
         dp3pjGLlVmz9anISVw/UMxGULaAM93go4KmfvgHYtwoboIBHSJLNnm1ska+iw4v1B7ZE
         /Yl6Iz8AmkpUwpVNgtMG9niQxpw0Q8WFfLroaWbQYfYThxpcuhPoE+i5P4bJBnwJkraM
         BCPD/StoiHSsRBYSku4UxzvGc1ddWr/r7FC8pcQVznuGeRoeX7Sg4OpM6gIavlSD6hyF
         IgDcv7lKO1vpozmoCy4wBEYkBhxc8+/XVgdvFSlNiHeioQ2Tkk5SgfdVwOoQdmZTkcNx
         Mu5A==
X-Forwarded-Encrypted: i=1; AJvYcCVGlWkeLGORF2YGTCdAiUSNabW5nLT+TgvthE1vYsrCeTLiHBkFbZg/5zFvCtPc7JYOOkI60MJ9uOKWwncw1Anpfuq9kVSpQA/s/w==
X-Gm-Message-State: AOJu0YxUVFoAyIZrqLFbbh72Sl+zSTk9iHdeW3zYIl0s+8G81UuYT2J9
	tKVAz3FwwTY56L/C7fXTMFVYH5+/wc6TqIJPStUckktjtrkrzttEoAvsV0wKJQQ=
X-Google-Smtp-Source: AGHT+IGOXaWyrpVv0kqPh0Xchx+fy0yzA6ElOGQFI4V+3AZo4ZnDBxZhSKXbVZ+kjBoBo1fB2luwBg==
X-Received: by 2002:a19:ee16:0:b0:512:bea2:f002 with SMTP id g22-20020a19ee16000000b00512bea2f002mr7525070lfb.6.1709115815619;
        Wed, 28 Feb 2024 02:23:35 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id qo8-20020a170907874800b00a441c8c56d0sm9662ejc.218.2024.02.28.02.23.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 02:23:35 -0800 (PST)
Message-ID: <34388175-7d5b-4f6b-b264-e85b84e98677@linaro.org>
Date: Wed, 28 Feb 2024 11:23:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: display: atmel,lcdc: convert to dtschema
To: Dharma.B@microchip.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 claudiu.beznea@tuxon.dev
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240223-lcdc-fb-v1-1-4c64cb6277df@microchip.com>
 <796652d5-af57-4aca-87c2-10a7b0b55959@linaro.org>
 <11c545e2-45df-4587-a5c7-12b05c2f01e0@microchip.com>
 <9bf7e492-891c-4d8f-b388-3b2ebae611c1@linaro.org>
 <e5cb705f-56cc-47cc-beb5-700c9a35c8cf@microchip.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <e5cb705f-56cc-47cc-beb5-700c9a35c8cf@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 11:18, Dharma.B@microchip.com wrote:
> On 28/02/24 12:43 pm, Krzysztof Kozlowski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 28/02/2024 07:59, Dharma.B@microchip.com wrote:
>>>
>>>>
>>>> I don't know what's this exactly, but if embedded display then maybe
>>>> could be part of this device node. If some other display, then maybe you
>>>> need another schema, with compatible? But first I would check how others
>>>> are doing this.
>>>
>>> Okay, then I think the driver also needs to be modified, currently the
>>> driver parses the phandle and looks for these properties. Also the
>>> corresponding dts files.
>>
>> Driver does not have to be modified in my proposal. You would still have
>> phandle.
> 
> If I understand correctly, I could define the dt bindings as below
> 
>    display:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description: A phandle pointing to the display node.
> 
>    panel:
>      $ref: panel/panel-common.yaml#
>      properties:
> 

So these are standard panel bindings? Then the node should live outside
of lcdc. If current driver needs to poke inside panel and panel could be
anything, then probably you need peripheral-props-like approach. :/

Best regards,
Krzysztof


