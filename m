Return-Path: <devicetree+bounces-159662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F95A6BBB7
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 14:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B2F4462F63
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 13:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3265922AE7E;
	Fri, 21 Mar 2025 13:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="biNfksZS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C4522A7FF
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 13:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742563611; cv=none; b=ITv/qub0VSh/+U6r2M9NwQynIr5lXwVTjD2HlwokiDElKnnCQtI9R6giAXSy1tYSjHaClrKb7oVtNPqxqNddDC/qvaPUSO6cKlk17iW1piW9ktq+AFgKtta0W3TrzeIJKNOErbO/u1ae7/LCrwLFx9kd0OnKVXcdB4B5fDB83ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742563611; c=relaxed/simple;
	bh=xMeqGv/jZySimNc6vELEg0wI4OT6OHTVxuOS/HRWpzE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hA8USst1Yn35jP8bqigyhI15AfCHJs6H6Eq1ofLrjxqWI8473RkMxZDCrqkaFBXWMxEbxHqgC5MGRWatxRzAhFcmOjVG4NiWPB8c15fTuzY0kR6Xb1wPc0gSDdoqAIqZDYVXpahtdoMAlEL3Po9vDLtxPobQl5y9bIvW+6BEMls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=biNfksZS; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38f2f391864so1107885f8f.3
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 06:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742563606; x=1743168406; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x+nfdqXMXDIXPRHZvpsBbeClbsVJF3/i4egLlwdwO+s=;
        b=biNfksZSvhyJhkN3QGe/C7UTbAt09uwc8cwvp2Y6ZEhKEC8sIJjyhkaZublPCme9cc
         4VkG+kD3NjeqI1WeYcYx7iK03nFz96JmEe/l0FFtl3WqhUraZ2HhyF5tHJ/PcLEkgNOZ
         Lrm1SbYlkdeJJHzn1EuU6yx7IlObdv/x7p7XfyJXafSAMbaECbp2R1SPtmdjC6xFwdmF
         IFzt2uEzaOUFyH2gh+kWeP981x8KvfdVyZ9/NwNLaKEON9J0L0RuLe7Cevka1JmRkBgy
         TzRHdUEzGByVmtEnwzc3LoYJJaFrS09R3mHWkpZIsKD5ep/T4S1dnn8k8KWTCrsnfUOo
         mM8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742563606; x=1743168406;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x+nfdqXMXDIXPRHZvpsBbeClbsVJF3/i4egLlwdwO+s=;
        b=v3gZKl6wSEAWcwNH9LP+bDB38bcNFrTfHLt32sPSjW7UEUhZ36tYdmvfDxA6KAonj/
         PH7dIXQ42jT5A/VUNaxAo+V9IuwEus/EVDW2Mz8SfGdj2dT4R+0+aE6L1CUmKKmzmZFn
         ATx52zHGPLOe+ihLsxw66BfqG8OJS/G5pjpaZX5C+aIwKvQuDpBEC9ruPMsGhDsGkqYw
         0lS6gJ06d8F4mkMOENp2/nKZMvR7elUBfcPDtXCB6W8jD03dEptv8byOquxnQGR5gF7V
         U3aryVAUdoSCWxmeFl96eAjE0YWawnMpA3/YAjSDzpqbKZ60FihOv1UnsZRD2FPGLSqy
         ODnw==
X-Forwarded-Encrypted: i=1; AJvYcCXtKgRP7cx652B4ATMiWwVaBxNJ8Nsa2YqWrfVBvxAak1yvXpXadF7jdWe9pgygUb3oTO8ddDErPNsl@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcs0fQJATFTWc4giGtLFKG3ApBDOmQCCnauR70hCNCU3CLk0hy
	8bH2DakHYy4t4nyvTK6Lm9wN03NaLLrvr+QX6R021gEDelW9dzuIa6ZqPuQ5QGY=
X-Gm-Gg: ASbGncvGPvdHTlBT/vW7IuDdvBaRdQI1i4G4RiVVuVJQRtWg+dnVwom7UDTdq1/xIp0
	JbJjJVvb25h2fMIFWyIXPSECOua3na//jMqpxI5kkG54oIqvMCiF7GtAp5C+sC94dxCaVVMJEhp
	1eWqZ2XuJG0xhubyiCWV5bwKo82qmKWN882ISCboUI4o4eldPbKh/6Xx0qEWQm+cSe5vfYBs0FJ
	1bxkcziVik5zRs251tNWCiNrMtO7APY2PBQ9D+6353s9BlocMqsyljgdMw+kBym/An3MM9q4HuT
	RbZ30trXVtGdXOKzXD8w4hMJ74iQ4viGwaTxffZZ8PQdRqzT3bsPunzTm3avhUIS6zDB9ASIUg=
	=
X-Google-Smtp-Source: AGHT+IFItBfdiuwTpyaV5kuTi/ldTSC9Nx5SxBw7qLGhnUVc61bpqSJwTkGLSn5VdoJA25gliLrfGQ==
X-Received: by 2002:a5d:588e:0:b0:391:4674:b136 with SMTP id ffacd0b85a97d-3997f90e00cmr2957330f8f.29.1742563606193;
        Fri, 21 Mar 2025 06:26:46 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3997f9a3f81sm2419531f8f.35.2025.03.21.06.26.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 06:26:45 -0700 (PDT)
Message-ID: <1d93f731-66c1-47b2-a249-9bdb25205525@linaro.org>
Date: Fri, 21 Mar 2025 13:26:44 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] ASoC: codecs: wcd938x: add mux control support for
 hp audio mux
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: peda@axentia.se, broonie@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, ivprusov@salutedevices.com, luca.ceresoli@bootlin.com,
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com,
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
 perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, johan+linaro@kernel.org
References: <20250320115633.4248-1-srinivas.kandagatla@linaro.org>
 <20250320115633.4248-5-srinivas.kandagatla@linaro.org>
 <rdvsnxuc6by6sci56sh7thzpxo5cqi7q24fnmc7hi5yrfszwrg@kqjpiilko3xo>
 <b1aed195-b2e6-4f48-ba10-3049d74085a9@linaro.org>
 <CAO9ioeWLRfzUOwjnFsi_yztdJo2Q25bhvjddh6D3naV_K5eShA@mail.gmail.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <CAO9ioeWLRfzUOwjnFsi_yztdJo2Q25bhvjddh6D3naV_K5eShA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 21/03/2025 13:16, Dmitry Baryshkov wrote:
> On Fri, 21 Mar 2025 at 14:35, Srinivas Kandagatla
> <srinivas.kandagatla@linaro.org> wrote:
>>
>>
>>
>> On 20/03/2025 14:03, Dmitry Baryshkov wrote:
>>> On Thu, Mar 20, 2025 at 11:56:32AM +0000, srinivas.kandagatla@linaro.org wrote:
>>>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>>>
>>>> On some platforms to minimise pop and click during switching between
>>>> CTIA and OMTP headset an additional HiFi mux is used. Most common
>>>> case is that this switch is switched on by default, but on some
>>>> platforms this needs a regulator enable.
>>>>
>>>> move to using mux control to enable both regulator and handle gpios,
>>>> deprecate the usage of gpio.
>>>>
>>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>>> ---
>>>>    sound/soc/codecs/Kconfig   |  2 ++
>>>>    sound/soc/codecs/wcd938x.c | 38 ++++++++++++++++++++++++++++++--------
>>>>    2 files changed, 32 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
>>>> index ee35f3aa5521..b04076282c8b 100644
>>>> --- a/sound/soc/codecs/Kconfig
>>>> +++ b/sound/soc/codecs/Kconfig
>>>> @@ -2226,6 +2226,8 @@ config SND_SOC_WCD938X
>>>>       tristate
>>>>       depends on SOUNDWIRE || !SOUNDWIRE
>>>>       select SND_SOC_WCD_CLASSH
>>>> +    select MULTIPLEXER
>>>> +    imply MUX_GPIO
>>>
>>> Why? This is true for a particular platform, isn't it?
>>
>> We want to move the codec to use gpio mux instead of using gpios directly
>>
>> So this become codec specific, rather than platform.
> 
> Not quite. "select MULTIPLEXER" is correct and is not questionable.
> I'm asking about the MUX_GPIO. The codec itself has nothing to do with
> the board using _GPIO_ to switch 4-pin modes. It is a board-level
> decision. A board can use an I2C-controlled MUX instead. I'd say, that
> at least you should describe rationale for this `imply` clause in the
> commit message.

I agree to you point, but historically in this case us/euro selection is 
only driven by gpio. But I see no harm in moving the MUX_GPIO dependency 
to machine driver KConfigs.

Will fix this in v3.

thanks,
Srini
> 

