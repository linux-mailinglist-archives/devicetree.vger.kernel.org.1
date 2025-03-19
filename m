Return-Path: <devicetree+bounces-159024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1D7A6943C
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 17:00:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C494F88342F
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 15:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA981DB131;
	Wed, 19 Mar 2025 15:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CHN+vrmg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05341D9A50
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 15:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742399969; cv=none; b=Kgilz93qfhmp2gQRcA31CTeG0WMDZ6ikDIhxXkMdHjBsvjMoIXZQLGOXgVYg963GqCOGI/OXrPjQSE2YV7VCnSJFCZeLR5AVDBrf9sNyjBeafYGAqrTqv2TzhJ6Kf6Y/prYcPrl+ri3DWeoGSlYarvUQspYd7shn8A98A6g2f20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742399969; c=relaxed/simple;
	bh=ILRmyU4myaO9C/neNMKWw4w0x2c4drxeRcZb2f8Rva4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hLJREOP4/lm3HBSxcID0ljGsWJZAHNzIxBAIs9fv1siQzYOSBPkUXipx/uWaLP9bhr/pEcVRCGrKo+mFkNBVEvXuMM/Vv3Aj/4PzfVwMc0aqKXjcOt/Mhw7xH8dtL1U9ZwI7no4GqQRH+12tGlxsGudxLZQAsoOh5D61XK+sQlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CHN+vrmg; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso42972025e9.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 08:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742399965; x=1743004765; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wtY2N2Z3hL6nDVea2tco/rHxiZy4oFusiROnhy6gmTA=;
        b=CHN+vrmgMkGPvbQAT593RxBshrs2ccP7MfNzizhLORjvlBAPNJTy71I7Y4Tl4cza0M
         2w8YTmKhIE94AerAISn9RUPkSmH79q6RZsxGuikcA8b7yfDavyHs/iwvpOvZh6g2Mqd8
         bEPi9+1FWy605vqJDtmDFoLe/izRBO9V5RwVAXDR559gFfRSjGYrDUWjguO1OpnVoHjn
         9i4lwg3S1z2DaUpPejoSQrKWZzSkVBSS8F3/jzIfjJRD4OSWkGuj4ZjonLti6hbX6c8B
         75Zw7Lyyg3HsNJrMdbSZzyYVyx+3lzuUfg3D3jeaXG2YVnXG20sPGxXgahqKQO7lPxuQ
         lxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742399965; x=1743004765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wtY2N2Z3hL6nDVea2tco/rHxiZy4oFusiROnhy6gmTA=;
        b=WiVzjMTCBYH6VUPrgbykWHy5DVLbczuSjBnCKl3ZKUKUkk7krSISR3P9F0Jo0ARyCk
         tSVn0s0/ayDYWWCLftabLm9tJIopMF+iS9SUBWeWOqnuo3yNyhGrpjS9RHW5sks4CPRN
         wBO1Iofn7jmxhP/Zvg+IRccVPSuJvxWwTk07dSygNj0G6380GpUqXoFlO0FIZFkqkNqE
         VIM4lW1Bt0TUytNWSqzJ7/3zdT8ITKhthyyJcvIwT/zZfUr3i8Lj9oaIA7O7XD5u+XRR
         +VNCAsTA7AI1Ivt3zcnNdfeCSMStB1UXEdAPVRIycMviSqz3YLUcqxGEPnyCkzNmot8j
         1oyw==
X-Forwarded-Encrypted: i=1; AJvYcCUu2HofKzyFRuEG+y0b8OMMYcYv5SvFy3aPQFQMdG+qYoNKx0MpKvgzCb2xyq9qdyzNUFs4UUjHmcD6@vger.kernel.org
X-Gm-Message-State: AOJu0YzmpWlAG+691q3JbecDY+gvwMwawSrCEwXLTu4WUVJR+KY+i1NN
	AxaREmJoOELISLidcBQB1ncghTJbJYMi8XxD4S47AxcyA9HaARRU678vmg4JtrE=
X-Gm-Gg: ASbGncuf+BC0vw7sv83CHITtUtOiryUrAihcqfe2SFcUo+5ejskoI2UkJcRC6SRXx0K
	fH5lkUU0vp2OAux3XN0qomVhWYWG1bByIRNyC4PF3xtD31Sp+0Fh+/z6xXegCTMT+DYQ/lmhK0F
	gVyZYVRqE1kX1l7WkS4ldw5TjKfHEIz1bwXIgEU/oJdQX+hEXR/0gxSUPSWPT2E9HiEE27UJAbL
	95HEkWwK4W8FXp2KG+7AAyL/jPJiRAFzyC49OiZnSxCEeIM4FLZqcfrG/5jb5DphJ4dg4FRhDDp
	GgLFlqHXvMOLAD418pyZLZe+KaIOq2X/zQJWwIO7kDFuwGwkUhPMV1ytr1b+jGgTbVX2c2u1TA=
	=
X-Google-Smtp-Source: AGHT+IFT1fxNfAkvCwKqbkyK9yZU0uyEQjN6KyVSpQ/fVLar6fXo6SrJ0IJJdrOVJ+naJH1oUUHhzw==
X-Received: by 2002:a05:600c:1e07:b0:43d:b85:1831 with SMTP id 5b1f17b1804b1-43d436c7be6mr33579945e9.0.1742399964859;
        Wed, 19 Mar 2025 08:59:24 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43d440ed5e0sm22136525e9.37.2025.03.19.08.59.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 08:59:24 -0700 (PDT)
Message-ID: <660115f1-d1fb-4fd7-a453-e8c177be9eed@linaro.org>
Date: Wed, 19 Mar 2025 15:59:23 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: wcd93xx: add bindings for audio
 switch controlling hp
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: broonie@kernel.org, andersson@kernel.org, lgirdwood@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 konradybcio@kernel.org, perex@perex.cz, tiwai@suse.com,
 dmitry.baryshkov@linaro.org, linux-sound@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, johan+linaro@kernel.org
References: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
 <20250319091637.4505-2-srinivas.kandagatla@linaro.org>
 <4ie22uuz5tpg77jto3c3hec6lhonr44hrjda7jk655axlaxvba@u3atd4gcyghn>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <4ie22uuz5tpg77jto3c3hec6lhonr44hrjda7jk655axlaxvba@u3atd4gcyghn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 19/03/2025 10:01, Dmitry Baryshkov wrote:
> On Wed, Mar 19, 2025 at 09:16:35AM +0000, srinivas.kandagatla@linaro.org wrote:
>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>
>> On some platforms to minimise pop and click during switching between
>> CTIA and OMTP headset an additional HiFi Switch is used. Most common
>> case is that this switch is switched on by default, but on some
>> platforms this needs a regulator enable.
> 
> Is this regulator supplying the codec or some external component? In the
> latter case it's likely that it should not be a part of WCD bindings.

This is regulator powering a mux that is driven by gpio which is part of 
codec binding. So I would assume this will fall into the codec.

Where would we fit this if not part of codec?

Unless we mark this regulator as always on.

--srini
> 
>> This patch adds required bindings to add such regulator.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   .../devicetree/bindings/sound/qcom,wcd93xx-common.yaml        | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml
>> index f78ba148ad25..fa00570caf24 100644
>> --- a/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml
>> +++ b/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml
>> @@ -26,6 +26,10 @@ properties:
>>     vdd-mic-bias-supply:
>>       description: A reference to the 3.8V mic bias supply
>>   
>> +  vdd-hp-switch-supply:
>> +    description: A reference to the audio switch supply
>> +      for switching CTIA/OMTP Headset
>> +
>>     qcom,tx-device:
>>       $ref: /schemas/types.yaml#/definitions/phandle-array
>>       description: A reference to Soundwire tx device phandle
>> -- 
>> 2.39.5
>>
> 

