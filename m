Return-Path: <devicetree+bounces-140316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CFCA192E7
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:48:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4609E3A4914
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:48:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 717922135A9;
	Wed, 22 Jan 2025 13:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W4JDuP0V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 966582116FB
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 13:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737553693; cv=none; b=VTc/6JvY+6lOOiWpDLPitu9hNsNrkya8NyXfcFuXM0pa6gYXnwH6YamtqB7lnWr5DBxqOpF5N7ItoHrKDc5oWjYqhfmNAxAMbvlW8MN10HCN+WFrK7eWpPXOMIFOcLsSHoF9IB42tsZbz39e3dayFGlUZri6npkMzuQmu+iM4pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737553693; c=relaxed/simple;
	bh=6aDyKZht7twJt7R8q83/t3Pg0FR7pqD4i2CiZ3cCu/M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vGd4oM6uJdDOBKgKCTqsj9snGGkIPBRzEAXcV0Vc1c4ELjqv1yCEI39Nq9QIU2q1TSAY4XSbjQ90iTe+wUyEKi0xsDORn7lhxyMf8nQmErjFaYlNTcXAuvkyBKQ+l6CYx7WAWIj0q5jNhOBaH1P0UYwtKpzsODd17fjYYSBlztU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W4JDuP0V; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434f398a171so6342985e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 05:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737553690; x=1738158490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lbWUQKHioaijJX1vPquN7hu8J86z5Wa8QMPeH6SO2Nc=;
        b=W4JDuP0VxBZq75zE0cJHmdtXCyzOq+xfZYuCFMbW1muQSlWrDLlNGtEqg+DTWnokC9
         v6agIz1Xt0HVKqKPY4507FlfQQB8wPCNIbJ0pyaqg8ockIqLVPjg0G6n97MZY4ZRQkh6
         R/ttfIUzziQgmaWEcRCO5scsRtFvHK8JMiT7SrcG5PS+k4kqLhRGcpyN8j6+4XaPccVF
         t5yT5vZ168G/ocwE45efzmRImVTf3s1S/m1TugoMPhnPrp2lhAZZG1rl97xWgngJOQYI
         k2l7+oZ8iy9RmMCCs1qEIt8FqGDWO9QOPs81DcosctpYicDGi6Rrqqox5IY6zUT5rHu0
         WANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737553690; x=1738158490;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lbWUQKHioaijJX1vPquN7hu8J86z5Wa8QMPeH6SO2Nc=;
        b=Bbke9WZ3Gh9pa6rM2MGqK/3/K9A49dlgO7f7At+UQ7jTDKKYzxlx8Iybuvrfcm65lv
         HoPkbm2OoAu8pmTZQyXGHZC9Rn6q5bD/iHDkFTsNHENeJv9DE9U7vR9trq4QfNbvwclo
         BF8Kgw2HQ6oHFDMJ53XlqntDz8376iVRu6ptgRMXm42pRoV3ooODKmiDqU+J/T7C4WiE
         MUOYU02mFaO/k9TxFx077pcQZdeH88V80alTNPgjBZSAF+ACwkooYZxeOCP+qOS9KyQb
         RN1+b2uR5L91BvZwzHgWN+bslWvp8nmW7mFCu5xbEvMA3q96qLJuusgJBEuwXdEbmgnp
         0oNw==
X-Forwarded-Encrypted: i=1; AJvYcCWjN1XUZ4VVFObHRCcc0kZTx6/cSYOGTQEIfgJdC33vqser9i3ignvFgJ6ndSWJ0tQ5DnAxcun6qqzh@vger.kernel.org
X-Gm-Message-State: AOJu0YwOzF9m2hE86qVYP2aZEr6n/Vr2X58Hv4PCE11BubwlsxDCzoi/
	M5PT9PXsbLEKWaYk0+7AGJ41t3NjYJ86vJeD6qVS6b3cWGexyhgZS+UbZJXqgRnfc7PQOprWoRD
	a
X-Gm-Gg: ASbGncuUU38GbHHtWt5jKnBlzbnNwuokqK1LnwOubLZTB9FoKZRg9hUIQXhtJii50KF
	4s8ULNMqtSMlS8PiNTywKT47i1J5QK35S9L7rd8zC4YKKpY+BNUUkhreJAbH+NdsLitoOe1NQ2u
	Si8rlCke9LJoRcv4OIrHm0RgY7cX4ydaJKsvfLw+Oc7fBo4amSfh7kKNEkFcDU5rEzFG9oBFuoD
	ngtsW8iB11t88Q13n29Q+Mof1mO7mKRu00N+IPyWk4ac3dHxt92dGNiKF3zcIiALNjeO6a54JyK
	JdfWXrWRTeIkDQ==
X-Google-Smtp-Source: AGHT+IH/yVTpYGbu8rv8ePnnKHjmRp2BXhI3bLKGPMnfv+TqcCSWXgOS1bKVPugIOH5MwqorC0BHFA==
X-Received: by 2002:a05:600c:4743:b0:434:fecf:cb2f with SMTP id 5b1f17b1804b1-43891460b86mr78012635e9.5.1737553689798;
        Wed, 22 Jan 2025 05:48:09 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b318c004sm25521825e9.4.2025.01.22.05.48.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2025 05:48:09 -0800 (PST)
Message-ID: <fd993f74-1d95-4cb8-b6d4-dfbe0931a03d@linaro.org>
Date: Wed, 22 Jan 2025 14:48:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 01/10] dt-bindings: media: Add
 amlogic,c3-mipi-csi2.yaml
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Keke Li <keke.li@amlogic.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kieran.bingham@ideasonboard.com, laurent.pinchart@ideasonboard.com,
 dan.scally@ideasonboard.com
References: <20241227-c3isp-v5-0-c7124e762ff6@amlogic.com>
 <20241227-c3isp-v5-1-c7124e762ff6@amlogic.com>
 <712ed366-233d-477b-b760-907b3d77a7db@linaro.org>
 <002e2ffc-3ef7-41aa-846f-3900694de675@amlogic.com>
 <htggncswmu7on2btxkkzvhgrey3yvafjsedtpx3a5ze2gtyxb3@ecyuawmn6q2v>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <htggncswmu7on2btxkkzvhgrey3yvafjsedtpx3a5ze2gtyxb3@ecyuawmn6q2v>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/01/2025 14:36, Jacopo Mondi wrote:
>>>> +  assigned-clocks: true
>>>> +
>>>> +  assigned-clock-rates: true
>>> NAK
>>>
>>> Adding new properties *INVALIDATES REVIEW*. Otherwise you can sneak
>>> whatever crap past reviewers.
>>>
>>> Drop all new properties and drop my review tag.
>>
>>
>> OK, will drop all new properties and drop your review tag. Thanks
>>
> 
> Krzysztof why should new properties added in-between two revisions be
> dropped ?

You connected two independent issues.

It is not that some new properties should be dropped, because I don't
like new stuff. It's that these two particular properties - added in
this version, but that's coincidence - are not appropriate and should be
dropped because of that reason: not appropriateness.

> 
> I understand the "drop my tag if you make changes" but I don't get why
> the newly added properties should be removed.

They are neither needed, nor beneficial. Core schema provides them.

Best regards,
Krzysztof

