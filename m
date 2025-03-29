Return-Path: <devicetree+bounces-161751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 104F1A7559F
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 10:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E97551894678
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 09:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F215812CDAE;
	Sat, 29 Mar 2025 09:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xmQwqicy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD0618DB24
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 09:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743242193; cv=none; b=HJnSYExbkk4XAowmIvCjQ2ryOAdOvvy9EA0TGdQCsPJk8Bb4/vnsC3fbGOtDjBnbZ/hEtGFiX7qaJ+4FrWWDF+vwCNwRRB6SgvMwaW4pJHYy7Y9W3nueM6YWuRGuPB6D0h4IAPEbE81OQ8VxsN3FjE5nu2KDC7UkD6WHxkt9/CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743242193; c=relaxed/simple;
	bh=uRezo5XhrTPZNnIoTUOunciCt8yCaE5RYVV6ejLbSdI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Sc2TbjhFedi4+Ej4Y5lJTo0tCpHEzu75Gggu/NXCasElEjihhXmud5YjnduPqJ36ma+VBHJ4w7gAusbLpryWjvnul9PNtQEHsLazcYyoKrXiuS/SDNe+EHzyaPJ0tZuzXQRLoRnP1dtW+ad/jdvgfiZXhmUf8qZUHm7iujKao0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xmQwqicy; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-399744f74e9so2007932f8f.1
        for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 02:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743242190; x=1743846990; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qVSHj/4O8NaMEdadNaXoatmj3QQWp2MB7UQy5W5yL8s=;
        b=xmQwqicy0C8V56iNJu7m0H5baZmLFs/aqpBBpwkmkX5n4O6nHeCSkuVLUfTErDgJ+6
         TVlIjvB2d/+WJGwbUAlC/NyE3wkZmOauyhweVXMOpNlh7p9dyxQjlArXd16tG4cEyXc4
         r197/RCKQSzkY6/YTwCsCwbhJBcS3hvrlP/OIEePn0x2Z04AAJX8JGeFTx4rPB6rK/bA
         Id2XkcMEdyJfEkZW4+VWLDEVwRryEYnCbZDSfSVwigSkdhCQf00bnqasc164cSB8cvSW
         NyMbi0V5ZQATn4u4vESAwaHkLv/4veFZt7hRbzWT/P2CdzwvufigjlvzRNCPaI85eQza
         HveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743242190; x=1743846990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qVSHj/4O8NaMEdadNaXoatmj3QQWp2MB7UQy5W5yL8s=;
        b=Z4RVCJZ2ablrISrfO9d2d7XvBCvCzU6wyUU8Yyp003maTi1ojKeXx+hB7h9DTpDbdp
         ZAz6VXC110m6iWNB0JHBreWT1uKFvd3M9ZP0yGKg+neRvZ/qLcFritDYji5ZI9lN+J1h
         EMIcyWUq1POd0aRiZghaHsGuRiCiHr2tCf5hiO3WNshATgdVZcljY0/K5FOxXWViEH9A
         mLNdO/HXvx7MCMblrsBR2negf04h5KuMhyPXfd0bIrLKwnLa2RylpUqHDMOpP5FDre6U
         eo8zwuLx5MJhNgcNlqqsn+ojMBcWYEsts0pOt+B5pUi3UVfpb7j9pYQh1++uYSf4B4z2
         0CLA==
X-Forwarded-Encrypted: i=1; AJvYcCVY3yd8+G74ClX0/53OcUI6jwi+vYFB3/f9ylyerYKR/zGCoLAJ7uGEF9POBs4sgFamLw9MEstnHR2Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxQdedgEIjWtPIuNMpy97ERuUG4SV/17T+0yAevQe2Y8BJExb8E
	AxZBz2b3lOiG7gzmbSDFC1IlcP0OHHEVPfPtkXUHMhzjzAm3NXDayL3SXCbVpN4=
X-Gm-Gg: ASbGnctpzixI3RFw/U/c79+mcl5Zhf0K+xpj9x+qw7t0k1izfdnk2CE1Av40PgpZkAA
	9TOCFH6I6jJhyTGtbGFyx46OJwic25Pxka6KCgTGDIGpCJGRxhB7Pn3FAvueJ25ZfnvFsr5MeVw
	zr0yOEWS6q2Te9ud2FIIPhMPID25Z5XFnsbI31wFKYNBYmVNOYmZGSjQloaBfkrETwQR+K3574U
	lg2/FdPl86BESxF0ixMAL3wDIn1ffSuqlAB23McYTKiWQ4Aw7mfe7BsqgMejRQtneBi7AFV8P90
	sG6M43AI2+PeX9ovHexnFQjGrPja5563xHqmh12IBLVWq2TIZjM4CaSaqtgiNg7vw1LbMhD/9d0
	=
X-Google-Smtp-Source: AGHT+IFOFTCOAfL9OXfmL28X8GIqYPlADXJOfL1WMOZ3VK74bGRG5Mf1bRmRfVzjPWNDvADCVJgf0A==
X-Received: by 2002:a05:6000:2910:b0:391:4873:7943 with SMTP id ffacd0b85a97d-39c120e0a9emr1736878f8f.32.1743242190221;
        Sat, 29 Mar 2025 02:56:30 -0700 (PDT)
Received: from [192.168.1.38] (i5E863BED.versanet.de. [94.134.59.237])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b66a9d2sm5230104f8f.43.2025.03.29.02.56.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Mar 2025 02:56:29 -0700 (PDT)
Message-ID: <fb176bbf-5e31-4e72-8201-4a2fc4d57ef5@linaro.org>
Date: Sat, 29 Mar 2025 10:56:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/7] dt-bindings: input: syna,rmi4: document
 syna,pdt-fallback-desc
To: David Heidelberg <david@ixit.cz>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Vincent Huang <vincent.huang@tw.synaptics.com>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250308-synaptics-rmi4-v3-0-215d3e7289a2@ixit.cz>
 <20250308-synaptics-rmi4-v3-1-215d3e7289a2@ixit.cz>
 <20250310-hissing-vagabond-pegasus-cc8aed@krzk-bin>
 <3c5e12fc-eb91-46e8-a558-9896f0bdcab4@ixit.cz>
 <b3a5ec89-0125-4b01-8cca-69b9985b6089@kernel.org>
 <48bb62eb-8aa9-465c-9e77-c0b375df0c9f@linaro.org>
 <492da0ab-3a5c-4ee9-bc37-d66b007ffd81@kernel.org>
 <5060c248-3160-4d52-81ec-8e06bbd246bf@linaro.org>
 <2d555c27-1cb1-4ea9-9327-e1a3774e103b@ixit.cz>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <2d555c27-1cb1-4ea9-9327-e1a3774e103b@ixit.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/28/25 23:45, David Heidelberg wrote:
> On 26/03/2025 11:26, Caleb Connolly wrote:
>>
>>
>> On 3/26/25 07:57, Krzysztof Kozlowski wrote:
>>> On 25/03/2025 14:23, Caleb Connolly wrote:
>>>>
>>>>
>>>> On 3/25/25 08:36, Krzysztof Kozlowski wrote:
>>>>> On 24/03/2025 19:00, David Heidelberg wrote:
>>>>>> On 10/03/2025 10:45, Krzysztof Kozlowski wrote:
>>>>>>> On Sat, Mar 08, 2025 at 03:08:37PM +0100, David Heidelberg wrote:
>>>>>>>> From: Caleb Connolly <caleb.connolly@linaro.org>
>>>>>>>>
>>>>>>>> This new property allows devices to specify some register values 
>>>>>>>> which
>>>>>>>> are missing on units with third party replacement displays. These
>>>>>>>> displays use unofficial touch ICs which only implement a subset 
>>>>>>>> of the
>>>>>>>> RMI4 specification.
>>>>>>>
>>>>>>> These are different ICs, so they have their own compatibles. Why 
>>>>>>> this
>>>>>>> cannot be deduced from the compatible?
>>>>>>
>>>>>> Yes, but these identify as the originals.
>>>>>
>>>>>
>>>>> It does not matter how they identify. You have the compatible for 
>>>>> them.
>>>>> If you cannot add compatible for them, how can you add dedicated
>>>>> property for them?
>>>>
>>>> Hi Krzysztof,
>>>>
>>>> There are an unknown number of knock-off RMI4 chips which are sold in
>>>> cheap replacement display panels from multiple vendors. We suspect
>>>> there's more than one implementation.
>>>>
>>>> A new compatible string wouldn't help us, since we use the same DTB on
>>>> fully original hardware as on hardware with replacement parts.
>>>>
>>>> The proposed new property describes configuration registers which are
>>>> present on original RMI4 chips but missing on the third party ones, the
>>>> contents of the registers is static.
>>>
>>>
>>> So you want to add redundant information for existing compatible, while
>>> claiming you cannot deduce it from that existing compatible... Well,
>>> no.. you cannot be sure that only chosen boards will have touchscreens
>>> replaced, thus you will have to add this property to every board using
>>> this compatible making it equal to the compatible and we are back at my
>>> original comment. This is deducible from the compatible. If not the new
>>> one, then from old one.
>>
>> hmm I see, so instead we should add a compatible for the specific 
>> variant (S3320 or something) of RMI4 in this device and handle this in 
>> the driver? I think that makes sense.
> 
> Agree, preparing it for v4. So far proposing `compatible = "syna,rmi4- 
> s3706b-i2c", "syna,rmi4-i2c"` (as S3706B is written in the commit and 
> search confirms it for OP6/6T).

ack, sounds good!
> 
> David>
>>>
>>> Best regards,
>>> Krzysztof
>>
> 

-- 
Caleb (they/them)


