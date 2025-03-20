Return-Path: <devicetree+bounces-159288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA657A6A42A
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 11:52:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D14124634DB
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 10:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1FAF224AE6;
	Thu, 20 Mar 2025 10:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CUA56aLu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214F5224258
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742467887; cv=none; b=GhWEmP6q2EU27LLeNuG+X56Bu1perD1G85EbTZIMiuaAzJq0YUV0im2r47MQY4jwDsYCXA/I8lFF/WB01c2Y902AUru13jnvo0G0nUXvLlXY9zGr2hwuCubhpPDL7uB+B4mjRqhyXkV/C8wOGUB1UfOTex6UKsybo4Z0DZmDpQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742467887; c=relaxed/simple;
	bh=L1U+bcSW7YBmAkqow20Q/7C4mb141BejkLwPN0H1D8w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mprpSNW502df6bKOf/1+7kjcteDxLbfYjCiWX3QVPImhjnNc5mLLTuJ4hMHUOFXk8JGSsMntTdG9BJz3QBmA5tJCF/iBmJi33dcKm6UGhFRPxWXlTicB/ZFM5fKlggh82LE/RtOj9ugUCizjtxkyswhnOAZXKtgLpZr8jSI1RFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CUA56aLu; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cef035a3bso4277675e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 03:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742467884; x=1743072684; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kKb0bPBVVY6/KTAskiDvg6ejT22LGD+C1zdwso8I9VI=;
        b=CUA56aLuBpZFj0k+V9oJWMoj375kPA0vDUBw0Mo/aPm228+mwu74FL/xXIUqk6pZsW
         BSKZLFKMR4mF07QT/P4B6ctNop0lvj8W7yp3CImsxC298B+t8OMbIoVxcgqk8nd7MeQU
         3NUGGwsPF4shPPvnxWyIr5IFT+2yx+MGLfSSHOIkBKxc4XzdUwSv0n7QFEHkaAgw6dgF
         dN2Db2FMJpUez/HF1QPVun6l+s7w0+SFCGKihy3b+vadaYxD8/wRN6NuagHGgHSJAtxT
         TGwTcXZS7QxOOVzPEOY+b58aehoQtEgK//diul/LGtNNRVDyuNTvTTNLh9ypvDDYT6A+
         i0mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742467884; x=1743072684;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kKb0bPBVVY6/KTAskiDvg6ejT22LGD+C1zdwso8I9VI=;
        b=LTeoph/CxyOJSLyun2qxMOtEc42sXmTiPuEoPyasHrh9HXPzb1GiWKANkeE8nlqQri
         nsMgiU0+EDhLcP9NMl7z5f8tTzvsetOFqpmtZgi5ldR/+yJmKL/vS2AxXSuq1g3PYpFQ
         mkRT+waq8PNa98By2HptPdqdcGvYLLjRBja2PvF3/VfGJ99PcEbn4ihpbEV7U8AxsVN4
         QF4a+ZXkSjnqMjL2cuyq74A3rnpIozQ5Th8j9sMGu0GyB/YRu9mQSq1VEXxkyNtaPwCh
         pM7P70LMDiES1JG3nXqTZ331wXGyIbqb3ciszaWFkLthp8Xa9s7t1OLvaT5ziGEMN5Um
         p0cg==
X-Forwarded-Encrypted: i=1; AJvYcCVkrpK2cmvtm9Fh3qI8sNtB9lLvAizL8iJu1zIgrxvuS3c4DCme68m49A1qrtLB8m0awmu/GnFjkVLw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7MQ21pdfJNyd2PGOlbaiG0i14M3yUORuH2FBsG81Z/QLRo0TE
	dS8F6mgOOSFsWCuKYSwYu7BgJkd8NU10iXno68vnqxevjMho1x9Z/y8F91l6ajg=
X-Gm-Gg: ASbGncswsCV2bAcm8y+AM3GsFzGzrAzWBesRZC6CsNYjtE3I22o1miDL7spygw7MJLx
	SM3BnNZqPjW71lzeHuZtWdkzJ+ADpI8jWf4TT0hXnNiYVR7c11u3ujD6jmiGakLM+SfkRFsKBFf
	MijAncOwmEHuC6Dq+k5sMXX/b96AqBKTc7cP7ZKzQF9PueN/2apm9ISRDsC0EYfu4FBA/u2XBj4
	apEYfiWMX9a26nafJyNr4zRC254rf2lMfUAFUWtmVx+7S/XSl/CbVplDkim3lm3z+C2XhjfJGaY
	zsGWz+JnikXatFB84IAK4CYoHgxEwz0x4C/Vr2qGwD66O1cTWYveu43R0WyQDlyVqrpoOLMlwg=
	=
X-Google-Smtp-Source: AGHT+IF5aG2ScR9F02Ij63Lszxbdolrxhc9/khSjeWGnACxp6gXIdgu3JK1Wfic3Xr2VhHMhTlyaIg==
X-Received: by 2002:a05:600c:3556:b0:43c:eea9:f45d with SMTP id 5b1f17b1804b1-43d437c2dc4mr56164285e9.18.1742467884219;
        Thu, 20 Mar 2025 03:51:24 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43d440ed793sm44630255e9.39.2025.03.20.03.51.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 03:51:23 -0700 (PDT)
Message-ID: <e14e31e0-1621-4fc6-a356-261810c2ddcc@linaro.org>
Date: Thu, 20 Mar 2025 10:51:23 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: wcd93xx: add bindings for audio
 switch controlling hp
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mark Brown <broonie@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, andersson@kernel.org,
 lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, konradybcio@kernel.org, perex@perex.cz, tiwai@suse.com,
 dmitry.baryshkov@linaro.org, linux-sound@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, johan+linaro@kernel.org
References: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
 <20250319091637.4505-2-srinivas.kandagatla@linaro.org>
 <4ie22uuz5tpg77jto3c3hec6lhonr44hrjda7jk655axlaxvba@u3atd4gcyghn>
 <660115f1-d1fb-4fd7-a453-e8c177be9eed@linaro.org>
 <51dd7cb2-0c22-4043-b3a1-fa8410903cbd@sirena.org.uk>
 <938cb09f-3fb1-4daf-802d-2d95222f30db@linaro.org>
 <20250320-feathered-super-walrus-8eeef8@krzk-bin>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20250320-feathered-super-walrus-8eeef8@krzk-bin>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 20/03/2025 09:31, Krzysztof Kozlowski wrote:
> On Wed, Mar 19, 2025 at 06:00:51PM +0000, Srinivas Kandagatla wrote:
>>
>>
>> On 19/03/2025 16:03, Mark Brown wrote:
>>> On Wed, Mar 19, 2025 at 03:59:23PM +0000, Srinivas Kandagatla wrote:
>>>> On 19/03/2025 10:01, Dmitry Baryshkov wrote:
>>>
>>>>> Is this regulator supplying the codec or some external component? In the
>>>>> latter case it's likely that it should not be a part of WCD bindings.
>>>
>>>> This is regulator powering a mux that is driven by gpio which is part of
>>>> codec binding. So I would assume this will fall into the codec.
>>>
>>>> Where would we fit this if not part of codec?
>>>
>>>> Unless we mark this regulator as always on.
>>>
>>> I would expect that the mux would appear in the DT and consume both the
>>> GPIO and the regulator.
>> Yes, its doable, so we would endup with a mux driver consuming regulator and
>> gpio and move the gpio handling in codec to move to use mux control.
>>
>> Let met try that and see how it looks like.
> 
> Looking at schematics this is clearly not a supply of a codec, but as
> Dmitry said, separate switch. Actually two switches.

AFAIU, Adding single mux for both seems to be the best option.
Eventhough physically they are two muxes but they can not be driven 
independently, and logically/functionally they are doing only one thing 
of handing us/euro headset.


But if we represent these two muxes as two different nodes then the 
driver is messed up, as all the resources (gpios. pinctrls, regultors) 
will be shared and we can not control them independently.



thanks,
Srini
> 
> Best regards,
> Krzysztof
> 

