Return-Path: <devicetree+bounces-48053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F68486FDD8
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:43:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55271283984
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1432D20DC5;
	Mon,  4 Mar 2024 09:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FfnD7IM4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F36118EC3
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 09:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709545400; cv=none; b=l0ejxwvgq3odebkIaDovoTwi0lbruHTS1ykm5O71NfqYi3GLhshLNAODhNj6Z7Eayn8qOahS0tt69rOlos+rp8tN5EYKjpLpupOAUdfKReUGF2vSY7cfyQj+Asf591YhiscszkgVe6cgCFlOUnScgy9IxjXz0Ph39p+okAKKsew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709545400; c=relaxed/simple;
	bh=juQU/YTbRdtf4lkEd+2QeGRnvQtm4aXm+PTTpxSiPLU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cOtLgVcpumuS6x3aVbTvHcEo5tSh2U4lpGXi0qoxeYGaYVYcEb9C7Xwc16QxIF8v2Pr1JbK10YJLoI3CM0CChkYKAQO2O8pp7/+HZjmgicgvvSKejFtn4mkcGC/KAkAKKDnLISKcL4rw43ILdacdyCenJTfoZULgw3pkzRDNI/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FfnD7IM4; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5673f7b3196so1107228a12.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 01:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709545396; x=1710150196; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yK8SqcxIhmoA6CejGRLBhKEEdc3Rn2K3//Q0mP2oKj8=;
        b=FfnD7IM4QyeGqamTZCf78owywPd3pINTFkBbP5iGoPFsJBdwLclyxEb9G8C1rpENEx
         5C8uf6S+3O1+PqTAqqC/qkIUDqBUjTuIWuct3CLj56dv16MHmVwp53cGcD/g+dqR3u5m
         Ce9gsYUOMMIvB7tMzQAJU7VWSYwrMtJ1r5TrMA7P1buzIq9BVo/DDrUF/019+2+IqhH6
         0NrqWia0aMy1Y/VfQd2+xV+jeiv90WqoO6o9VwHRW9fLcJuxfggFu5vvLXwTzoAk1eGl
         HnpflhL8K6Xmf27Ev6h5Il3DFR6I1z/eqbM4/DQ8NCjnGLLPnWLEcaUq1vphOpf0uL/h
         k25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709545396; x=1710150196;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yK8SqcxIhmoA6CejGRLBhKEEdc3Rn2K3//Q0mP2oKj8=;
        b=E3vcuBTScvM8lWLt48NNedhwMTUtP22Q3nTkX5JAZls0tYkWqGTBrAFCUOkhdouYxR
         6kMZ01F/wYuKINW22iMjNI+BByoPSlNwivDrZ5fgrtNUh6nMVPVD9uFLCF4ptdd9ijqr
         lsWWtZq1YLnC8i3SaUu72esMay/nShv9N9Gx/0HYnx+cwEYTmEvGk2VzEVL7cU2SjTi7
         P8ov2+cSV5gYdKYHw5X1qBvkzgPd/uHhH7/N9t0m+lyo6zh/xvvE7xiRith8DwhRej/z
         yCRLJqiwFmUbWnNhxkK7Zk0fiu8k5UvbDoMW0SvOCv6UlWKOik11guYJw5FLnw7CcLLb
         FM/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUTrBiv7N/exuL7EsjWXGhuWnud0ohCvdG41llESKrEUeDWIMUXsr7j63H2DSjJY0xbMtAKs3jywnDlRsLFsJsLoosnaIlBXp2c1w==
X-Gm-Message-State: AOJu0Ywq5OB0ETDqcaeuLyR4UY+uS9Dvc71z7J2JUJx3uk6KohdMv3rF
	H31uZKNc7ACpPPCA9t2J10PkAXAg/cryAt4wHCScHuIcVdpKAzjl1H9FN5psxU0=
X-Google-Smtp-Source: AGHT+IFmSoDrBhWlA9UN6BUoLBhTux32lnDN7yof10B4mHitwZT1hvaN6WQ5dwaqXs50i2FzFCvvkA==
X-Received: by 2002:a05:6402:323:b0:566:5ea2:1257 with SMTP id q3-20020a056402032300b005665ea21257mr5792853edw.16.1709545396476;
        Mon, 04 Mar 2024 01:43:16 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id q12-20020a056402518c00b00563ec73bbafsm4363211edd.46.2024.03.04.01.43.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 01:43:16 -0800 (PST)
Message-ID: <b14c8123-ee87-4b98-a616-008b252010d8@linaro.org>
Date: Mon, 4 Mar 2024 10:43:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: display: atmel,lcdc: convert to dtschema
Content-Language: en-US
To: Dharma.B@microchip.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 claudiu.beznea@tuxon.dev
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240304-lcdc-fb-v2-1-a14b463c157a@microchip.com>
 <ce1c5ba1-4f6a-4d20-8a12-fbae9003657a@linaro.org>
 <3d4e4b18-5318-4f1c-ab05-b925a0dfd317@microchip.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <3d4e4b18-5318-4f1c-ab05-b925a0dfd317@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/03/2024 10:28, Dharma.B@microchip.com wrote:
> On 04/03/24 1:06 pm, Krzysztof Kozlowski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 04/03/2024 06:36, Dharma Balasubiramani wrote:
>>> Convert the atmel,lcdc bindings to DT schema.
>>> Changes during conversion: add missing clocks and clock-names properties.
>>>
>>> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
>>> ---
>>> This patch converts the existing lcdc display text binding to JSON schema.
>>> The binding is split into two namely
>>> lcdc.yaml
>>> - Holds the frame buffer properties
>>> lcdc-display.yaml
>>> - Holds the display panel properties which is a phandle to the display
>>> property in lcdc fb node.
>>>
>>> These bindings are tested against the existing at91 dts files using
>>> dtbs_check.
>>> ---
>>> Changes in v2:
>>> - Run checkpatch and remove whitespace errors.
>>> - Add the standard interrupt flags.
>>> - Split the binding into two, namely lcdc.yaml and lcdc-display.yaml.
>>> - Link to v1: https://lore.kernel.org/r/20240223-lcdc-fb-v1-1-4c64cb6277df@microchip.com
>>> ---
>>>   .../bindings/display/atmel,lcdc-display.yaml       | 98 ++++++++++++++++++++++
>>>   .../devicetree/bindings/display/atmel,lcdc.txt     | 87 -------------------
>>>   .../devicetree/bindings/display/atmel,lcdc.yaml    | 70 ++++++++++++++++
>>>   3 files changed, 168 insertions(+), 87 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/atmel,lcdc-display.yaml b/Documentation/devicetree/bindings/display/atmel,lcdc-display.yaml
>>> new file mode 100644
>>> index 000000000000..ea4fd34b9e2c
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/atmel,lcdc-display.yaml
>>> @@ -0,0 +1,98 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/display/atmel,lcdc-display.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Microchip's LCDC Display
>>> +
>>> +maintainers:
>>> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
>>> +  - Dharma Balasubiramani <dharma.b@microchip.com>
>>> +
>>> +description:
>>> +  The LCD Controller (LCDC) consists of logic for transferring LCD image data
>>> +  from an external display buffer to a TFT LCD panel. The LCDC has one display
>>> +  input buffer per layer that fetches pixels through the single bus host
>>> +  interface and a look-up table to allow palletized display configurations. The
>>> +  LCDC is programmable on a per layer basis, and supports different LCD
>>> +  resolutions, window sizes, image formats and pixel depths.
>>> +
>>> +# We need a select here since this schema is applicable only for nodes with the
>>> +# following properties
>>> +
>>> +select:
>>> +  anyOf:
>>> +    - required: [ 'atmel,dmacon' ]
>>> +    - required: [ 'atmel,lcdcon2' ]
>>> +    - required: [ 'atmel,guard-time' ]
>>> +    - required: [ bits-per-pixel ]
>>
>> Why quotes in other places? 
> 
> I got the following warnings when I tried to compile without adding the 
> quotes for atmel,*
> 
> "[warning] too few spaces after comma (commas)"

Ah, right, because it is a list. Looks fine.

> 
> and when I add quotes for "bits-per-pixel" it complained the following
> 
> "[error] string value is redundantly quoted with any quotes 
> (quoted-strings)"

Yep, right.

> 
> So I added quotes for properties with comma in them.
> 
>> bits-per-pixel is generic property, so you
>> are now selecting other bindings. Read carefully what Rob wrote.
> 
> My bad, I should have inquired before arriving at any conclusion.
> Thanks for letting me know.
> 
> Shall I send v3 by removing "- required: [ bits-per-pixel ]" in select?

Yes... and test entire bindings, not only your schema.

Best regards,
Krzysztof


